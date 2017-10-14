.class public Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# static fields
.field public static final UNDEFINED_DURATION:I = -0x80000000


# instance fields
.field private changed:Z

.field private consecutiveUpdates:I

.field private mDuration:I

.field private mDx:I

.field private mDy:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mJumpToPosition:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 11168
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;-><init>(IIILandroid/view/animation/Interpolator;)V

    .line 11169
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I

    .prologue
    .line 11177
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;-><init>(IIILandroid/view/animation/Interpolator;)V

    .line 11178
    return-void
.end method

.method public constructor <init>(IIILandroid/view/animation/Interpolator;)V
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    const/4 v1, 0x0

    .line 11187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11153
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 11157
    iput-boolean v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->changed:Z

    .line 11161
    iput v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    .line 11188
    iput p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    .line 11189
    iput p2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    .line 11190
    iput p3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    .line 11191
    iput-object p4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 11192
    return-void
.end method

.method private validate()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 11250
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    if-ge v0, v1, :cond_0

    .line 11251
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11253
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    if-ge v0, v1, :cond_1

    .line 11254
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Scroll duration must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11256
    :cond_1
    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    .prologue
    .line 11277
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    return v0
.end method

.method public getDx()I
    .locals 1

    .prologue
    .line 11259
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    return v0
.end method

.method public getDy()I
    .locals 1

    .prologue
    .line 11268
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 11286
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method hasJumpTarget()Z
    .locals 1

    .prologue
    .line 11214
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jumpTo(I)V
    .locals 0
    .param p1, "targetPosition"    # I

    .prologue
    .line 11210
    iput p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 11211
    return-void
.end method

.method runIfNecessary(Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .locals 7
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;

    .prologue
    const/4 v6, 0x0

    .line 11218
    iget v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    if-ltz v1, :cond_0

    .line 11219
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 11220
    .local v0, "position":I
    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 11221
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->jumpToPositionForSmoothScroller(I)V

    .line 11222
    iput-boolean v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->changed:Z

    .line 11247
    .end local v0    # "position":I
    :goto_0
    return-void

    .line 11225
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->changed:Z

    if-eqz v1, :cond_4

    .line 11226
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->validate()V

    .line 11227
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v1, :cond_3

    .line 11228
    iget v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_2

    .line 11229
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewFlinger:Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;

    iget v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iget v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->smoothScrollBy(II)V

    .line 11236
    :goto_1
    iget v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    .line 11237
    iget v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_1

    .line 11240
    const-string/jumbo v1, "RecyclerView"

    const-string/jumbo v2, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11243
    :cond_1
    iput-boolean v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->changed:Z

    goto :goto_0

    .line 11231
    :cond_2
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewFlinger:Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;

    iget v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iget v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    iget v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->smoothScrollBy(III)V

    goto :goto_1

    .line 11234
    :cond_3
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewFlinger:Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;

    iget v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iget v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    iget v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    goto :goto_1

    .line 11245
    :cond_4
    iput v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    goto :goto_0
.end method

.method public setDuration(I)V
    .locals 1
    .param p1, "duration"    # I

    .prologue
    .line 11281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->changed:Z

    .line 11282
    iput p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    .line 11283
    return-void
.end method

.method public setDx(I)V
    .locals 1
    .param p1, "dx"    # I

    .prologue
    .line 11263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->changed:Z

    .line 11264
    iput p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    .line 11265
    return-void
.end method

.method public setDy(I)V
    .locals 1
    .param p1, "dy"    # I

    .prologue
    .line 11272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->changed:Z

    .line 11273
    iput p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    .line 11274
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 11296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->changed:Z

    .line 11297
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 11298
    return-void
.end method

.method public update(IIILandroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 11309
    iput p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    .line 11310
    iput p2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    .line 11311
    iput p3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    .line 11312
    iput-object p4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 11313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->changed:Z

    .line 11314
    return-void
.end method
