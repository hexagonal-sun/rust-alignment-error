use globset::Glob;
use std::arch::asm;

fn go()
{
    Glob::new("*").unwrap().compile_matcher();
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
