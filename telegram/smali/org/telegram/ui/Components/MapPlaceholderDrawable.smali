.class public Lorg/telegram/ui/Components/MapPlaceholderDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MapPlaceholderDrawable.java"


# instance fields
.field private linePaint:Landroid/graphics/Paint;

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/MapPlaceholderDrawable;->paint:Landroid/graphics/Paint;

    .line 26
    iget-object v0, p0, Lorg/telegram/ui/Components/MapPlaceholderDrawable;->paint:Landroid/graphics/Paint;

    const v1, -0x21282a

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/MapPlaceholderDrawable;->linePaint:Landroid/graphics/Paint;

    .line 28
    iget-object v0, p0, Lorg/telegram/ui/Components/MapPlaceholderDrawable;->linePaint:Landroid/graphics/Paint;

    const v1, -0x394042

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 29
    iget-object v0, p0, Lorg/telegram/ui/Components/MapPlaceholderDrawable;->linePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 30
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 34
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MapPlaceholderDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/MapPlaceholderDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 35
    const/high16 v0, 0x41100000    # 9.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    .line 36
    .local v7, "gap":I
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MapPlaceholderDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int v9, v0, v7

    .line 37
    .local v9, "xcount":I
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MapPlaceholderDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int v11, v0, v7

    .line 38
    .local v11, "ycount":I
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MapPlaceholderDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v8, v0, Landroid/graphics/Rect;->left:I

    .line 39
    .local v8, "x":I
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MapPlaceholderDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v10, v0, Landroid/graphics/Rect;->top:I

    .line 40
    .local v10, "y":I
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_0
    if-ge v6, v9, :cond_0

    .line 41
    add-int/lit8 v0, v6, 0x1

    mul-int/2addr v0, v7

    add-int/2addr v0, v8

    int-to-float v1, v0

    int-to-float v2, v10

    add-int/lit8 v0, v6, 0x1

    mul-int/2addr v0, v7

    add-int/2addr v0, v8

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/MapPlaceholderDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/2addr v0, v10

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/MapPlaceholderDrawable;->linePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 40
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 43
    :cond_0
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v11, :cond_1

    .line 44
    int-to-float v1, v8

    add-int/lit8 v0, v6, 0x1

    mul-int/2addr v0, v7

    add-int/2addr v0, v10

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/MapPlaceholderDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/2addr v0, v8

    int-to-float v3, v0

    add-int/lit8 v0, v6, 0x1

    mul-int/2addr v0, v7

    add-int/2addr v0, v10

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/MapPlaceholderDrawable;->linePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 43
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 46
    :cond_1
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 51
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 56
    return-void
.end method
