; ModuleID = 'out2.bc'
source_filename = "alignment_error.66cc2907-cgu.0"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S32"
target triple = "i586-unknown-linux-gnu"

%"Frame<'_>" = type { i32, [3 x i32] }
%"HeapVisitor<'_>" = type { %"alloc::vec::Vec<(&Ast, Frame<'_>)>", %"alloc::vec::Vec<ClassInduct<'_>>" }
%"alloc::vec::Vec<(&Ast, Frame<'_>)>" = type { { i32, ptr }, i32 }
%"alloc::vec::Vec<ClassInduct<'_>>" = type { { i32, ptr }, i32 }
%Ast = type { [1 x i32], ptr, [1 x i32] }
%"alloc::vec::Vec<Ast>" = type { { i32, ptr }, i32 }

@alloc207 = external hidden unnamed_addr constant <{ ptr, [12 x i8] }>, align 4
@alloc211 = external hidden unnamed_addr constant <{ ptr, [12 x i8] }>, align 4
@alloc215 = external hidden unnamed_addr constant <{ ptr, [12 x i8] }>, align 4

; Function Attrs: minsize nonlazybind optsize uwtable
declare hidden fastcc void @"_ZN4core3ptr41drop_in_place$LT$alignment_error..Ast$GT$17hf255ad4358a1332aE"(ptr nocapture readonly) unnamed_addr #0

; Function Attrs: minsize nonlazybind optsize uwtable
declare hidden fastcc void @"_ZN4core3ptr49drop_in_place$LT$alignment_error..HeapVisitor$GT$17hbeb70bf40ba6a666E"(ptr nocapture nonnull readonly) unnamed_addr #0

; Function Attrs: inlinehint minsize nonlazybind optsize uwtable
declare hidden fastcc { ptr, i32 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17he478645d7f2580aaE"(ptr noalias noundef nonnull readonly align 4, i32, ptr noalias noundef readonly align 4 dereferenceable(16)) unnamed_addr #1

; Function Attrs: inlinehint minsize nonlazybind optsize uwtable
declare hidden fastcc void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h710adfaf367ac688E"(ptr noalias noundef align 4 dereferenceable(12), ptr noalias nocapture noundef readonly dereferenceable(20)) unnamed_addr #1

; Function Attrs: minsize mustprogress nofree norecurse nosync nounwind nonlazybind optsize readonly uwtable willreturn
declare hidden fastcc noundef nonnull align 4 dereferenceable(12) ptr @_ZN15alignment_error5Frame5child17hf0f92e27ef0f5c68E(ptr noalias nocapture noundef readonly align 4 dereferenceable(16)) unnamed_addr #2

; Function Attrs: minsize nonlazybind optsize uwtable
define hidden void @_ZN15alignment_error2go17he2ac39634e571633E() unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_42.i = alloca { ptr, %"Frame<'_>" }, align 4
  %x2.i = alloca %"Frame<'_>", align 4
  %_18.i = alloca { ptr, %"Frame<'_>" }, align 4
  %x.i = alloca %"Frame<'_>", align 4
  %_14 = alloca %"HeapVisitor<'_>", align 4
  %ast = alloca %Ast, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ast)
  %0 = tail call align 4 dereferenceable_or_null(12) ptr @__rust_alloc(i32 12, i32 4) #9
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb3.i, label %bb3

bb3.i:                                            ; preds = %start
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h1628e96debb9b245E(i32 12, i32 noundef 4) #10
  unreachable

bb9:                                              ; preds = %cleanup1.body, %cleanup
  %.pn = phi { ptr, i32 } [ %2, %cleanup ], [ %24, %cleanup1.body ]
  invoke fastcc void @"_ZN4core3ptr41drop_in_place$LT$alignment_error..Ast$GT$17hf255ad4358a1332aE"(ptr nonnull %ast) #11
          to label %bb10 unwind label %abort

cleanup:                                          ; preds = %bb5
  %2 = landingpad { ptr, i32 }
          cleanup
  br label %bb9

bb3:                                              ; preds = %start
  %_10.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 4
  store ptr null, ptr %_10.sroa.3.0..sroa_idx, align 4
  store i32 1, ptr %ast, align 4
  %_2.sroa.0.sroa.4.0.ast.sroa_idx = getelementptr inbounds i8, ptr %ast, i32 4
  store ptr %0, ptr %_2.sroa.0.sroa.4.0.ast.sroa_idx, align 4
  %_2.sroa.0.sroa.5.0.ast.sroa_idx = getelementptr inbounds i8, ptr %ast, i32 8
  store i32 1, ptr %_2.sroa.0.sroa.5.0.ast.sroa_idx, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_14)
  store i32 0, ptr %_14, align 4, !alias.scope !3
  %_1.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %_14, i32 4
  store ptr inttoptr (i32 4 to ptr), ptr %_1.sroa.4.0..sroa_idx.i, align 4, !alias.scope !3
  %_1.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %_14, i32 8
  store i32 0, ptr %_1.sroa.5.0..sroa_idx.i, align 4, !alias.scope !3
  %3 = getelementptr inbounds %"HeapVisitor<'_>", ptr %_14, i32 0, i32 1
  store i32 0, ptr %3, align 4, !alias.scope !3
  %_2.sroa.4.0..sroa_idx.i = getelementptr inbounds %"HeapVisitor<'_>", ptr %_14, i32 0, i32 1, i32 0, i32 1
  store ptr inttoptr (i32 4 to ptr), ptr %_2.sroa.4.0..sroa_idx.i, align 4, !alias.scope !3
  %_2.sroa.5.0..sroa_idx.i = getelementptr inbounds %"HeapVisitor<'_>", ptr %_14, i32 0, i32 1, i32 1
  store i32 0, ptr %_2.sroa.5.0..sroa_idx.i, align 4, !alias.scope !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6)
  %_3.sroa.7.0.x.sroa_idx.i = getelementptr inbounds i8, ptr %x.i, i32 4
  %_3.sroa.7.sroa.6.0._3.sroa.7.0.x.sroa_idx.sroa_idx.i = getelementptr inbounds i8, ptr %x.i, i32 12
  %4 = getelementptr inbounds { ptr, %"Frame<'_>" }, ptr %_18.i, i32 0, i32 1
  %_32.sroa.10.0.x2.sroa_idx.i = getelementptr inbounds i8, ptr %x2.i, i32 4
  %_32.sroa.12.0.x2.sroa_idx.i = getelementptr inbounds i8, ptr %x2.i, i32 8
  %_32.sroa.14.0.x2.sroa_idx.i = getelementptr inbounds i8, ptr %x2.i, i32 12
  %5 = getelementptr inbounds { ptr, %"Frame<'_>" }, ptr %_42.i, i32 0, i32 1
  br label %bb1.i

bb1.i:                                            ; preds = %bb1.i.backedge, %bb3
  %ast.0.i = phi ptr [ %ast, %bb3 ], [ %ast.0.i.be, %bb1.i.backedge ]
  %6 = getelementptr inbounds %Ast, ptr %ast.0.i, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4, !alias.scope !9, !noalias !12
  %.not.i.i = icmp eq ptr %7, null
  br i1 %.not.i.i, label %bb12.preheader.i, label %bb2.i.i

bb2.i.i:                                          ; preds = %bb1.i
  %8 = getelementptr inbounds %"alloc::vec::Vec<Ast>", ptr %ast.0.i, i32 0, i32 1
  %9 = load i32, ptr %8, align 4, !alias.scope !15, !noalias !12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %bb12.preheader.i, label %bb9.i

bb12.preheader.i:                                 ; preds = %bb2.i.i, %bb1.i
  %.promoted.i = load i32, ptr %_1.sroa.5.0..sroa_idx.i, align 4, !alias.scope !20, !noalias !23
  %_2.i.i.i.i = load ptr, ptr %_1.sroa.4.0..sroa_idx.i, align 4, !alias.scope !6, !noalias !26
  br label %bb12.i

bb9.i:                                            ; preds = %bb2.i.i
  %11 = invoke fastcc { ptr, i32 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17he478645d7f2580aaE"(ptr noalias noundef nonnull readonly align 4 %7, i32 %9, ptr noalias noundef nonnull readonly align 4 dereferenceable(16) @alloc207)
          to label %.noexc unwind label %cleanup1.body

.noexc:                                           ; preds = %bb9.i
  %_17.0.i.i = extractvalue { ptr, i32 } %11, 0
  %_17.1.i.i = extractvalue { ptr, i32 } %11, 1
  %12 = ptrtoint ptr %_17.0.i.i to i32
  %_4.sroa.8.sroa.8.0.insert.ext20.i = zext i32 %12 to i64
  %_4.sroa.8.sroa.8.0.insert.shift21.i = shl nuw i64 %_4.sroa.8.sroa.8.0.insert.ext20.i, 32
  %13 = ptrtoint ptr %7 to i32
  %_4.sroa.8.sroa.0.0.insert.ext17.i = zext i32 %13 to i64
  %_4.sroa.8.sroa.0.0.insert.insert19.i = or i64 %_4.sroa.8.sroa.8.0.insert.shift21.i, %_4.sroa.8.sroa.0.0.insert.ext17.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %x.i), !noalias !27
  store i32 1, ptr %x.i, align 4, !noalias !27
  store i64 %_4.sroa.8.sroa.0.0.insert.insert19.i, ptr %_3.sroa.7.0.x.sroa_idx.i, align 4, !noalias !27
  store i32 %_17.1.i.i, ptr %_3.sroa.7.sroa.6.0._3.sroa.7.0.x.sroa_idx.sroa_idx.i, align 4, !noalias !27
  %child.i = call fastcc noundef align 4 dereferenceable(12) ptr @_ZN15alignment_error5Frame5child17hf0f92e27ef0f5c68E(ptr noalias noundef nonnull readonly align 4 dereferenceable(16) %x.i), !noalias !28
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_18.i), !noalias !27
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %x.i, i32 16, i1 false), !noalias !27
  store ptr %ast.0.i, ptr %_18.i, align 4, !noalias !27
  invoke fastcc void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h710adfaf367ac688E"(ptr noalias noundef nonnull align 4 dereferenceable(12) %_14, ptr noalias nocapture noundef nonnull dereferenceable(20) %_18.i)
          to label %.noexc3 unwind label %cleanup1.body

.noexc3:                                          ; preds = %.noexc
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_18.i), !noalias !27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %x.i), !noalias !27
  br label %bb1.i.backedge

bb12.i:                                           ; preds = %bb12.i.backedge, %bb12.preheader.i
  %14 = phi i32 [ %.promoted.i, %bb12.preheader.i ], [ %16, %bb12.i.backedge ]
  call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %bb5, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3pop17h5af81e503d0364c4E.exit.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3pop17h5af81e503d0364c4E.exit.i": ; preds = %bb12.i
  %16 = add i32 %14, -1
  store i32 %16, ptr %_1.sroa.5.0..sroa_idx.i, align 4, !alias.scope !20, !noalias !23
  %17 = getelementptr inbounds { ptr, %"Frame<'_>" }, ptr %_2.i.i.i.i, i32 %16
  %_25.sroa.0.0.copyload.i = load ptr, ptr %17, align 4, !noalias !30
  %_25.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %17, i32 4
  %_25.sroa.5.0.copyload.i = load i32, ptr %_25.sroa.5.0..sroa_idx.i, align 4, !noalias !30
  %_25.sroa.8.0..sroa_idx.i = getelementptr inbounds i8, ptr %17, i32 8
  %_25.sroa.8.sroa.6.0._25.sroa.8.0..sroa_idx.sroa_idx.i = getelementptr inbounds i8, ptr %_25.sroa.8.0..sroa_idx.i, i32 8
  %_25.sroa.8.sroa.6.0.copyload.i = load i32, ptr %_25.sroa.8.sroa.6.0._25.sroa.8.0..sroa_idx.sroa_idx.i, align 4, !noalias !30
  %18 = icmp eq i32 %_25.sroa.5.0.copyload.i, 3
  br i1 %18, label %bb5, label %bb14.i

bb14.i:                                           ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3pop17h5af81e503d0364c4E.exit.i"
  %19 = icmp ne ptr %_25.sroa.0.0.copyload.i, null
  call void @llvm.assume(i1 %19)
  switch i32 %_25.sroa.5.0.copyload.i, label %bb2.i8.i [
    i32 0, label %bb12.i.backedge
    i32 1, label %bb4.i.i
    i32 2, label %bb1.i10.i
  ]

bb2.i8.i:                                         ; preds = %bb14.i
  unreachable

bb4.i.i:                                          ; preds = %bb14.i
  %20 = icmp eq i32 %_25.sroa.8.sroa.6.0.copyload.i, 0
  br i1 %20, label %bb12.i.backedge, label %bb8.i.i

bb1.i10.i:                                        ; preds = %bb14.i
  %21 = icmp eq i32 %_25.sroa.8.sroa.6.0.copyload.i, 0
  br i1 %21, label %bb12.i.backedge, label %bb14.i.i

bb12.i.backedge:                                  ; preds = %bb1.i10.i, %bb4.i.i, %bb14.i
  br label %bb12.i

bb14.i.i:                                         ; preds = %bb1.i10.i
  %_25.sroa.8.sroa.5.0._25.sroa.8.0..sroa_idx.sroa_idx.le.i = getelementptr inbounds i8, ptr %_25.sroa.8.0..sroa_idx.i, i32 4
  %_25.sroa.8.sroa.5.0.copyload.le50.i = load ptr, ptr %_25.sroa.8.sroa.5.0._25.sroa.8.0..sroa_idx.sroa_idx.le.i, align 4, !noalias !30, !nonnull !31
  %22 = invoke fastcc { ptr, i32 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17he478645d7f2580aaE"(ptr noalias noundef nonnull readonly align 4 %_25.sroa.8.sroa.5.0.copyload.le50.i, i32 %_25.sroa.8.sroa.6.0.copyload.i, ptr noalias noundef nonnull readonly align 4 dereferenceable(16) @alloc211)
          to label %bb18.i unwind label %cleanup1.body

bb8.i.i:                                          ; preds = %bb4.i.i
  %_25.sroa.8.sroa.5.0._25.sroa.8.0..sroa_idx.sroa_idx.le52.i = getelementptr inbounds i8, ptr %_25.sroa.8.0..sroa_idx.i, i32 4
  %_25.sroa.8.sroa.5.0.copyload.le.i = load ptr, ptr %_25.sroa.8.sroa.5.0._25.sroa.8.0..sroa_idx.sroa_idx.le52.i, align 4, !noalias !30, !nonnull !31
  %23 = invoke fastcc { ptr, i32 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17he478645d7f2580aaE"(ptr noalias noundef nonnull readonly align 4 %_25.sroa.8.sroa.5.0.copyload.le.i, i32 %_25.sroa.8.sroa.6.0.copyload.i, ptr noalias noundef nonnull readonly align 4 dereferenceable(16) @alloc215)
          to label %bb18.i unwind label %cleanup1.body

bb18.i:                                           ; preds = %bb8.i.i, %bb14.i.i
  %_25.sroa.8.sroa.5.0.copyload43.i = phi ptr [ %_25.sroa.8.sroa.5.0.copyload.le50.i, %bb14.i.i ], [ %_25.sroa.8.sroa.5.0.copyload.le.i, %bb8.i.i ]
  %.pn.i = phi { ptr, i32 } [ %22, %bb14.i.i ], [ %23, %bb8.i.i ]
  %_32.sroa.14.2.i = extractvalue { ptr, i32 } %.pn.i, 1
  %_32.sroa.12.2.i = extractvalue { ptr, i32 } %.pn.i, 0
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %x2.i), !noalias !27
  store i32 %_25.sroa.5.0.copyload.i, ptr %x2.i, align 4, !noalias !27
  store ptr %_25.sroa.8.sroa.5.0.copyload43.i, ptr %_32.sroa.10.0.x2.sroa_idx.i, align 4, !noalias !27
  store ptr %_32.sroa.12.2.i, ptr %_32.sroa.12.0.x2.sroa_idx.i, align 4, !noalias !27
  store i32 %_32.sroa.14.2.i, ptr %_32.sroa.14.0.x2.sroa_idx.i, align 4, !noalias !27
  %_38.i = call fastcc noundef align 4 dereferenceable(12) ptr @_ZN15alignment_error5Frame5child17hf0f92e27ef0f5c68E(ptr noalias noundef nonnull readonly align 4 dereferenceable(16) %x2.i), !noalias !28
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_42.i), !noalias !27
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %x2.i, i32 16, i1 false), !noalias !27
  store ptr %_25.sroa.0.0.copyload.i, ptr %_42.i, align 4, !noalias !27
  invoke fastcc void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h710adfaf367ac688E"(ptr noalias noundef nonnull align 4 dereferenceable(12) %_14, ptr noalias nocapture noundef nonnull dereferenceable(20) %_42.i)
          to label %.noexc6 unwind label %cleanup1.body

.noexc6:                                          ; preds = %bb18.i
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_42.i), !noalias !27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %x2.i), !noalias !27
  br label %bb1.i.backedge

bb1.i.backedge:                                   ; preds = %.noexc6, %.noexc3
  %ast.0.i.be = phi ptr [ %child.i, %.noexc3 ], [ %_38.i, %.noexc6 ]
  br label %bb1.i

cleanup1.body:                                    ; preds = %bb18.i, %bb8.i.i, %bb14.i.i, %.noexc, %bb9.i
  %24 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$alignment_error..HeapVisitor$GT$17hbeb70bf40ba6a666E"(ptr nonnull %_14) #11
          to label %bb9 unwind label %abort

bb5:                                              ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3pop17h5af81e503d0364c4E.exit.i", %bb12.i
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$alignment_error..HeapVisitor$GT$17hbeb70bf40ba6a666E"(ptr nonnull %_14)
          to label %bb6 unwind label %cleanup

abort:                                            ; preds = %cleanup1.body, %bb9
  %25 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17h5c3b9befaeaed6faE() #12
  unreachable

bb6:                                              ; preds = %bb5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_14)
  call fastcc void @"_ZN4core3ptr41drop_in_place$LT$alignment_error..Ast$GT$17hf255ad4358a1332aE"(ptr nonnull %ast)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ast)
  ret void

bb10:                                             ; preds = %bb9
  resume { ptr, i32 } %.pn
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: minsize nonlazybind optsize uwtable
declare noundef i32 @rust_eh_personality(i32, i32 noundef, i64, ptr, ptr) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking15panic_no_unwind17h5c3b9befaeaed6faE() unnamed_addr #4

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_ZN5alloc5alloc18handle_alloc_error17h1628e96debb9b245E(i32, i32 noundef) unnamed_addr #6

; Function Attrs: minsize nounwind nonlazybind optsize uwtable
declare noalias ptr @__rust_alloc(i32, i32) unnamed_addr #7

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #5

attributes #0 = { minsize nonlazybind optsize uwtable "probe-stack"="__rust_probestack" "target-cpu"="pentium" }
attributes #1 = { inlinehint minsize nonlazybind optsize uwtable "probe-stack"="__rust_probestack" "target-cpu"="pentium" }
attributes #2 = { minsize mustprogress nofree norecurse nosync nounwind nonlazybind optsize readonly uwtable willreturn "probe-stack"="__rust_probestack" "target-cpu"="pentium" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="__rust_probestack" "target-cpu"="pentium" }
attributes #5 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #6 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="__rust_probestack" "target-cpu"="pentium" }
attributes #7 = { minsize nounwind nonlazybind optsize uwtable "alloc-family"="__rust_alloc" "probe-stack"="__rust_probestack" "target-cpu"="pentium" }
attributes #8 = { argmemonly nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { noreturn }
attributes #11 = { noinline }
attributes #12 = { noinline noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{!4}
!4 = distinct !{!4, !5, !"_ZN15alignment_error11HeapVisitor3new17h5137b3c0c232a54dE: argument 0"}
!5 = distinct !{!5, !"_ZN15alignment_error11HeapVisitor3new17h5137b3c0c232a54dE"}
!6 = !{!7}
!7 = distinct !{!7, !8, !"_ZN15alignment_error11HeapVisitor5visit17hec8d20cbd4fda330E: %self"}
!8 = distinct !{!8, !"_ZN15alignment_error11HeapVisitor5visit17hec8d20cbd4fda330E"}
!9 = !{!10}
!10 = distinct !{!10, !11, !"_ZN15alignment_error11HeapVisitor6induct17hc4f61229a8896a0dE: %ast"}
!11 = distinct !{!11, !"_ZN15alignment_error11HeapVisitor6induct17hc4f61229a8896a0dE"}
!12 = !{!13, !14}
!13 = distinct !{!13, !11, !"_ZN15alignment_error11HeapVisitor6induct17hc4f61229a8896a0dE: argument 0"}
!14 = distinct !{!14, !8, !"_ZN15alignment_error11HeapVisitor5visit17hec8d20cbd4fda330E: argument 0"}
!15 = !{!16, !18, !10}
!16 = distinct !{!16, !17, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h8cdb99622eb70e2dE: %self"}
!17 = distinct !{!17, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h8cdb99622eb70e2dE"}
!18 = distinct !{!18, !19, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8is_empty17h69a8ad92a11a093dE: %self"}
!19 = distinct !{!19, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8is_empty17h69a8ad92a11a093dE"}
!20 = !{!21, !7}
!21 = distinct !{!21, !22, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3pop17h5af81e503d0364c4E: %self"}
!22 = distinct !{!22, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3pop17h5af81e503d0364c4E"}
!23 = !{!24, !14, !25}
!24 = distinct !{!24, !22, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3pop17h5af81e503d0364c4E: argument 0"}
!25 = distinct !{!25, !8, !"_ZN15alignment_error11HeapVisitor5visit17hec8d20cbd4fda330E: argument 2"}
!26 = !{!14, !25}
!27 = !{!14, !7, !25}
!28 = !{!14}
!29 = !{!21}
!30 = !{!21, !14}
!31 = !{}
