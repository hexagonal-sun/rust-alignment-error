use std::{arch::asm, io::Error};

enum Ast {
    Literal(Literal),
    Concat(Concat),
}

struct Concat {
    pub asts: Vec<Ast>,
}

struct Literal {}

struct ClassSetBinaryOp {}

struct Group {
    pub ast: Box<Ast>,
}

struct HeapVisitor<'a> {
    stack: Vec<(&'a Ast, Frame<'a>)>,
    stack_class: Vec<(ClassInduct<'a>, ClassFrame)>,
}

enum Frame<'a> {
    Group(&'a Group),
    Concat { head: &'a Ast, tail: &'a [Ast] },
    Alternation { head: &'a Ast, tail: &'a [Ast] },
}

enum ClassFrame {}

enum ClassInduct<'a> {
    BinaryOp(&'a ClassSetBinaryOp),
}

impl<'a> HeapVisitor<'a> {
    fn new() -> HeapVisitor<'a> {
        HeapVisitor {
            stack: vec![],
            stack_class: vec![],
        }
    }

    fn visit(&mut self, mut ast: &'a Ast) -> Result<(), Error> {
        loop {
            if let Some(x) = self.induct(ast)? {
                let child = x.child();
                self.stack.push((ast, x));
                ast = child;
                continue;
            }

            // At this point, we now try to pop our call stack until it is
            // either empty or we hit another inductive case.
            loop {
                let (post_ast, frame) = match self.stack.pop() {
                    None => return Ok(()),
                    Some((post_ast, frame)) => (post_ast, frame),
                };
                // If this is a concat/alternate, then we might have additional
                // inductive steps to process.
                if let Some(x) = self.pop(frame) {
                    if let Frame::Alternation { .. } = x {}
                    ast = x.child();
                    self.stack.push((post_ast, x));
                    break;
                }
            }
        }
    }

    fn induct(&mut self, ast: &'a Ast) -> Result<Option<Frame<'a>>, Error> {
        Ok(match *ast {
            Ast::Concat(ref x) if x.asts.is_empty() => None,
            Ast::Concat(ref x) => Some(Frame::Concat {
                head: &x.asts[0],
                tail: &x.asts[1..],
            }),
            _ => None,
        })
    }

    fn pop(&self, induct: Frame<'a>) -> Option<Frame<'a>> {
        match induct {
            Frame::Group(_) => None,
            Frame::Concat { tail, .. } => {
                if tail.is_empty() {
                    None
                } else {
                    Some(Frame::Concat {
                        head: &tail[0],
                        tail: &tail[1..],
                    })
                }
            }
            Frame::Alternation { tail, .. } => {
                if tail.is_empty() {
                    None
                } else {
                    Some(Frame::Alternation {
                        head: &tail[0],
                        tail: &tail[1..],
                    })
                }
            }
        }
    }
}

impl<'a> Frame<'a> {
    fn child(&self) -> &'a Ast {
        match *self {
            Frame::Group(group) => &group.ast,
            Frame::Concat { head, .. } => head,
            Frame::Alternation { head, .. } => head,
        }
    }
}

fn go() {
    dbg!(std::mem::size_of::<Frame>());
    dbg!(std::mem::size_of::<HeapVisitor>());
    dbg!(std::mem::size_of::<ClassInduct>());
    let ast = Ast::Concat(Concat {
        asts: vec![Ast::Literal(Literal {})],
    });

    HeapVisitor::new().visit(&ast).unwrap();
}

fn main() -> () {
    unsafe {
        asm!("push edi",
             "mov edi, esp",
             "and esp, 0xfffffff0",
             // Deliberately mis-align the stack to 8-byte alignment. Note that this *SHOULD* be
             // okay since we've set -S64 in the data-layout field in the target JSON.
             "sub esp, 0x4",
             "call {go}",
             "mov esp, edi",
             "pop edi",
             go = sym go,
             out("edi") _,
             clobber_abi("C"));
    }
}
