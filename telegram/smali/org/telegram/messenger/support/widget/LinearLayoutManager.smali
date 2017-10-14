.class public Lorg/telegram/messenger/support/widget/LinearLayoutManager;
.super Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;
.source "LinearLayoutManager.java"

# interfaces
.implements Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$ViewDropHandler;
.implements Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;,
        Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;,
        Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;,
        Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field public static final HORIZONTAL:I = 0x0

.field public static final INVALID_OFFSET:I = -0x80000000

.field private static final MAX_SCROLL_FACTOR:F = 0.33333334f

.field private static final TAG:Ljava/lang/String; = "LinearLayoutManager"

.field public static final VERTICAL:I = 0x1


# instance fields
.field final mAnchorInfo:Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;

.field private mInitialPrefetchItemCount:I

.field private mLastStackFromEnd:Z

.field private final mLayoutChunkResult:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;

.field private mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

.field mOrientation:I

.field mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

.field mPendingSavedState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

.field mPendingScrollPosition:I

.field mPendingScrollPositionOffset:I

.field private mRecycleChildrenOnDetach:Z

.field private mReverseLayout:Z

.field mShouldReverseLayout:Z

.field private mSmoothScrollbarEnabled:Z

.field private mStackFromEnd:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 159
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 160
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientation"    # I
    .param p3, "reverseLayout"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 168
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;-><init>()V

    .line 99
    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 106
    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 113
    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 119
    iput-boolean v1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 131
    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    .line 141
    new-instance v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;-><init>(Lorg/telegram/messenger/support/widget/LinearLayoutManager;)V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mAnchorInfo:Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;

    .line 146
    new-instance v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;

    invoke-direct {v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutChunkResult:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;

    .line 151
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mInitialPrefetchItemCount:I

    .line 169
    invoke-virtual {p0, p2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->setOrientation(I)V

    .line 170
    invoke-virtual {p0, p3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->setReverseLayout(Z)V

    .line 171
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->setAutoMeasureEnabled(Z)V

    .line 172
    return-void
.end method

.method private computeScrollExtent(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 6
    .param p1, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1089
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1093
    :goto_0
    return v4

    .line 1092
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1093
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_2

    move v0, v3

    .line 1094
    :goto_1
    invoke-direct {p0, v0, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_1

    move v4, v3

    .line 1095
    :cond_1
    invoke-direct {p0, v4, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v0, p1

    move-object v4, p0

    .line 1093
    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/support/widget/ScrollbarHelper;->computeScrollExtent(Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Z)I

    move-result v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method private computeScrollOffset(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 7
    .param p1, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1078
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1082
    :goto_0
    return v4

    .line 1081
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1082
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_2

    move v0, v3

    .line 1083
    :goto_1
    invoke-direct {p0, v0, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_1

    move v4, v3

    .line 1084
    :cond_1
    invoke-direct {p0, v4, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    iget-boolean v6, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    move-object v0, p1

    move-object v4, p0

    .line 1082
    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/support/widget/ScrollbarHelper;->computeScrollOffset(Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;ZZ)I

    move-result v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method private computeScrollRange(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 6
    .param p1, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1100
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1104
    :goto_0
    return v4

    .line 1103
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1104
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_2

    move v0, v3

    .line 1105
    :goto_1
    invoke-direct {p0, v0, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_1

    move v4, v3

    .line 1106
    :cond_1
    invoke-direct {p0, v4, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v0, p1

    move-object v4, p0

    .line 1104
    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/support/widget/ScrollbarHelper;->computeScrollRange(Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Z)I

    move-result v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method private findFirstPartiallyOrCompletelyInvisibleChild(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Landroid/view/View;
    .locals 2
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 1807
    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private findFirstReferenceChild(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Landroid/view/View;
    .locals 6
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 1752
    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v4

    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findReferenceChild(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;
    .locals 2
    .param p1, "completelyVisible"    # Z
    .param p2, "acceptPartiallyVisible"    # Z

    .prologue
    .line 1708
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    .line 1709
    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1712
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;
    .locals 2
    .param p1, "completelyVisible"    # Z
    .param p2, "acceptPartiallyVisible"    # Z

    .prologue
    .line 1690
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    .line 1691
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1694
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private findLastPartiallyOrCompletelyInvisibleChild(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Landroid/view/View;
    .locals 2
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 1812
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private findLastReferenceChild(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Landroid/view/View;
    .locals 6
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 1756
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    const/4 v4, -0x1

    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findReferenceChild(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private findPartiallyOrCompletelyInvisibleChildClosestToEnd(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Landroid/view/View;
    .locals 1
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 1793
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findFirstPartiallyOrCompletelyInvisibleChild(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1794
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findLastPartiallyOrCompletelyInvisibleChild(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private findPartiallyOrCompletelyInvisibleChildClosestToStart(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Landroid/view/View;
    .locals 1
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 1801
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findLastPartiallyOrCompletelyInvisibleChild(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1802
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findFirstPartiallyOrCompletelyInvisibleChild(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private findReferenceChildClosestToEnd(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Landroid/view/View;
    .locals 1
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 1730
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findFirstReferenceChild(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1731
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findLastReferenceChild(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private findReferenceChildClosestToStart(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Landroid/view/View;
    .locals 1
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 1747
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findLastReferenceChild(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1748
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findFirstReferenceChild(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private fixLayoutEndGap(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)I
    .locals 3
    .param p1, "endOffset"    # I
    .param p2, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p3, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p4, "canOffsetChildren"    # Z

    .prologue
    .line 874
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    sub-int v1, v2, p1

    .line 875
    .local v1, "gap":I
    const/4 v0, 0x0

    .line 876
    .local v0, "fixOffset":I
    if-lez v1, :cond_0

    .line 877
    neg-int v2, v1

    invoke-virtual {p0, v2, p2, p3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollBy(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v2

    neg-int v0, v2

    .line 882
    add-int/2addr p1, v0

    .line 883
    if-eqz p4, :cond_1

    .line 885
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    sub-int v1, v2, p1

    .line 886
    if-lez v1, :cond_1

    .line 887
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->offsetChildren(I)V

    .line 888
    add-int v2, v1, v0

    .line 891
    :goto_0
    return v2

    .line 879
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move v2, v0

    .line 891
    goto :goto_0
.end method

.method private fixLayoutStartGap(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)I
    .locals 4
    .param p1, "startOffset"    # I
    .param p2, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p3, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p4, "canOffsetChildren"    # Z

    .prologue
    .line 899
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    sub-int v1, p1, v2

    .line 900
    .local v1, "gap":I
    const/4 v0, 0x0

    .line 901
    .local v0, "fixOffset":I
    if-lez v1, :cond_0

    .line 903
    invoke-virtual {p0, v1, p2, p3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollBy(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v2

    neg-int v0, v2

    .line 907
    add-int/2addr p1, v0

    .line 908
    if-eqz p4, :cond_1

    .line 910
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    sub-int v1, p1, v2

    .line 911
    if-lez v1, :cond_1

    .line 912
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    neg-int v3, v1

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->offsetChildren(I)V

    .line 913
    sub-int v2, v0, v1

    .line 916
    :goto_0
    return v2

    .line 905
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move v2, v0

    .line 916
    goto :goto_0
.end method

.method private getChildClosestToEnd()Landroid/view/View;
    .locals 1

    .prologue
    .line 1678
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private getChildClosestToStart()Landroid/view/View;
    .locals 1

    .prologue
    .line 1668
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private layoutForPredictiveAnimations(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;II)V
    .locals 13
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p3, "startOffset"    # I
    .param p4, "endOffset"    # I

    .prologue
    .line 668
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->willRunPredictiveAnimations()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v11

    if-nez v11, :cond_0

    .line 669
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v11

    if-nez v11, :cond_1

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 673
    :cond_1
    const/4 v8, 0x0

    .local v8, "scrapExtraStart":I
    const/4 v7, 0x0

    .line 674
    .local v7, "scrapExtraEnd":I
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->getScrapList()Ljava/util/List;

    move-result-object v9

    .line 675
    .local v9, "scrapList":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    .line 676
    .local v10, "scrapSize":I
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {p0, v11}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    .line 677
    .local v3, "firstChildPos":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v10, :cond_6

    .line 678
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .line 679
    .local v6, "scrap":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 677
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 682
    :cond_2
    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v5

    .line 683
    .local v5, "position":I
    if-ge v5, v3, :cond_3

    const/4 v11, 0x1

    :goto_3
    iget-boolean v12, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eq v11, v12, :cond_4

    const/4 v2, -0x1

    .line 685
    .local v2, "direction":I
    :goto_4
    const/4 v11, -0x1

    if-ne v2, v11, :cond_5

    .line 686
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    iget-object v12, v6, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v11

    add-int/2addr v8, v11

    goto :goto_2

    .line 683
    .end local v2    # "direction":I
    :cond_3
    const/4 v11, 0x0

    goto :goto_3

    :cond_4
    const/4 v2, 0x1

    goto :goto_4

    .line 688
    .restart local v2    # "direction":I
    :cond_5
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    iget-object v12, v6, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v11

    add-int/2addr v7, v11

    goto :goto_2

    .line 696
    .end local v2    # "direction":I
    .end local v5    # "position":I
    .end local v6    # "scrap":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_6
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iput-object v9, v11, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    .line 697
    if-lez v8, :cond_7

    .line 698
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v1

    .line 699
    .local v1, "anchor":Landroid/view/View;
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v11

    move/from16 v0, p3

    invoke-direct {p0, v11, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 700
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iput v8, v11, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 701
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    const/4 v12, 0x0

    iput v12, v11, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 702
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {v11}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->assignPositionFromScrapList()V

    .line 703
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    const/4 v12, 0x0

    invoke-virtual {p0, p1, v11, p2, v12}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->fill(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)I

    .line 706
    .end local v1    # "anchor":Landroid/view/View;
    :cond_7
    if-lez v7, :cond_8

    .line 707
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v1

    .line 708
    .restart local v1    # "anchor":Landroid/view/View;
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v11

    move/from16 v0, p4

    invoke-direct {p0, v11, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 709
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iput v7, v11, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 710
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    const/4 v12, 0x0

    iput v12, v11, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 711
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {v11}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->assignPositionFromScrapList()V

    .line 712
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    const/4 v12, 0x0

    invoke-virtual {p0, p1, v11, p2, v12}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->fill(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)I

    .line 714
    .end local v1    # "anchor":Landroid/view/View;
    :cond_8
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    const/4 v12, 0x0

    iput-object v12, v11, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    goto/16 :goto_0
.end method

.method private logChildren()V
    .locals 5

    .prologue
    .line 2001
    const-string/jumbo v2, "LinearLayoutManager"

    const-string/jumbo v3, "internal representation of views on the screen"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2003
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2004
    .local v0, "child":Landroid/view/View;
    const-string/jumbo v2, "LinearLayoutManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", coord:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 2005
    invoke-virtual {v4, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2004
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2007
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    const-string/jumbo v2, "LinearLayoutManager"

    const-string/jumbo v3, "=============="

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    return-void
.end method

.method private recycleByLayoutState(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;)V
    .locals 2
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "layoutState"    # Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    .prologue
    .line 1455
    iget-boolean v0, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    if-eqz v0, :cond_1

    .line 1463
    :cond_0
    :goto_0
    return-void

    .line 1458
    :cond_1
    iget v0, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1459
    iget v0, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->recycleViewsFromEnd(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;I)V

    goto :goto_0

    .line 1461
    :cond_2
    iget v0, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->recycleViewsFromStart(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;I)V

    goto :goto_0
.end method

.method private recycleChildren(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;II)V
    .locals 1
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .prologue
    .line 1338
    if-ne p2, p3, :cond_1

    .line 1353
    :cond_0
    return-void

    .line 1344
    :cond_1
    if-le p3, p2, :cond_2

    .line 1345
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 1346
    invoke-virtual {p0, v0, p1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->removeAndRecycleViewAt(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V

    .line 1345
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1349
    .end local v0    # "i":I
    :cond_2
    move v0, p2

    .restart local v0    # "i":I
    :goto_1
    if-le v0, p3, :cond_0

    .line 1350
    invoke-virtual {p0, v0, p1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->removeAndRecycleViewAt(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V

    .line 1349
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private recycleViewsFromEnd(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;I)V
    .locals 5
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "dt"    # I

    .prologue
    .line 1411
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    .line 1412
    .local v1, "childCount":I
    if-gez p2, :cond_1

    .line 1441
    :cond_0
    :goto_0
    return-void

    .line 1419
    :cond_1
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEnd()I

    move-result v4

    sub-int v3, v4, p2

    .line 1420
    .local v3, "limit":I
    iget-boolean v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v4, :cond_4

    .line 1421
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 1422
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1423
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    if-lt v4, v3, :cond_2

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 1424
    invoke-virtual {v4, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getTransformedStartWithDecoration(Landroid/view/View;)I

    move-result v4

    if-ge v4, v3, :cond_3

    .line 1426
    :cond_2
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4, v2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->recycleChildren(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;II)V

    goto :goto_0

    .line 1421
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1431
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "i":I
    :cond_4
    add-int/lit8 v2, v1, -0x1

    .restart local v2    # "i":I
    :goto_2
    if-ltz v2, :cond_0

    .line 1432
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1433
    .restart local v0    # "child":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    if-lt v4, v3, :cond_5

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 1434
    invoke-virtual {v4, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getTransformedStartWithDecoration(Landroid/view/View;)I

    move-result v4

    if-ge v4, v3, :cond_6

    .line 1436
    :cond_5
    add-int/lit8 v4, v1, -0x1

    invoke-direct {p0, p1, v4, v2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->recycleChildren(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;II)V

    goto :goto_0

    .line 1431
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_2
.end method

.method private recycleViewsFromStart(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;I)V
    .locals 5
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "dt"    # I

    .prologue
    .line 1366
    if-gez p2, :cond_1

    .line 1397
    :cond_0
    :goto_0
    return-void

    .line 1374
    :cond_1
    move v3, p2

    .line 1375
    .local v3, "limit":I
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    .line 1376
    .local v1, "childCount":I
    iget-boolean v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v4, :cond_4

    .line 1377
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_0

    .line 1378
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1379
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    if-gt v4, v3, :cond_2

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 1380
    invoke-virtual {v4, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getTransformedEndWithDecoration(Landroid/view/View;)I

    move-result v4

    if-le v4, v3, :cond_3

    .line 1382
    :cond_2
    add-int/lit8 v4, v1, -0x1

    invoke-direct {p0, p1, v4, v2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->recycleChildren(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;II)V

    goto :goto_0

    .line 1377
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1387
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "i":I
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v1, :cond_0

    .line 1388
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1389
    .restart local v0    # "child":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    if-gt v4, v3, :cond_5

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 1390
    invoke-virtual {v4, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getTransformedEndWithDecoration(Landroid/view/View;)I

    move-result v4

    if-le v4, v3, :cond_6

    .line 1392
    :cond_5
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4, v2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->recycleChildren(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;II)V

    goto :goto_0

    .line 1387
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private resolveShouldLayoutReverse()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 339
    iget v1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientation:I

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v1

    if-nez v1, :cond_1

    .line 340
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mReverseLayout:Z

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 344
    :goto_0
    return-void

    .line 342
    :cond_1
    iget-boolean v1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mReverseLayout:Z

    if-nez v1, :cond_2

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateAnchorFromChildren(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;)Z
    .locals 7
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p3, "anchorInfo"    # Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 747
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v5

    if-nez v5, :cond_1

    .line 780
    :cond_0
    :goto_0
    return v3

    .line 750
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 751
    .local v0, "focused":Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {p3, v0, p2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->isViewValidAsAnchor(Landroid/view/View;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 752
    invoke-virtual {p3, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->assignFromViewAndKeepVisibleRect(Landroid/view/View;)V

    move v3, v4

    .line 753
    goto :goto_0

    .line 755
    :cond_2
    iget-boolean v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v6, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-ne v5, v6, :cond_0

    .line 758
    iget-boolean v5, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v5, :cond_5

    .line 759
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findReferenceChildClosestToEnd(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v2

    .line 761
    .local v2, "referenceChild":Landroid/view/View;
    :goto_1
    if-eqz v2, :cond_0

    .line 762
    invoke-virtual {p3, v2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->assignFromView(Landroid/view/View;)V

    .line 765
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 767
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 768
    invoke-virtual {v5, v2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 769
    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v6

    if-ge v5, v6, :cond_3

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 770
    invoke-virtual {v5, v2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 771
    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v6

    if-ge v5, v6, :cond_6

    :cond_3
    move v1, v4

    .line 772
    .local v1, "notVisible":Z
    :goto_2
    if-eqz v1, :cond_4

    .line 773
    iget-boolean v3, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 774
    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    .line 775
    :goto_3
    iput v3, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .end local v1    # "notVisible":Z
    :cond_4
    move v3, v4

    .line 778
    goto :goto_0

    .line 760
    .end local v2    # "referenceChild":Landroid/view/View;
    :cond_5
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findReferenceChildClosestToStart(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    .restart local v2    # "referenceChild":Landroid/view/View;
    :cond_6
    move v1, v3

    .line 771
    goto :goto_2

    .line 774
    .restart local v1    # "notVisible":Z
    :cond_7
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 775
    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    goto :goto_3
.end method

.method private updateAnchorFromPendingData(Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;)Z
    .locals 11
    .param p1, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p2, "anchorInfo"    # Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;

    .prologue
    const/4 v10, -0x1

    const/high16 v9, -0x80000000

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 788
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-ne v5, v10, :cond_1

    :cond_0
    move v6, v7

    .line 866
    :goto_0
    return v6

    .line 792
    :cond_1
    iget v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-ltz v5, :cond_2

    iget v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v8

    if-lt v5, v8, :cond_3

    .line 793
    :cond_2
    iput v10, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 794
    iput v9, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    move v6, v7

    .line 798
    goto :goto_0

    .line 803
    :cond_3
    iget v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPosition:I

    iput v5, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 804
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 807
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    iget-boolean v5, v5, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean v5, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 808
    iget-boolean v5, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v5, :cond_4

    .line 809
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    iget v7, v7, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    sub-int/2addr v5, v7

    iput v5, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_0

    .line 812
    :cond_4
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    iget v7, v7, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    add-int/2addr v5, v7

    iput v5, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_0

    .line 818
    :cond_5
    iget v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    if-ne v5, v9, :cond_e

    .line 819
    iget v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 820
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_a

    .line 821
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v5, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    .line 822
    .local v1, "childSize":I
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getTotalSpace()I

    move-result v5

    if-le v1, v5, :cond_6

    .line 824
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    goto :goto_0

    .line 827
    :cond_6
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v5, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    iget-object v8, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 828
    invoke-virtual {v8}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    sub-int v4, v5, v8

    .line 829
    .local v4, "startGap":I
    if-gez v4, :cond_7

    .line 830
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    iput v5, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 831
    iput-boolean v7, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    goto/16 :goto_0

    .line 834
    :cond_7
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 835
    invoke-virtual {v7, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    sub-int v2, v5, v7

    .line 836
    .local v2, "endGap":I
    if-gez v2, :cond_8

    .line 837
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    iput v5, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 838
    iput-boolean v6, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    goto/16 :goto_0

    .line 841
    :cond_8
    iget-boolean v5, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v5, :cond_9

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 842
    invoke-virtual {v5, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v5

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 843
    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result v7

    add-int/2addr v5, v7

    .line 844
    :goto_1
    iput v5, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto/16 :goto_0

    .line 843
    :cond_9
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 844
    invoke-virtual {v5, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    goto :goto_1

    .line 846
    .end local v1    # "childSize":I
    .end local v2    # "endGap":I
    .end local v4    # "startGap":I
    :cond_a
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v5

    if-lez v5, :cond_c

    .line 848
    invoke-virtual {p0, v7}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    .line 849
    .local v3, "pos":I
    iget v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-ge v5, v3, :cond_d

    move v5, v6

    :goto_2
    iget-boolean v8, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-ne v5, v8, :cond_b

    move v7, v6

    :cond_b
    iput-boolean v7, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 852
    .end local v3    # "pos":I
    :cond_c
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    goto/16 :goto_0

    .restart local v3    # "pos":I
    :cond_d
    move v5, v7

    .line 849
    goto :goto_2

    .line 857
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "pos":I
    :cond_e
    iget-boolean v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v5, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 859
    iget-boolean v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v5, :cond_f

    .line 860
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    iget v7, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr v5, v7

    iput v5, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto/16 :goto_0

    .line 863
    :cond_f
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    iget v7, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    add-int/2addr v5, v7

    iput v5, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto/16 :goto_0
.end method

.method private updateAnchorInfoForLayout(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;)V
    .locals 1
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p3, "anchorInfo"    # Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;

    .prologue
    .line 719
    invoke-direct {p0, p2, p3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->updateAnchorFromPendingData(Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 737
    :cond_0
    :goto_0
    return-void

    .line 726
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->updateAnchorFromChildren(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 735
    invoke-virtual {p3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 736
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    iput v0, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateLayoutState(IIZLorg/telegram/messenger/support/widget/RecyclerView$State;)V
    .locals 7
    .param p1, "layoutDirection"    # I
    .param p2, "requiredSpace"    # I
    .param p3, "canUseExistingSpace"    # Z
    .param p4, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 1145
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->resolveIsInfinite()Z

    move-result v5

    iput-boolean v5, v4, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    .line 1146
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getExtraLayoutSpace(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v5

    iput v5, v4, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 1147
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iput p1, v4, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 1149
    if-ne p1, v3, :cond_2

    .line 1150
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iget v5, v4, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mExtra:I

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndPadding()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 1152
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v0

    .line 1154
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iget-boolean v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v5, :cond_1

    :goto_0
    iput v2, v4, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 1156
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iget v4, v4, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v3, v4

    iput v3, v2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1157
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1159
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 1160
    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    sub-int v1, v2, v3

    .line 1172
    .local v1, "scrollingOffset":I
    :goto_1
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iput p2, v2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1173
    if-eqz p3, :cond_0

    .line 1174
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iget v3, v2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    sub-int/2addr v3, v1

    iput v3, v2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1176
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iput v1, v2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1177
    return-void

    .end local v1    # "scrollingOffset":I
    :cond_1
    move v2, v3

    .line 1154
    goto :goto_0

    .line 1163
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v0

    .line 1164
    .restart local v0    # "child":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iget v5, v4, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mExtra:I

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 1165
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iget-boolean v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v5, :cond_3

    :goto_2
    iput v3, v4, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 1167
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iget v4, v4, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v3, v4

    iput v3, v2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1168
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1169
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    neg-int v2, v2

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 1170
    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    add-int v1, v2, v3

    .restart local v1    # "scrollingOffset":I
    goto :goto_1

    .end local v1    # "scrollingOffset":I
    :cond_3
    move v3, v2

    .line 1165
    goto :goto_2
.end method

.method private updateLayoutStateToFillEnd(II)V
    .locals 3
    .param p1, "itemPosition"    # I
    .param p2, "offset"    # I

    .prologue
    const/4 v1, 0x1

    .line 924
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    sub-int/2addr v2, p2

    iput v2, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 925
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, v2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 927
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iput p1, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 928
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iput v1, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 929
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iput p2, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 930
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    const/high16 v1, -0x80000000

    iput v1, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 931
    return-void

    :cond_0
    move v0, v1

    .line 925
    goto :goto_0
.end method

.method private updateLayoutStateToFillEnd(Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;)V
    .locals 2
    .param p1, "anchorInfo"    # Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;

    .prologue
    .line 920
    iget v0, p1, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    iget v1, p1, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 921
    return-void
.end method

.method private updateLayoutStateToFillStart(II)V
    .locals 3
    .param p1, "itemPosition"    # I
    .param p2, "offset"    # I

    .prologue
    const/4 v1, -0x1

    .line 938
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    sub-int v2, p2, v2

    iput v2, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 939
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iput p1, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 940
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 942
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iput v1, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 943
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iput p2, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 944
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    const/high16 v1, -0x80000000

    iput v1, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 946
    return-void

    :cond_0
    move v0, v1

    .line 940
    goto :goto_0
.end method

.method private updateLayoutStateToFillStart(Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;)V
    .locals 2
    .param p1, "anchorInfo"    # Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;

    .prologue
    .line 934
    iget v0, p1, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    iget v1, p1, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 935
    return-void
.end method


# virtual methods
.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1326
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 1327
    invoke-super {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1329
    :cond_0
    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canScrollVertically()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 284
    iget v1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public collectAdjacentPrefetchPositions(IILorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 5
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p4, "layoutPrefetchRegistry"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    .prologue
    const/4 v3, 0x1

    .line 1286
    iget v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientation:I

    if-nez v4, :cond_1

    move v1, p1

    .line 1287
    .local v1, "delta":I
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v4

    if-eqz v4, :cond_0

    if-nez v1, :cond_2

    .line 1296
    :cond_0
    :goto_1
    return-void

    .end local v1    # "delta":I
    :cond_1
    move v1, p2

    .line 1286
    goto :goto_0

    .line 1292
    .restart local v1    # "delta":I
    :cond_2
    if-lez v1, :cond_3

    move v2, v3

    .line 1293
    .local v2, "layoutDirection":I
    :goto_2
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1294
    .local v0, "absDy":I
    invoke-direct {p0, v2, v0, v3, p3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->updateLayoutState(IIZLorg/telegram/messenger/support/widget/RecyclerView$State;)V

    .line 1295
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p3, v3, p4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->collectPrefetchPositionsForLayoutState(Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V

    goto :goto_1

    .line 1292
    .end local v0    # "absDy":I
    .end local v2    # "layoutDirection":I
    :cond_3
    const/4 v2, -0x1

    goto :goto_2
.end method

.method public collectInitialPrefetchPositions(ILorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 7
    .param p1, "adapterItemCount"    # I
    .param p2, "layoutPrefetchRegistry"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    .prologue
    const/4 v5, 0x0

    const/4 v1, -0x1

    .line 1197
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1199
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    iget-boolean v2, v6, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 1200
    .local v2, "fromEnd":Z
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    iget v0, v6, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 1211
    .local v0, "anchorPos":I
    :goto_0
    if-eqz v2, :cond_3

    .line 1214
    .local v1, "direction":I
    :goto_1
    move v4, v0

    .line 1215
    .local v4, "targetPos":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    iget v6, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mInitialPrefetchItemCount:I

    if-ge v3, v6, :cond_4

    .line 1216
    if-ltz v4, :cond_4

    if-ge v4, p1, :cond_4

    .line 1217
    invoke-interface {p2, v4, v5}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    .line 1221
    add-int/2addr v4, v1

    .line 1215
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1202
    .end local v0    # "anchorPos":I
    .end local v1    # "direction":I
    .end local v2    # "fromEnd":Z
    .end local v3    # "i":I
    .end local v4    # "targetPos":I
    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 1203
    iget-boolean v2, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 1204
    .restart local v2    # "fromEnd":Z
    iget v6, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-ne v6, v1, :cond_2

    .line 1205
    if-eqz v2, :cond_1

    add-int/lit8 v0, p1, -0x1

    .restart local v0    # "anchorPos":I
    :goto_3
    goto :goto_0

    .end local v0    # "anchorPos":I
    :cond_1
    move v0, v5

    goto :goto_3

    .line 1207
    :cond_2
    iget v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .restart local v0    # "anchorPos":I
    goto :goto_0

    .line 1211
    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    .line 1223
    .restart local v1    # "direction":I
    .restart local v3    # "i":I
    .restart local v4    # "targetPos":I
    :cond_4
    return-void
.end method

.method collectPrefetchPositionsForLayoutState(Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 3
    .param p1, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p2, "layoutState"    # Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;
    .param p3, "layoutPrefetchRegistry"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    .prologue
    .line 1186
    iget v0, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1187
    .local v0, "pos":I
    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1188
    const/4 v1, 0x0

    iget v2, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {p3, v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    .line 1190
    :cond_0
    return-void
.end method

.method public computeHorizontalScrollExtent(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 1059
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->computeScrollExtent(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollOffset(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 1049
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->computeScrollOffset(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 1069
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->computeScrollRange(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 6
    .param p1, "targetPosition"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 439
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v4

    if-nez v4, :cond_0

    .line 440
    const/4 v2, 0x0

    .line 447
    :goto_0
    return-object v2

    .line 442
    :cond_0
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 443
    .local v1, "firstChildPos":I
    if-ge p1, v1, :cond_1

    move v2, v3

    :cond_1
    iget-boolean v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eq v2, v4, :cond_2

    const/4 v0, -0x1

    .line 444
    .local v0, "direction":I
    :goto_1
    iget v2, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientation:I

    if-nez v2, :cond_3

    .line 445
    new-instance v2, Landroid/graphics/PointF;

    int-to-float v3, v0

    invoke-direct {v2, v3, v5}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0

    .end local v0    # "direction":I
    :cond_2
    move v0, v3

    .line 443
    goto :goto_1

    .line 447
    .restart local v0    # "direction":I
    :cond_3
    new-instance v2, Landroid/graphics/PointF;

    int-to-float v3, v0

    invoke-direct {v2, v5, v3}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0
.end method

.method public computeVerticalScrollExtent(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 1064
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->computeScrollExtent(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 1054
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->computeScrollOffset(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 1074
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->computeScrollRange(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method convertFocusDirectionToLayoutDirection(I)I
    .locals 4
    .param p1, "focusDirection"    # I

    .prologue
    const/4 v0, -0x1

    const/high16 v1, -0x80000000

    const/4 v2, 0x1

    .line 1623
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 1656
    :cond_0
    :goto_0
    return v0

    .line 1625
    :sswitch_0
    iget v1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientation:I

    if-eq v1, v2, :cond_0

    .line 1627
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    .line 1628
    goto :goto_0

    .line 1633
    :sswitch_1
    iget v1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientation:I

    if-ne v1, v2, :cond_1

    move v0, v2

    .line 1634
    goto :goto_0

    .line 1635
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 1638
    goto :goto_0

    .line 1641
    :sswitch_2
    iget v3, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientation:I

    if-eq v3, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1644
    :sswitch_3
    iget v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientation:I

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    move v0, v1

    goto :goto_0

    .line 1647
    :sswitch_4
    iget v2, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientation:I

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1650
    :sswitch_5
    iget v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_3

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1

    .line 1623
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x11 -> :sswitch_4
        0x21 -> :sswitch_2
        0x42 -> :sswitch_5
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method createLayoutState()Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;
    .locals 1

    .prologue
    .line 967
    new-instance v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    invoke-direct {v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;-><init>()V

    return-object v0
.end method

.method ensureLayoutState()V
    .locals 1

    .prologue
    .line 953
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    if-nez v0, :cond_0

    .line 954
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->createLayoutState()Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    .line 956
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    if-nez v0, :cond_1

    .line 957
    iget v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientation:I

    invoke-static {p0, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->createOrientationHelper(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;I)Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 959
    :cond_1
    return-void
.end method

.method fill(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)I
    .locals 7
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "layoutState"    # Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;
    .param p3, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p4, "stopOnFocusable"    # Z

    .prologue
    const/high16 v6, -0x80000000

    .line 1479
    iget v2, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1480
    .local v2, "start":I
    iget v3, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    if-eq v3, v6, :cond_1

    .line 1482
    iget v3, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-gez v3, :cond_0

    .line 1483
    iget v3, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget v4, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v3, v4

    iput v3, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1485
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->recycleByLayoutState(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;)V

    .line 1487
    :cond_1
    iget v3, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    iget v4, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mExtra:I

    add-int v1, v3, v4

    .line 1488
    .local v1, "remainingSpace":I
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutChunkResult:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;

    .line 1489
    .local v0, "layoutChunkResult":Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;
    :cond_2
    iget-boolean v3, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    if-nez v3, :cond_3

    if-lez v1, :cond_4

    :cond_3
    invoke-virtual {p2, p3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->hasMore(Lorg/telegram/messenger/support/widget/RecyclerView$State;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1490
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;->resetInternal()V

    .line 1494
    invoke-virtual {p0, p1, p3, p2, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->layoutChunk(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;)V

    .line 1498
    iget-boolean v3, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    if-eqz v3, :cond_5

    .line 1529
    :cond_4
    :goto_0
    iget v3, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    sub-int v3, v2, v3

    return v3

    .line 1501
    :cond_5
    iget v3, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mOffset:I

    iget v4, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    iget v5, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1508
    iget-boolean v3, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iget-object v3, v3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v3, :cond_6

    .line 1509
    invoke-virtual {p3}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1510
    :cond_6
    iget v3, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    iget v4, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v3, v4

    iput v3, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1512
    iget v3, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v1, v3

    .line 1515
    :cond_7
    iget v3, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    if-eq v3, v6, :cond_9

    .line 1516
    iget v3, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget v4, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr v3, v4

    iput v3, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1517
    iget v3, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-gez v3, :cond_8

    .line 1518
    iget v3, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget v4, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v3, v4

    iput v3, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1520
    :cond_8
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->recycleByLayoutState(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;)V

    .line 1522
    :cond_9
    if-eqz p4, :cond_2

    iget-boolean v3, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    if-eqz v3, :cond_2

    goto :goto_0
.end method

.method public findFirstCompletelyVisibleItemPosition()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1851
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v3, v1, v2, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1852
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method public findFirstVisibleItemPosition()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1834
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v3, v1, v3, v2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1835
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method public findLastCompletelyVisibleItemPosition()I
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 1891
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v1, v3, v4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1892
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method public findLastVisibleItemPosition()I
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 1874
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v1, v3, v4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1875
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;
    .locals 5
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 1923
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1924
    if-le p2, p1, :cond_0

    const/4 v1, 0x1

    .line 1925
    .local v1, "next":I
    :goto_0
    if-nez v1, :cond_2

    .line 1926
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1942
    :goto_1
    return-object v3

    .line 1924
    .end local v1    # "next":I
    :cond_0
    if-ge p2, p1, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1928
    .restart local v1    # "next":I
    :cond_2
    const/4 v2, 0x0

    .line 1929
    .local v2, "preferredBoundsFlag":I
    const/4 v0, 0x0

    .line 1930
    .local v0, "acceptableBoundsFlag":I
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 1931
    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 1932
    const/16 v2, 0x4104

    .line 1934
    const/16 v0, 0x4004

    .line 1942
    :goto_2
    iget v3, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientation:I

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mHorizontalBoundCheck:Lorg/telegram/messenger/support/widget/ViewBoundsCheck;

    .line 1943
    invoke-virtual {v3, p1, p2, v2, v0}, Lorg/telegram/messenger/support/widget/ViewBoundsCheck;->findOneViewWithinBoundFlags(IIII)Landroid/view/View;

    move-result-object v3

    goto :goto_1

    .line 1937
    :cond_3
    const/16 v2, 0x1041

    .line 1939
    const/16 v0, 0x1001

    goto :goto_2

    .line 1943
    :cond_4
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mVerticalBoundCheck:Lorg/telegram/messenger/support/widget/ViewBoundsCheck;

    .line 1945
    invoke-virtual {v3, p1, p2, v2, v0}, Lorg/telegram/messenger/support/widget/ViewBoundsCheck;->findOneViewWithinBoundFlags(IIII)Landroid/view/View;

    move-result-object v3

    goto :goto_1
.end method

.method findOneVisibleChild(IIZZ)Landroid/view/View;
    .locals 3
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "completelyVisible"    # Z
    .param p4, "acceptPartiallyVisible"    # Z

    .prologue
    .line 1901
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1902
    const/4 v1, 0x0

    .line 1903
    .local v1, "preferredBoundsFlag":I
    const/4 v0, 0x0

    .line 1904
    .local v0, "acceptableBoundsFlag":I
    if-eqz p3, :cond_1

    .line 1905
    const/16 v1, 0x6003

    .line 1911
    :goto_0
    if-eqz p4, :cond_0

    .line 1912
    const/16 v0, 0x140

    .line 1915
    :cond_0
    iget v2, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientation:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mHorizontalBoundCheck:Lorg/telegram/messenger/support/widget/ViewBoundsCheck;

    .line 1916
    invoke-virtual {v2, p1, p2, v1, v0}, Lorg/telegram/messenger/support/widget/ViewBoundsCheck;->findOneViewWithinBoundFlags(IIII)Landroid/view/View;

    move-result-object v2

    .line 1915
    :goto_1
    return-object v2

    .line 1908
    :cond_1
    const/16 v1, 0x140

    goto :goto_0

    .line 1916
    :cond_2
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mVerticalBoundCheck:Lorg/telegram/messenger/support/widget/ViewBoundsCheck;

    .line 1918
    invoke-virtual {v2, p1, p2, v1, v0}, Lorg/telegram/messenger/support/widget/ViewBoundsCheck;->findOneViewWithinBoundFlags(IIII)Landroid/view/View;

    move-result-object v2

    goto :goto_1
.end method

.method findReferenceChild(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;III)Landroid/view/View;
    .locals 9
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "itemCount"    # I

    .prologue
    .line 1762
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1763
    const/4 v4, 0x0

    .line 1764
    .local v4, "invalidMatch":Landroid/view/View;
    const/4 v5, 0x0

    .line 1765
    .local v5, "outOfBoundsMatch":Landroid/view/View;
    iget-object v8, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v8}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    .line 1766
    .local v1, "boundsStart":I
    iget-object v8, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v8}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    .line 1767
    .local v0, "boundsEnd":I
    if-le p4, p3, :cond_1

    const/4 v2, 0x1

    .line 1768
    .local v2, "diff":I
    :goto_0
    move v3, p3

    .local v3, "i":I
    :goto_1
    if-eq v3, p4, :cond_4

    .line 1769
    invoke-virtual {p0, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1770
    .local v7, "view":Landroid/view/View;
    invoke-virtual {p0, v7}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    .line 1771
    .local v6, "position":I
    if-ltz v6, :cond_0

    if-ge v6, p5, :cond_0

    .line 1772
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    invoke-virtual {v8}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1773
    if-nez v4, :cond_0

    .line 1774
    move-object v4, v7

    .line 1768
    :cond_0
    :goto_2
    add-int/2addr v3, v2

    goto :goto_1

    .line 1767
    .end local v2    # "diff":I
    .end local v3    # "i":I
    .end local v6    # "position":I
    .end local v7    # "view":Landroid/view/View;
    :cond_1
    const/4 v2, -0x1

    goto :goto_0

    .line 1776
    .restart local v2    # "diff":I
    .restart local v3    # "i":I
    .restart local v6    # "position":I
    .restart local v7    # "view":Landroid/view/View;
    :cond_2
    iget-object v8, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v8, v7}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    if-ge v8, v0, :cond_3

    iget-object v8, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 1777
    invoke-virtual {v8, v7}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v8

    if-ge v8, v1, :cond_5

    .line 1778
    :cond_3
    if-nez v5, :cond_0

    .line 1779
    move-object v5, v7

    goto :goto_2

    .line 1786
    .end local v6    # "position":I
    .end local v7    # "view":Landroid/view/View;
    :cond_4
    if-eqz v5, :cond_6

    .end local v5    # "outOfBoundsMatch":Landroid/view/View;
    :goto_3
    move-object v7, v5

    :cond_5
    return-object v7

    .restart local v5    # "outOfBoundsMatch":Landroid/view/View;
    :cond_6
    move-object v5, v4

    goto :goto_3
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 384
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    .line 385
    .local v1, "childCount":I
    if-nez v1, :cond_1

    .line 386
    const/4 v0, 0x0

    .line 397
    :cond_0
    :goto_0
    return-object v0

    .line 388
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 389
    .local v2, "firstChild":I
    sub-int v3, p1, v2

    .line 390
    .local v3, "viewPosition":I
    if-ltz v3, :cond_2

    if-ge v3, v1, :cond_2

    .line 391
    invoke-virtual {p0, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 392
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    if-eq v4, p1, :cond_0

    .line 397
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    invoke-super {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public generateDefaultLayoutParams()Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 179
    new-instance v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, v1, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected getExtraLayoutSpace(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 421
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->hasTargetScrollPosition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getTotalSpace()I

    move-result v0

    .line 424
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInitialItemPrefetchCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1280
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getInitialPrefetchItemCount()I

    move-result v0

    return v0
.end method

.method public getInitialPrefetchItemCount()I
    .locals 1

    .prologue
    .line 1271
    iget v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mInitialPrefetchItemCount:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientation:I

    return v0
.end method

.method public getRecycleChildrenOnDetach()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    return v0
.end method

.method public getReverseLayout()Z
    .locals 1

    .prologue
    .line 353
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mReverseLayout:Z

    return v0
.end method

.method public getStackFromEnd()Z
    .locals 1

    .prologue
    .line 300
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mStackFromEnd:Z

    return v0
.end method

.method protected isLayoutRTL()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 949
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1

    .prologue
    .line 1139
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method layoutChunk(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;)V
    .locals 11
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p3, "layoutState"    # Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;
    .param p4, "result"    # Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;

    .prologue
    const/4 v10, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1534
    invoke-virtual {p3, p1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->next(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v1

    .line 1535
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_0

    .line 1541
    iput-boolean v7, p4, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    .line 1603
    :goto_0
    return-void

    .line 1544
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    .line 1545
    .local v6, "params":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    iget-object v0, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v0, :cond_5

    .line 1546
    iget-boolean v9, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iget v0, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v0, v10, :cond_3

    move v0, v7

    :goto_1
    if-ne v9, v0, :cond_4

    .line 1548
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->addView(Landroid/view/View;)V

    .line 1560
    :goto_2
    invoke-virtual {p0, v1, v8, v8}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 1561
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 1563
    iget v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientation:I

    if-ne v0, v7, :cond_a

    .line 1564
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1565
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getPaddingRight()I

    move-result v8

    sub-int v4, v0, v8

    .line 1566
    .local v4, "right":I
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    sub-int v2, v4, v0

    .line 1571
    .local v2, "left":I
    :goto_3
    iget v0, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v0, v10, :cond_9

    .line 1572
    iget v5, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1573
    .local v5, "bottom":I
    iget v0, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mOffset:I

    iget v8, p4, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int v3, v0, v8

    .local v3, "top":I
    :goto_4
    move-object v0, p0

    .line 1592
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 1599
    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->isItemChanged()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1600
    :cond_1
    iput-boolean v7, p4, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 1602
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v0

    iput-boolean v0, p4, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    goto :goto_0

    .end local v2    # "left":I
    .end local v3    # "top":I
    .end local v4    # "right":I
    .end local v5    # "bottom":I
    :cond_3
    move v0, v8

    .line 1546
    goto :goto_1

    .line 1550
    :cond_4
    invoke-virtual {p0, v1, v8}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_2

    .line 1553
    :cond_5
    iget-boolean v9, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iget v0, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v0, v10, :cond_6

    move v0, v7

    :goto_5
    if-ne v9, v0, :cond_7

    .line 1555
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->addDisappearingView(Landroid/view/View;)V

    goto :goto_2

    :cond_6
    move v0, v8

    .line 1553
    goto :goto_5

    .line 1557
    :cond_7
    invoke-virtual {p0, v1, v8}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->addDisappearingView(Landroid/view/View;I)V

    goto :goto_2

    .line 1568
    :cond_8
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getPaddingLeft()I

    move-result v2

    .line 1569
    .restart local v2    # "left":I
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int v4, v2, v0

    .restart local v4    # "right":I
    goto :goto_3

    .line 1575
    :cond_9
    iget v3, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1576
    .restart local v3    # "top":I
    iget v0, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mOffset:I

    iget v8, p4, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int v5, v0, v8

    .restart local v5    # "bottom":I
    goto :goto_4

    .line 1579
    .end local v2    # "left":I
    .end local v3    # "top":I
    .end local v4    # "right":I
    .end local v5    # "bottom":I
    :cond_a
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getPaddingTop()I

    move-result v3

    .line 1580
    .restart local v3    # "top":I
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int v5, v3, v0

    .line 1582
    .restart local v5    # "bottom":I
    iget v0, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v0, v10, :cond_b

    .line 1583
    iget v4, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1584
    .restart local v4    # "right":I
    iget v0, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mOffset:I

    iget v8, p4, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int v2, v0, v8

    .restart local v2    # "left":I
    goto :goto_4

    .line 1586
    .end local v2    # "left":I
    .end local v4    # "right":I
    :cond_b
    iget v2, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1587
    .restart local v2    # "left":I
    iget v0, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mOffset:I

    iget v8, p4, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int v4, v0, v8

    .restart local v4    # "right":I
    goto :goto_4
.end method

.method onAnchorReady(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;I)V
    .locals 0
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p3, "anchorInfo"    # Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;
    .param p4, "firstLayoutItemDirection"    # I

    .prologue
    .line 656
    return-void
.end method

.method public onDetachedFromWindow(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V
    .locals 1
    .param p1, "view"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    .prologue
    .line 213
    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V

    .line 214
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p0, p2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->removeAndRecycleAllViews(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V

    .line 216
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->clear()V

    .line 218
    :cond_0
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Landroid/view/View;
    .locals 10
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "focusDirection"    # I
    .param p3, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p4, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    const/high16 v7, -0x80000000

    const/4 v4, 0x0

    .line 1952
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 1953
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v5

    if-nez v5, :cond_1

    move-object v3, v4

    .line 1993
    :cond_0
    :goto_0
    return-object v3

    .line 1957
    :cond_1
    invoke-virtual {p0, p2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result v0

    .line 1958
    .local v0, "layoutDir":I
    if-ne v0, v7, :cond_2

    move-object v3, v4

    .line 1959
    goto :goto_0

    .line 1961
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1962
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1963
    const v5, 0x3eaaaaab

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getTotalSpace()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v1, v5

    .line 1964
    .local v1, "maxScroll":I
    invoke-direct {p0, v0, v1, v9, p4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->updateLayoutState(IIZLorg/telegram/messenger/support/widget/RecyclerView$State;)V

    .line 1965
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iput v7, v5, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1966
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iput-boolean v9, v5, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 1967
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    const/4 v6, 0x1

    invoke-virtual {p0, p3, v5, p4, v6}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->fill(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)I

    .line 1974
    if-ne v0, v8, :cond_3

    .line 1975
    invoke-direct {p0, p3, p4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findPartiallyOrCompletelyInvisibleChildClosestToStart(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v2

    .line 1982
    .local v2, "nextCandidate":Landroid/view/View;
    :goto_1
    if-ne v0, v8, :cond_4

    .line 1983
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v3

    .line 1987
    .local v3, "nextFocus":Landroid/view/View;
    :goto_2
    invoke-virtual {v3}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1988
    if-nez v2, :cond_0

    move-object v3, v4

    .line 1989
    goto :goto_0

    .line 1977
    .end local v2    # "nextCandidate":Landroid/view/View;
    .end local v3    # "nextFocus":Landroid/view/View;
    :cond_3
    invoke-direct {p0, p3, p4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findPartiallyOrCompletelyInvisibleChildClosestToEnd(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v2

    .restart local v2    # "nextCandidate":Landroid/view/View;
    goto :goto_1

    .line 1985
    :cond_4
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v3

    .restart local v3    # "nextFocus":Landroid/view/View;
    goto :goto_2

    :cond_5
    move-object v3, v2

    .line 1993
    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 222
    invoke-super {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 223
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 225
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object v0

    .line 226
    .local v0, "record":Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setFromIndex(I)V

    .line 227
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setToIndex(I)V

    .line 229
    .end local v0    # "record":Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    :cond_0
    return-void
.end method

.method public onLayoutChildren(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)V
    .locals 20
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPosition:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 467
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v17

    if-nez v17, :cond_1

    .line 468
    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->removeAndRecycleAllViews(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V

    .line 634
    :goto_0
    return-void

    .line 472
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 476
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 479
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mAnchorInfo:Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mValid:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPosition:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 483
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mAnchorInfo:Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->reset()V

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mAnchorInfo:Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mStackFromEnd:Z

    move/from16 v19, v0

    xor-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mAnchorInfo:Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->updateAnchorInfoForLayout(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;)V

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mAnchorInfo:Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mValid:Z

    .line 497
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getExtraLayoutSpace(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v8

    .line 500
    .local v8, "extra":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mLastScrollDelta:I

    move/from16 v17, v0

    if-ltz v17, :cond_9

    .line 501
    move v9, v8

    .line 502
    .local v9, "extraForEnd":I
    const/4 v10, 0x0

    .line 507
    .local v10, "extraForStart":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v17

    add-int v10, v10, v17

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndPadding()I

    move-result v17

    add-int v9, v9, v17

    .line 509
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPosition:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    move/from16 v17, v0

    const/high16 v18, -0x80000000

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 514
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v7

    .line 515
    .local v7, "existing":Landroid/view/View;
    if-eqz v7, :cond_5

    .line 518
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-object/from16 v18, v0

    .line 520
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v18

    sub-int v5, v17, v18

    .line 521
    .local v5, "current":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    move/from16 v17, v0

    sub-int v16, v5, v17

    .line 527
    .local v16, "upcomingOffset":I
    :goto_2
    if-lez v16, :cond_b

    .line 528
    add-int v10, v10, v16

    .line 537
    .end local v5    # "current":I
    .end local v7    # "existing":Landroid/view/View;
    .end local v16    # "upcomingOffset":I
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mAnchorInfo:Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    move/from16 v17, v0

    if-eqz v17, :cond_d

    .line 538
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    move/from16 v17, v0

    if-eqz v17, :cond_c

    const/4 v12, 0x1

    .line 545
    .local v12, "firstLayoutDirection":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mAnchorInfo:Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3, v12}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->onAnchorReady(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;I)V

    .line 546
    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->detachAndScrapAttachedViews(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->resolveIsInfinite()Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mIsPreLayout:Z

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mAnchorInfo:Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    move/from16 v17, v0

    if-eqz v17, :cond_f

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mAnchorInfo:Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->updateLayoutStateToFillStart(Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;)V

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v10, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, p2

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->fill(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)I

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v15, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 555
    .local v15, "startOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v11, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 556
    .local v11, "firstElement":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    move/from16 v17, v0

    if-lez v17, :cond_6

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    move/from16 v17, v0

    add-int v9, v9, v17

    .line 560
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mAnchorInfo:Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;)V

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v9, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, p2

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->fill(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)I

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v6, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 566
    .local v6, "endOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    move/from16 v17, v0

    if-lez v17, :cond_7

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v10, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 569
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v15}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v10, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, p2

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->fill(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)I

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v15, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 604
    .end local v11    # "firstElement":I
    :cond_7
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v17

    if-lez v17, :cond_8

    .line 608
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mStackFromEnd:Z

    move/from16 v18, v0

    xor-int v17, v17, v18

    if-eqz v17, :cond_11

    .line 609
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v17

    invoke-direct {v0, v6, v1, v2, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->fixLayoutEndGap(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)I

    move-result v13

    .line 610
    .local v13, "fixOffset":I
    add-int/2addr v15, v13

    .line 611
    add-int/2addr v6, v13

    .line 612
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v17

    invoke-direct {v0, v15, v1, v2, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->fixLayoutStartGap(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)I

    move-result v13

    .line 613
    add-int/2addr v15, v13

    .line 614
    add-int/2addr v6, v13

    .line 624
    .end local v13    # "fixOffset":I
    :cond_8
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v15, v6}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->layoutForPredictiveAnimations(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;II)V

    .line 625
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v17

    if-nez v17, :cond_12

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/support/widget/OrientationHelper;->onLayoutComplete()V

    .line 630
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mStackFromEnd:Z

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    goto/16 :goto_0

    .line 504
    .end local v6    # "endOffset":I
    .end local v9    # "extraForEnd":I
    .end local v10    # "extraForStart":I
    .end local v12    # "firstLayoutDirection":I
    .end local v15    # "startOffset":I
    :cond_9
    move v10, v8

    .line 505
    .restart local v10    # "extraForStart":I
    const/4 v9, 0x0

    .restart local v9    # "extraForEnd":I
    goto/16 :goto_1

    .line 523
    .restart local v7    # "existing":Landroid/view/View;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-object/from16 v18, v0

    .line 524
    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v18

    sub-int v5, v17, v18

    .line 525
    .restart local v5    # "current":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    move/from16 v17, v0

    sub-int v16, v17, v5

    .restart local v16    # "upcomingOffset":I
    goto/16 :goto_2

    .line 530
    :cond_b
    sub-int v9, v9, v16

    goto/16 :goto_3

    .line 538
    .end local v5    # "current":I
    .end local v7    # "existing":Landroid/view/View;
    .end local v16    # "upcomingOffset":I
    :cond_c
    const/4 v12, -0x1

    goto/16 :goto_4

    .line 541
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    move/from16 v17, v0

    if-eqz v17, :cond_e

    const/4 v12, -0x1

    .restart local v12    # "firstLayoutDirection":I
    :goto_8
    goto/16 :goto_4

    .end local v12    # "firstLayoutDirection":I
    :cond_e
    const/4 v12, 0x1

    goto :goto_8

    .line 576
    .restart local v12    # "firstLayoutDirection":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mAnchorInfo:Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;)V

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v9, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, p2

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->fill(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)I

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v6, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 580
    .restart local v6    # "endOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v14, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 581
    .local v14, "lastElement":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    move/from16 v17, v0

    if-lez v17, :cond_10

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    move/from16 v17, v0

    add-int v10, v10, v17

    .line 585
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mAnchorInfo:Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->updateLayoutStateToFillStart(Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;)V

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v10, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, p2

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->fill(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)I

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v15, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 591
    .restart local v15    # "startOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    move/from16 v17, v0

    if-lez v17, :cond_7

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v9, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 594
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v6}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v9, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, p2

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->fill(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)I

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v6, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mOffset:I

    goto/16 :goto_5

    .line 616
    .end local v14    # "lastElement":I
    :cond_11
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v17

    invoke-direct {v0, v15, v1, v2, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->fixLayoutStartGap(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)I

    move-result v13

    .line 617
    .restart local v13    # "fixOffset":I
    add-int/2addr v15, v13

    .line 618
    add-int/2addr v6, v13

    .line 619
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v17

    invoke-direct {v0, v6, v1, v2, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->fixLayoutEndGap(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)I

    move-result v13

    .line 620
    add-int/2addr v15, v13

    .line 621
    add-int/2addr v6, v13

    goto/16 :goto_6

    .line 628
    .end local v13    # "fixOffset":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mAnchorInfo:Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->reset()V

    goto/16 :goto_7
.end method

.method public onLayoutCompleted(Lorg/telegram/messenger/support/widget/RecyclerView$State;)V
    .locals 1
    .param p1, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 638
    invoke-super {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Lorg/telegram/messenger/support/widget/RecyclerView$State;)V

    .line 639
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    .line 640
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 641
    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 642
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mAnchorInfo:Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->reset()V

    .line 643
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 260
    instance-of v0, p1, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 261
    check-cast p1, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    .end local p1    # "state":Landroid/os/Parcelable;
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    .line 262
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->requestLayout()V

    .line 269
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 233
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    if-eqz v3, :cond_0

    .line 234
    new-instance v2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    invoke-direct {v2, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;-><init>(Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;)V

    .line 255
    :goto_0
    return-object v2

    .line 236
    :cond_0
    new-instance v2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    invoke-direct {v2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;-><init>()V

    .line 237
    .local v2, "state":Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 238
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 239
    iget-boolean v3, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    xor-int v0, v3, v4

    .line 240
    .local v0, "didLayoutFromEnd":Z
    iput-boolean v0, v2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 241
    if-eqz v0, :cond_1

    .line 242
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v1

    .line 243
    .local v1, "refChild":Landroid/view/View;
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 244
    invoke-virtual {v4, v1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 245
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    goto :goto_0

    .line 247
    .end local v1    # "refChild":Landroid/view/View;
    :cond_1
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v1

    .line 248
    .restart local v1    # "refChild":Landroid/view/View;
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 249
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 250
    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    goto :goto_0

    .line 253
    .end local v0    # "didLayoutFromEnd":Z
    .end local v1    # "refChild":Landroid/view/View;
    :cond_2
    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->invalidateAnchor()V

    goto :goto_0
.end method

.method public prepareForDrop(Landroid/view/View;Landroid/view/View;II)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 2071
    const-string/jumbo v5, "Cannot drop a view during a scroll or layout calculation"

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 2072
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 2073
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 2074
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 2075
    .local v1, "myPos":I
    invoke-virtual {p0, p2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 2076
    .local v2, "targetPos":I
    if-ge v1, v2, :cond_0

    move v0, v3

    .line 2078
    .local v0, "dropDirection":I
    :goto_0
    iget-boolean v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v5, :cond_2

    .line 2079
    if-ne v0, v3, :cond_1

    .line 2080
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 2081
    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 2082
    invoke-virtual {v4, p2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 2083
    invoke-virtual {v5, p1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    .line 2080
    invoke-virtual {p0, v2, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 2098
    :goto_1
    return-void

    .end local v0    # "dropDirection":I
    :cond_0
    move v0, v4

    .line 2076
    goto :goto_0

    .line 2085
    .restart local v0    # "dropDirection":I
    :cond_1
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 2086
    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 2087
    invoke-virtual {v4, p2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    .line 2085
    invoke-virtual {p0, v2, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1

    .line 2090
    :cond_2
    if-ne v0, v4, :cond_3

    .line 2091
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v3, p2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1

    .line 2093
    :cond_3
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 2094
    invoke-virtual {v3, p2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 2095
    invoke-virtual {v4, p1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    .line 2093
    invoke-virtual {p0, v2, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1
.end method

.method resolveIsInfinite()Z
    .locals 1

    .prologue
    .line 1180
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 1181
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEnd()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1180
    :goto_0
    return v0

    .line 1181
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method scrollBy(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 6
    .param p1, "dy"    # I
    .param p2, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p3, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1299
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v5

    if-eqz v5, :cond_0

    if-nez p1, :cond_1

    .line 1321
    :cond_0
    :goto_0
    return v3

    .line 1302
    :cond_1
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iput-boolean v4, v5, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 1303
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1304
    if-lez p1, :cond_2

    move v2, v4

    .line 1305
    .local v2, "layoutDirection":I
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1306
    .local v0, "absDy":I
    invoke-direct {p0, v2, v0, v4, p3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->updateLayoutState(IIZLorg/telegram/messenger/support/widget/RecyclerView$State;)V

    .line 1307
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iget v4, v4, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    .line 1308
    invoke-virtual {p0, p2, v5, p3, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->fill(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)I

    move-result v5

    add-int v1, v4, v5

    .line 1309
    .local v1, "consumed":I
    if-ltz v1, :cond_0

    .line 1315
    if-le v0, v1, :cond_3

    mul-int v3, v2, v1

    .line 1316
    .local v3, "scrolled":I
    :goto_2
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    neg-int v5, v3

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/support/widget/OrientationHelper;->offsetChildren(I)V

    .line 1320
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLayoutState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;

    iput v3, v4, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mLastScrollDelta:I

    goto :goto_0

    .line 1304
    .end local v0    # "absDy":I
    .end local v1    # "consumed":I
    .end local v2    # "layoutDirection":I
    .end local v3    # "scrolled":I
    :cond_2
    const/4 v2, -0x1

    goto :goto_1

    .restart local v0    # "absDy":I
    .restart local v1    # "consumed":I
    .restart local v2    # "layoutDirection":I
    :cond_3
    move v3, p1

    .line 1315
    goto :goto_2
.end method

.method public scrollHorizontallyBy(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 2
    .param p1, "dx"    # I
    .param p2, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p3, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 1029
    iget v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1030
    const/4 v0, 0x0

    .line 1032
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollBy(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method public scrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 986
    iput p1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 987
    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 988
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 989
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->invalidateAnchor()V

    .line 991
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->requestLayout()V

    .line 992
    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 1014
    iput p1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 1015
    iput p2, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 1016
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 1017
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;->invalidateAnchor()V

    .line 1019
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->requestLayout()V

    .line 1020
    return-void
.end method

.method public scrollVerticallyBy(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "dy"    # I
    .param p2, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p3, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 1041
    iget v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    .line 1042
    const/4 v0, 0x0

    .line 1044
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollBy(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method public setInitialPrefetchItemCount(I)V
    .locals 0
    .param p1, "itemCount"    # I

    .prologue
    .line 1255
    iput p1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mInitialPrefetchItemCount:I

    .line 1256
    return-void
.end method

.method public setOrientation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    const/4 v1, 0x0

    .line 320
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 321
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_0
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 324
    iget v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientation:I

    if-ne p1, v0, :cond_1

    .line 330
    :goto_0
    return-void

    .line 327
    :cond_1
    iput p1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientation:I

    .line 328
    iput-object v1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 329
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->requestLayout()V

    goto :goto_0
.end method

.method public setRecycleChildrenOnDetach(Z)V
    .locals 0
    .param p1, "recycleChildrenOnDetach"    # Z

    .prologue
    .line 208
    iput-boolean p1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    .line 209
    return-void
.end method

.method public setReverseLayout(Z)V
    .locals 1
    .param p1, "reverseLayout"    # Z

    .prologue
    .line 371
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 372
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mReverseLayout:Z

    if-ne p1, v0, :cond_0

    .line 377
    :goto_0
    return-void

    .line 375
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 376
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->requestLayout()V

    goto :goto_0
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1128
    iput-boolean p1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 1129
    return-void
.end method

.method public setStackFromEnd(Z)V
    .locals 1
    .param p1, "stackFromEnd"    # Z

    .prologue
    .line 291
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 292
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-ne v0, p1, :cond_0

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 296
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->requestLayout()V

    goto :goto_0
.end method

.method shouldMeasureTwice()Z
    .locals 2

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 1607
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getHeightMode()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 1608
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getWidthMode()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 1609
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->hasFlexibleChildInBothOrientations()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1607
    :goto_0
    return v0

    .line 1609
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public smoothScrollToPosition(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)V
    .locals 2
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p3, "position"    # I

    .prologue
    .line 431
    new-instance v0, Lorg/telegram/messenger/support/widget/LinearSmoothScroller;

    .line 432
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/support/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 433
    .local v0, "linearSmoothScroller":Lorg/telegram/messenger/support/widget/LinearSmoothScroller;
    invoke-virtual {v0, p3}, Lorg/telegram/messenger/support/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 434
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->startSmoothScroll(Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;)V

    .line 435
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 2

    .prologue
    .line 2062
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method validateChildOrder()V
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2021
    const-string/jumbo v8, "LinearLayoutManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "validating child count "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v8

    if-ge v8, v6, :cond_1

    .line 2058
    :cond_0
    return-void

    .line 2025
    :cond_1
    invoke-virtual {p0, v7}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 2026
    .local v2, "lastPos":I
    iget-object v8, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {p0, v7}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    .line 2027
    .local v3, "lastScreenLoc":I
    iget-boolean v8, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v8, :cond_5

    .line 2028
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v8

    if-ge v1, v8, :cond_0

    .line 2029
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2030
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    .line 2031
    .local v4, "pos":I
    iget-object v8, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v8, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    .line 2032
    .local v5, "screenLoc":I
    if-ge v4, v2, :cond_3

    .line 2033
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->logChildren()V

    .line 2034
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "detected invalid position. loc invalid? "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-ge v5, v3, :cond_2

    :goto_1
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_2
    move v6, v7

    goto :goto_1

    .line 2037
    :cond_3
    if-le v5, v3, :cond_4

    .line 2038
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->logChildren()V

    .line 2039
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "detected invalid location"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2028
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2043
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "i":I
    .end local v4    # "pos":I
    .end local v5    # "screenLoc":I
    :cond_5
    const/4 v1, 0x1

    .restart local v1    # "i":I
    :goto_2
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v8

    if-ge v1, v8, :cond_0

    .line 2044
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2045
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    .line 2046
    .restart local v4    # "pos":I
    iget-object v8, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v8, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    .line 2047
    .restart local v5    # "screenLoc":I
    if-ge v4, v2, :cond_7

    .line 2048
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->logChildren()V

    .line 2049
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "detected invalid position. loc invalid? "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-ge v5, v3, :cond_6

    :goto_3
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_6
    move v6, v7

    goto :goto_3

    .line 2052
    :cond_7
    if-ge v5, v3, :cond_8

    .line 2053
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->logChildren()V

    .line 2054
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "detected invalid location"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2043
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
