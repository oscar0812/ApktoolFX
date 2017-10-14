.class public Lorg/telegram/ui/Components/ShutterButton;
.super Landroid/view/View;
.source "ShutterButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;,
        Lorg/telegram/ui/Components/ShutterButton$State;
    }
.end annotation


# static fields
.field private static final LONG_PRESS_TIME:I = 0x320


# instance fields
.field private delegate:Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;

.field private interpolator:Landroid/view/animation/DecelerateInterpolator;

.field private lastUpdateTime:J

.field private longPressed:Ljava/lang/Runnable;

.field private pressed:Z

.field private processRelease:Z

.field private redPaint:Landroid/graphics/Paint;

.field private redProgress:F

.field private shadowDrawable:Landroid/graphics/drawable/Drawable;

.field private state:Lorg/telegram/ui/Components/ShutterButton$State;

.field private totalTime:J

.field private whitePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 63
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ShutterButton;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 46
    new-instance v0, Lorg/telegram/ui/Components/ShutterButton$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ShutterButton$1;-><init>(Lorg/telegram/ui/Components/ShutterButton;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ShutterButton;->longPressed:Ljava/lang/Runnable;

    .line 64
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ShutterButton;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ShutterButton;->whitePaint:Landroid/graphics/Paint;

    .line 66
    iget-object v0, p0, Lorg/telegram/ui/Components/ShutterButton;->whitePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 67
    iget-object v0, p0, Lorg/telegram/ui/Components/ShutterButton;->whitePaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ShutterButton;->redPaint:Landroid/graphics/Paint;

    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Components/ShutterButton;->redPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    iget-object v0, p0, Lorg/telegram/ui/Components/ShutterButton;->redPaint:Landroid/graphics/Paint;

    const v1, -0x32b8b9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    sget-object v0, Lorg/telegram/ui/Components/ShutterButton$State;->DEFAULT:Lorg/telegram/ui/Components/ShutterButton$State;

    iput-object v0, p0, Lorg/telegram/ui/Components/ShutterButton;->state:Lorg/telegram/ui/Components/ShutterButton$State;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ShutterButton;)Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShutterButton;

    .prologue
    .line 24
    iget-object v0, p0, Lorg/telegram/ui/Components/ShutterButton;->delegate:Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;

    return-object v0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/ShutterButton;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShutterButton;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ShutterButton;->processRelease:Z

    return p1
.end method

.method private setHighlighted(Z)V
    .locals 8
    .param p1, "value"    # Z

    .prologue
    const/4 v1, 0x2

    const v7, 0x3f87ae14    # 1.06f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 83
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 84
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    if-eqz p1, :cond_0

    .line 85
    new-array v1, v1, [Landroid/animation/Animator;

    const-string/jumbo v2, "scaleX"

    new-array v3, v5, [F

    aput v7, v3, v4

    .line 86
    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v4

    const-string/jumbo v2, "scaleY"

    new-array v3, v5, [F

    aput v7, v3, v4

    .line 87
    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    .line 85
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 94
    :goto_0
    const-wide/16 v2, 0x78

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 95
    iget-object v1, p0, Lorg/telegram/ui/Components/ShutterButton;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 96
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 97
    return-void

    .line 89
    :cond_0
    new-array v1, v1, [Landroid/animation/Animator;

    const-string/jumbo v2, "scaleX"

    new-array v3, v5, [F

    aput v6, v3, v4

    .line 90
    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v4

    const-string/jumbo v2, "scaleY"

    new-array v3, v5, [F

    aput v6, v3, v4

    .line 91
    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    .line 89
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 92
    const-wide/16 v2, 0x28

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    goto :goto_0
.end method


# virtual methods
.method public getDelegate()Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/ui/Components/ShutterButton;->delegate:Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;

    return-object v0
.end method

.method public getState()Lorg/telegram/ui/Components/ShutterButton$State;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/telegram/ui/Components/ShutterButton;->state:Lorg/telegram/ui/Components/ShutterButton$State;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 111
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShutterButton;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v0, v5, 0x2

    .line 112
    .local v0, "cx":I
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShutterButton;->getMeasuredHeight()I

    move-result v5

    div-int/lit8 v1, v5, 0x2

    .line 114
    .local v1, "cy":I
    iget-object v5, p0, Lorg/telegram/ui/Components/ShutterButton;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v6, 0x42100000    # 36.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int v6, v0, v6

    const/high16 v7, 0x42100000    # 36.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int v7, v1, v7

    const/high16 v8, 0x42100000    # 36.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v8, v0

    const/high16 v9, 0x42100000    # 36.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v9, v1

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 115
    iget-object v5, p0, Lorg/telegram/ui/Components/ShutterButton;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 116
    iget-boolean v5, p0, Lorg/telegram/ui/Components/ShutterButton;->pressed:Z

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShutterButton;->getScaleX()F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_6

    .line 117
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShutterButton;->getScaleX()F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v5, v6

    const v6, 0x3d75c28f    # 0.06f

    div-float v4, v5, v6

    .line 118
    .local v4, "scale":F
    iget-object v5, p0, Lorg/telegram/ui/Components/ShutterButton;->whitePaint:Landroid/graphics/Paint;

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v6, v4

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 119
    int-to-float v5, v0

    int-to-float v6, v1

    const/high16 v7, 0x41d00000    # 26.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lorg/telegram/ui/Components/ShutterButton;->whitePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 121
    iget-object v5, p0, Lorg/telegram/ui/Components/ShutterButton;->state:Lorg/telegram/ui/Components/ShutterButton$State;

    sget-object v6, Lorg/telegram/ui/Components/ShutterButton$State;->RECORDING:Lorg/telegram/ui/Components/ShutterButton$State;

    if-ne v5, v6, :cond_5

    .line 122
    iget v5, p0, Lorg/telegram/ui/Components/ShutterButton;->redProgress:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_3

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/telegram/ui/Components/ShutterButton;->lastUpdateTime:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 124
    .local v2, "dt":J
    const-wide/16 v6, 0x11

    cmp-long v5, v2, v6

    if-lez v5, :cond_1

    .line 125
    const-wide/16 v2, 0x11

    .line 127
    :cond_1
    iget-wide v6, p0, Lorg/telegram/ui/Components/ShutterButton;->totalTime:J

    add-long/2addr v6, v2

    iput-wide v6, p0, Lorg/telegram/ui/Components/ShutterButton;->totalTime:J

    .line 128
    iget-wide v6, p0, Lorg/telegram/ui/Components/ShutterButton;->totalTime:J

    const-wide/16 v8, 0x78

    cmp-long v5, v6, v8

    if-lez v5, :cond_2

    .line 129
    const-wide/16 v6, 0x78

    iput-wide v6, p0, Lorg/telegram/ui/Components/ShutterButton;->totalTime:J

    .line 131
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/Components/ShutterButton;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    iget-wide v6, p0, Lorg/telegram/ui/Components/ShutterButton;->totalTime:J

    long-to-float v6, v6

    const/high16 v7, 0x42f00000    # 120.0f

    div-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v5

    iput v5, p0, Lorg/telegram/ui/Components/ShutterButton;->redProgress:F

    .line 132
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShutterButton;->invalidate()V

    .line 134
    .end local v2    # "dt":J
    :cond_3
    int-to-float v5, v0

    int-to-float v6, v1

    const/high16 v7, 0x41d00000    # 26.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v4

    iget v8, p0, Lorg/telegram/ui/Components/ShutterButton;->redProgress:F

    mul-float/2addr v7, v8

    iget-object v8, p0, Lorg/telegram/ui/Components/ShutterButton;->redPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 141
    .end local v4    # "scale":F
    :cond_4
    :goto_0
    return-void

    .line 135
    .restart local v4    # "scale":F
    :cond_5
    iget v5, p0, Lorg/telegram/ui/Components/ShutterButton;->redProgress:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_4

    .line 136
    int-to-float v5, v0

    int-to-float v6, v1

    const/high16 v7, 0x41d00000    # 26.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v4

    iget-object v8, p0, Lorg/telegram/ui/Components/ShutterButton;->redPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 138
    .end local v4    # "scale":F
    :cond_6
    iget v5, p0, Lorg/telegram/ui/Components/ShutterButton;->redProgress:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_4

    .line 139
    const/4 v5, 0x0

    iput v5, p0, Lorg/telegram/ui/Components/ShutterButton;->redProgress:F

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v1, 0x42a80000    # 84.0f

    .line 145
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/ShutterButton;->setMeasuredDimension(II)V

    .line 146
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 151
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 152
    .local v1, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 180
    :cond_0
    :goto_0
    return v6

    .line 154
    :pswitch_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ShutterButton;->longPressed:Ljava/lang/Runnable;

    const-wide/16 v4, 0x320

    invoke-static {v2, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 155
    iput-boolean v6, p0, Lorg/telegram/ui/Components/ShutterButton;->pressed:Z

    .line 156
    iput-boolean v6, p0, Lorg/telegram/ui/Components/ShutterButton;->processRelease:Z

    .line 157
    invoke-direct {p0, v6}, Lorg/telegram/ui/Components/ShutterButton;->setHighlighted(Z)V

    goto :goto_0

    .line 160
    :pswitch_1
    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/ShutterButton;->setHighlighted(Z)V

    .line 161
    iget-object v2, p0, Lorg/telegram/ui/Components/ShutterButton;->longPressed:Ljava/lang/Runnable;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 162
    iget-boolean v2, p0, Lorg/telegram/ui/Components/ShutterButton;->processRelease:Z

    if-eqz v2, :cond_0

    cmpl-float v2, v0, v3

    if-ltz v2, :cond_0

    cmpl-float v2, v1, v3

    if-ltz v2, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShutterButton;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShutterButton;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_0

    .line 163
    iget-object v2, p0, Lorg/telegram/ui/Components/ShutterButton;->delegate:Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;

    invoke-interface {v2}, Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;->shutterReleased()V

    goto :goto_0

    .line 167
    :pswitch_2
    cmpg-float v2, v0, v3

    if-ltz v2, :cond_1

    cmpg-float v2, v1, v3

    if-ltz v2, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShutterButton;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShutterButton;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 168
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/ShutterButton;->longPressed:Ljava/lang/Runnable;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 169
    iget-object v2, p0, Lorg/telegram/ui/Components/ShutterButton;->state:Lorg/telegram/ui/Components/ShutterButton$State;

    sget-object v3, Lorg/telegram/ui/Components/ShutterButton$State;->RECORDING:Lorg/telegram/ui/Components/ShutterButton$State;

    if-ne v2, v3, :cond_0

    .line 170
    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/ShutterButton;->setHighlighted(Z)V

    .line 171
    iget-object v2, p0, Lorg/telegram/ui/Components/ShutterButton;->delegate:Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;

    invoke-interface {v2}, Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;->shutterCancel()V

    .line 172
    sget-object v2, Lorg/telegram/ui/Components/ShutterButton$State;->DEFAULT:Lorg/telegram/ui/Components/ShutterButton$State;

    invoke-virtual {p0, v2, v6}, Lorg/telegram/ui/Components/ShutterButton;->setState(Lorg/telegram/ui/Components/ShutterButton$State;Z)V

    goto :goto_0

    .line 177
    :pswitch_3
    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/ShutterButton;->setHighlighted(Z)V

    .line 178
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ShutterButton;->pressed:Z

    goto :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setDelegate(Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;)V
    .locals 0
    .param p1, "shutterButtonDelegate"    # Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;

    .prologue
    .line 75
    iput-object p1, p0, Lorg/telegram/ui/Components/ShutterButton;->delegate:Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;

    .line 76
    return-void
.end method

.method public setScaleX(F)V
    .locals 0
    .param p1, "scaleX"    # F

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 102
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShutterButton;->invalidate()V

    .line 103
    return-void
.end method

.method public setState(Lorg/telegram/ui/Components/ShutterButton$State;Z)V
    .locals 3
    .param p1, "value"    # Lorg/telegram/ui/Components/ShutterButton$State;
    .param p2, "animated"    # Z

    .prologue
    const/4 v2, 0x0

    .line 184
    iget-object v0, p0, Lorg/telegram/ui/Components/ShutterButton;->state:Lorg/telegram/ui/Components/ShutterButton$State;

    if-eq v0, p1, :cond_1

    .line 185
    iput-object p1, p0, Lorg/telegram/ui/Components/ShutterButton;->state:Lorg/telegram/ui/Components/ShutterButton$State;

    .line 186
    if-eqz p2, :cond_2

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/ShutterButton;->lastUpdateTime:J

    .line 188
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Components/ShutterButton;->totalTime:J

    .line 189
    iget-object v0, p0, Lorg/telegram/ui/Components/ShutterButton;->state:Lorg/telegram/ui/Components/ShutterButton$State;

    sget-object v1, Lorg/telegram/ui/Components/ShutterButton$State;->RECORDING:Lorg/telegram/ui/Components/ShutterButton$State;

    if-eq v0, v1, :cond_0

    .line 190
    iput v2, p0, Lorg/telegram/ui/Components/ShutterButton;->redProgress:F

    .line 199
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShutterButton;->invalidate()V

    .line 201
    :cond_1
    return-void

    .line 193
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ShutterButton;->state:Lorg/telegram/ui/Components/ShutterButton$State;

    sget-object v1, Lorg/telegram/ui/Components/ShutterButton$State;->RECORDING:Lorg/telegram/ui/Components/ShutterButton$State;

    if-ne v0, v1, :cond_3

    .line 194
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/ShutterButton;->redProgress:F

    goto :goto_0

    .line 196
    :cond_3
    iput v2, p0, Lorg/telegram/ui/Components/ShutterButton;->redProgress:F

    goto :goto_0
.end method
