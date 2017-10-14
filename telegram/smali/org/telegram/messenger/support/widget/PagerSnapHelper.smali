.class public Lorg/telegram/messenger/support/widget/PagerSnapHelper;
.super Lorg/telegram/messenger/support/widget/SnapHelper;
.source "PagerSnapHelper.java"


# static fields
.field private static final MAX_SCROLL_ON_FLING_DURATION:I = 0x64


# instance fields
.field private mHorizontalHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mVerticalHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/SnapHelper;-><init>()V

    return-void
.end method

.method private distanceToCenter(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Landroid/view/View;Lorg/telegram/messenger/support/widget/OrientationHelper;)I
    .locals 4
    .param p1, "layoutManager"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "targetView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "helper"    # Lorg/telegram/messenger/support/widget/OrientationHelper;

    .prologue
    .line 152
    invoke-virtual {p3, p2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    .line 153
    invoke-virtual {p3, p2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    .line 155
    .local v0, "childCenter":I
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getClipToPadding()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    invoke-virtual {p3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    invoke-virtual {p3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getTotalSpace()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    .line 160
    .local v1, "containerCenter":I
    :goto_0
    sub-int v2, v0, v1

    return v2

    .line 158
    .end local v1    # "containerCenter":I
    :cond_0
    invoke-virtual {p3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEnd()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .restart local v1    # "containerCenter":I
    goto :goto_0
.end method

.method private findCenterView(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Lorg/telegram/messenger/support/widget/OrientationHelper;)Landroid/view/View;
    .locals 10
    .param p1, "layoutManager"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;
    .param p2, "helper"    # Lorg/telegram/messenger/support/widget/OrientationHelper;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 175
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v5

    .line 176
    .local v5, "childCount":I
    if-nez v5, :cond_1

    .line 177
    const/4 v6, 0x0

    .line 201
    :cond_0
    return-object v6

    .line 180
    :cond_1
    const/4 v6, 0x0

    .line 182
    .local v6, "closestChild":Landroid/view/View;
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getClipToPadding()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 183
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getTotalSpace()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int v2, v8, v9

    .line 187
    .local v2, "center":I
    :goto_0
    const v0, 0x7fffffff

    .line 189
    .local v0, "absClosest":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v5, :cond_0

    .line 190
    invoke-virtual {p1, v7}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 191
    .local v3, "child":Landroid/view/View;
    invoke-virtual {p2, v3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    .line 192
    invoke-virtual {p2, v3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int v4, v8, v9

    .line 193
    .local v4, "childCenter":I
    sub-int v8, v4, v2

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 196
    .local v1, "absDistance":I
    if-ge v1, v0, :cond_2

    .line 197
    move v0, v1

    .line 198
    move-object v6, v3

    .line 189
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 185
    .end local v0    # "absClosest":I
    .end local v1    # "absDistance":I
    .end local v2    # "center":I
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childCenter":I
    .end local v7    # "i":I
    :cond_3
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEnd()I

    move-result v8

    div-int/lit8 v2, v8, 0x2

    .restart local v2    # "center":I
    goto :goto_0
.end method

.method private findStartView(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Lorg/telegram/messenger/support/widget/OrientationHelper;)Landroid/view/View;
    .locals 6
    .param p1, "layoutManager"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;
    .param p2, "helper"    # Lorg/telegram/messenger/support/widget/OrientationHelper;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 216
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    .line 217
    .local v1, "childCount":I
    if-nez v1, :cond_1

    .line 218
    const/4 v3, 0x0

    .line 234
    :cond_0
    return-object v3

    .line 221
    :cond_1
    const/4 v3, 0x0

    .line 222
    .local v3, "closestChild":Landroid/view/View;
    const v5, 0x7fffffff

    .line 224
    .local v5, "startest":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_0

    .line 225
    invoke-virtual {p1, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 226
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p2, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    .line 229
    .local v2, "childStart":I
    if-ge v2, v5, :cond_2

    .line 230
    move v5, v2

    .line 231
    move-object v3, v0

    .line 224
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private getHorizontalHelper(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)Lorg/telegram/messenger/support/widget/OrientationHelper;
    .locals 1
    .param p1, "layoutManager"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/PagerSnapHelper;->mHorizontalHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/PagerSnapHelper;->mHorizontalHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/OrientationHelper;->mLayoutManager:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eq v0, p1, :cond_1

    .line 249
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->createHorizontalHelper(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/PagerSnapHelper;->mHorizontalHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 251
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/PagerSnapHelper;->mHorizontalHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    return-object v0
.end method

.method private getVerticalHelper(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)Lorg/telegram/messenger/support/widget/OrientationHelper;
    .locals 1
    .param p1, "layoutManager"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/PagerSnapHelper;->mVerticalHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/PagerSnapHelper;->mVerticalHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/OrientationHelper;->mLayoutManager:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eq v0, p1, :cond_1

    .line 240
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->createVerticalHelper(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/PagerSnapHelper;->mVerticalHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 242
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/PagerSnapHelper;->mVerticalHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    return-object v0
.end method


# virtual methods
.method public calculateDistanceToFinalSnap(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .locals 4
    .param p1, "layoutManager"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "targetView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 50
    .local v0, "out":[I
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/PagerSnapHelper;->getHorizontalHelper(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-result-object v1

    .line 51
    invoke-direct {p0, p1, p2, v1}, Lorg/telegram/messenger/support/widget/PagerSnapHelper;->distanceToCenter(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Landroid/view/View;Lorg/telegram/messenger/support/widget/OrientationHelper;)I

    move-result v1

    aput v1, v0, v2

    .line 57
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/PagerSnapHelper;->getVerticalHelper(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-result-object v1

    .line 58
    invoke-direct {p0, p1, p2, v1}, Lorg/telegram/messenger/support/widget/PagerSnapHelper;->distanceToCenter(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Landroid/view/View;Lorg/telegram/messenger/support/widget/OrientationHelper;)I

    move-result v1

    aput v1, v0, v3

    .line 63
    :goto_1
    return-object v0

    .line 54
    :cond_0
    aput v2, v0, v2

    goto :goto_0

    .line 61
    :cond_1
    aput v2, v0, v3

    goto :goto_1
.end method

.method protected createSnapScroller(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)Lorg/telegram/messenger/support/widget/LinearSmoothScroller;
    .locals 2
    .param p1, "layoutManager"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    .prologue
    .line 122
    instance-of v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-nez v0, :cond_0

    .line 123
    const/4 v0, 0x0

    .line 125
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/telegram/messenger/support/widget/PagerSnapHelper$1;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/PagerSnapHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/support/widget/PagerSnapHelper$1;-><init>(Lorg/telegram/messenger/support/widget/PagerSnapHelper;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public findSnapView(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .locals 1
    .param p1, "layoutManager"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/PagerSnapHelper;->getVerticalHelper(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/support/widget/PagerSnapHelper;->findCenterView(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Lorg/telegram/messenger/support/widget/OrientationHelper;)Landroid/view/View;

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    .line 71
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/PagerSnapHelper;->getHorizontalHelper(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/support/widget/PagerSnapHelper;->findCenterView(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Lorg/telegram/messenger/support/widget/OrientationHelper;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 74
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findTargetSnapPosition(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;II)I
    .locals 12
    .param p1, "layoutManager"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;
    .param p2, "velocityX"    # I
    .param p3, "velocityY"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    .line 80
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v2

    .line 81
    .local v2, "itemCount":I
    if-nez v2, :cond_1

    move v0, v9

    .line 115
    :cond_0
    :goto_0
    return v0

    .line 85
    :cond_1
    const/4 v3, 0x0

    .line 86
    .local v3, "mStartMostChildView":Landroid/view/View;
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 87
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/PagerSnapHelper;->getVerticalHelper(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-result-object v10

    invoke-direct {p0, p1, v10}, Lorg/telegram/messenger/support/widget/PagerSnapHelper;->findStartView(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Lorg/telegram/messenger/support/widget/OrientationHelper;)Landroid/view/View;

    move-result-object v3

    .line 92
    :cond_2
    :goto_1
    if-nez v3, :cond_4

    move v0, v9

    .line 93
    goto :goto_0

    .line 88
    :cond_3
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 89
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/PagerSnapHelper;->getHorizontalHelper(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-result-object v10

    invoke-direct {p0, p1, v10}, Lorg/telegram/messenger/support/widget/PagerSnapHelper;->findStartView(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Lorg/telegram/messenger/support/widget/OrientationHelper;)Landroid/view/View;

    move-result-object v3

    goto :goto_1

    .line 95
    :cond_4
    invoke-virtual {p1, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 96
    .local v0, "centerPosition":I
    if-ne v0, v9, :cond_5

    move v0, v9

    .line 97
    goto :goto_0

    .line 101
    :cond_5
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 102
    if-lez p2, :cond_8

    move v1, v7

    .line 106
    .local v1, "forwardDirection":Z
    :goto_2
    const/4 v4, 0x0

    .line 107
    .local v4, "reverseLayout":Z
    instance-of v9, p1, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-eqz v9, :cond_7

    move-object v6, p1

    .line 108
    check-cast v6, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    .line 110
    .local v6, "vectorProvider":Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;
    add-int/lit8 v9, v2, -0x1

    invoke-interface {v6, v9}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v5

    .line 111
    .local v5, "vectorForEnd":Landroid/graphics/PointF;
    if-eqz v5, :cond_7

    .line 112
    iget v9, v5, Landroid/graphics/PointF;->x:F

    cmpg-float v9, v9, v11

    if-ltz v9, :cond_6

    iget v9, v5, Landroid/graphics/PointF;->y:F

    cmpg-float v9, v9, v11

    if-gez v9, :cond_b

    :cond_6
    move v4, v7

    .line 115
    .end local v5    # "vectorForEnd":Landroid/graphics/PointF;
    .end local v6    # "vectorProvider":Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;
    :cond_7
    :goto_3
    if-eqz v4, :cond_c

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v1    # "forwardDirection":Z
    .end local v4    # "reverseLayout":Z
    :cond_8
    move v1, v8

    .line 102
    goto :goto_2

    .line 104
    :cond_9
    if-lez p3, :cond_a

    move v1, v7

    .restart local v1    # "forwardDirection":Z
    :goto_4
    goto :goto_2

    .end local v1    # "forwardDirection":Z
    :cond_a
    move v1, v8

    goto :goto_4

    .restart local v1    # "forwardDirection":Z
    .restart local v4    # "reverseLayout":Z
    .restart local v5    # "vectorForEnd":Landroid/graphics/PointF;
    .restart local v6    # "vectorProvider":Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;
    :cond_b
    move v4, v8

    .line 112
    goto :goto_3

    .line 115
    .end local v5    # "vectorForEnd":Landroid/graphics/PointF;
    .end local v6    # "vectorProvider":Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;
    :cond_c
    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
