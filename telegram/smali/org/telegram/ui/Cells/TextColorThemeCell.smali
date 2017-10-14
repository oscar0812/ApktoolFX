.class public Lorg/telegram/ui/Cells/TextColorThemeCell;
.super Landroid/widget/FrameLayout;
.source "TextColorThemeCell.java"


# static fields
.field private static colorPaint:Landroid/graphics/Paint;


# instance fields
.field private alpha:F

.field private currentColor:I

.field private needDivider:Z

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Cells/TextColorThemeCell;->alpha:F

    .line 35
    sget-object v0, Lorg/telegram/ui/Cells/TextColorThemeCell;->colorPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Cells/TextColorThemeCell;->colorPaint:Landroid/graphics/Paint;

    .line 39
    :cond_0
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextColorThemeCell;->textView:Landroid/widget/TextView;

    .line 40
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextColorThemeCell;->textView:Landroid/widget/TextView;

    const v1, -0xdededf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 41
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextColorThemeCell;->textView:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 42
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextColorThemeCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setLines(I)V

    .line 43
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextColorThemeCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 44
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextColorThemeCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 45
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextColorThemeCell;->textView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_0
    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 46
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextColorThemeCell;->textView:Landroid/widget/TextView;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v6, v6, v6, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 47
    iget-object v7, p0, Lorg/telegram/ui/Cells/TextColorThemeCell;->textView:Landroid/widget/TextView;

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

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/TextColorThemeCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    return-void

    :cond_1
    move v0, v3

    .line 45
    goto :goto_0

    :cond_2
    move v2, v3

    .line 47
    goto :goto_1

    :cond_3
    const/16 v3, 0x35

    goto :goto_2

    :cond_4
    const/16 v5, 0x11

    goto :goto_3
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/Cells/TextColorThemeCell;->alpha:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v3, 0x41e00000    # 28.0f

    .line 75
    iget v0, p0, Lorg/telegram/ui/Cells/TextColorThemeCell;->currentColor:I

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lorg/telegram/ui/Cells/TextColorThemeCell;->colorPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Cells/TextColorThemeCell;->currentColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    sget-object v0, Lorg/telegram/ui/Cells/TextColorThemeCell;->colorPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    iget v2, p0, Lorg/telegram/ui/Cells/TextColorThemeCell;->alpha:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 78
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v0, :cond_1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextColorThemeCell;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lorg/telegram/ui/Cells/TextColorThemeCell;->colorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 80
    :cond_0
    return-void

    .line 78
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextColorThemeCell;->getMeasuredWidth()I

    move-result v0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 63
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextColorThemeCell;->needDivider:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v2

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 64
    return-void

    .line 63
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 52
    iput p1, p0, Lorg/telegram/ui/Cells/TextColorThemeCell;->alpha:F

    .line 53
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextColorThemeCell;->invalidate()V

    .line 54
    return-void
.end method

.method public setTextAndColor(Ljava/lang/String;I)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "color"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextColorThemeCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iput p2, p0, Lorg/telegram/ui/Cells/TextColorThemeCell;->currentColor:I

    .line 69
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextColorThemeCell;->needDivider:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Cells/TextColorThemeCell;->currentColor:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextColorThemeCell;->setWillNotDraw(Z)V

    .line 70
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextColorThemeCell;->invalidate()V

    .line 71
    return-void

    .line 69
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
