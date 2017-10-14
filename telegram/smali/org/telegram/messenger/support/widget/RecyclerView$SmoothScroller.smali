.class public abstract Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SmoothScroller"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;,
        Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;
    }
.end annotation


# instance fields
.field private mLayoutManager:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

.field private mPendingInitialRun:Z

.field private mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

.field private final mRecyclingAction:Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;

.field private mRunning:Z

.field private mTargetPosition:I

.field private mTargetView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10926
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10912
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 10927
    new-instance v0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;

    invoke-direct {v0, v1, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;-><init>(II)V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;

    .line 10928
    return-void
.end method

.method static synthetic access$400(Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;II)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 10910
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    return-void
.end method

.method private onAnimation(II)V
    .locals 5
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 11022
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    .line 11023
    .local v1, "recyclerView":Lorg/telegram/messenger/support/widget/RecyclerView;
    iget-boolean v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    if-nez v1, :cond_1

    .line 11024
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->stop()V

    .line 11026
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 11027
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 11029
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->getChildPosition(Landroid/view/View;)I

    move-result v2

    iget v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    if-ne v2, v3, :cond_4

    .line 11030
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    iget-object v3, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {p0, v2, v3, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->onTargetFound(Landroid/view/View;Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;)V

    .line 11031
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->runIfNecessary(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    .line 11032
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->stop()V

    .line 11038
    :cond_2
    :goto_0
    iget-boolean v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v2, :cond_3

    .line 11039
    iget-object v2, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {p0, p1, p2, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->onSeekTargetStep(IILorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;)V

    .line 11040
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->hasJumpTarget()Z

    move-result v0

    .line 11041
    .local v0, "hadJumpTarget":Z
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->runIfNecessary(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    .line 11042
    if-eqz v0, :cond_3

    .line 11044
    iget-boolean v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v2, :cond_5

    .line 11045
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 11046
    iget-object v2, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewFlinger:Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 11052
    .end local v0    # "hadJumpTarget":Z
    :cond_3
    :goto_1
    return-void

    .line 11034
    :cond_4
    const-string/jumbo v2, "RecyclerView"

    const-string/jumbo v3, "Passed over target position while smooth scrolling."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11035
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    goto :goto_0

    .line 11048
    .restart local v0    # "hadJumpTarget":Z
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->stop()V

    goto :goto_1
.end method


# virtual methods
.method public findViewByPosition(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 11072
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 11065
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getChildPosition(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 11058
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getLayoutManager()Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 10966
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mLayoutManager:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method public getTargetPosition()I
    .locals 1

    .prologue
    .line 11018
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    return v0
.end method

.method public instantScrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 11081
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->scrollToPosition(I)V

    .line 11082
    return-void
.end method

.method public isPendingInitialRun()Z
    .locals 1

    .prologue
    .line 11000
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 11008
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRunning:Z

    return v0
.end method

.method protected normalize(Landroid/graphics/PointF;)V
    .locals 5
    .param p1, "scrollVector"    # Landroid/graphics/PointF;

    .prologue
    .line 11098
    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/PointF;->y:F

    iget v4, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 11100
    .local v0, "magnitude":D
    iget v2, p1, Landroid/graphics/PointF;->x:F

    float-to-double v2, v2

    div-double/2addr v2, v0

    double-to-float v2, v2

    iput v2, p1, Landroid/graphics/PointF;->x:F

    .line 11101
    iget v2, p1, Landroid/graphics/PointF;->y:F

    float-to-double v2, v2

    div-double/2addr v2, v0

    double-to-float v2, v2

    iput v2, p1, Landroid/graphics/PointF;->y:F

    .line 11102
    return-void
.end method

.method protected onChildAttachedToWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 11085
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->getChildPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 11086
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 11091
    :cond_0
    return-void
.end method

.method protected abstract onSeekTargetStep(IILorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;)V
.end method

.method protected abstract onStart()V
.end method

.method protected abstract onStop()V
.end method

.method protected abstract onTargetFound(Landroid/view/View;Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;)V
.end method

.method public setTargetPosition(I)V
    .locals 0
    .param p1, "targetPosition"    # I

    .prologue
    .line 10957
    iput p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 10958
    return-void
.end method

.method start(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V
    .locals 3
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "layoutManager"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    .prologue
    const/4 v2, 0x1

    .line 10943
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    .line 10944
    iput-object p2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mLayoutManager:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    .line 10945
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 10946
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid target position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10948
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$1102(Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    .line 10949
    iput-boolean v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRunning:Z

    .line 10950
    iput-boolean v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 10951
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 10952
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->onStart()V

    .line 10953
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewFlinger:Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 10954
    return-void
.end method

.method protected final stop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 10976
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRunning:Z

    if-nez v0, :cond_0

    .line 10990
    :goto_0
    return-void

    .line 10979
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->onStop()V

    .line 10980
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-static {v0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$1102(Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    .line 10981
    iput-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 10982
    iput v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 10983
    iput-boolean v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 10984
    iput-boolean v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRunning:Z

    .line 10986
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mLayoutManager:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-static {v0, p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->access$1200(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;)V

    .line 10988
    iput-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mLayoutManager:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    .line 10989
    iput-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    goto :goto_0
.end method
