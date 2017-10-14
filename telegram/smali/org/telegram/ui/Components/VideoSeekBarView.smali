.class public Lorg/telegram/ui/Components/VideoSeekBarView;
.super Landroid/view/View;
.source "VideoSeekBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/VideoSeekBarView$SeekBarDelegate;
    }
.end annotation


# instance fields
.field private delegate:Lorg/telegram/ui/Components/VideoSeekBarView$SeekBarDelegate;

.field private paint:Landroid/graphics/Paint;

.field private paint2:Landroid/graphics/Paint;

.field private pressed:Z

.field private progress:F

.field private thumbDX:I

.field private thumbHeight:I

.field private thumbWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x41400000    # 12.0f

    .line 35
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->paint:Landroid/graphics/Paint;

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->paint2:Landroid/graphics/Paint;

    .line 23
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->thumbWidth:I

    .line 24
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->thumbHeight:I

    .line 25
    iput v3, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->thumbDX:I

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->progress:F

    .line 27
    iput-boolean v3, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->pressed:Z

    .line 36
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->paint:Landroid/graphics/Paint;

    const v1, -0xa3a3a4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->paint2:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    return-void
.end method


# virtual methods
.method public getProgress()F
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->progress:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 102
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoSeekBarView;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->thumbHeight:I

    sub-int/2addr v0, v1

    div-int/lit8 v7, v0, 0x2

    .line 103
    .local v7, "y":I
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoSeekBarView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->thumbWidth:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->progress:F

    mul-float/2addr v0, v1

    float-to-int v6, v0

    .line 104
    .local v6, "thumbX":I
    iget v0, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->thumbWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoSeekBarView;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoSeekBarView;->getMeasuredWidth()I

    move-result v0

    iget v3, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->thumbWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoSeekBarView;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 105
    iget v0, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->thumbWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v6

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->thumbHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v7

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->thumbWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->paint2:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 106
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 46
    if-nez p1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v4

    .line 49
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 50
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 51
    .local v3, "y":F
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoSeekBarView;->getMeasuredWidth()I

    move-result v6

    iget v7, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->thumbWidth:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->progress:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    int-to-float v1, v6

    .line 52
    .local v1, "thumbX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_2

    .line 53
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoSeekBarView;->getMeasuredHeight()I

    move-result v6

    iget v7, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->thumbWidth:I

    sub-int/2addr v6, v7

    div-int/lit8 v0, v6, 0x2

    .line 54
    .local v0, "additionWidth":I
    int-to-float v6, v0

    sub-float v6, v1, v6

    cmpg-float v6, v6, v2

    if-gtz v6, :cond_0

    iget v6, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->thumbWidth:I

    int-to-float v6, v6

    add-float/2addr v6, v1

    int-to-float v7, v0

    add-float/2addr v6, v7

    cmpg-float v6, v2, v6

    if-gtz v6, :cond_0

    cmpl-float v6, v3, v8

    if-ltz v6, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoSeekBarView;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v6, v3, v6

    if-gtz v6, :cond_0

    .line 55
    iput-boolean v5, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->pressed:Z

    .line 56
    sub-float v4, v2, v1

    float-to-int v4, v4

    iput v4, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->thumbDX:I

    .line 57
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoSeekBarView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 58
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoSeekBarView;->invalidate()V

    move v4, v5

    .line 59
    goto :goto_0

    .line 61
    .end local v0    # "additionWidth":I
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-eq v6, v5, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_5

    .line 62
    :cond_3
    iget-boolean v6, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->pressed:Z

    if-eqz v6, :cond_0

    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v5, :cond_4

    iget-object v6, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->delegate:Lorg/telegram/ui/Components/VideoSeekBarView$SeekBarDelegate;

    if-eqz v6, :cond_4

    .line 64
    iget-object v6, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->delegate:Lorg/telegram/ui/Components/VideoSeekBarView$SeekBarDelegate;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoSeekBarView;->getMeasuredWidth()I

    move-result v7

    iget v8, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->thumbWidth:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    div-float v7, v1, v7

    invoke-interface {v6, v7}, Lorg/telegram/ui/Components/VideoSeekBarView$SeekBarDelegate;->onSeekBarDrag(F)V

    .line 66
    :cond_4
    iput-boolean v4, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->pressed:Z

    .line 67
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoSeekBarView;->invalidate()V

    move v4, v5

    .line 68
    goto/16 :goto_0

    .line 70
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 71
    iget-boolean v6, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->pressed:Z

    if-eqz v6, :cond_0

    .line 72
    iget v4, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->thumbDX:I

    int-to-float v4, v4

    sub-float v4, v2, v4

    float-to-int v4, v4

    int-to-float v1, v4

    .line 73
    cmpg-float v4, v1, v8

    if-gez v4, :cond_7

    .line 74
    const/4 v1, 0x0

    .line 78
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoSeekBarView;->getMeasuredWidth()I

    move-result v4

    iget v6, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->thumbWidth:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    div-float v4, v1, v4

    iput v4, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->progress:F

    .line 79
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoSeekBarView;->invalidate()V

    move v4, v5

    .line 80
    goto/16 :goto_0

    .line 75
    :cond_7
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoSeekBarView;->getMeasuredWidth()I

    move-result v4

    iget v6, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->thumbWidth:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-lez v4, :cond_6

    .line 76
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoSeekBarView;->getMeasuredWidth()I

    move-result v4

    iget v6, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->thumbWidth:I

    sub-int/2addr v4, v6

    int-to-float v1, v4

    goto :goto_1
.end method

.method public setDelegate(Lorg/telegram/ui/Components/VideoSeekBarView$SeekBarDelegate;)V
    .locals 0
    .param p1, "seekBarDelegate"    # Lorg/telegram/ui/Components/VideoSeekBarView$SeekBarDelegate;

    .prologue
    .line 41
    iput-object p1, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->delegate:Lorg/telegram/ui/Components/VideoSeekBarView$SeekBarDelegate;

    .line 42
    return-void
.end method

.method public setProgress(F)V
    .locals 1
    .param p1, "progress"    # F

    .prologue
    .line 87
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 88
    const/4 p1, 0x0

    .line 92
    :cond_0
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->progress:F

    .line 93
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoSeekBarView;->invalidate()V

    .line 94
    return-void

    .line 89
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 90
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0
.end method
