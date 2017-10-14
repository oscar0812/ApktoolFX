.class final Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;
.super Ljava/lang/Object;
.source "SubtitlePainter.java"


# static fields
.field private static final INNER_PADDING_RATIO:F = 0.125f

.field private static final TAG:Ljava/lang/String; = "SubtitlePainter"


# instance fields
.field private applyEmbeddedFontSizes:Z

.field private applyEmbeddedStyles:Z

.field private backgroundColor:I

.field private bitmapRect:Landroid/graphics/Rect;

.field private bottomPaddingFraction:F

.field private final cornerRadius:F

.field private cueBitmap:Landroid/graphics/Bitmap;

.field private cueBitmapHeight:F

.field private cueLine:F

.field private cueLineAnchor:I

.field private cueLineType:I

.field private cuePosition:F

.field private cuePositionAnchor:I

.field private cueSize:F

.field private cueText:Ljava/lang/CharSequence;

.field private cueTextAlignment:Landroid/text/Layout$Alignment;

.field private edgeColor:I

.field private edgeType:I

.field private foregroundColor:I

.field private final lineBounds:Landroid/graphics/RectF;

.field private final outlineWidth:F

.field private final paint:Landroid/graphics/Paint;

.field private parentBottom:I

.field private parentLeft:I

.field private parentRight:I

.field private parentTop:I

.field private final shadowOffset:F

.field private final shadowRadius:F

.field private final spacingAdd:F

.field private final spacingMult:F

.field private textLayout:Landroid/text/StaticLayout;

.field private textLeft:I

.field private textPaddingX:I

.field private final textPaint:Landroid/text/TextPaint;

.field private textSizePx:F

.field private textTop:I

.field private windowColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->lineBounds:Landroid/graphics/RectF;

    .line 108
    const/4 v5, 0x2

    new-array v4, v5, [I

    fill-array-data v4, :array_0

    .line 109
    .local v4, "viewAttr":[I
    const/4 v5, 0x0

    invoke-virtual {p1, v5, v4, v6, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 110
    .local v2, "styledAttributes":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v6, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->spacingAdd:F

    .line 111
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v2, v7, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->spacingMult:F

    .line 112
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 115
    .local v1, "resources":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 116
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    const/high16 v5, 0x40000000    # 2.0f

    iget v6, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    const/high16 v6, 0x43200000    # 160.0f

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 117
    .local v3, "twoDpInPx":I
    int-to-float v5, v3

    iput v5, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cornerRadius:F

    .line 118
    int-to-float v5, v3

    iput v5, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->outlineWidth:F

    .line 119
    int-to-float v5, v3

    iput v5, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->shadowRadius:F

    .line 120
    int-to-float v5, v3

    iput v5, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->shadowOffset:F

    .line 122
    new-instance v5, Landroid/text/TextPaint;

    invoke-direct {v5}, Landroid/text/TextPaint;-><init>()V

    iput-object v5, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    .line 123
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v7}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 124
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v7}, Landroid/text/TextPaint;->setSubpixelText(Z)V

    .line 126
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->paint:Landroid/graphics/Paint;

    .line 127
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 128
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->paint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 129
    return-void

    .line 108
    nop

    :array_0
    .array-data 4
        0x1010217
        0x1010218
    .end array-data
.end method

.method private static areCharSequencesEqual(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "first"    # Ljava/lang/CharSequence;
    .param p1, "second"    # Ljava/lang/CharSequence;

    .prologue
    .line 425
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private drawBitmapLayout(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 414
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->bitmapRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 415
    return-void
.end method

.method private drawLayout(Landroid/graphics/Canvas;Z)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "isTextCue"    # Z

    .prologue
    .line 347
    if-eqz p2, :cond_0

    .line 348
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->drawTextLayout(Landroid/graphics/Canvas;)V

    .line 352
    :goto_0
    return-void

    .line 350
    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->drawBitmapLayout(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawTextLayout(Landroid/graphics/Canvas;)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 355
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    .line 356
    .local v10, "layout":Landroid/text/StaticLayout;
    if-nez v10, :cond_0

    .line 411
    :goto_0
    return-void

    .line 361
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v15

    .line 362
    .local v15, "saveCount":I
    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textLeft:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textTop:I

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 364
    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->windowColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-lez v1, :cond_1

    .line 365
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->windowColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 366
    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaddingX:I

    neg-int v1, v1

    int-to-float v2, v1

    const/4 v3, 0x0

    invoke-virtual {v10}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaddingX:I

    add-int/2addr v1, v4

    int-to-float v4, v1

    invoke-virtual {v10}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 370
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->backgroundColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-lez v1, :cond_2

    .line 371
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->backgroundColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 372
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v1

    int-to-float v13, v1

    .line 373
    .local v13, "previousBottom":F
    invoke-virtual {v10}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v11

    .line 374
    .local v11, "lineCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v11, :cond_2

    .line 375
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->lineBounds:Landroid/graphics/RectF;

    invoke-virtual {v10, v9}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaddingX:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 376
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->lineBounds:Landroid/graphics/RectF;

    invoke-virtual {v10, v9}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaddingX:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 377
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->lineBounds:Landroid/graphics/RectF;

    iput v13, v1, Landroid/graphics/RectF;->top:F

    .line 378
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->lineBounds:Landroid/graphics/RectF;

    invoke-virtual {v10, v9}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 379
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->lineBounds:Landroid/graphics/RectF;

    iget v13, v1, Landroid/graphics/RectF;->bottom:F

    .line 380
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->lineBounds:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cornerRadius:F

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cornerRadius:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 374
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 384
    .end local v9    # "i":I
    .end local v11    # "lineCount":I
    .end local v13    # "previousBottom":F
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->edgeType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 385
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 386
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->outlineWidth:F

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 387
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->edgeColor:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 388
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 389
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 405
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->foregroundColor:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 406
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 407
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 408
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 410
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 390
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->edgeType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 391
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->shadowRadius:F

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->shadowOffset:F

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->shadowOffset:F

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->edgeColor:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    goto :goto_2

    .line 392
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->edgeType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->edgeType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 394
    :cond_6
    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->edgeType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7

    const/4 v14, 0x1

    .line 395
    .local v14, "raised":Z
    :goto_3
    if-eqz v14, :cond_8

    const/4 v8, -0x1

    .line 396
    .local v8, "colorUp":I
    :goto_4
    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->edgeColor:I

    .line 397
    .local v7, "colorDown":I
    :goto_5
    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->shadowRadius:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v12, v1, v2

    .line 398
    .local v12, "offset":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->foregroundColor:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 399
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 400
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->shadowRadius:F

    neg-float v3, v12

    neg-float v4, v12

    invoke-virtual {v1, v2, v3, v4, v8}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 401
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 402
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->shadowRadius:F

    invoke-virtual {v1, v2, v12, v12, v7}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    goto/16 :goto_2

    .line 394
    .end local v7    # "colorDown":I
    .end local v8    # "colorUp":I
    .end local v12    # "offset":F
    .end local v14    # "raised":Z
    :cond_7
    const/4 v14, 0x0

    goto :goto_3

    .line 395
    .restart local v14    # "raised":Z
    :cond_8
    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->edgeColor:I

    goto :goto_4

    .line 396
    .restart local v8    # "colorUp":I
    :cond_9
    const/4 v7, -0x1

    goto :goto_5
.end method

.method private setupBitmapLayout()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 332
    iget v8, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentRight:I

    iget v9, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentLeft:I

    sub-int v4, v8, v9

    .line 333
    .local v4, "parentWidth":I
    iget v8, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentBottom:I

    iget v9, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentTop:I

    sub-int v3, v8, v9

    .line 334
    .local v3, "parentHeight":I
    iget v8, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentLeft:I

    int-to-float v8, v8

    int-to-float v9, v4

    iget v10, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cuePosition:F

    mul-float/2addr v9, v10

    add-float v0, v8, v9

    .line 335
    .local v0, "anchorX":F
    iget v8, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentTop:I

    int-to-float v8, v8

    int-to-float v9, v3

    iget v10, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueLine:F

    mul-float/2addr v9, v10

    add-float v1, v8, v9

    .line 336
    .local v1, "anchorY":F
    int-to-float v8, v4

    iget v9, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueSize:F

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 337
    .local v5, "width":I
    iget v8, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueBitmapHeight:F

    const/4 v9, 0x1

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_2

    int-to-float v8, v3

    iget v9, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueBitmapHeight:F

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 339
    .local v2, "height":I
    :goto_0
    iget v8, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueLineAnchor:I

    if-ne v8, v12, :cond_3

    int-to-float v8, v5

    sub-float/2addr v0, v8

    .end local v0    # "anchorX":F
    :cond_0
    :goto_1
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 341
    .local v6, "x":I
    iget v8, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cuePositionAnchor:I

    if-ne v8, v12, :cond_4

    int-to-float v8, v2

    sub-float/2addr v1, v8

    .end local v1    # "anchorY":F
    :cond_1
    :goto_2
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 343
    .local v7, "y":I
    new-instance v8, Landroid/graphics/Rect;

    add-int v9, v6, v5

    add-int v10, v7, v2

    invoke-direct {v8, v6, v7, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v8, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->bitmapRect:Landroid/graphics/Rect;

    .line 344
    return-void

    .line 337
    .end local v2    # "height":I
    .end local v6    # "x":I
    .end local v7    # "y":I
    .restart local v0    # "anchorX":F
    .restart local v1    # "anchorY":F
    :cond_2
    int-to-float v8, v5

    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueBitmap:Landroid/graphics/Bitmap;

    .line 338
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_0

    .line 339
    .restart local v2    # "height":I
    :cond_3
    iget v8, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueLineAnchor:I

    if-ne v8, v11, :cond_0

    div-int/lit8 v8, v5, 0x2

    int-to-float v8, v8

    sub-float/2addr v0, v8

    goto :goto_1

    .line 341
    .end local v0    # "anchorX":F
    .restart local v6    # "x":I
    :cond_4
    iget v8, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cuePositionAnchor:I

    if-ne v8, v11, :cond_1

    div-int/lit8 v8, v2, 0x2

    int-to-float v8, v8

    sub-float/2addr v1, v8

    goto :goto_2
.end method

.method private setupTextLayout()V
    .locals 32

    .prologue
    .line 228
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentRight:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentLeft:I

    sub-int v24, v2, v4

    .line 229
    .local v24, "parentWidth":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentBottom:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentTop:I

    sub-int v23, v2, v4

    .line 231
    .local v23, "parentHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textSizePx:F

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 232
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textSizePx:F

    const/high16 v4, 0x3e000000    # 0.125f

    mul-float/2addr v2, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v2, v4

    float-to-int v0, v2

    move/from16 v29, v0

    .line 234
    .local v29, "textPaddingX":I
    mul-int/lit8 v2, v29, 0x2

    sub-int v5, v24, v2

    .line 235
    .local v5, "availableWidth":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueSize:F

    const/4 v4, 0x1

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_0

    .line 236
    int-to-float v2, v5

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueSize:F

    mul-float/2addr v2, v4

    float-to-int v5, v2

    .line 238
    :cond_0
    if-gtz v5, :cond_1

    .line 239
    const-string/jumbo v2, "SubtitlePainter"

    const-string/jumbo v4, "Skipped drawing subtitle cue (insufficient space)"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :goto_0
    return-void

    .line 245
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->applyEmbeddedFontSizes:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->applyEmbeddedStyles:Z

    if-eqz v2, :cond_2

    .line 246
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueText:Ljava/lang/CharSequence;

    .line 263
    .local v3, "cueText":Ljava/lang/CharSequence;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueTextAlignment:Landroid/text/Layout$Alignment;

    if-nez v2, :cond_6

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 264
    .local v6, "textAlignment":Landroid/text/Layout$Alignment;
    :goto_2
    new-instance v2, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->spacingMult:F

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->spacingAdd:F

    const/4 v9, 0x1

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v27

    .line 267
    .local v27, "textHeight":I
    const/4 v10, 0x0

    .line 268
    .local v10, "textWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v21

    .line 269
    .local v21, "lineCount":I
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_3
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    .line 270
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    float-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v2, v8

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 269
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 247
    .end local v3    # "cueText":Ljava/lang/CharSequence;
    .end local v6    # "textAlignment":Landroid/text/Layout$Alignment;
    .end local v10    # "textWidth":I
    .end local v20    # "i":I
    .end local v21    # "lineCount":I
    .end local v27    # "textHeight":I
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->applyEmbeddedStyles:Z

    if-nez v2, :cond_3

    .line 248
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "cueText":Ljava/lang/CharSequence;
    goto :goto_1

    .line 250
    .end local v3    # "cueText":Ljava/lang/CharSequence;
    :cond_3
    new-instance v22, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueText:Ljava/lang/CharSequence;

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 251
    .local v22, "newCueText":Landroid/text/SpannableStringBuilder;
    invoke-virtual/range {v22 .. v22}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v18

    .line 252
    .local v18, "cueLength":I
    const/4 v2, 0x0

    const-class v4, Landroid/text/style/AbsoluteSizeSpan;

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v2, v1, v4}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Landroid/text/style/AbsoluteSizeSpan;

    .line 253
    .local v16, "absSpans":[Landroid/text/style/AbsoluteSizeSpan;
    const/4 v2, 0x0

    const-class v4, Landroid/text/style/RelativeSizeSpan;

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v2, v1, v4}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [Landroid/text/style/RelativeSizeSpan;

    .line 254
    .local v26, "relSpans":[Landroid/text/style/RelativeSizeSpan;
    move-object/from16 v0, v16

    array-length v4, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v4, :cond_4

    aget-object v15, v16, v2

    .line 255
    .local v15, "absSpan":Landroid/text/style/AbsoluteSizeSpan;
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 254
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 257
    .end local v15    # "absSpan":Landroid/text/style/AbsoluteSizeSpan;
    :cond_4
    move-object/from16 v0, v26

    array-length v4, v0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v4, :cond_5

    aget-object v25, v26, v2

    .line 258
    .local v25, "relSpan":Landroid/text/style/RelativeSizeSpan;
    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 257
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 260
    .end local v25    # "relSpan":Landroid/text/style/RelativeSizeSpan;
    :cond_5
    move-object/from16 v3, v22

    .restart local v3    # "cueText":Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 263
    .end local v16    # "absSpans":[Landroid/text/style/AbsoluteSizeSpan;
    .end local v18    # "cueLength":I
    .end local v22    # "newCueText":Landroid/text/SpannableStringBuilder;
    .end local v26    # "relSpans":[Landroid/text/style/RelativeSizeSpan;
    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueTextAlignment:Landroid/text/Layout$Alignment;

    goto/16 :goto_2

    .line 272
    .restart local v6    # "textAlignment":Landroid/text/Layout$Alignment;
    .restart local v10    # "textWidth":I
    .restart local v20    # "i":I
    .restart local v21    # "lineCount":I
    .restart local v27    # "textHeight":I
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueSize:F

    const/4 v4, 0x1

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_8

    if-ge v10, v5, :cond_8

    .line 273
    move v10, v5

    .line 275
    :cond_8
    mul-int/lit8 v2, v29, 0x2

    add-int/2addr v10, v2

    .line 279
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cuePosition:F

    const/4 v4, 0x1

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_b

    .line 280
    move/from16 v0, v24

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cuePosition:F

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentLeft:I

    add-int v17, v2, v4

    .line 281
    .local v17, "anchorPosition":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cuePositionAnchor:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_9

    sub-int v28, v17, v10

    .line 284
    .local v28, "textLeft":I
    :goto_6
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentLeft:I

    move/from16 v0, v28

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 285
    add-int v2, v28, v10

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentRight:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v30

    .line 291
    .end local v17    # "anchorPosition":I
    .local v30, "textRight":I
    :goto_7
    sub-int v10, v30, v28

    .line 292
    if-gtz v10, :cond_c

    .line 293
    const-string/jumbo v2, "SubtitlePainter"

    const-string/jumbo v4, "Skipped drawing subtitle cue (invalid horizontal positioning)"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 281
    .end local v28    # "textLeft":I
    .end local v30    # "textRight":I
    .restart local v17    # "anchorPosition":I
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cuePositionAnchor:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_a

    mul-int/lit8 v2, v17, 0x2

    sub-int/2addr v2, v10

    div-int/lit8 v28, v2, 0x2

    goto :goto_6

    :cond_a
    move/from16 v28, v17

    goto :goto_6

    .line 287
    .end local v17    # "anchorPosition":I
    :cond_b
    sub-int v2, v24, v10

    div-int/lit8 v28, v2, 0x2

    .line 288
    .restart local v28    # "textLeft":I
    add-int v30, v28, v10

    .restart local v30    # "textRight":I
    goto :goto_7

    .line 298
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueLine:F

    const/4 v4, 0x1

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_13

    .line 300
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueLineType:I

    if-nez v2, :cond_e

    .line 301
    move/from16 v0, v23

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueLine:F

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentTop:I

    add-int v17, v2, v4

    .line 311
    .restart local v17    # "anchorPosition":I
    :goto_8
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueLineAnchor:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_10

    sub-int v31, v17, v27

    .line 314
    .local v31, "textTop":I
    :goto_9
    add-int v2, v31, v27

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentBottom:I

    if-le v2, v4, :cond_12

    .line 315
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentBottom:I

    sub-int v31, v2, v27

    .line 324
    .end local v17    # "anchorPosition":I
    :cond_d
    :goto_a
    new-instance v7, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->spacingMult:F

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->spacingAdd:F

    const/4 v14, 0x1

    move-object v8, v3

    move-object v11, v6

    invoke-direct/range {v7 .. v14}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    .line 326
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textLeft:I

    .line 327
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textTop:I

    .line 328
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaddingX:I

    goto/16 :goto_0

    .line 304
    .end local v31    # "textTop":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v4

    sub-int v19, v2, v4

    .line 305
    .local v19, "firstLineHeight":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueLine:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_f

    .line 306
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueLine:F

    move/from16 v0, v19

    int-to-float v4, v0

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentTop:I

    add-int v17, v2, v4

    .restart local v17    # "anchorPosition":I
    goto :goto_8

    .line 308
    .end local v17    # "anchorPosition":I
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueLine:F

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v2, v4

    move/from16 v0, v19

    int-to-float v4, v0

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentBottom:I

    add-int v17, v2, v4

    .restart local v17    # "anchorPosition":I
    goto/16 :goto_8

    .line 311
    .end local v19    # "firstLineHeight":I
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueLineAnchor:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_11

    mul-int/lit8 v2, v17, 0x2

    sub-int v2, v2, v27

    div-int/lit8 v31, v2, 0x2

    goto/16 :goto_9

    :cond_11
    move/from16 v31, v17

    goto/16 :goto_9

    .line 316
    .restart local v31    # "textTop":I
    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentTop:I

    move/from16 v0, v31

    if-ge v0, v2, :cond_d

    .line 317
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentTop:I

    move/from16 v31, v0

    goto/16 :goto_a

    .line 320
    .end local v17    # "anchorPosition":I
    .end local v31    # "textTop":I
    :cond_13
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentBottom:I

    sub-int v2, v2, v27

    move/from16 v0, v23

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->bottomPaddingFraction:F

    mul-float/2addr v4, v7

    float-to-int v4, v4

    sub-int v31, v2, v4

    .restart local v31    # "textTop":I
    goto/16 :goto_a
.end method


# virtual methods
.method public draw(Lorg/telegram/messenger/exoplayer2/text/Cue;ZZLorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;FFLandroid/graphics/Canvas;IIII)V
    .locals 4
    .param p1, "cue"    # Lorg/telegram/messenger/exoplayer2/text/Cue;
    .param p2, "applyEmbeddedStyles"    # Z
    .param p3, "applyEmbeddedFontSizes"    # Z
    .param p4, "style"    # Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;
    .param p5, "textSizePx"    # F
    .param p6, "bottomPaddingFraction"    # F
    .param p7, "canvas"    # Landroid/graphics/Canvas;
    .param p8, "cueBoxLeft"    # I
    .param p9, "cueBoxTop"    # I
    .param p10, "cueBoxRight"    # I
    .param p11, "cueBoxBottom"    # I

    .prologue
    .line 155
    iget-object v2, p1, Lorg/telegram/messenger/exoplayer2/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 156
    .local v0, "isTextCue":Z
    :goto_0
    const/high16 v1, -0x1000000

    .line 157
    .local v1, "windowColor":I
    if-eqz v0, :cond_2

    .line 158
    iget-object v2, p1, Lorg/telegram/messenger/exoplayer2/text/Cue;->text:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 225
    :goto_1
    return-void

    .line 155
    .end local v0    # "isTextCue":Z
    .end local v1    # "windowColor":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 162
    .restart local v0    # "isTextCue":Z
    .restart local v1    # "windowColor":I
    :cond_1
    iget-boolean v2, p1, Lorg/telegram/messenger/exoplayer2/text/Cue;->windowColorSet:Z

    if-eqz v2, :cond_3

    if-eqz p2, :cond_3

    iget v1, p1, Lorg/telegram/messenger/exoplayer2/text/Cue;->windowColor:I

    .line 165
    :cond_2
    :goto_2
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueText:Ljava/lang/CharSequence;

    iget-object v3, p1, Lorg/telegram/messenger/exoplayer2/text/Cue;->text:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->areCharSequencesEqual(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueTextAlignment:Landroid/text/Layout$Alignment;

    iget-object v3, p1, Lorg/telegram/messenger/exoplayer2/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    .line 166
    invoke-static {v2, v3}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p1, Lorg/telegram/messenger/exoplayer2/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    if-ne v2, v3, :cond_4

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueLine:F

    iget v3, p1, Lorg/telegram/messenger/exoplayer2/text/Cue;->line:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueLineType:I

    iget v3, p1, Lorg/telegram/messenger/exoplayer2/text/Cue;->lineType:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueLineAnchor:I

    .line 170
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lorg/telegram/messenger/exoplayer2/text/Cue;->lineAnchor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cuePosition:F

    iget v3, p1, Lorg/telegram/messenger/exoplayer2/text/Cue;->position:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cuePositionAnchor:I

    .line 172
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lorg/telegram/messenger/exoplayer2/text/Cue;->positionAnchor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueSize:F

    iget v3, p1, Lorg/telegram/messenger/exoplayer2/text/Cue;->size:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueBitmapHeight:F

    iget v3, p1, Lorg/telegram/messenger/exoplayer2/text/Cue;->bitmapHeight:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->applyEmbeddedStyles:Z

    if-ne v2, p2, :cond_4

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->applyEmbeddedFontSizes:Z

    if-ne v2, p3, :cond_4

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->foregroundColor:I

    iget v3, p4, Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;->foregroundColor:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->backgroundColor:I

    iget v3, p4, Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;->backgroundColor:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->windowColor:I

    if-ne v2, v1, :cond_4

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->edgeType:I

    iget v3, p4, Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;->edgeType:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->edgeColor:I

    iget v3, p4, Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;->edgeColor:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    .line 182
    invoke-virtual {v2}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    iget-object v3, p4, Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;->typeface:Landroid/graphics/Typeface;

    invoke-static {v2, v3}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textSizePx:F

    cmpl-float v2, v2, p5

    if-nez v2, :cond_4

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->bottomPaddingFraction:F

    cmpl-float v2, v2, p6

    if-nez v2, :cond_4

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentLeft:I

    if-ne v2, p8, :cond_4

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentTop:I

    if-ne v2, p9, :cond_4

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentRight:I

    if-ne v2, p10, :cond_4

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentBottom:I

    if-ne v2, p11, :cond_4

    .line 190
    invoke-direct {p0, p7, v0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->drawLayout(Landroid/graphics/Canvas;Z)V

    goto/16 :goto_1

    .line 162
    :cond_3
    iget v1, p4, Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;->windowColor:I

    goto/16 :goto_2

    .line 194
    :cond_4
    iget-object v2, p1, Lorg/telegram/messenger/exoplayer2/text/Cue;->text:Ljava/lang/CharSequence;

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueText:Ljava/lang/CharSequence;

    .line 195
    iget-object v2, p1, Lorg/telegram/messenger/exoplayer2/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueTextAlignment:Landroid/text/Layout$Alignment;

    .line 196
    iget-object v2, p1, Lorg/telegram/messenger/exoplayer2/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueBitmap:Landroid/graphics/Bitmap;

    .line 197
    iget v2, p1, Lorg/telegram/messenger/exoplayer2/text/Cue;->line:F

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueLine:F

    .line 198
    iget v2, p1, Lorg/telegram/messenger/exoplayer2/text/Cue;->lineType:I

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueLineType:I

    .line 199
    iget v2, p1, Lorg/telegram/messenger/exoplayer2/text/Cue;->lineAnchor:I

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueLineAnchor:I

    .line 200
    iget v2, p1, Lorg/telegram/messenger/exoplayer2/text/Cue;->position:F

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cuePosition:F

    .line 201
    iget v2, p1, Lorg/telegram/messenger/exoplayer2/text/Cue;->positionAnchor:I

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cuePositionAnchor:I

    .line 202
    iget v2, p1, Lorg/telegram/messenger/exoplayer2/text/Cue;->size:F

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueSize:F

    .line 203
    iget v2, p1, Lorg/telegram/messenger/exoplayer2/text/Cue;->bitmapHeight:F

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueBitmapHeight:F

    .line 204
    iput-boolean p2, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->applyEmbeddedStyles:Z

    .line 205
    iput-boolean p3, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->applyEmbeddedFontSizes:Z

    .line 206
    iget v2, p4, Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;->foregroundColor:I

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->foregroundColor:I

    .line 207
    iget v2, p4, Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;->backgroundColor:I

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->backgroundColor:I

    .line 208
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->windowColor:I

    .line 209
    iget v2, p4, Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;->edgeType:I

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->edgeType:I

    .line 210
    iget v2, p4, Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;->edgeColor:I

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->edgeColor:I

    .line 211
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget-object v3, p4, Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 212
    iput p5, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textSizePx:F

    .line 213
    iput p6, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->bottomPaddingFraction:F

    .line 214
    iput p8, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentLeft:I

    .line 215
    iput p9, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentTop:I

    .line 216
    iput p10, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentRight:I

    .line 217
    iput p11, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentBottom:I

    .line 219
    if-eqz v0, :cond_5

    .line 220
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->setupTextLayout()V

    .line 224
    :goto_3
    invoke-direct {p0, p7, v0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->drawLayout(Landroid/graphics/Canvas;Z)V

    goto/16 :goto_1

    .line 222
    :cond_5
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->setupBitmapLayout()V

    goto :goto_3
.end method
