.class Lorg/telegram/ui/ArticleViewer$SizeChooseView;
.super Landroid/view/View;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SizeChooseView"
.end annotation


# instance fields
.field private circleSize:I

.field private gapSize:I

.field private lineSize:I

.field private moving:Z

.field private paint:Landroid/graphics/Paint;

.field private sideSide:I

.field private startMoving:Z

.field private startMovingQuality:I

.field private startX:F

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 272
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 273
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 275
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->paint:Landroid/graphics/Paint;

    .line 276
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    .line 348
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v8, v0, 0x2

    .line 349
    .local v8, "cy":I
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_0
    const/4 v0, 0x5

    if-ge v6, v0, :cond_3

    .line 350
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->sideSide:I

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->lineSize:I

    iget v2, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->gapSize:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->circleSize:I

    add-int/2addr v1, v2

    mul-int/2addr v1, v6

    add-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->circleSize:I

    div-int/lit8 v1, v1, 0x2

    add-int v7, v0, v1

    .line 351
    .local v7, "cx":I
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$000(Lorg/telegram/ui/ArticleViewer;)I

    move-result v0

    if-gt v6, v0, :cond_1

    .line 352
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->paint:Landroid/graphics/Paint;

    const v1, -0xeb6a17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 356
    :goto_1
    int-to-float v1, v7

    int-to-float v2, v8

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$000(Lorg/telegram/ui/ArticleViewer;)I

    move-result v0

    if-ne v6, v0, :cond_2

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 357
    if-eqz v6, :cond_0

    .line 358
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->circleSize:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v7, v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->gapSize:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->lineSize:I

    sub-int v9, v0, v1

    .line 359
    .local v9, "x":I
    int-to-float v1, v9

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int v0, v8, v0

    int-to-float v2, v0

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->lineSize:I

    add-int/2addr v0, v9

    int-to-float v3, v0

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v8

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 349
    .end local v9    # "x":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 354
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->paint:Landroid/graphics/Paint;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 356
    :cond_2
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->circleSize:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    goto :goto_2

    .line 362
    .end local v7    # "cx":I
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 338
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 339
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 340
    .local v0, "width":I
    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->circleSize:I

    .line 341
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->gapSize:I

    .line 342
    const/high16 v1, 0x41880000    # 17.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->sideSide:I

    .line 343
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->circleSize:I

    mul-int/lit8 v2, v2, 0x5

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->gapSize:I

    mul-int/lit8 v2, v2, 0x8

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->sideSide:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x4

    iput v1, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->lineSize:I

    .line 344
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x5

    const/4 v4, 0x0

    const/high16 v9, 0x41700000    # 15.0f

    const/4 v5, 0x1

    .line 280
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 281
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_3

    .line 282
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 283
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v10, :cond_1

    .line 284
    iget v6, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->sideSide:I

    iget v7, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->lineSize:I

    iget v8, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->gapSize:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    iget v8, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->circleSize:I

    add-int/2addr v7, v8

    mul-int/2addr v7, v0

    add-int/2addr v6, v7

    iget v7, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->circleSize:I

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 285
    .local v1, "cx":I
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int v6, v1, v6

    int-to-float v6, v6

    cmpl-float v6, v3, v6

    if-lez v6, :cond_2

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v6, v1

    int-to-float v6, v6

    cmpg-float v6, v3, v6

    if-gez v6, :cond_2

    .line 286
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v6}, Lorg/telegram/ui/ArticleViewer;->access$000(Lorg/telegram/ui/ArticleViewer;)I

    move-result v6

    if-ne v0, v6, :cond_0

    move v4, v5

    :cond_0
    iput-boolean v4, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->startMoving:Z

    .line 287
    iput v3, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->startX:F

    .line 288
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer;->access$000(Lorg/telegram/ui/ArticleViewer;)I

    move-result v4

    iput v4, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->startMovingQuality:I

    .line 333
    .end local v0    # "a":I
    .end local v1    # "cx":I
    :cond_1
    :goto_1
    return v5

    .line 283
    .restart local v0    # "a":I
    .restart local v1    # "cx":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 292
    .end local v0    # "a":I
    .end local v1    # "cx":I
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    .line 293
    iget-boolean v6, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->startMoving:Z

    if-eqz v6, :cond_4

    .line 294
    iget v6, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->startX:F

    sub-float/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-static {v7, v5}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_1

    .line 295
    iput-boolean v5, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->moving:Z

    .line 296
    iput-boolean v4, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->startMoving:Z

    goto :goto_1

    .line 298
    :cond_4
    iget-boolean v4, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->moving:Z

    if-eqz v4, :cond_1

    .line 299
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_2
    if-ge v0, v10, :cond_1

    .line 300
    iget v4, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->sideSide:I

    iget v6, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->lineSize:I

    iget v7, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->gapSize:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget v7, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->circleSize:I

    add-int/2addr v6, v7

    mul-int/2addr v6, v0

    add-int/2addr v4, v6

    iget v6, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->circleSize:I

    div-int/lit8 v6, v6, 0x2

    add-int v1, v4, v6

    .line 301
    .restart local v1    # "cx":I
    iget v4, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->lineSize:I

    div-int/lit8 v4, v4, 0x2

    iget v6, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->circleSize:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    iget v6, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->gapSize:I

    add-int v2, v4, v6

    .line 302
    .local v2, "diff":I
    sub-int v4, v1, v2

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_5

    add-int v4, v1, v2

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_5

    .line 303
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer;->access$000(Lorg/telegram/ui/ArticleViewer;)I

    move-result v4

    if-eq v4, v0, :cond_1

    .line 304
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v4, v0}, Lorg/telegram/ui/ArticleViewer;->access$002(Lorg/telegram/ui/ArticleViewer;I)I

    .line 305
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer;->access$100(Lorg/telegram/ui/ArticleViewer;)V

    .line 306
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->invalidate()V

    goto :goto_1

    .line 299
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 312
    .end local v0    # "a":I
    .end local v1    # "cx":I
    .end local v2    # "diff":I
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-eq v6, v5, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 313
    :cond_7
    iget-boolean v6, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->moving:Z

    if-nez v6, :cond_a

    .line 314
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_3
    if-ge v0, v10, :cond_8

    .line 315
    iget v6, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->sideSide:I

    iget v7, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->lineSize:I

    iget v8, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->gapSize:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    iget v8, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->circleSize:I

    add-int/2addr v7, v8

    mul-int/2addr v7, v0

    add-int/2addr v6, v7

    iget v7, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->circleSize:I

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 316
    .restart local v1    # "cx":I
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int v6, v1, v6

    int-to-float v6, v6

    cmpl-float v6, v3, v6

    if-lez v6, :cond_9

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v6, v1

    int-to-float v6, v6

    cmpg-float v6, v3, v6

    if-gez v6, :cond_9

    .line 317
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v6}, Lorg/telegram/ui/ArticleViewer;->access$000(Lorg/telegram/ui/ArticleViewer;)I

    move-result v6

    if-eq v6, v0, :cond_8

    .line 318
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v6, v0}, Lorg/telegram/ui/ArticleViewer;->access$002(Lorg/telegram/ui/ArticleViewer;I)I

    .line 319
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v6}, Lorg/telegram/ui/ArticleViewer;->access$100(Lorg/telegram/ui/ArticleViewer;)V

    .line 320
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->invalidate()V

    .line 330
    .end local v0    # "a":I
    .end local v1    # "cx":I
    :cond_8
    :goto_4
    iput-boolean v4, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->startMoving:Z

    .line 331
    iput-boolean v4, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->moving:Z

    goto/16 :goto_1

    .line 314
    .restart local v0    # "a":I
    .restart local v1    # "cx":I
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 326
    .end local v0    # "a":I
    .end local v1    # "cx":I
    :cond_a
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v6}, Lorg/telegram/ui/ArticleViewer;->access$000(Lorg/telegram/ui/ArticleViewer;)I

    move-result v6

    iget v7, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->startMovingQuality:I

    if-eq v6, v7, :cond_8

    .line 327
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$SizeChooseView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v6}, Lorg/telegram/ui/ArticleViewer;->access$100(Lorg/telegram/ui/ArticleViewer;)V

    goto :goto_4
.end method
