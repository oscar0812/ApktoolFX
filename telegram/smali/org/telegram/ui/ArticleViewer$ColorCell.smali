.class public Lorg/telegram/ui/ArticleViewer$ColorCell;
.super Landroid/widget/FrameLayout;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ColorCell"
.end annotation


# instance fields
.field private currentColor:I

.field private selected:Z

.field private textView:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V
    .locals 8
    .param p1, "this$0"    # Lorg/telegram/ui/ArticleViewer;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 371
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$ColorCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 372
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 374
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$200()Landroid/graphics/Paint;

    move-result-object v0

    if-nez v0, :cond_0

    .line 375
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$202(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    .line 376
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$302(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    .line 377
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$300()Landroid/graphics/Paint;

    move-result-object v0

    const v1, -0xeb6a17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 378
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$300()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 379
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$300()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 382
    :cond_0
    const/high16 v0, 0xf000000

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ArticleViewer$ColorCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 384
    invoke-virtual {p0, v6}, Lorg/telegram/ui/ArticleViewer$ColorCell;->setWillNotDraw(Z)V

    .line 386
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$ColorCell;->textView:Landroid/widget/TextView;

    .line 387
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$ColorCell;->textView:Landroid/widget/TextView;

    const v1, -0xdededf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 388
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$ColorCell;->textView:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 389
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$ColorCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setLines(I)V

    .line 390
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$ColorCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 391
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$ColorCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 392
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$ColorCell;->textView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_0
    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 393
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$ColorCell;->textView:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v6, v6, v6, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 394
    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$ColorCell;->textView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_2

    :goto_1
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_3

    const/16 v3, 0x11

    :goto_2
    int-to-float v3, v3

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_4

    const/16 v5, 0x35

    :goto_3
    int-to-float v5, v5

    move v6, v4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/ArticleViewer$ColorCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    return-void

    :cond_1
    move v0, v3

    .line 392
    goto :goto_0

    :cond_2
    move v2, v3

    .line 394
    goto :goto_1

    :cond_3
    const/16 v3, 0x35

    goto :goto_2

    :cond_4
    const/16 v5, 0x11

    goto :goto_3
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v6, 0x41200000    # 10.0f

    const/high16 v5, 0x42400000    # 48.0f

    const/high16 v4, 0x41e00000    # 28.0f

    .line 418
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$200()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$ColorCell;->currentColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 419
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v0, :cond_1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$ColorCell;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$200()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 420
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$ColorCell;->selected:Z

    if-eqz v0, :cond_3

    .line 421
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$300()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 422
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$300()Landroid/graphics/Paint;

    move-result-object v0

    const v1, -0xeb6a17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 423
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v0, :cond_2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$ColorCell;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$300()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 429
    :cond_0
    :goto_2
    return-void

    .line 419
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$ColorCell;->getMeasuredWidth()I

    move-result v0

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_0

    .line 423
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$ColorCell;->getMeasuredWidth()I

    move-result v0

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_1

    .line 424
    :cond_3
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$ColorCell;->currentColor:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 425
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$300()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 426
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$300()Landroid/graphics/Paint;

    move-result-object v0

    const v1, -0x454546

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 427
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v0, :cond_4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    :goto_3
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$ColorCell;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/high16 v2, 0x41100000    # 9.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$300()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$ColorCell;->getMeasuredWidth()I

    move-result v0

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_3
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 399
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 400
    return-void
.end method

.method public select(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 409
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$ColorCell;->selected:Z

    if-ne v0, p1, :cond_0

    .line 414
    :goto_0
    return-void

    .line 412
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer$ColorCell;->selected:Z

    .line 413
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$ColorCell;->invalidate()V

    goto :goto_0
.end method

.method public setTextAndColor(Ljava/lang/String;I)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "color"    # I

    .prologue
    .line 403
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$ColorCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    iput p2, p0, Lorg/telegram/ui/ArticleViewer$ColorCell;->currentColor:I

    .line 405
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$ColorCell;->invalidate()V

    .line 406
    return-void
.end method
