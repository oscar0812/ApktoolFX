.class public Lorg/telegram/ui/Components/PhotoEditorSeekBar;
.super Landroid/view/View;
.source "PhotoEditorSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/PhotoEditorSeekBar$PhotoEditorSeekBarDelegate;
    }
.end annotation


# instance fields
.field private delegate:Lorg/telegram/ui/Components/PhotoEditorSeekBar$PhotoEditorSeekBarDelegate;

.field private innerPaint:Landroid/graphics/Paint;

.field private maxValue:I

.field private minValue:I

.field private outerPaint:Landroid/graphics/Paint;

.field private pressed:Z

.field private progress:F

.field private thumbDX:I

.field private thumbSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->innerPaint:Landroid/graphics/Paint;

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->outerPaint:Landroid/graphics/Paint;

    .line 23
    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbSize:I

    .line 24
    iput v2, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbDX:I

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->progress:F

    .line 26
    iput-boolean v2, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->pressed:Z

    .line 38
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->innerPaint:Landroid/graphics/Paint;

    const v1, -0xb2b2b3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->outerPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 4

    .prologue
    .line 106
    iget v0, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->minValue:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->progress:F

    iget v2, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->maxValue:I

    iget v3, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->minValue:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 116
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v7, v0, 0x2

    .line 117
    .local v7, "y":I
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbSize:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->progress:F

    mul-float/2addr v0, v1

    float-to-int v6, v0

    .line 118
    .local v6, "thumbX":I
    iget v0, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbSize:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getMeasuredWidth()I

    move-result v0

    iget v3, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->innerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 119
    iget v0, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->minValue:I

    if-nez v0, :cond_0

    .line 120
    iget v0, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbSize:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v2, v0

    int-to-float v3, v6

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->outerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 130
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbSize:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v6

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v7

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbSize:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->outerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 131
    return-void

    .line 122
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->progress:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 123
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v1, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getMeasuredHeight()I

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbSize:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getMeasuredHeight()I

    move-result v0

    iget v4, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbSize:I

    add-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->outerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 124
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v2, v0

    int-to-float v3, v6

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->outerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getMeasuredHeight()I

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbSize:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getMeasuredHeight()I

    move-result v0

    iget v4, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbSize:I

    add-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->outerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 127
    int-to-float v1, v6

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->outerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 48
    if-nez p1, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v4

    .line 51
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 52
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 53
    .local v3, "y":F
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getMeasuredWidth()I

    move-result v6

    iget v7, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbSize:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->progress:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    int-to-float v1, v6

    .line 54
    .local v1, "thumbX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_2

    .line 55
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getMeasuredHeight()I

    move-result v6

    iget v7, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbSize:I

    sub-int/2addr v6, v7

    div-int/lit8 v0, v6, 0x2

    .line 56
    .local v0, "additionWidth":I
    int-to-float v6, v0

    sub-float v6, v1, v6

    cmpg-float v6, v6, v2

    if-gtz v6, :cond_0

    iget v6, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbSize:I

    int-to-float v6, v6

    add-float/2addr v6, v1

    int-to-float v7, v0

    add-float/2addr v6, v7

    cmpg-float v6, v2, v6

    if-gtz v6, :cond_0

    cmpl-float v6, v3, v8

    if-ltz v6, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v6, v3, v6

    if-gtz v6, :cond_0

    .line 57
    iput-boolean v5, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->pressed:Z

    .line 58
    sub-float v4, v2, v1

    float-to-int v4, v4

    iput v4, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbDX:I

    .line 59
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 60
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->invalidate()V

    move v4, v5

    .line 61
    goto :goto_0

    .line 63
    .end local v0    # "additionWidth":I
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-eq v6, v5, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_4

    .line 64
    :cond_3
    iget-boolean v6, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->pressed:Z

    if-eqz v6, :cond_0

    .line 65
    iput-boolean v4, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->pressed:Z

    .line 66
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->invalidate()V

    move v4, v5

    .line 67
    goto :goto_0

    .line 69
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 70
    iget-boolean v6, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->pressed:Z

    if-eqz v6, :cond_0

    .line 71
    iget v4, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbDX:I

    int-to-float v4, v4

    sub-float v4, v2, v4

    float-to-int v4, v4

    int-to-float v1, v4

    .line 72
    cmpg-float v4, v1, v8

    if-gez v4, :cond_7

    .line 73
    const/4 v1, 0x0

    .line 77
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getMeasuredWidth()I

    move-result v4

    iget v6, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbSize:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    div-float v4, v1, v4

    iput v4, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->progress:F

    .line 78
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->delegate:Lorg/telegram/ui/Components/PhotoEditorSeekBar$PhotoEditorSeekBarDelegate;

    if-eqz v4, :cond_6

    .line 79
    iget-object v6, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->delegate:Lorg/telegram/ui/Components/PhotoEditorSeekBar$PhotoEditorSeekBarDelegate;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getProgress()I

    move-result v7

    invoke-interface {v6, v4, v7}, Lorg/telegram/ui/Components/PhotoEditorSeekBar$PhotoEditorSeekBarDelegate;->onProgressChanged(II)V

    .line 81
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->invalidate()V

    move v4, v5

    .line 82
    goto/16 :goto_0

    .line 74
    :cond_7
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getMeasuredWidth()I

    move-result v4

    iget v6, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbSize:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-lez v4, :cond_5

    .line 75
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getMeasuredWidth()I

    move-result v4

    iget v6, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbSize:I

    sub-int/2addr v4, v6

    int-to-float v1, v4

    goto :goto_1
.end method

.method public setDelegate(Lorg/telegram/ui/Components/PhotoEditorSeekBar$PhotoEditorSeekBarDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lorg/telegram/ui/Components/PhotoEditorSeekBar$PhotoEditorSeekBarDelegate;

    .prologue
    .line 43
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->delegate:Lorg/telegram/ui/Components/PhotoEditorSeekBar$PhotoEditorSeekBarDelegate;

    .line 44
    return-void
.end method

.method public setMinMax(II)V
    .locals 0
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 110
    iput p1, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->minValue:I

    .line 111
    iput p2, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->maxValue:I

    .line 112
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 89
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->setProgress(IZ)V

    .line 90
    return-void
.end method

.method public setProgress(IZ)V
    .locals 3
    .param p1, "progress"    # I
    .param p2, "notify"    # Z

    .prologue
    .line 93
    iget v0, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->minValue:I

    if-ge p1, v0, :cond_2

    .line 94
    iget p1, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->minValue:I

    .line 98
    :cond_0
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->minValue:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->maxValue:I

    iget v2, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->minValue:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->progress:F

    .line 99
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->invalidate()V

    .line 100
    if-eqz p2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->delegate:Lorg/telegram/ui/Components/PhotoEditorSeekBar$PhotoEditorSeekBarDelegate;

    if-eqz v0, :cond_1

    .line 101
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->delegate:Lorg/telegram/ui/Components/PhotoEditorSeekBar$PhotoEditorSeekBarDelegate;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getProgress()I

    move-result v2

    invoke-interface {v1, v0, v2}, Lorg/telegram/ui/Components/PhotoEditorSeekBar$PhotoEditorSeekBarDelegate;->onProgressChanged(II)V

    .line 103
    :cond_1
    return-void

    .line 95
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->maxValue:I

    if-le p1, v0, :cond_0

    .line 96
    iget p1, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->maxValue:I

    goto :goto_0
.end method
