.class public Lorg/telegram/ui/Components/CloseProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CloseProgressDrawable.java"


# instance fields
.field private currentAnimationTime:I

.field private currentSegment:I

.field private interpolator:Landroid/view/animation/DecelerateInterpolator;

.field private lastFrameTime:J

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable;->paint:Landroid/graphics/Paint;

    .line 25
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 30
    iget-object v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable;->paint:Landroid/graphics/Paint;

    const v1, -0x8a8a8b

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    iget-object v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 32
    iget-object v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 33
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v7, 0x41000000    # 8.0f

    const/4 v2, 0x0

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 38
    .local v10, "newTime":J
    iget-wide v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable;->lastFrameTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 39
    iget-wide v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable;->lastFrameTime:J

    sub-long v8, v10, v0

    .line 40
    .local v8, "dt":J
    iget v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable;->currentAnimationTime:I

    int-to-long v0, v0

    add-long/2addr v0, v8

    long-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable;->currentAnimationTime:I

    .line 41
    iget v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable;->currentAnimationTime:I

    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable;->currentAnimationTime:I

    .line 43
    iget v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable;->currentSegment:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable;->currentSegment:I

    .line 44
    iget v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable;->currentSegment:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 45
    iget v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable;->currentSegment:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable;->currentSegment:I

    .line 50
    .end local v8    # "dt":J
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 51
    invoke-virtual {p0}, Lorg/telegram/ui/Components/CloseProgressDrawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/CloseProgressDrawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 52
    const/high16 v0, 0x42340000    # 45.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 53
    iget-object v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/CloseProgressDrawable;->currentSegment:I

    rem-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x28

    rsub-int v1, v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 54
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v1, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/CloseProgressDrawable;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 55
    iget-object v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/CloseProgressDrawable;->currentSegment:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x28

    rsub-int v1, v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 56
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v3, v0

    iget-object v6, p0, Lorg/telegram/ui/Components/CloseProgressDrawable;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    move v4, v2

    move v5, v2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 57
    iget-object v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/CloseProgressDrawable;->currentSegment:I

    add-int/lit8 v1, v1, 0x2

    rem-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x28

    rsub-int v1, v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 58
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v4, v0

    iget-object v6, p0, Lorg/telegram/ui/Components/CloseProgressDrawable;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    move v3, v2

    move v5, v2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 59
    iget-object v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/CloseProgressDrawable;->currentSegment:I

    add-int/lit8 v1, v1, 0x3

    rem-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x28

    rsub-int v1, v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 60
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lorg/telegram/ui/Components/CloseProgressDrawable;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    move v3, v2

    move v4, v2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 61
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 63
    iput-wide v10, p0, Lorg/telegram/ui/Components/CloseProgressDrawable;->lastFrameTime:J

    .line 64
    invoke-virtual {p0}, Lorg/telegram/ui/Components/CloseProgressDrawable;->invalidateSelf()V

    .line 65
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 89
    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 84
    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 79
    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 70
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 75
    return-void
.end method
