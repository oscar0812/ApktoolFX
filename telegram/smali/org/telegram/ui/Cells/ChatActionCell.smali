.class public Lorg/telegram/ui/Cells/ChatActionCell;
.super Lorg/telegram/ui/Cells/BaseCell;
.source "ChatActionCell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;
    }
.end annotation


# instance fields
.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private currentMessageObject:Lorg/telegram/messenger/MessageObject;

.field private customDate:I

.field private customText:Ljava/lang/CharSequence;

.field private delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

.field private hasReplyMessage:Z

.field private imagePressed:Z

.field private imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private pressedLink:Landroid/text/style/URLSpan;

.field private previousWidth:I

.field private textHeight:I

.field private textLayout:Landroid/text/StaticLayout;

.field private textWidth:I

.field private textX:I

.field private textXLeft:I

.field private textY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/BaseCell;-><init>(Landroid/content/Context;)V

    .line 50
    iput v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textWidth:I

    .line 51
    iput v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    .line 52
    iput v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textX:I

    .line 53
    iput v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    .line 54
    iput v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textXLeft:I

    .line 55
    iput v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->previousWidth:I

    .line 56
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imagePressed:Z

    .line 68
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 70
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 71
    return-void
.end method

.method private createLayout(Ljava/lang/CharSequence;I)V
    .locals 12
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "width"    # I

    .prologue
    const/4 v7, 0x0

    .line 268
    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int v3, p2, v0

    .line 269
    .local v3, "maxWidth":I
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_actionTextPaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    .line 270
    iput v7, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    .line 271
    iput v7, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textWidth:I

    .line 273
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v11

    .line 274
    .local v11, "linesCount":I
    const/4 v8, 0x0

    .local v8, "a":I
    :goto_0
    if-ge v8, v11, :cond_1

    .line 277
    :try_start_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v10

    .line 278
    .local v10, "lineWidth":F
    int-to-float v0, v3

    cmpl-float v0, v10, v0

    if-lez v0, :cond_0

    .line 279
    int-to-float v10, v3

    .line 281
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    int-to-double v0, v0

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v8}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v2

    int-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 286
    :try_start_2
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textWidth:I

    int-to-double v0, v0

    float-to-double v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textWidth:I

    .line 274
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 282
    .end local v10    # "lineWidth":F
    :catch_0
    move-exception v9

    .line 283
    .local v9, "e":Ljava/lang/Exception;
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 294
    .end local v8    # "a":I
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v11    # "linesCount":I
    :goto_1
    return-void

    .line 288
    :catch_1
    move-exception v9

    .line 289
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 291
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textWidth:I

    sub-int v0, p2, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textX:I

    .line 292
    const/high16 v0, 0x40e00000    # 7.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    .line 293
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    sub-int v0, p2, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textXLeft:I

    goto :goto_1
.end method

.method private findMaxWidthAroundLine(I)I
    .locals 7
    .param p1, "line"    # I

    .prologue
    const/high16 v6, 0x41200000    # 10.0f

    .line 334
    iget-object v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, p1}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    .line 335
    .local v3, "width":I
    iget-object v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    .line 336
    .local v1, "count":I
    add-int/lit8 v0, p1, 0x1

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 337
    iget-object v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v0}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 338
    .local v2, "w":I
    sub-int v4, v2, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 339
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 336
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 344
    .end local v2    # "w":I
    :cond_0
    add-int/lit8 v0, p1, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 345
    iget-object v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v0}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 346
    .restart local v2    # "w":I
    sub-int v4, v2, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 347
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 344
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 352
    .end local v2    # "w":I
    :cond_1
    return v3
.end method

.method private isLineBottom(IIIII)Z
    .locals 2
    .param p1, "nextWidth"    # I
    .param p2, "currentWidth"    # I
    .param p3, "line"    # I
    .param p4, "count"    # I
    .param p5, "cornerRest"    # I

    .prologue
    .line 360
    add-int/lit8 v0, p4, -0x1

    if-eq p3, v0, :cond_0

    if-ltz p3, :cond_1

    add-int/lit8 v0, p4, -0x1

    if-gt p3, v0, :cond_1

    add-int/lit8 v0, p3, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Cells/ChatActionCell;->findMaxWidthAroundLine(I)I

    move-result v0

    mul-int/lit8 v1, p5, 0x3

    add-int/2addr v0, v1

    if-ge v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLineTop(IIIII)Z
    .locals 2
    .param p1, "prevWidth"    # I
    .param p2, "currentWidth"    # I
    .param p3, "line"    # I
    .param p4, "count"    # I
    .param p5, "cornerRest"    # I

    .prologue
    .line 356
    if-eqz p3, :cond_0

    if-ltz p3, :cond_1

    if-ge p3, p4, :cond_1

    add-int/lit8 v0, p3, -0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Cells/ChatActionCell;->findMaxWidthAroundLine(I)I

    move-result v0

    mul-int/lit8 v1, p5, 0x3

    add-int/2addr v0, v1

    if-ge v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCustomDate()I
    .locals 1

    .prologue
    .line 330
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customDate:I

    return v0
.end method

.method public getMessageObject()Lorg/telegram/messenger/MessageObject;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method public getPhotoImage()Lorg/telegram/messenger/ImageReceiver;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 36
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 365
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v2, v2, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v5, 0xb

    if-ne v2, v5, :cond_0

    .line 366
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 369
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_28

    .line 370
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v6

    .line 371
    .local v6, "count":I
    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    .line 372
    .local v16, "corner":I
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v18

    .line 373
    .local v18, "cornerOffset":I
    sub-int v7, v16, v18

    .line 374
    .local v7, "cornerRest":I
    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v17

    .line 375
    .local v17, "cornerIn":I
    const/high16 v2, 0x40e00000    # 7.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v34

    .line 376
    .local v34, "y":I
    const/16 v32, 0x0

    .line 380
    .local v32, "previousLineBottom":I
    const/4 v14, 0x0

    .local v14, "a":I
    :goto_0
    if-ge v14, v6, :cond_27

    .line 381
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/telegram/ui/Cells/ChatActionCell;->findMaxWidthAroundLine(I)I

    move-result v4

    .line 382
    .local v4, "width":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/ChatActionCell;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v2, v4

    sub-int/2addr v2, v7

    div-int/lit8 v33, v2, 0x2

    .line 383
    .local v33, "x":I
    add-int/2addr v4, v7

    .line 384
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v14}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v28

    .line 385
    .local v28, "lineBottom":I
    sub-int v27, v28, v32

    .line 386
    .local v27, "height":I
    const/4 v15, 0x0

    .line 387
    .local v15, "additionalHeight":I
    move/from16 v32, v28

    .line 389
    add-int/lit8 v2, v6, -0x1

    if-ne v14, v2, :cond_b

    const/16 v19, 0x1

    .line 390
    .local v19, "drawBottomCorners":Z
    :goto_1
    if-nez v14, :cond_c

    const/16 v22, 0x1

    .line 392
    .local v22, "drawTopCorners":Z
    :goto_2
    if-eqz v22, :cond_1

    .line 393
    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v34, v34, v2

    .line 394
    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int v27, v27, v2

    .line 396
    :cond_1
    if-eqz v19, :cond_2

    .line 397
    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int v27, v27, v2

    .line 400
    :cond_2
    move/from16 v35, v34

    .line 401
    .local v35, "yOld":I
    move/from16 v26, v27

    .line 403
    .local v26, "hOld":I
    const/16 v20, 0x0

    .line 404
    .local v20, "drawInnerBottom":I
    const/16 v21, 0x0

    .line 405
    .local v21, "drawInnerTop":I
    const/4 v3, 0x0

    .line 406
    .local v3, "nextLineWidth":I
    const/16 v30, 0x0

    .line 407
    .local v30, "prevLineWidth":I
    if-nez v19, :cond_3

    add-int/lit8 v2, v14, 0x1

    if-ge v2, v6, :cond_3

    .line 408
    add-int/lit8 v2, v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/ChatActionCell;->findMaxWidthAroundLine(I)I

    move-result v2

    add-int v3, v2, v7

    .line 409
    mul-int/lit8 v2, v7, 0x2

    add-int/2addr v2, v3

    if-ge v2, v4, :cond_d

    .line 410
    const/16 v20, 0x1

    .line 411
    const/16 v19, 0x1

    .line 418
    :cond_3
    :goto_3
    if-nez v22, :cond_4

    if-lez v14, :cond_4

    .line 419
    add-int/lit8 v2, v14, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/ChatActionCell;->findMaxWidthAroundLine(I)I

    move-result v2

    add-int v30, v2, v7

    .line 420
    mul-int/lit8 v2, v7, 0x2

    add-int v2, v2, v30

    if-ge v2, v4, :cond_f

    .line 421
    const/16 v21, 0x1

    .line 422
    const/16 v22, 0x1

    .line 430
    :cond_4
    :goto_4
    if-eqz v20, :cond_5

    .line 431
    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_12

    .line 432
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/ChatActionCell;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v2, v3

    div-int/lit8 v29, v2, 0x2

    .line 433
    .local v29, "nextX":I
    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    .line 435
    add-int/lit8 v5, v14, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Cells/ChatActionCell;->isLineBottom(IIIII)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 436
    add-int v2, v33, v18

    int-to-float v9, v2

    add-int v2, v34, v27

    int-to-float v10, v2

    sub-int v2, v29, v7

    int-to-float v11, v2

    add-int v2, v34, v27

    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v2, v5

    int-to-float v12, v2

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 437
    add-int v2, v29, v3

    add-int/2addr v2, v7

    int-to-float v9, v2

    add-int v2, v34, v27

    int-to-float v10, v2

    add-int v2, v33, v4

    sub-int v2, v2, v18

    int-to-float v11, v2

    add-int v2, v34, v27

    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v2, v5

    int-to-float v12, v2

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 470
    .end local v29    # "nextX":I
    :cond_5
    :goto_5
    if-eqz v21, :cond_6

    .line 471
    const/4 v2, 0x1

    move/from16 v0, v21

    if-ne v0, v2, :cond_1b

    .line 472
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/ChatActionCell;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v2, v30

    div-int/lit8 v31, v2, 0x2

    .line 474
    .local v31, "prevX":I
    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v34, v34, v2

    .line 475
    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int v27, v27, v2

    .line 477
    add-int/lit8 v11, v14, -0x1

    move-object/from16 v8, p0

    move/from16 v9, v30

    move v10, v4

    move v12, v6

    move v13, v7

    invoke-direct/range {v8 .. v13}, Lorg/telegram/ui/Cells/ChatActionCell;->isLineTop(IIIII)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 478
    add-int v2, v33, v18

    int-to-float v9, v2

    move/from16 v0, v34

    int-to-float v10, v0

    sub-int v2, v31, v7

    int-to-float v11, v2

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int v2, v2, v34

    int-to-float v12, v2

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 479
    add-int v2, v31, v30

    add-int/2addr v2, v7

    int-to-float v9, v2

    move/from16 v0, v34

    int-to-float v10, v0

    add-int v2, v33, v4

    sub-int v2, v2, v18

    int-to-float v11, v2

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int v2, v2, v34

    int-to-float v12, v2

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 515
    .end local v31    # "prevX":I
    :cond_6
    :goto_6
    if-nez v22, :cond_7

    if-eqz v19, :cond_23

    .line 516
    :cond_7
    add-int v2, v33, v18

    int-to-float v9, v2

    move/from16 v0, v35

    int-to-float v10, v0

    add-int v2, v33, v4

    sub-int v2, v2, v18

    int-to-float v11, v2

    add-int v2, v35, v26

    int-to-float v12, v2

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 521
    :goto_7
    sub-int v23, v33, v7

    .line 522
    .local v23, "dx":I
    add-int v2, v33, v4

    sub-int v24, v2, v18

    .line 523
    .local v24, "dx2":I
    if-eqz v22, :cond_24

    if-nez v19, :cond_24

    const/4 v2, 0x2

    move/from16 v0, v20

    if-eq v0, v2, :cond_24

    .line 524
    move/from16 v0, v23

    int-to-float v9, v0

    add-int v2, v34, v16

    int-to-float v10, v2

    add-int v2, v23, v16

    int-to-float v11, v2

    add-int v2, v34, v27

    add-int/2addr v2, v15

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v2, v5

    int-to-float v12, v2

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 525
    move/from16 v0, v24

    int-to-float v9, v0

    add-int v2, v34, v16

    int-to-float v10, v2

    add-int v2, v24, v16

    int-to-float v11, v2

    add-int v2, v34, v27

    add-int/2addr v2, v15

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v2, v5

    int-to-float v12, v2

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 534
    :cond_8
    :goto_8
    if-eqz v22, :cond_9

    .line 535
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_cornerOuter:[Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    aget-object v2, v2, v5

    add-int v5, v23, v16

    add-int v8, v34, v16

    move/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v2, v0, v1, v5, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 536
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_cornerOuter:[Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    aget-object v2, v2, v5

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 537
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_cornerOuter:[Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x1

    aget-object v2, v2, v5

    add-int v5, v24, v16

    add-int v8, v34, v16

    move/from16 v0, v24

    move/from16 v1, v34

    invoke-virtual {v2, v0, v1, v5, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 538
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_cornerOuter:[Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x1

    aget-object v2, v2, v5

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 541
    :cond_9
    if-eqz v19, :cond_a

    .line 542
    add-int v2, v34, v27

    add-int/2addr v2, v15

    sub-int v25, v2, v16

    .line 544
    .local v25, "dy":I
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_cornerOuter:[Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x2

    aget-object v2, v2, v5

    add-int v5, v24, v16

    add-int v8, v25, v16

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v2, v0, v1, v5, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 545
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_cornerOuter:[Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x2

    aget-object v2, v2, v5

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 546
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_cornerOuter:[Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x3

    aget-object v2, v2, v5

    add-int v5, v23, v16

    add-int v8, v25, v16

    move/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v2, v0, v1, v5, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 547
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_cornerOuter:[Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x3

    aget-object v2, v2, v5

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 550
    .end local v25    # "dy":I
    :cond_a
    add-int v34, v34, v27

    .line 380
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 389
    .end local v3    # "nextLineWidth":I
    .end local v19    # "drawBottomCorners":Z
    .end local v20    # "drawInnerBottom":I
    .end local v21    # "drawInnerTop":I
    .end local v22    # "drawTopCorners":Z
    .end local v23    # "dx":I
    .end local v24    # "dx2":I
    .end local v26    # "hOld":I
    .end local v30    # "prevLineWidth":I
    .end local v35    # "yOld":I
    :cond_b
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 390
    .restart local v19    # "drawBottomCorners":Z
    :cond_c
    const/16 v22, 0x0

    goto/16 :goto_2

    .line 412
    .restart local v3    # "nextLineWidth":I
    .restart local v20    # "drawInnerBottom":I
    .restart local v21    # "drawInnerTop":I
    .restart local v22    # "drawTopCorners":Z
    .restart local v26    # "hOld":I
    .restart local v30    # "prevLineWidth":I
    .restart local v35    # "yOld":I
    :cond_d
    mul-int/lit8 v2, v7, 0x2

    add-int/2addr v2, v4

    if-ge v2, v3, :cond_e

    .line 413
    const/16 v20, 0x2

    goto/16 :goto_3

    .line 415
    :cond_e
    const/16 v20, 0x3

    goto/16 :goto_3

    .line 423
    :cond_f
    mul-int/lit8 v2, v7, 0x2

    add-int/2addr v2, v4

    move/from16 v0, v30

    if-ge v2, v0, :cond_10

    .line 424
    const/16 v21, 0x2

    goto/16 :goto_4

    .line 426
    :cond_10
    const/16 v21, 0x3

    goto/16 :goto_4

    .line 439
    .restart local v29    # "nextX":I
    :cond_11
    add-int v2, v33, v18

    int-to-float v9, v2

    add-int v2, v34, v27

    int-to-float v10, v2

    move/from16 v0, v29

    int-to-float v11, v0

    add-int v2, v34, v27

    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v2, v5

    int-to-float v12, v2

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 440
    add-int v2, v29, v3

    int-to-float v9, v2

    add-int v2, v34, v27

    int-to-float v10, v2

    add-int v2, v33, v4

    sub-int v2, v2, v18

    int-to-float v11, v2

    add-int v2, v34, v27

    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v2, v5

    int-to-float v12, v2

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 442
    .end local v29    # "nextX":I
    :cond_12
    const/4 v2, 0x2

    move/from16 v0, v20

    if-ne v0, v2, :cond_19

    .line 443
    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    .line 445
    add-int v2, v34, v27

    const/high16 v5, 0x41300000    # 11.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int v25, v2, v5

    .line 447
    .restart local v25    # "dy":I
    sub-int v23, v33, v17

    .line 448
    .restart local v23    # "dx":I
    const/4 v2, 0x2

    move/from16 v0, v21

    if-eq v0, v2, :cond_13

    const/4 v2, 0x3

    move/from16 v0, v21

    if-eq v0, v2, :cond_13

    .line 449
    sub-int v23, v23, v7

    .line 451
    :cond_13
    if-nez v22, :cond_14

    if-eqz v19, :cond_15

    .line 452
    :cond_14
    add-int v2, v23, v17

    int-to-float v9, v2

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int v2, v2, v25

    int-to-float v10, v2

    add-int v2, v23, v17

    add-int v2, v2, v16

    int-to-float v11, v2

    add-int v2, v25, v16

    int-to-float v12, v2

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 454
    :cond_15
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_cornerInner:[Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x2

    aget-object v2, v2, v5

    add-int v5, v23, v17

    add-int v8, v25, v17

    move/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v2, v0, v1, v5, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 455
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_cornerInner:[Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x2

    aget-object v2, v2, v5

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 457
    add-int v23, v33, v4

    .line 458
    const/4 v2, 0x2

    move/from16 v0, v21

    if-eq v0, v2, :cond_16

    const/4 v2, 0x3

    move/from16 v0, v21

    if-eq v0, v2, :cond_16

    .line 459
    add-int v23, v23, v7

    .line 461
    :cond_16
    if-nez v22, :cond_17

    if-eqz v19, :cond_18

    .line 462
    :cond_17
    sub-int v2, v23, v16

    int-to-float v9, v2

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int v2, v2, v25

    int-to-float v10, v2

    move/from16 v0, v23

    int-to-float v11, v0

    add-int v2, v25, v16

    int-to-float v12, v2

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 464
    :cond_18
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_cornerInner:[Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x3

    aget-object v2, v2, v5

    add-int v5, v23, v17

    add-int v8, v25, v17

    move/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v2, v0, v1, v5, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 465
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_cornerInner:[Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x3

    aget-object v2, v2, v5

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_5

    .line 467
    .end local v23    # "dx":I
    .end local v25    # "dy":I
    :cond_19
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    goto/16 :goto_5

    .line 481
    .restart local v31    # "prevX":I
    :cond_1a
    add-int v2, v33, v18

    int-to-float v9, v2

    move/from16 v0, v34

    int-to-float v10, v0

    move/from16 v0, v31

    int-to-float v11, v0

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int v2, v2, v34

    int-to-float v12, v2

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 482
    add-int v2, v31, v30

    int-to-float v9, v2

    move/from16 v0, v34

    int-to-float v10, v0

    add-int v2, v33, v4

    sub-int v2, v2, v18

    int-to-float v11, v2

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int v2, v2, v34

    int-to-float v12, v2

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    .line 484
    .end local v31    # "prevX":I
    :cond_1b
    const/4 v2, 0x2

    move/from16 v0, v21

    if-ne v0, v2, :cond_22

    .line 485
    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v34, v34, v2

    .line 486
    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int v27, v27, v2

    .line 488
    const v2, 0x40c66666    # 6.2f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int v25, v34, v2

    .line 490
    .restart local v25    # "dy":I
    sub-int v23, v33, v17

    .line 491
    .restart local v23    # "dx":I
    const/4 v2, 0x2

    move/from16 v0, v20

    if-eq v0, v2, :cond_1c

    const/4 v2, 0x3

    move/from16 v0, v20

    if-eq v0, v2, :cond_1c

    .line 492
    sub-int v23, v23, v7

    .line 494
    :cond_1c
    if-nez v22, :cond_1d

    if-eqz v19, :cond_1e

    .line 495
    :cond_1d
    add-int v2, v23, v17

    int-to-float v9, v2

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int v2, v2, v34

    int-to-float v10, v2

    add-int v2, v23, v17

    add-int v2, v2, v16

    int-to-float v11, v2

    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int v2, v2, v34

    int-to-float v12, v2

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 497
    :cond_1e
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_cornerInner:[Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    aget-object v2, v2, v5

    add-int v5, v23, v17

    add-int v8, v25, v17

    move/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v2, v0, v1, v5, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 498
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_cornerInner:[Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    aget-object v2, v2, v5

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 500
    add-int v23, v33, v4

    .line 501
    const/4 v2, 0x2

    move/from16 v0, v20

    if-eq v0, v2, :cond_1f

    const/4 v2, 0x3

    move/from16 v0, v20

    if-eq v0, v2, :cond_1f

    .line 502
    add-int v23, v23, v7

    .line 504
    :cond_1f
    if-nez v22, :cond_20

    if-eqz v19, :cond_21

    .line 505
    :cond_20
    sub-int v2, v23, v16

    int-to-float v9, v2

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int v2, v2, v34

    int-to-float v10, v2

    move/from16 v0, v23

    int-to-float v11, v0

    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int v2, v2, v34

    int-to-float v12, v2

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 507
    :cond_21
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_cornerInner:[Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x1

    aget-object v2, v2, v5

    add-int v5, v23, v17

    add-int v8, v25, v17

    move/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v2, v0, v1, v5, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 508
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_cornerInner:[Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x1

    aget-object v2, v2, v5

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_6

    .line 510
    .end local v23    # "dx":I
    .end local v25    # "dy":I
    :cond_22
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v34, v34, v2

    .line 511
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int v27, v27, v2

    goto/16 :goto_6

    .line 518
    :cond_23
    move/from16 v0, v33

    int-to-float v9, v0

    move/from16 v0, v35

    int-to-float v10, v0

    add-int v2, v33, v4

    int-to-float v11, v2

    add-int v2, v35, v26

    int-to-float v12, v2

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_7

    .line 526
    .restart local v23    # "dx":I
    .restart local v24    # "dx2":I
    :cond_24
    if-eqz v19, :cond_25

    if-nez v22, :cond_25

    const/4 v2, 0x2

    move/from16 v0, v21

    if-eq v0, v2, :cond_25

    .line 527
    move/from16 v0, v23

    int-to-float v9, v0

    add-int v2, v34, v16

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v2, v5

    int-to-float v10, v2

    add-int v2, v23, v16

    int-to-float v11, v2

    add-int v2, v34, v27

    add-int/2addr v2, v15

    sub-int v2, v2, v16

    int-to-float v12, v2

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 528
    move/from16 v0, v24

    int-to-float v9, v0

    add-int v2, v34, v16

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v2, v5

    int-to-float v10, v2

    add-int v2, v24, v16

    int-to-float v11, v2

    add-int v2, v34, v27

    add-int/2addr v2, v15

    sub-int v2, v2, v16

    int-to-float v12, v2

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_8

    .line 529
    :cond_25
    if-nez v22, :cond_26

    if-eqz v19, :cond_8

    .line 530
    :cond_26
    move/from16 v0, v23

    int-to-float v9, v0

    add-int v2, v34, v16

    int-to-float v10, v2

    add-int v2, v23, v16

    int-to-float v11, v2

    add-int v2, v34, v27

    add-int/2addr v2, v15

    sub-int v2, v2, v16

    int-to-float v12, v2

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 531
    move/from16 v0, v24

    int-to-float v9, v0

    add-int v2, v34, v16

    int-to-float v10, v2

    add-int v2, v24, v16

    int-to-float v11, v2

    add-int v2, v34, v27

    add-int/2addr v2, v15

    sub-int v2, v2, v16

    int-to-float v12, v2

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_8

    .line 553
    .end local v3    # "nextLineWidth":I
    .end local v4    # "width":I
    .end local v15    # "additionalHeight":I
    .end local v19    # "drawBottomCorners":Z
    .end local v20    # "drawInnerBottom":I
    .end local v21    # "drawInnerTop":I
    .end local v22    # "drawTopCorners":Z
    .end local v23    # "dx":I
    .end local v24    # "dx2":I
    .end local v26    # "hOld":I
    .end local v27    # "height":I
    .end local v28    # "lineBottom":I
    .end local v30    # "prevLineWidth":I
    .end local v33    # "x":I
    .end local v35    # "yOld":I
    :cond_27
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 554
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textXLeft:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    int-to-float v5, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 555
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 556
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 558
    .end local v6    # "count":I
    .end local v7    # "cornerRest":I
    .end local v14    # "a":I
    .end local v16    # "corner":I
    .end local v17    # "cornerIn":I
    .end local v18    # "cornerOffset":I
    .end local v32    # "previousLineBottom":I
    .end local v34    # "y":I
    :cond_28
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 157
    return-void
.end method

.method protected onLongPress()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    invoke-interface {v0, p0}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->didLongPressed(Lorg/telegram/ui/Cells/ChatActionCell;)V

    .line 152
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/16 v7, 0xb

    const/high16 v6, 0x42800000    # 64.0f

    .line 298
    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customText:Ljava/lang/CharSequence;

    if-nez v2, :cond_0

    .line 299
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v2, v3}, Lorg/telegram/ui/Cells/ChatActionCell;->setMeasuredDimension(II)V

    .line 327
    :goto_0
    return-void

    .line 302
    :cond_0
    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 303
    .local v1, "width":I
    iget v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->previousWidth:I

    if-eq v1, v2, :cond_1

    .line 305
    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_5

    .line 306
    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    if-eqz v2, :cond_4

    .line 307
    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;

    if-eqz v2, :cond_2

    .line 308
    const-string/jumbo v2, "AttachPhotoExpired"

    const v3, 0x7f0700b0

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, "text":Ljava/lang/CharSequence;
    :goto_1
    iput v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->previousWidth:I

    .line 321
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Cells/ChatActionCell;->createLayout(Ljava/lang/CharSequence;I)V

    .line 322
    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v2, v2, Lorg/telegram/messenger/MessageObject;->type:I

    if-ne v2, v7, :cond_1

    .line 323
    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v1, v3

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    const/high16 v5, 0x41700000    # 15.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(IIII)V

    .line 326
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_1
    iget v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v2, v2, Lorg/telegram/messenger/MessageObject;->type:I

    if-ne v2, v7, :cond_6

    const/16 v2, 0x46

    :goto_2
    add-int/lit8 v2, v2, 0xe

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/telegram/ui/Cells/ChatActionCell;->setMeasuredDimension(II)V

    goto/16 :goto_0

    .line 309
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_documentEmpty;

    if-eqz v2, :cond_3

    .line 310
    const-string/jumbo v2, "AttachVideoExpired"

    const v3, 0x7f0700b6

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "text":Ljava/lang/CharSequence;
    goto :goto_1

    .line 312
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v2, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .restart local v0    # "text":Ljava/lang/CharSequence;
    goto :goto_1

    .line 315
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v2, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .restart local v0    # "text":Ljava/lang/CharSequence;
    goto :goto_1

    .line 318
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customText:Ljava/lang/CharSequence;

    .restart local v0    # "text":Ljava/lang/CharSequence;
    goto :goto_1

    .line 326
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_6
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 161
    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v9, :cond_1

    .line 162
    invoke-super {p0, p1}, Lorg/telegram/ui/Cells/BaseCell;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 264
    :cond_0
    :goto_0
    return v5

    .line 164
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 165
    .local v7, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 167
    .local v8, "y":F
    const/4 v5, 0x0

    .line 168
    .local v5, "result":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-nez v9, :cond_6

    .line 169
    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz v9, :cond_3

    .line 170
    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v9, v9, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v10, 0xb

    if-ne v9, v10, :cond_2

    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v9, v7, v8}, Lorg/telegram/messenger/ImageReceiver;->isInsideImage(FF)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 171
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imagePressed:Z

    .line 172
    const/4 v5, 0x1

    .line 174
    :cond_2
    if-eqz v5, :cond_3

    .line 175
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->startCheckLongPress()V

    .line 198
    :cond_3
    :goto_1
    if-nez v5, :cond_5

    .line 199
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedLink:Landroid/text/style/URLSpan;

    if-eqz v9, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 200
    :cond_4
    iget v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textX:I

    int-to-float v9, v9

    cmpl-float v9, v7, v9

    if-ltz v9, :cond_f

    iget v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    int-to-float v9, v9

    cmpl-float v9, v8, v9

    if-ltz v9, :cond_f

    iget v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textX:I

    iget v10, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textWidth:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    cmpg-float v9, v7, v9

    if-gtz v9, :cond_f

    iget v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    iget v10, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    cmpg-float v9, v8, v9

    if-gtz v9, :cond_f

    .line 201
    iget v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    .line 202
    iget v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textXLeft:I

    int-to-float v9, v9

    sub-float/2addr v7, v9

    .line 204
    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    float-to-int v10, v8

    invoke-virtual {v9, v10}, Landroid/text/StaticLayout;->getLineForVertical(I)I

    move-result v2

    .line 205
    .local v2, "line":I
    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9, v2, v7}, Landroid/text/StaticLayout;->getOffsetForHorizontal(IF)I

    move-result v4

    .line 206
    .local v4, "off":I
    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9, v2}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v1

    .line 207
    .local v1, "left":F
    cmpg-float v9, v1, v7

    if-gtz v9, :cond_e

    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9, v2}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v9

    add-float/2addr v9, v1

    cmpl-float v9, v9, v7

    if-ltz v9, :cond_e

    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v9, v9, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    instance-of v9, v9, Landroid/text/Spannable;

    if-eqz v9, :cond_e

    .line 208
    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v9, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    .line 209
    .local v0, "buffer":Landroid/text/Spannable;
    const-class v9, Landroid/text/style/URLSpan;

    invoke-interface {v0, v4, v4, v9}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/URLSpan;

    .line 211
    .local v3, "link":[Landroid/text/style/URLSpan;
    array-length v9, v3

    if-eqz v9, :cond_d

    .line 212
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-nez v9, :cond_a

    .line 213
    const/4 v9, 0x0

    aget-object v9, v3, v9

    iput-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedLink:Landroid/text/style/URLSpan;

    .line 214
    const/4 v5, 0x1

    .line 260
    .end local v0    # "buffer":Landroid/text/Spannable;
    .end local v1    # "left":F
    .end local v2    # "line":I
    .end local v3    # "link":[Landroid/text/style/URLSpan;
    .end local v4    # "off":I
    :cond_5
    :goto_2
    if-nez v5, :cond_0

    .line 261
    invoke-super {p0, p1}, Lorg/telegram/ui/Cells/BaseCell;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto/16 :goto_0

    .line 179
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_7

    .line 180
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->cancelCheckLongPress()V

    .line 182
    :cond_7
    iget-boolean v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imagePressed:Z

    if-eqz v9, :cond_3

    .line 183
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_8

    .line 184
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imagePressed:Z

    .line 185
    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz v9, :cond_3

    .line 186
    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    invoke-interface {v9, p0}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->didClickedImage(Lorg/telegram/ui/Cells/ChatActionCell;)V

    .line 187
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lorg/telegram/ui/Cells/ChatActionCell;->playSoundEffect(I)V

    goto/16 :goto_1

    .line 189
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_9

    .line 190
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imagePressed:Z

    goto/16 :goto_1

    .line 191
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    .line 192
    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v9, v7, v8}, Lorg/telegram/messenger/ImageReceiver;->isInsideImage(FF)Z

    move-result v9

    if-nez v9, :cond_3

    .line 193
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imagePressed:Z

    goto/16 :goto_1

    .line 216
    .restart local v0    # "buffer":Landroid/text/Spannable;
    .restart local v1    # "left":F
    .restart local v2    # "line":I
    .restart local v3    # "link":[Landroid/text/style/URLSpan;
    .restart local v4    # "off":I
    :cond_a
    const/4 v9, 0x0

    aget-object v9, v3, v9

    iget-object v10, p0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedLink:Landroid/text/style/URLSpan;

    if-ne v9, v10, :cond_5

    .line 217
    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz v9, :cond_b

    .line 218
    const/4 v9, 0x0

    aget-object v9, v3, v9

    invoke-virtual {v9}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v6

    .line 219
    .local v6, "url":Ljava/lang/String;
    const-string/jumbo v9, "game"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 220
    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    iget-object v10, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v10, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_msg_id:I

    invoke-interface {v9, p0, v10}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->didPressedReplyMessage(Lorg/telegram/ui/Cells/ChatActionCell;I)V

    .line 245
    .end local v6    # "url":Ljava/lang/String;
    :cond_b
    :goto_3
    const/4 v5, 0x1

    goto :goto_2

    .line 242
    .restart local v6    # "url":Ljava/lang/String;
    :cond_c
    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v10}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->needOpenUserProfile(I)V

    goto :goto_3

    .line 249
    .end local v6    # "url":Ljava/lang/String;
    :cond_d
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedLink:Landroid/text/style/URLSpan;

    goto/16 :goto_2

    .line 252
    .end local v0    # "buffer":Landroid/text/Spannable;
    .end local v3    # "link":[Landroid/text/style/URLSpan;
    :cond_e
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedLink:Landroid/text/style/URLSpan;

    goto/16 :goto_2

    .line 255
    .end local v1    # "left":F
    .end local v2    # "line":I
    .end local v4    # "off":I
    :cond_f
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedLink:Landroid/text/style/URLSpan;

    goto/16 :goto_2
.end method

.method public setCustomDate(I)V
    .locals 4
    .param p1, "date"    # I

    .prologue
    .line 78
    iget v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customDate:I

    if-ne v1, p1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    int-to-long v2, p1

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatDateChat(J)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "newText":Ljava/lang/CharSequence;
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customText:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->previousWidth:I

    .line 86
    iput p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customDate:I

    .line 87
    iput-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customText:Ljava/lang/CharSequence;

    .line 88
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->getMeasuredWidth()I

    move-result v1

    if-eqz v1, :cond_3

    .line 89
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->getMeasuredWidth()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lorg/telegram/ui/Cells/ChatActionCell;->createLayout(Ljava/lang/CharSequence;I)V

    .line 90
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->invalidate()V

    .line 92
    :cond_3
    new-instance v1, Lorg/telegram/ui/Cells/ChatActionCell$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Cells/ChatActionCell$1;-><init>(Lorg/telegram/ui/Cells/ChatActionCell;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setDelegate(Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    .prologue
    .line 74
    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    .line 75
    return-void
.end method

.method public setMessageObject(Lorg/telegram/messenger/MessageObject;)V
    .locals 9
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 101
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-ne v0, p1, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->hasReplyMessage:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 105
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_3

    move v0, v8

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->hasReplyMessage:Z

    .line 106
    iput v5, p0, Lorg/telegram/ui/Cells/ChatActionCell;->previousWidth:I

    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_9

    .line 108
    const/4 v6, 0x0

    .line 109
    .local v6, "id":I
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v0, :cond_2

    .line 110
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v0, :cond_4

    .line 111
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    .line 121
    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v6, v4, v4, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 122
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserUpdatedPhoto;

    if-eqz v0, :cond_6

    .line 123
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->newUserPhoto:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-string/jumbo v2, "50_50"

    iget-object v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    .line 132
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/PhotoViewer;->isShowingImage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v1

    if-nez v1, :cond_8

    :goto_4
    invoke-virtual {v0, v8, v5}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 136
    .end local v6    # "id":I
    :goto_5
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->requestLayout()V

    goto :goto_0

    :cond_3
    move v0, v5

    .line 105
    goto :goto_1

    .line 112
    .restart local v6    # "id":I
    :cond_4
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v0, :cond_5

    .line 113
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    goto :goto_2

    .line 115
    :cond_5
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 116
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v0

    if-ne v6, v0, :cond_2

    .line 117
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    goto :goto_2

    .line 125
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    const/high16 v1, 0x42800000    # 64.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v7

    .line 126
    .local v7, "photo":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v7, :cond_7

    .line 127
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, v7, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-string/jumbo v2, "50_50"

    iget-object v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    goto :goto_3

    .line 129
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .end local v7    # "photo":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_8
    move v8, v5

    .line 132
    goto :goto_4

    .line 134
    .end local v6    # "id":I
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_5
.end method
