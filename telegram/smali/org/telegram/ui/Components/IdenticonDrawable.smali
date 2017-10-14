.class public Lorg/telegram/ui/Components/IdenticonDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "IdenticonDrawable.java"


# instance fields
.field private colors:[I

.field private data:[B

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/IdenticonDrawable;->paint:Landroid/graphics/Paint;

    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/telegram/ui/Components/IdenticonDrawable;->colors:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x2a190d
        -0xd2a88b
        -0xd06637
    .end array-data
.end method

.method private getBits(I)I
    .locals 2
    .param p1, "bitOffset"    # I

    .prologue
    .line 31
    iget-object v0, p0, Lorg/telegram/ui/Components/IdenticonDrawable;->data:[B

    div-int/lit8 v1, p1, 0x8

    aget-byte v0, v0, v1

    rem-int/lit8 v1, p1, 0x8

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x3

    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/telegram/ui/Components/IdenticonDrawable;->data:[B

    if-nez v0, :cond_1

    .line 85
    :cond_0
    return-void

    .line 56
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/IdenticonDrawable;->data:[B

    array-length v0, v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    .line 57
    const/4 v6, 0x0

    .line 58
    .local v6, "bitPointer":I
    invoke-virtual {p0}, Lorg/telegram/ui/Components/IdenticonDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/IdenticonDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41000000    # 8.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v11, v0

    .line 59
    .local v11, "rectSize":F
    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/IdenticonDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v2, v11

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 60
    .local v12, "xOffset":F
    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/IdenticonDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v2, v11

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 61
    .local v13, "yOffset":F
    const/4 v10, 0x0

    .local v10, "iy":I
    :goto_0
    const/16 v0, 0x8

    if-ge v10, v0, :cond_0

    .line 62
    const/4 v9, 0x0

    .local v9, "ix":I
    :goto_1
    const/16 v0, 0x8

    if-ge v9, v0, :cond_2

    .line 63
    invoke-direct {p0, v6}, Lorg/telegram/ui/Components/IdenticonDrawable;->getBits(I)I

    move-result v7

    .line 64
    .local v7, "byteValue":I
    add-int/lit8 v6, v6, 0x2

    .line 65
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v0

    rem-int/lit8 v8, v0, 0x4

    .line 66
    .local v8, "colorIndex":I
    iget-object v0, p0, Lorg/telegram/ui/Components/IdenticonDrawable;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Components/IdenticonDrawable;->colors:[I

    aget v1, v1, v8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    int-to-float v0, v9

    mul-float/2addr v0, v11

    add-float v1, v12, v0

    int-to-float v0, v10

    mul-float/2addr v0, v11

    add-float v2, v0, v13

    int-to-float v0, v9

    mul-float/2addr v0, v11

    add-float/2addr v0, v12

    add-float v3, v0, v11

    int-to-float v0, v10

    mul-float/2addr v0, v11

    add-float/2addr v0, v11

    add-float v4, v0, v13

    iget-object v5, p0, Lorg/telegram/ui/Components/IdenticonDrawable;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 62
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 61
    .end local v7    # "byteValue":I
    .end local v8    # "colorIndex":I
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 71
    .end local v6    # "bitPointer":I
    .end local v9    # "ix":I
    .end local v10    # "iy":I
    .end local v11    # "rectSize":F
    .end local v12    # "xOffset":F
    .end local v13    # "yOffset":F
    :cond_3
    const/4 v6, 0x0

    .line 72
    .restart local v6    # "bitPointer":I
    invoke-virtual {p0}, Lorg/telegram/ui/Components/IdenticonDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/IdenticonDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41400000    # 12.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v11, v0

    .line 73
    .restart local v11    # "rectSize":F
    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/IdenticonDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41400000    # 12.0f

    mul-float/2addr v2, v11

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 74
    .restart local v12    # "xOffset":F
    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/IdenticonDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41400000    # 12.0f

    mul-float/2addr v2, v11

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 75
    .restart local v13    # "yOffset":F
    const/4 v10, 0x0

    .restart local v10    # "iy":I
    :goto_2
    const/16 v0, 0xc

    if-ge v10, v0, :cond_0

    .line 76
    const/4 v9, 0x0

    .restart local v9    # "ix":I
    :goto_3
    const/16 v0, 0xc

    if-ge v9, v0, :cond_4

    .line 77
    invoke-direct {p0, v6}, Lorg/telegram/ui/Components/IdenticonDrawable;->getBits(I)I

    move-result v7

    .line 78
    .restart local v7    # "byteValue":I
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v0

    rem-int/lit8 v8, v0, 0x4

    .line 79
    .restart local v8    # "colorIndex":I
    iget-object v0, p0, Lorg/telegram/ui/Components/IdenticonDrawable;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Components/IdenticonDrawable;->colors:[I

    aget v1, v1, v8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    int-to-float v0, v9

    mul-float/2addr v0, v11

    add-float v1, v12, v0

    int-to-float v0, v10

    mul-float/2addr v0, v11

    add-float v2, v0, v13

    int-to-float v0, v9

    mul-float/2addr v0, v11

    add-float/2addr v0, v12

    add-float v3, v0, v11

    int-to-float v0, v10

    mul-float/2addr v0, v11

    add-float/2addr v0, v11

    add-float v4, v0, v13

    iget-object v5, p0, Lorg/telegram/ui/Components/IdenticonDrawable;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 81
    add-int/lit8 v6, v6, 0x2

    .line 76
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 75
    .end local v7    # "byteValue":I
    .end local v8    # "colorIndex":I
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 109
    const/high16 v0, 0x42000000    # 32.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 104
    const/high16 v0, 0x42000000    # 32.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 90
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 95
    return-void
.end method

.method public setColors([I)V
    .locals 2
    .param p1, "value"    # [I

    .prologue
    .line 43
    iget-object v0, p0, Lorg/telegram/ui/Components/IdenticonDrawable;->colors:[I

    array-length v0, v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "colors must have length of 4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/IdenticonDrawable;->colors:[I

    .line 47
    invoke-virtual {p0}, Lorg/telegram/ui/Components/IdenticonDrawable;->invalidateSelf()V

    .line 48
    return-void
.end method

.method public setEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    .locals 1
    .param p1, "encryptedChat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .prologue
    .line 35
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    iput-object v0, p0, Lorg/telegram/ui/Components/IdenticonDrawable;->data:[B

    .line 36
    iget-object v0, p0, Lorg/telegram/ui/Components/IdenticonDrawable;->data:[B

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->calcAuthKeyHash([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/IdenticonDrawable;->data:[B

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    .line 39
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/IdenticonDrawable;->invalidateSelf()V

    .line 40
    return-void
.end method
