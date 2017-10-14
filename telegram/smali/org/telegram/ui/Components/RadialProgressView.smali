.class public Lorg/telegram/ui/Components/RadialProgressView;
.super Landroid/view/View;
.source "RadialProgressView.java"


# instance fields
.field private accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private cicleRect:Landroid/graphics/RectF;

.field private currentCircleLength:F

.field private currentProgressTime:F

.field private decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private lastUpdateTime:J

.field private progressColor:I

.field private progressPaint:Landroid/graphics/Paint;

.field private radOffset:F

.field private risingCircleLength:Z

.field private final risingTime:F

.field private final rotationTime:F

.field private size:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->cicleRect:Landroid/graphics/RectF;

    .line 36
    const/high16 v0, 0x44fa0000    # 2000.0f

    iput v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->rotationTime:F

    .line 37
    const/high16 v0, 0x43fa0000    # 500.0f

    iput v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->risingTime:F

    .line 43
    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->size:I

    .line 45
    const-string/jumbo v0, "progressCircle"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->progressColor:I

    .line 46
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 47
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->progressPaint:Landroid/graphics/Paint;

    .line 49
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->progressPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->progressPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 51
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->progressPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 52
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->progressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/RadialProgressView;->progressColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    return-void
.end method

.method private updateAnimation()V
    .locals 11

    .prologue
    const/high16 v10, 0x43870000    # 270.0f

    const/high16 v9, 0x40800000    # 4.0f

    const/high16 v8, 0x43fa0000    # 500.0f

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 57
    .local v4, "newTime":J
    iget-wide v6, p0, Lorg/telegram/ui/Components/RadialProgressView;->lastUpdateTime:J

    sub-long v2, v4, v6

    .line 58
    .local v2, "dt":J
    const-wide/16 v6, 0x11

    cmp-long v1, v2, v6

    if-lez v1, :cond_0

    .line 59
    const-wide/16 v2, 0x11

    .line 61
    :cond_0
    iput-wide v4, p0, Lorg/telegram/ui/Components/RadialProgressView;->lastUpdateTime:J

    .line 63
    iget v1, p0, Lorg/telegram/ui/Components/RadialProgressView;->radOffset:F

    const-wide/16 v6, 0x168

    mul-long/2addr v6, v2

    long-to-float v6, v6

    const/high16 v7, 0x44fa0000    # 2000.0f

    div-float/2addr v6, v7

    add-float/2addr v1, v6

    iput v1, p0, Lorg/telegram/ui/Components/RadialProgressView;->radOffset:F

    .line 64
    iget v1, p0, Lorg/telegram/ui/Components/RadialProgressView;->radOffset:F

    const/high16 v6, 0x43b40000    # 360.0f

    div-float/2addr v1, v6

    float-to-int v0, v1

    .line 65
    .local v0, "count":I
    iget v1, p0, Lorg/telegram/ui/Components/RadialProgressView;->radOffset:F

    mul-int/lit16 v6, v0, 0x168

    int-to-float v6, v6

    sub-float/2addr v1, v6

    iput v1, p0, Lorg/telegram/ui/Components/RadialProgressView;->radOffset:F

    .line 67
    iget v1, p0, Lorg/telegram/ui/Components/RadialProgressView;->currentProgressTime:F

    long-to-float v6, v2

    add-float/2addr v1, v6

    iput v1, p0, Lorg/telegram/ui/Components/RadialProgressView;->currentProgressTime:F

    .line 68
    iget v1, p0, Lorg/telegram/ui/Components/RadialProgressView;->currentProgressTime:F

    cmpl-float v1, v1, v8

    if-ltz v1, :cond_1

    .line 69
    iput v8, p0, Lorg/telegram/ui/Components/RadialProgressView;->currentProgressTime:F

    .line 71
    :cond_1
    iget-boolean v1, p0, Lorg/telegram/ui/Components/RadialProgressView;->risingCircleLength:Z

    if-eqz v1, :cond_4

    .line 72
    const/high16 v1, 0x43850000    # 266.0f

    iget-object v6, p0, Lorg/telegram/ui/Components/RadialProgressView;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    iget v7, p0, Lorg/telegram/ui/Components/RadialProgressView;->currentProgressTime:F

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v6

    mul-float/2addr v1, v6

    add-float/2addr v1, v9

    iput v1, p0, Lorg/telegram/ui/Components/RadialProgressView;->currentCircleLength:F

    .line 76
    :goto_0
    iget v1, p0, Lorg/telegram/ui/Components/RadialProgressView;->currentProgressTime:F

    cmpl-float v1, v1, v8

    if-nez v1, :cond_3

    .line 77
    iget-boolean v1, p0, Lorg/telegram/ui/Components/RadialProgressView;->risingCircleLength:Z

    if-eqz v1, :cond_2

    .line 78
    iget v1, p0, Lorg/telegram/ui/Components/RadialProgressView;->radOffset:F

    add-float/2addr v1, v10

    iput v1, p0, Lorg/telegram/ui/Components/RadialProgressView;->radOffset:F

    .line 79
    const/high16 v1, -0x3c7b0000    # -266.0f

    iput v1, p0, Lorg/telegram/ui/Components/RadialProgressView;->currentCircleLength:F

    .line 81
    :cond_2
    iget-boolean v1, p0, Lorg/telegram/ui/Components/RadialProgressView;->risingCircleLength:Z

    if-nez v1, :cond_5

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RadialProgressView;->risingCircleLength:Z

    .line 82
    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/ui/Components/RadialProgressView;->currentProgressTime:F

    .line 84
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RadialProgressView;->invalidate()V

    .line 85
    return-void

    .line 74
    :cond_4
    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v6, p0, Lorg/telegram/ui/Components/RadialProgressView;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    iget v7, p0, Lorg/telegram/ui/Components/RadialProgressView;->currentProgressTime:F

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v6

    sub-float/2addr v1, v6

    mul-float/2addr v1, v10

    sub-float v1, v9, v1

    iput v1, p0, Lorg/telegram/ui/Components/RadialProgressView;->currentCircleLength:F

    goto :goto_0

    .line 81
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 99
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RadialProgressView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/RadialProgressView;->size:I

    sub-int/2addr v0, v1

    div-int/lit8 v6, v0, 0x2

    .line 100
    .local v6, "x":I
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RadialProgressView;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/RadialProgressView;->size:I

    sub-int/2addr v0, v1

    div-int/lit8 v7, v0, 0x2

    .line 101
    .local v7, "y":I
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->cicleRect:Landroid/graphics/RectF;

    int-to-float v1, v6

    int-to-float v2, v7

    iget v3, p0, Lorg/telegram/ui/Components/RadialProgressView;->size:I

    add-int/2addr v3, v6

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Components/RadialProgressView;->size:I

    add-int/2addr v4, v7

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 102
    iget-object v1, p0, Lorg/telegram/ui/Components/RadialProgressView;->cicleRect:Landroid/graphics/RectF;

    iget v2, p0, Lorg/telegram/ui/Components/RadialProgressView;->radOffset:F

    iget v3, p0, Lorg/telegram/ui/Components/RadialProgressView;->currentCircleLength:F

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/ui/Components/RadialProgressView;->progressPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 103
    invoke-direct {p0}, Lorg/telegram/ui/Components/RadialProgressView;->updateAnimation()V

    .line 104
    return-void
.end method

.method public setProgressColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 93
    iput p1, p0, Lorg/telegram/ui/Components/RadialProgressView;->progressColor:I

    .line 94
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->progressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/RadialProgressView;->progressColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 88
    iput p1, p0, Lorg/telegram/ui/Components/RadialProgressView;->size:I

    .line 89
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RadialProgressView;->invalidate()V

    .line 90
    return-void
.end method
