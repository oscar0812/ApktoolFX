.class public Lorg/telegram/messenger/support/widget/LinearSmoothScrollerMiddle;
.super Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;
.source "LinearSmoothScrollerMiddle.java"


# static fields
.field private static final MILLISECONDS_PER_INCH:F = 25.0f

.field private static final TARGET_SEEK_EXTRA_SCROLL_RATIO:F = 1.2f

.field private static final TARGET_SEEK_SCROLL_DISTANCE_PX:I = 0x2710


# instance fields
.field private final MILLISECONDS_PER_PX:F

.field protected final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field protected mInterimTargetDx:I

.field protected mInterimTargetDy:I

.field protected final mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

.field protected mTargetVector:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;-><init>()V

    .line 26
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/LinearSmoothScrollerMiddle;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 28
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/LinearSmoothScrollerMiddle;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 34
    iput v2, p0, Lorg/telegram/messenger/support/widget/LinearSmoothScrollerMiddle;->mInterimTargetDx:I

    iput v2, p0, Lorg/telegram/messenger/support/widget/LinearSmoothScrollerMiddle;->mInterimTargetDy:I

    .line 37
    const/high16 v0, 0x41c80000    # 25.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/support/widget/LinearSmoothScrollerMiddle;->MILLISECONDS_PER_PX:F

    .line 38
    return-void
.end method

.method private clampApplyScroll(II)I
    .locals 2
    .param p1, "tmpDt"    # I
    .param p2, "dt"    # I

    .prologue
    .line 106
    move v0, p1

    .line 107
    .local v0, "before":I
    sub-int/2addr p1, p2

    .line 108
    mul-int v1, v0, p1

    if-gtz v1, :cond_0

    .line 109
    const/4 p1, 0x0

    .line 111
    .end local p1    # "tmpDt":I
    :cond_0
    return p1
.end method


# virtual methods
.method public calculateDyToMakeVisible(Landroid/view/View;)I
    .locals 13
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x0

    .line 115
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearSmoothScrollerMiddle;->getLayoutManager()Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    move-result-object v5

    .line 116
    .local v5, "layoutManager":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v11

    if-nez v11, :cond_2

    :cond_0
    move v3, v10

    .line 140
    :cond_1
    :goto_0
    return v3

    .line 119
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    .line 120
    .local v6, "params":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    invoke-virtual {v5, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v11

    iget v12, v6, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int v8, v11, v12

    .line 121
    .local v8, "top":I
    invoke-virtual {v5, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v11

    iget v12, v6, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int v0, v11, v12

    .line 122
    .local v0, "bottom":I
    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v7

    .line 123
    .local v7, "start":I
    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v11

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v12

    sub-int v4, v11, v12

    .line 125
    .local v4, "end":I
    if-le v8, v7, :cond_3

    if-ge v0, v4, :cond_3

    move v3, v10

    .line 126
    goto :goto_0

    .line 128
    :cond_3
    sub-int v1, v4, v7

    .line 129
    .local v1, "boxSize":I
    sub-int v9, v0, v8

    .line 130
    .local v9, "viewSize":I
    sub-int v11, v1, v9

    div-int/lit8 v7, v11, 0x2

    .line 131
    add-int v4, v7, v9

    .line 132
    sub-int v3, v7, v8

    .line 133
    .local v3, "dtStart":I
    if-gtz v3, :cond_1

    .line 136
    sub-int v2, v4, v0

    .line 137
    .local v2, "dtEnd":I
    if-gez v2, :cond_4

    move v3, v2

    .line 138
    goto :goto_0

    :cond_4
    move v3, v10

    .line 140
    goto :goto_0
.end method

.method protected calculateTimeForDeceleration(I)I
    .locals 4
    .param p1, "dx"    # I

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/LinearSmoothScrollerMiddle;->calculateTimeForScrolling(I)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fd57a786c22680aL    # 0.3356

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method protected calculateTimeForScrolling(I)I
    .locals 2
    .param p1, "dx"    # I

    .prologue
    .line 79
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/messenger/support/widget/LinearSmoothScrollerMiddle;->MILLISECONDS_PER_PX:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 2
    .param p1, "targetPosition"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 145
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearSmoothScrollerMiddle;->getLayoutManager()Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 146
    .local v0, "layoutManager":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;
    instance-of v1, v0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-eqz v1, :cond_0

    .line 147
    check-cast v0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    .end local v0    # "layoutManager":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;
    invoke-interface {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v1

    .line 149
    :goto_0
    return-object v1

    .restart local v0    # "layoutManager":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onSeekTargetStep(IILorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p4, "action"    # Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;

    .prologue
    .line 56
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearSmoothScrollerMiddle;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 57
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearSmoothScrollerMiddle;->stop()V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    iget v0, p0, Lorg/telegram/messenger/support/widget/LinearSmoothScrollerMiddle;->mInterimTargetDx:I

    invoke-direct {p0, v0, p1}, Lorg/telegram/messenger/support/widget/LinearSmoothScrollerMiddle;->clampApplyScroll(II)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/support/widget/LinearSmoothScrollerMiddle;->mInterimTargetDx:I

    .line 61
    iget v0, p0, Lorg/telegram/messenger/support/widget/LinearSmoothScrollerMiddle;->mInterimTargetDy:I

    invoke-direct {p0, v0, p2}, Lorg/telegram/messenger/support/widget/LinearSmoothScrollerMiddle;->clampApplyScroll(II)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/support/widget/LinearSmoothScrollerMiddle;->mInterimTargetDy:I

    .line 63
    iget v0, p0, Lorg/telegram/messenger/support/widget/LinearSmoothScrollerMiddle;->mInterimTargetDx:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/support/widget/LinearSmoothScrollerMiddle;->mInterimTargetDy:I

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p0, p4}, Lorg/telegram/messenger/support/widget/LinearSmoothScrollerMiddle;->updateActionForInterimTarget(Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/support/widget/LinearSmoothScrollerMiddle;->mInterimTargetDy:I

    iput v0, p0, Lorg/telegram/messenger/support/widget/LinearSmoothScrollerMiddle;->mInterimTargetDx:I

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/LinearSmoothScrollerMiddle;->mTargetVector:Landroid/graphics/PointF;

    .line 72
    return-void
.end method

.method protected onTargetFound(Landroid/view/View;Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 6
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p3, "action"    # Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/LinearSmoothScrollerMiddle;->calculateDyToMakeVisible(Landroid/view/View;)I

    move-result v0

    .line 48
    .local v0, "dy":I
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/LinearSmoothScrollerMiddle;->calculateTimeForDeceleration(I)I

    move-result v1

    .line 49
    .local v1, "time":I
    if-lez v1, :cond_0

    .line 50
    const/4 v2, 0x0

    neg-int v3, v0

    const/16 v4, 0x190

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/LinearSmoothScrollerMiddle;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, v2, v3, v4, v5}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    .line 52
    :cond_0
    return-void
.end method

.method protected updateActionForInterimTarget(Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 7
    .param p1, "action"    # Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;

    .prologue
    const v5, 0x461c4000    # 10000.0f

    const/4 v4, 0x0

    const v6, 0x3f99999a    # 1.2f

    .line 84
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearSmoothScrollerMiddle;->getTargetPosition()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/support/widget/LinearSmoothScrollerMiddle;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v0

    .line 85
    .local v0, "scrollVector":Landroid/graphics/PointF;
    if-eqz v0, :cond_0

    iget v3, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    iget v3, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    .line 86
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearSmoothScrollerMiddle;->getTargetPosition()I

    move-result v1

    .line 87
    .local v1, "target":I
    invoke-virtual {p1, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->jumpTo(I)V

    .line 88
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearSmoothScrollerMiddle;->stop()V

    .line 103
    .end local v1    # "target":I
    :goto_0
    return-void

    .line 91
    :cond_1
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/LinearSmoothScrollerMiddle;->normalize(Landroid/graphics/PointF;)V

    .line 92
    iput-object v0, p0, Lorg/telegram/messenger/support/widget/LinearSmoothScrollerMiddle;->mTargetVector:Landroid/graphics/PointF;

    .line 94
    iget v3, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, p0, Lorg/telegram/messenger/support/widget/LinearSmoothScrollerMiddle;->mInterimTargetDx:I

    .line 95
    iget v3, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, p0, Lorg/telegram/messenger/support/widget/LinearSmoothScrollerMiddle;->mInterimTargetDy:I

    .line 96
    const/16 v3, 0x2710

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/support/widget/LinearSmoothScrollerMiddle;->calculateTimeForScrolling(I)I

    move-result v2

    .line 100
    .local v2, "time":I
    iget v3, p0, Lorg/telegram/messenger/support/widget/LinearSmoothScrollerMiddle;->mInterimTargetDx:I

    int-to-float v3, v3

    mul-float/2addr v3, v6

    float-to-int v3, v3

    iget v4, p0, Lorg/telegram/messenger/support/widget/LinearSmoothScrollerMiddle;->mInterimTargetDy:I

    int-to-float v4, v4

    mul-float/2addr v4, v6

    float-to-int v4, v4

    int-to-float v5, v2

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/LinearSmoothScrollerMiddle;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {p1, v3, v4, v5, v6}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    goto :goto_0
.end method
