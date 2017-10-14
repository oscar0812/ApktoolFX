.class public Lorg/telegram/ui/Components/ClippingImageView;
.super Landroid/view/View;
.source "ClippingImageView.java"


# instance fields
.field private animationProgress:F

.field private animationValues:[[F

.field private bitmapRect:Landroid/graphics/RectF;

.field private bitmapShader:Landroid/graphics/BitmapShader;

.field private bmp:Landroid/graphics/Bitmap;

.field private clipBottom:I

.field private clipLeft:I

.field private clipRight:I

.field private clipTop:I

.field private drawRect:Landroid/graphics/RectF;

.field private matrix:Landroid/graphics/Matrix;

.field private needRadius:Z

.field private orientation:I

.field private paint:Landroid/graphics/Paint;

.field private radius:I

.field private roundPaint:Landroid/graphics/Paint;

.field private roundRect:Landroid/graphics/RectF;

.field private shaderMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 48
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->paint:Landroid/graphics/Paint;

    .line 50
    iget-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 51
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->matrix:Landroid/graphics/Matrix;

    .line 52
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->drawRect:Landroid/graphics/RectF;

    .line 53
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->bitmapRect:Landroid/graphics/RectF;

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->roundPaint:Landroid/graphics/Paint;

    .line 55
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->roundRect:Landroid/graphics/RectF;

    .line 56
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->shaderMatrix:Landroid/graphics/Matrix;

    .line 57
    return-void
.end method


# virtual methods
.method public getAnimationProgress()F
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationProgress:F

    return v0
.end method

.method public getClipBottom()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipBottom:I

    return v0
.end method

.method public getClipHorizontal()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipRight:I

    return v0
.end method

.method public getClipLeft()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipLeft:I

    return v0
.end method

.method public getClipRight()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipRight:I

    return v0
.end method

.method public getClipTop()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipTop:I

    return v0
.end method

.method public getRadius()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->radius:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 107
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->bmp:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_0

    .line 111
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getScaleY()F

    move-result v7

    .line 112
    .local v7, "scaleY":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 114
    iget-boolean v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->needRadius:Z

    if-eqz v9, :cond_7

    .line 115
    iget-object v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9}, Landroid/graphics/Matrix;->reset()V

    .line 116
    iget-object v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->roundRect:Landroid/graphics/RectF;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getWidth()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getHeight()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 120
    iget v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->orientation:I

    rem-int/lit16 v9, v9, 0x168

    const/16 v10, 0x5a

    if-eq v9, v10, :cond_2

    iget v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->orientation:I

    rem-int/lit16 v9, v9, 0x168

    const/16 v10, 0x10e

    if-ne v9, v10, :cond_3

    .line 121
    :cond_2
    iget-object v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 122
    .local v1, "bitmapW":I
    iget-object v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 127
    .local v0, "bitmapH":I
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getWidth()I

    move-result v9

    if-eqz v9, :cond_4

    int-to-float v9, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float v6, v9, v10

    .line 128
    .local v6, "scaleW":F
    :goto_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getHeight()I

    move-result v9

    if-eqz v9, :cond_5

    int-to-float v9, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float v5, v9, v10

    .line 129
    .local v5, "scaleH":F
    :goto_3
    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 130
    .local v4, "scale":F
    sub-float v9, v6, v5

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const v10, 0x3727c5ac    # 1.0E-5f

    cmpl-float v9, v9, v10

    if-lez v9, :cond_6

    .line 131
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v4

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v8, v10

    .line 132
    .local v8, "w":I
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v4

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v3, v10

    .line 133
    .local v3, "h":I
    iget-object v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->bitmapRect:Landroid/graphics/RectF;

    sub-int v10, v1, v8

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-int v11, v0, v3

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    int-to-float v12, v8

    int-to-float v13, v3

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 134
    iget-object v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->shaderMatrix:Landroid/graphics/Matrix;

    iget-object v10, p0, Lorg/telegram/ui/Components/ClippingImageView;->bitmapRect:Landroid/graphics/RectF;

    iget-object v11, p0, Lorg/telegram/ui/Components/ClippingImageView;->roundRect:Landroid/graphics/RectF;

    iget v12, p0, Lorg/telegram/ui/Components/ClippingImageView;->orientation:I

    sget-object v13, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-static {v9, v10, v11, v12, v13}, Lorg/telegram/messenger/AndroidUtilities;->setRectToRect(Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/RectF;ILandroid/graphics/Matrix$ScaleToFit;)V

    .line 139
    .end local v3    # "h":I
    .end local v8    # "w":I
    :goto_4
    iget-object v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->bitmapShader:Landroid/graphics/BitmapShader;

    iget-object v10, p0, Lorg/telegram/ui/Components/ClippingImageView;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v10}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 140
    iget v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipLeft:I

    int-to-float v9, v9

    div-float/2addr v9, v7

    iget v10, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipTop:I

    int-to-float v10, v10

    div-float/2addr v10, v7

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getWidth()I

    move-result v11

    int-to-float v11, v11

    iget v12, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipRight:I

    int-to-float v12, v12

    div-float/2addr v12, v7

    sub-float/2addr v11, v12

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getHeight()I

    move-result v12

    int-to-float v12, v12

    iget v13, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipBottom:I

    int-to-float v13, v13

    div-float/2addr v13, v7

    sub-float/2addr v12, v13

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 141
    iget-object v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->roundRect:Landroid/graphics/RectF;

    iget v10, p0, Lorg/telegram/ui/Components/ClippingImageView;->radius:I

    int-to-float v10, v10

    iget v11, p0, Lorg/telegram/ui/Components/ClippingImageView;->radius:I

    int-to-float v11, v11

    iget-object v12, p0, Lorg/telegram/ui/Components/ClippingImageView;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 165
    .end local v0    # "bitmapH":I
    .end local v1    # "bitmapW":I
    .end local v4    # "scale":F
    .end local v5    # "scaleH":F
    .end local v6    # "scaleW":F
    :goto_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 124
    :cond_3
    iget-object v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 125
    .restart local v1    # "bitmapW":I
    iget-object v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .restart local v0    # "bitmapH":I
    goto/16 :goto_1

    .line 127
    :cond_4
    const/high16 v6, 0x3f800000    # 1.0f

    goto/16 :goto_2

    .line 128
    .restart local v6    # "scaleW":F
    :cond_5
    const/high16 v5, 0x3f800000    # 1.0f

    goto/16 :goto_3

    .line 136
    .restart local v4    # "scale":F
    .restart local v5    # "scaleH":F
    :cond_6
    iget-object v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->bitmapRect:Landroid/graphics/RectF;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/telegram/ui/Components/ClippingImageView;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    iget-object v13, p0, Lorg/telegram/ui/Components/ClippingImageView;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 137
    iget-object v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->shaderMatrix:Landroid/graphics/Matrix;

    iget-object v10, p0, Lorg/telegram/ui/Components/ClippingImageView;->bitmapRect:Landroid/graphics/RectF;

    iget-object v11, p0, Lorg/telegram/ui/Components/ClippingImageView;->roundRect:Landroid/graphics/RectF;

    iget v12, p0, Lorg/telegram/ui/Components/ClippingImageView;->orientation:I

    sget-object v13, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-static {v9, v10, v11, v12, v13}, Lorg/telegram/messenger/AndroidUtilities;->setRectToRect(Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/RectF;ILandroid/graphics/Matrix$ScaleToFit;)V

    goto :goto_4

    .line 143
    .end local v0    # "bitmapH":I
    .end local v1    # "bitmapW":I
    .end local v4    # "scale":F
    .end local v5    # "scaleH":F
    .end local v6    # "scaleW":F
    :cond_7
    iget v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->orientation:I

    const/16 v10, 0x5a

    if-eq v9, v10, :cond_8

    iget v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->orientation:I

    const/16 v10, 0x10e

    if-ne v9, v10, :cond_9

    .line 144
    :cond_8
    iget-object v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->drawRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getHeight()I

    move-result v10

    neg-int v10, v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getWidth()I

    move-result v11

    neg-int v11, v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getWidth()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 145
    iget-object v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v10, p0, Lorg/telegram/ui/Components/ClippingImageView;->bitmapRect:Landroid/graphics/RectF;

    iget-object v11, p0, Lorg/telegram/ui/Components/ClippingImageView;->drawRect:Landroid/graphics/RectF;

    sget-object v12, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v9, v10, v11, v12}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 146
    iget-object v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->matrix:Landroid/graphics/Matrix;

    iget v10, p0, Lorg/telegram/ui/Components/ClippingImageView;->orientation:I

    int-to-float v10, v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 147
    iget-object v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 158
    :goto_6
    iget v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipLeft:I

    int-to-float v9, v9

    div-float/2addr v9, v7

    iget v10, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipTop:I

    int-to-float v10, v10

    div-float/2addr v10, v7

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getWidth()I

    move-result v11

    int-to-float v11, v11

    iget v12, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipRight:I

    int-to-float v12, v12

    div-float/2addr v12, v7

    sub-float/2addr v11, v12

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getHeight()I

    move-result v12

    int-to-float v12, v12

    iget v13, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipBottom:I

    int-to-float v13, v13

    div-float/2addr v13, v7

    sub-float/2addr v12, v13

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 160
    :try_start_0
    iget-object v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->bmp:Landroid/graphics/Bitmap;

    iget-object v10, p0, Lorg/telegram/ui/Components/ClippingImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v11, p0, Lorg/telegram/ui/Components/ClippingImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 161
    :catch_0
    move-exception v2

    .line 162
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 148
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_9
    iget v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->orientation:I

    const/16 v10, 0xb4

    if-ne v9, v10, :cond_a

    .line 149
    iget-object v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->drawRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getWidth()I

    move-result v10

    neg-int v10, v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getHeight()I

    move-result v11

    neg-int v11, v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 150
    iget-object v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v10, p0, Lorg/telegram/ui/Components/ClippingImageView;->bitmapRect:Landroid/graphics/RectF;

    iget-object v11, p0, Lorg/telegram/ui/Components/ClippingImageView;->drawRect:Landroid/graphics/RectF;

    sget-object v12, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v9, v10, v11, v12}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 151
    iget-object v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->matrix:Landroid/graphics/Matrix;

    iget v10, p0, Lorg/telegram/ui/Components/ClippingImageView;->orientation:I

    int-to-float v10, v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 152
    iget-object v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_6

    .line 154
    :cond_a
    iget-object v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->drawRect:Landroid/graphics/RectF;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getWidth()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getHeight()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 155
    iget-object v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v10, p0, Lorg/telegram/ui/Components/ClippingImageView;->bitmapRect:Landroid/graphics/RectF;

    iget-object v11, p0, Lorg/telegram/ui/Components/ClippingImageView;->drawRect:Landroid/graphics/RectF;

    sget-object v12, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v9, v10, v11, v12}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_6
.end method

.method public setAnimationProgress(F)V
    .locals 8
    .param p1, "progress"    # F

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 68
    iput p1, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationProgress:F

    .line 70
    iget-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v0, v0, v4

    aget v0, v0, v4

    iget-object v1, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v1, v1, v5

    aget v1, v1, v4

    iget-object v2, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v2, v2, v4

    aget v2, v2, v4

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationProgress:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ClippingImageView;->setScaleX(F)V

    .line 71
    iget-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v0, v0, v4

    aget v0, v0, v5

    iget-object v1, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v1, v1, v5

    aget v1, v1, v5

    iget-object v2, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v2, v2, v4

    aget v2, v2, v5

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationProgress:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ClippingImageView;->setScaleY(F)V

    .line 72
    iget-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v0, v0, v4

    aget v0, v0, v3

    iget-object v1, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v1, v1, v5

    aget v1, v1, v3

    iget-object v2, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v2, v2, v4

    aget v2, v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationProgress:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ClippingImageView;->setTranslationX(F)V

    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v0, v0, v4

    aget v0, v0, v6

    iget-object v1, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v1, v1, v5

    aget v1, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v2, v2, v4

    aget v2, v2, v6

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationProgress:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ClippingImageView;->setTranslationY(F)V

    .line 74
    iget-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v0, v0, v4

    aget v0, v0, v7

    iget-object v1, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v1, v1, v5

    aget v1, v1, v7

    iget-object v2, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v2, v2, v4

    aget v2, v2, v7

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationProgress:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ClippingImageView;->setClipHorizontal(I)V

    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v0, v0, v4

    const/4 v1, 0x5

    aget v0, v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v1, v1, v5

    const/4 v2, 0x5

    aget v1, v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v2, v2, v4

    const/4 v3, 0x5

    aget v2, v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationProgress:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ClippingImageView;->setClipTop(I)V

    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v0, v0, v4

    const/4 v1, 0x6

    aget v0, v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v1, v1, v5

    const/4 v2, 0x6

    aget v1, v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v2, v2, v4

    const/4 v3, 0x6

    aget v2, v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationProgress:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ClippingImageView;->setClipBottom(I)V

    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v0, v0, v4

    const/4 v1, 0x7

    aget v0, v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v1, v1, v5

    const/4 v2, 0x7

    aget v1, v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v2, v2, v4

    const/4 v3, 0x7

    aget v2, v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationProgress:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ClippingImageView;->setRadius(I)V

    .line 79
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->invalidate()V

    .line 80
    return-void
.end method

.method public setAnimationValues([[F)V
    .locals 0
    .param p1, "values"    # [[F

    .prologue
    .line 60
    iput-object p1, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    .line 61
    return-void
.end method

.method public setClipBottom(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 170
    iput p1, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipBottom:I

    .line 171
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->invalidate()V

    .line 172
    return-void
.end method

.method public setClipHorizontal(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 175
    iput p1, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipRight:I

    .line 176
    iput p1, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipLeft:I

    .line 177
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->invalidate()V

    .line 178
    return-void
.end method

.method public setClipLeft(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 181
    iput p1, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipLeft:I

    .line 182
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->invalidate()V

    .line 183
    return-void
.end method

.method public setClipRight(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 186
    iput p1, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipRight:I

    .line 187
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->invalidate()V

    .line 188
    return-void
.end method

.method public setClipTop(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 191
    iput p1, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipTop:I

    .line 192
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->invalidate()V

    .line 193
    return-void
.end method

.method public setClipVertical(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 196
    iput p1, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipBottom:I

    .line 197
    iput p1, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipTop:I

    .line 198
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->invalidate()V

    .line 199
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 206
    iput-object p1, p0, Lorg/telegram/ui/Components/ClippingImageView;->bmp:Landroid/graphics/Bitmap;

    .line 207
    if-eqz p1, :cond_0

    .line 208
    iget-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->bitmapRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 209
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->needRadius:Z

    if-eqz v0, :cond_0

    .line 210
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->bitmapShader:Landroid/graphics/BitmapShader;

    .line 211
    iget-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->roundPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Components/ClippingImageView;->bitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 214
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->invalidate()V

    .line 215
    return-void
.end method

.method public setNeedRadius(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 218
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ClippingImageView;->needRadius:Z

    .line 219
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "angle"    # I

    .prologue
    .line 202
    iput p1, p0, Lorg/telegram/ui/Components/ClippingImageView;->orientation:I

    .line 203
    return-void
.end method

.method public setRadius(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 222
    iput p1, p0, Lorg/telegram/ui/Components/ClippingImageView;->radius:I

    .line 223
    return-void
.end method
