.class Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Span"
.end annotation


# static fields
.field static final INVALID_LINE:I = -0x80000000


# instance fields
.field mCachedEnd:I

.field mCachedStart:I

.field mDeletedSize:I

.field final mIndex:I

.field mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;I)V
    .locals 2
    .param p1, "this$0"    # Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;
    .param p2, "index"    # I

    .prologue
    const/high16 v1, -0x80000000

    .line 2464
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2458
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2459
    iput v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2460
    iput v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2461
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 2465
    iput p2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    .line 2466
    return-void
.end method


# virtual methods
.method appendToSpan(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/high16 v3, -0x80000000

    .line 2549
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v0

    .line 2550
    .local v0, "lp":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;
    iput-object p0, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    .line 2551
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2552
    iput v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2553
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2554
    iput v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2556
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2557
    :cond_1
    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v2, p1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 2559
    :cond_2
    return-void
.end method

.method cacheReferenceLineAndClear(ZI)V
    .locals 3
    .param p1, "reverseLayout"    # Z
    .param p2, "offset"    # I

    .prologue
    const/high16 v2, -0x80000000

    .line 2564
    if-eqz p1, :cond_1

    .line 2565
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v0

    .line 2569
    .local v0, "reference":I
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->clear()V

    .line 2570
    if-ne v0, v2, :cond_2

    .line 2581
    :cond_0
    :goto_1
    return-void

    .line 2567
    .end local v0    # "reference":I
    :cond_1
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v0

    .restart local v0    # "reference":I
    goto :goto_0

    .line 2573
    :cond_2
    if-eqz p1, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    if-lt v0, v1, :cond_0

    :cond_3
    if-nez p1, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 2574
    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 2577
    :cond_4
    if-eq p2, v2, :cond_5

    .line 2578
    add-int/2addr v0, p2

    .line 2580
    :cond_5
    iput v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    iput v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    goto :goto_1
.end method

.method calculateCachedEnd()V
    .locals 5

    .prologue
    .line 2514
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2515
    .local v0, "endView":Landroid/view/View;
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v2

    .line 2516
    .local v2, "lp":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-object v3, v3, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    iput v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2517
    iget-boolean v3, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_0

    .line 2518
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-object v3, v3, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 2519
    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFullSpanItem(I)Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v1

    .line 2520
    .local v1, "fsi":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    if-eqz v1, :cond_0

    iget v3, v1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2521
    iget v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    iget v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->getGapForSpan(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2524
    .end local v1    # "fsi":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_0
    return-void
.end method

.method calculateCachedStart()V
    .locals 5

    .prologue
    .line 2480
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 2481
    .local v2, "startView":Landroid/view/View;
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v1

    .line 2482
    .local v1, "lp":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-object v3, v3, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iput v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2483
    iget-boolean v3, v1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_0

    .line 2484
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-object v3, v3, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 2485
    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFullSpanItem(I)Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    .line 2486
    .local v0, "fsi":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    if-eqz v0, :cond_0

    iget v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 2487
    iget v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    iget v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->getGapForSpan(I)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2490
    .end local v0    # "fsi":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_0
    return-void
.end method

.method clear()V
    .locals 1

    .prologue
    .line 2584
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2585
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->invalidateCache()V

    .line 2586
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 2587
    return-void
.end method

.method public findFirstCompletelyVisibleItemPosition()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2655
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2656
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    .line 2655
    :goto_0
    return v0

    .line 2656
    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2657
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    goto :goto_0
.end method

.method public findFirstPartiallyVisibleItemPosition()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2649
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2650
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->findOnePartiallyVisibleChild(IIZ)I

    move-result v0

    .line 2649
    :goto_0
    return v0

    .line 2650
    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2651
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->findOnePartiallyVisibleChild(IIZ)I

    move-result v0

    goto :goto_0
.end method

.method public findFirstVisibleItemPosition()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2643
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2644
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    .line 2643
    :goto_0
    return v0

    .line 2644
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2645
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v2, v0, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    goto :goto_0
.end method

.method public findLastCompletelyVisibleItemPosition()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2673
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2674
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    .line 2673
    :goto_0
    return v0

    .line 2674
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2675
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    goto :goto_0
.end method

.method public findLastPartiallyVisibleItemPosition()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2667
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2668
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->findOnePartiallyVisibleChild(IIZ)I

    move-result v0

    .line 2667
    :goto_0
    return v0

    .line 2668
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2669
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->findOnePartiallyVisibleChild(IIZ)I

    move-result v0

    goto :goto_0
.end method

.method public findLastVisibleItemPosition()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2661
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2662
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v2, v0, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    .line 2661
    :goto_0
    return v0

    .line 2662
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2663
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    goto :goto_0
.end method

.method findOnePartiallyOrCompletelyVisibleChild(IIZZZ)I
    .locals 10
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "completelyVisible"    # Z
    .param p4, "acceptCompletelyVisible"    # Z
    .param p5, "acceptEndPointInclusion"    # Z

    .prologue
    .line 2705
    iget-object v9, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-object v9, v9, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v9}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    .line 2706
    .local v8, "start":I
    iget-object v9, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-object v9, v9, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v9}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    .line 2707
    .local v5, "end":I
    if-le p2, p1, :cond_0

    const/4 v7, 0x1

    .line 2708
    .local v7, "next":I
    :goto_0
    move v6, p1

    .local v6, "i":I
    :goto_1
    if-eq v6, p2, :cond_b

    .line 2709
    iget-object v9, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2710
    .local v0, "child":Landroid/view/View;
    iget-object v9, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-object v9, v9, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v9, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    .line 2711
    .local v3, "childStart":I
    iget-object v9, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-object v9, v9, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v9, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v1

    .line 2712
    .local v1, "childEnd":I
    if-eqz p5, :cond_2

    if-gt v3, v5, :cond_1

    const/4 v4, 0x1

    .line 2714
    .local v4, "childStartInclusion":Z
    :goto_2
    if-eqz p5, :cond_5

    if-lt v1, v8, :cond_4

    const/4 v2, 0x1

    .line 2716
    .local v2, "childEndInclusion":Z
    :goto_3
    if-eqz v4, :cond_a

    if-eqz v2, :cond_a

    .line 2717
    if-eqz p3, :cond_7

    if-eqz p4, :cond_7

    .line 2719
    if-lt v3, v8, :cond_a

    if-gt v1, v5, :cond_a

    .line 2720
    iget-object v9, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    invoke-virtual {v9, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v9

    .line 2732
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childEnd":I
    .end local v2    # "childEndInclusion":Z
    .end local v3    # "childStart":I
    .end local v4    # "childStartInclusion":Z
    :goto_4
    return v9

    .line 2707
    .end local v6    # "i":I
    .end local v7    # "next":I
    :cond_0
    const/4 v7, -0x1

    goto :goto_0

    .line 2712
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "childEnd":I
    .restart local v3    # "childStart":I
    .restart local v6    # "i":I
    .restart local v7    # "next":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    if-ge v3, v5, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 2714
    .restart local v4    # "childStartInclusion":Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    :cond_5
    if-le v1, v8, :cond_6

    const/4 v2, 0x1

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    goto :goto_3

    .line 2722
    .restart local v2    # "childEndInclusion":Z
    :cond_7
    if-eqz p4, :cond_8

    .line 2724
    iget-object v9, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    invoke-virtual {v9, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v9

    goto :goto_4

    .line 2725
    :cond_8
    if-lt v3, v8, :cond_9

    if-le v1, v5, :cond_a

    .line 2728
    :cond_9
    iget-object v9, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    invoke-virtual {v9, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v9

    goto :goto_4

    .line 2708
    :cond_a
    add-int/2addr v6, v7

    goto :goto_1

    .line 2732
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childEnd":I
    .end local v2    # "childEndInclusion":Z
    .end local v3    # "childStart":I
    .end local v4    # "childStartInclusion":Z
    :cond_b
    const/4 v9, -0x1

    goto :goto_4
.end method

.method findOnePartiallyVisibleChild(IIZ)I
    .locals 6
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "acceptEndPointInclusion"    # Z

    .prologue
    const/4 v3, 0x0

    .line 2742
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->findOnePartiallyOrCompletelyVisibleChild(IIZZZ)I

    move-result v0

    return v0
.end method

.method findOneVisibleChild(IIZ)I
    .locals 6
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "completelyVisible"    # Z

    .prologue
    .line 2736
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->findOnePartiallyOrCompletelyVisibleChild(IIZZZ)I

    move-result v0

    return v0
.end method

.method public getDeletedSize()I
    .locals 1

    .prologue
    .line 2626
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    return v0
.end method

.method getEndLine()I
    .locals 2

    .prologue
    .line 2528
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 2529
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2532
    :goto_0
    return v0

    .line 2531
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->calculateCachedEnd()V

    .line 2532
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    goto :goto_0
.end method

.method getEndLine(I)I
    .locals 3
    .param p1, "def"    # I

    .prologue
    .line 2502
    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    .line 2503
    iget p1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2510
    .end local p1    # "def":I
    :cond_0
    :goto_0
    return p1

    .line 2505
    .restart local p1    # "def":I
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2506
    .local v0, "size":I
    if-eqz v0, :cond_0

    .line 2509
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->calculateCachedEnd()V

    .line 2510
    iget p1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    goto :goto_0
.end method

.method public getFocusableViewAfter(II)Landroid/view/View;
    .locals 5
    .param p1, "referenceChildPosition"    # I
    .param p2, "layoutDir"    # I

    .prologue
    .line 2750
    const/4 v0, 0x0

    .line 2751
    .local v0, "candidate":Landroid/view/View;
    const/4 v4, -0x1

    if-ne p2, v4, :cond_3

    .line 2752
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2753
    .local v2, "limit":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2754
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 2755
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-boolean v4, v4, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    if-le v4, p1, :cond_1

    :cond_0
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-boolean v4, v4, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    .line 2756
    invoke-virtual {v4, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    if-lt v4, p1, :cond_2

    .line 2779
    .end local v2    # "limit":I
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    return-object v0

    .line 2759
    .restart local v2    # "limit":I
    .restart local v3    # "view":Landroid/view/View;
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2760
    move-object v0, v3

    .line 2753
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2766
    .end local v1    # "i":I
    .end local v2    # "limit":I
    .end local v3    # "view":Landroid/view/View;
    :cond_3
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 2767
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 2768
    .restart local v3    # "view":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-boolean v4, v4, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    if-ge v4, p1, :cond_1

    :cond_4
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-boolean v4, v4, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    .line 2769
    invoke-virtual {v4, v3}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    if-le v4, p1, :cond_1

    .line 2772
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2773
    move-object v0, v3

    .line 2766
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method getLayoutParams(Landroid/view/View;)Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2630
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    return-object v0
.end method

.method getStartLine()I
    .locals 2

    .prologue
    .line 2494
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 2495
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2498
    :goto_0
    return v0

    .line 2497
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->calculateCachedStart()V

    .line 2498
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    goto :goto_0
.end method

.method getStartLine(I)I
    .locals 2
    .param p1, "def"    # I

    .prologue
    .line 2469
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 2470
    iget p1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2476
    .end local p1    # "def":I
    :cond_0
    :goto_0
    return p1

    .line 2472
    .restart local p1    # "def":I
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2475
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->calculateCachedStart()V

    .line 2476
    iget p1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    goto :goto_0
.end method

.method invalidateCache()V
    .locals 1

    .prologue
    const/high16 v0, -0x80000000

    .line 2590
    iput v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2591
    iput v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2592
    return-void
.end method

.method onOffset(I)V
    .locals 2
    .param p1, "dt"    # I

    .prologue
    const/high16 v1, -0x80000000

    .line 2634
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    if-eq v0, v1, :cond_0

    .line 2635
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2637
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    if-eq v0, v1, :cond_1

    .line 2638
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2640
    :cond_1
    return-void
.end method

.method popEnd()V
    .locals 6

    .prologue
    const/high16 v5, -0x80000000

    .line 2599
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2600
    .local v2, "size":I
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2601
    .local v0, "end":Landroid/view/View;
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v1

    .line 2602
    .local v1, "lp":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;
    const/4 v3, 0x0

    iput-object v3, v1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    .line 2603
    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2604
    :cond_0
    iget v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-object v4, v4, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 2606
    :cond_1
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 2607
    iput v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2609
    :cond_2
    iput v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2610
    return-void
.end method

.method popStart()V
    .locals 5

    .prologue
    const/high16 v4, -0x80000000

    .line 2613
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2614
    .local v1, "start":Landroid/view/View;
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v0

    .line 2615
    .local v0, "lp":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;
    const/4 v2, 0x0

    iput-object v2, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    .line 2616
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 2617
    iput v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2619
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2620
    :cond_1
    iget v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-object v3, v3, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 2622
    :cond_2
    iput v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2623
    return-void
.end method

.method prependToSpan(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/high16 v3, -0x80000000

    .line 2536
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v0

    .line 2537
    .local v0, "lp":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;
    iput-object p0, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    .line 2538
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2539
    iput v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2540
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2541
    iput v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2543
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2544
    :cond_1
    iget v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->this$0:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v2, p1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 2546
    :cond_2
    return-void
.end method

.method setLine(I)V
    .locals 0
    .param p1, "line"    # I

    .prologue
    .line 2595
    iput p1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    iput p1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2596
    return-void
.end method
