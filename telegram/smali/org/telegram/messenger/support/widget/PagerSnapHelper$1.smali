.class Lorg/telegram/messenger/support/widget/PagerSnapHelper$1;
.super Lorg/telegram/messenger/support/widget/LinearSmoothScroller;
.source "PagerSnapHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/support/widget/PagerSnapHelper;->createSnapScroller(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)Lorg/telegram/messenger/support/widget/LinearSmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/support/widget/PagerSnapHelper;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/widget/PagerSnapHelper;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/support/widget/PagerSnapHelper;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/PagerSnapHelper$1;->this$0:Lorg/telegram/messenger/support/widget/PagerSnapHelper;

    invoke-direct {p0, p2}, Lorg/telegram/messenger/support/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 2
    .param p1, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 140
    const/high16 v0, 0x42c80000    # 100.0f

    iget v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method protected calculateTimeForScrolling(I)I
    .locals 2
    .param p1, "dx"    # I

    .prologue
    .line 145
    const/16 v0, 0x64

    invoke-super {p0, p1}, Lorg/telegram/messenger/support/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method protected onTargetFound(Landroid/view/View;Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 6
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p3, "action"    # Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;

    .prologue
    .line 128
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/PagerSnapHelper$1;->this$0:Lorg/telegram/messenger/support/widget/PagerSnapHelper;

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/PagerSnapHelper$1;->this$0:Lorg/telegram/messenger/support/widget/PagerSnapHelper;

    iget-object v5, v5, Lorg/telegram/messenger/support/widget/PagerSnapHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/RecyclerView;->getLayoutManager()Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Lorg/telegram/messenger/support/widget/PagerSnapHelper;->calculateDistanceToFinalSnap(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object v2

    .line 130
    .local v2, "snapDistances":[I
    const/4 v4, 0x0

    aget v0, v2, v4

    .line 131
    .local v0, "dx":I
    const/4 v4, 0x1

    aget v1, v2, v4

    .line 132
    .local v1, "dy":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/support/widget/PagerSnapHelper$1;->calculateTimeForDeceleration(I)I

    move-result v3

    .line 133
    .local v3, "time":I
    if-lez v3, :cond_0

    .line 134
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/PagerSnapHelper$1;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, v0, v1, v3, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    .line 136
    :cond_0
    return-void
.end method
