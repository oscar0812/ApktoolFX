.class public Lorg/telegram/ui/Cells/TextColorCell;
.super Landroid/widget/FrameLayout;
.source "TextColorCell.java"


# static fields
.field private static colorPaint:Landroid/graphics/Paint;

.field public static final colors:[I

.field public static final colorsToSave:[I


# instance fields
.field private alpha:F

.field private currentColor:I

.field private needDivider:Z

.field private textView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 37
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/ui/Cells/TextColorCell;->colors:[I

    .line 38
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/telegram/ui/Cells/TextColorCell;->colorsToSave:[I

    return-void

    .line 37
    nop

    :array_0
    .array-data 4
        -0xfbbbc
        -0x71ff
        -0x31e1
        -0x8629a0
        -0xbf120a
        -0xb94101
        -0x2d8b07
        -0xb06a
        -0x444445
    .end array-data

    .line 38
    :array_1
    .array-data 4
        -0x10000
        -0x71ff
        -0x31e1
        -0xff0100
        -0xbf120a
        -0xffff01
        -0x2d8b07
        -0xb06a
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x5

    const/4 v5, 0x3

    const/high16 v3, 0x41880000    # 17.0f

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 33
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Cells/TextColorCell;->alpha:F

    .line 43
    sget-object v0, Lorg/telegram/ui/Cells/TextColorCell;->colorPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Cells/TextColorCell;->colorPaint:Landroid/graphics/Paint;

    .line 47
    :cond_0
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextColorCell;->textView:Landroid/widget/TextView;

    .line 48
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextColorCell;->textView:Landroid/widget/TextView;

    const-string/jumbo v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextColorCell;->textView:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 50
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextColorCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setLines(I)V

    .line 51
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextColorCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 52
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextColorCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 53
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextColorCell;->textView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_0
    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 54
    iget-object v7, p0, Lorg/telegram/ui/Cells/TextColorCell;->textView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_2

    :goto_1
    or-int/lit8 v2, v2, 0x30

    move v5, v3

    move v6, v4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/TextColorCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    return-void

    :cond_1
    move v0, v5

    .line 53
    goto :goto_0

    :cond_2
    move v2, v5

    .line 54
    goto :goto_1
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lorg/telegram/ui/Cells/TextColorCell;->alpha:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v6, 0x41e80000    # 29.0f

    .line 93
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextColorCell;->needDivider:Z

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextColorCell;->getPaddingLeft()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextColorCell;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextColorCell;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextColorCell;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextColorCell;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 96
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Cells/TextColorCell;->currentColor:I

    if-eqz v0, :cond_1

    .line 97
    sget-object v0, Lorg/telegram/ui/Cells/TextColorCell;->colorPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Cells/TextColorCell;->currentColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    sget-object v0, Lorg/telegram/ui/Cells/TextColorCell;->colorPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    iget v2, p0, Lorg/telegram/ui/Cells/TextColorCell;->alpha:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 99
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextColorCell;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lorg/telegram/ui/Cells/TextColorCell;->colorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 101
    :cond_1
    return-void

    .line 99
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextColorCell;->getMeasuredWidth()I

    move-result v0

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

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

    .line 70
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextColorCell;->needDivider:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v2

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 71
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 59
    iput p1, p0, Lorg/telegram/ui/Cells/TextColorCell;->alpha:F

    .line 60
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextColorCell;->invalidate()V

    .line 61
    return-void
.end method

.method public setEnabled(ZLjava/util/ArrayList;)V
    .locals 8
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    .line 82
    if-eqz p2, :cond_2

    .line 83
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextColorCell;->textView:Landroid/widget/TextView;

    const-string/jumbo v4, "alpha"

    new-array v5, v7, [F

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    aput v0, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    const-string/jumbo v0, "alpha"

    new-array v3, v7, [F

    if-eqz p1, :cond_1

    :goto_1
    aput v1, v3, v6

    invoke-static {p0, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 83
    goto :goto_0

    :cond_1
    move v1, v2

    .line 84
    goto :goto_1

    .line 86
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextColorCell;->textView:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 87
    if-eqz p1, :cond_4

    :goto_4
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Cells/TextColorCell;->setAlpha(F)V

    goto :goto_2

    :cond_3
    move v0, v2

    .line 86
    goto :goto_3

    :cond_4
    move v1, v2

    .line 87
    goto :goto_4
.end method

.method public setTextAndColor(Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "color"    # I
    .param p3, "divider"    # Z

    .prologue
    .line 74
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextColorCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iput-boolean p3, p0, Lorg/telegram/ui/Cells/TextColorCell;->needDivider:Z

    .line 76
    iput p2, p0, Lorg/telegram/ui/Cells/TextColorCell;->currentColor:I

    .line 77
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextColorCell;->needDivider:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Cells/TextColorCell;->currentColor:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextColorCell;->setWillNotDraw(Z)V

    .line 78
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextColorCell;->invalidate()V

    .line 79
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
