.class public Lorg/telegram/ui/Components/SeekBarView;
.super Landroid/widget/FrameLayout;
.source "SeekBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;
    }
.end annotation


# instance fields
.field private delegate:Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;

.field private innerPaint1:Landroid/graphics/Paint;

.field private outerPaint1:Landroid/graphics/Paint;

.field private pressed:Z

.field private progressToSet:F

.field private thumbDX:I

.field private thumbHeight:I

.field private thumbWidth:I

.field private thumbX:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x41c00000    # 24.0f

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/SeekBarView;->setWillNotDraw(Z)V

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->innerPaint1:Landroid/graphics/Paint;

    .line 40
    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->innerPaint1:Landroid/graphics/Paint;

    const-string/jumbo v1, "player_progressBackground"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->outerPaint1:Landroid/graphics/Paint;

    .line 43
    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->outerPaint1:Landroid/graphics/Paint;

    const-string/jumbo v1, "player_progress"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbWidth:I

    .line 46
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbHeight:I

    .line 47
    return-void
.end method


# virtual methods
.method public isDragging()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SeekBarView;->pressed:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 130
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SeekBarView;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbHeight:I

    sub-int/2addr v0, v1

    div-int/lit8 v6, v0, 0x2

    .line 131
    .local v6, "y":I
    iget v0, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SeekBarView;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SeekBarView;->getMeasuredWidth()I

    move-result v0

    iget v3, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SeekBarView;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/SeekBarView;->innerPaint1:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 132
    iget v0, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SeekBarView;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v3, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SeekBarView;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/SeekBarView;->outerPaint1:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 133
    iget v0, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    iget v1, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbHeight:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v6

    int-to-float v2, v0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SeekBarView;->pressed:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x41000000    # 8.0f

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lorg/telegram/ui/Components/SeekBarView;->outerPaint1:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 134
    return-void

    .line 133
    :cond_0
    const/high16 v0, 0x40c00000    # 6.0f

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/SeekBarView;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 117
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 118
    iget v0, p0, Lorg/telegram/ui/Components/SeekBarView;->progressToSet:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SeekBarView;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 119
    iget v0, p0, Lorg/telegram/ui/Components/SeekBarView;->progressToSet:F

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/SeekBarView;->setProgress(F)V

    .line 120
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lorg/telegram/ui/Components/SeekBarView;->progressToSet:F

    .line 122
    :cond_0
    return-void
.end method

.method onTouch(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 65
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SeekBarView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 66
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SeekBarView;->getMeasuredHeight()I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbWidth:I

    sub-int/2addr v3, v4

    div-int/lit8 v0, v3, 0x2

    .line 67
    .local v0, "additionWidth":I
    iget v3, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    sub-int/2addr v3, v0

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    iget v5, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbWidth:I

    add-int/2addr v4, v5

    add-int/2addr v4, v0

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SeekBarView;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_6

    .line 68
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SeekBarView;->pressed:Z

    .line 69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbDX:I

    .line 70
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SeekBarView;->invalidate()V

    .line 94
    .end local v0    # "additionWidth":I
    :goto_0
    return v1

    .line 73
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 74
    :cond_1
    iget-boolean v3, p0, Lorg/telegram/ui/Components/SeekBarView;->pressed:Z

    if-eqz v3, :cond_6

    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v1, :cond_2

    .line 76
    iget-object v3, p0, Lorg/telegram/ui/Components/SeekBarView;->delegate:Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;

    iget v4, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SeekBarView;->getMeasuredWidth()I

    move-result v5

    iget v6, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbWidth:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-interface {v3, v4}, Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;->onSeekBarDrag(F)V

    .line 78
    :cond_2
    iput-boolean v2, p0, Lorg/telegram/ui/Components/SeekBarView;->pressed:Z

    .line 79
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SeekBarView;->invalidate()V

    goto :goto_0

    .line 82
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 83
    iget-boolean v3, p0, Lorg/telegram/ui/Components/SeekBarView;->pressed:Z

    if-eqz v3, :cond_6

    .line 84
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbDX:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    .line 85
    iget v3, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    if-gez v3, :cond_5

    .line 86
    iput v2, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    .line 90
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SeekBarView;->invalidate()V

    goto :goto_0

    .line 87
    :cond_5
    iget v2, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SeekBarView;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbWidth:I

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_4

    .line 88
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SeekBarView;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbWidth:I

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    goto :goto_1

    :cond_6
    move v1, v2

    .line 94
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/SeekBarView;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setDelegate(Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;)V
    .locals 0
    .param p1, "seekBarViewDelegate"    # Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;

    .prologue
    .line 60
    iput-object p1, p0, Lorg/telegram/ui/Components/SeekBarView;->delegate:Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;

    .line 61
    return-void
.end method

.method public setProgress(F)V
    .locals 4
    .param p1, "progress"    # F

    .prologue
    .line 98
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SeekBarView;->getMeasuredWidth()I

    move-result v1

    if-nez v1, :cond_1

    .line 99
    iput p1, p0, Lorg/telegram/ui/Components/SeekBarView;->progressToSet:F

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lorg/telegram/ui/Components/SeekBarView;->progressToSet:F

    .line 103
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SeekBarView;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbWidth:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 104
    .local v0, "newThumbX":I
    iget v1, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    if-eq v1, v0, :cond_0

    .line 105
    iput v0, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    .line 106
    iget v1, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    if-gez v1, :cond_3

    .line 107
    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    .line 111
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SeekBarView;->invalidate()V

    goto :goto_0

    .line 108
    :cond_3
    iget v1, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SeekBarView;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbWidth:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_2

    .line 109
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SeekBarView;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbWidth:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    goto :goto_1
.end method
