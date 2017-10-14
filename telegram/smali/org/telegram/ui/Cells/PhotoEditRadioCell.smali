.class public Lorg/telegram/ui/Cells/PhotoEditRadioCell;
.super Landroid/widget/FrameLayout;
.source "PhotoEditRadioCell.java"


# instance fields
.field private currentColor:I

.field private currentType:I

.field private nameTextView:Landroid/widget/TextView;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private tintButtonsContainer:Landroid/widget/LinearLayout;

.field private final tintHighlighsColors:[I

.field private final tintShadowColors:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v1, 0x8

    const/4 v9, 0x0

    const/4 v2, 0x1

    const/4 v8, -0x1

    const/4 v3, 0x0

    .line 55
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 32
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditRadioCell;->tintShadowColors:[I

    .line 43
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditRadioCell;->tintHighlighsColors:[I

    .line 57
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditRadioCell;->nameTextView:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditRadioCell;->nameTextView:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 59
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditRadioCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditRadioCell;->nameTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditRadioCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 62
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditRadioCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 63
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditRadioCell;->nameTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 64
    iget-object v7, p0, Lorg/telegram/ui/Cells/PhotoEditRadioCell;->nameTextView:Landroid/widget/TextView;

    const/16 v0, 0x50

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x13

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/PhotoEditRadioCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditRadioCell;->tintButtonsContainer:Landroid/widget/LinearLayout;

    .line 67
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditRadioCell;->tintButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 68
    const/4 v11, 0x0

    .local v11, "a":I
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditRadioCell;->tintShadowColors:[I

    array-length v0, v0

    if-ge v11, v0, :cond_0

    .line 69
    new-instance v12, Lorg/telegram/ui/Components/RadioButton;

    invoke-direct {v12, p1}, Lorg/telegram/ui/Components/RadioButton;-><init>(Landroid/content/Context;)V

    .line 70
    .local v12, "radioButton":Lorg/telegram/ui/Components/RadioButton;
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v12, v0}, Lorg/telegram/ui/Components/RadioButton;->setSize(I)V

    .line 71
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lorg/telegram/ui/Components/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditRadioCell;->tintButtonsContainer:Landroid/widget/LinearLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoEditRadioCell;->tintShadowColors:[I

    array-length v2, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v9, v8, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    new-instance v0, Lorg/telegram/ui/Cells/PhotoEditRadioCell$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Cells/PhotoEditRadioCell$1;-><init>(Lorg/telegram/ui/Cells/PhotoEditRadioCell;)V

    invoke-virtual {v12, v0}, Lorg/telegram/ui/Components/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 87
    .end local v12    # "radioButton":Lorg/telegram/ui/Components/RadioButton;
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditRadioCell;->tintButtonsContainer:Landroid/widget/LinearLayout;

    const/high16 v5, 0x42200000    # 40.0f

    const/16 v6, 0x33

    const/high16 v7, 0x42c00000    # 96.0f

    const/high16 v9, 0x41c00000    # 24.0f

    move v4, v8

    move v8, v3

    move v10, v3

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Cells/PhotoEditRadioCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    return-void

    .line 32
    :array_0
    .array-data 4
        0x0
        -0xb2b3
        -0xb7fde
        -0x3300
        -0x7e2d7f
        -0x8e3a2a
        -0xff8d44
        -0x99d26f
    .end array-data

    .line 43
    :array_1
    .array-data 4
        0x0
        -0x106d7a
        -0x15315e
        -0xd1e84
        -0x5b1252
        -0x76231b
        -0xd17438
        -0x32671b
    .end array-data
.end method

.method static synthetic access$000(Lorg/telegram/ui/Cells/PhotoEditRadioCell;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/PhotoEditRadioCell;

    .prologue
    .line 24
    iget v0, p0, Lorg/telegram/ui/Cells/PhotoEditRadioCell;->currentType:I

    return v0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Cells/PhotoEditRadioCell;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Cells/PhotoEditRadioCell;
    .param p1, "x1"    # I

    .prologue
    .line 24
    iput p1, p0, Lorg/telegram/ui/Cells/PhotoEditRadioCell;->currentColor:I

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Cells/PhotoEditRadioCell;)[I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/PhotoEditRadioCell;

    .prologue
    .line 24
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditRadioCell;->tintShadowColors:[I

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Cells/PhotoEditRadioCell;)[I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/PhotoEditRadioCell;

    .prologue
    .line 24
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditRadioCell;->tintHighlighsColors:[I

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Cells/PhotoEditRadioCell;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Cells/PhotoEditRadioCell;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/PhotoEditRadioCell;->updateSelectedTintButton(Z)V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/Cells/PhotoEditRadioCell;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/PhotoEditRadioCell;

    .prologue
    .line 24
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditRadioCell;->onClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private updateSelectedTintButton(Z)V
    .locals 9
    .param p1, "animated"    # Z

    .prologue
    const/4 v7, -0x1

    .line 95
    iget-object v6, p0, Lorg/telegram/ui/Cells/PhotoEditRadioCell;->tintButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 96
    .local v2, "childCount":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v2, :cond_7

    .line 97
    iget-object v6, p0, Lorg/telegram/ui/Cells/PhotoEditRadioCell;->tintButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 98
    .local v1, "child":Landroid/view/View;
    instance-of v6, v1, Lorg/telegram/ui/Components/RadioButton;

    if-eqz v6, :cond_0

    move-object v5, v1

    .line 99
    check-cast v5, Lorg/telegram/ui/Components/RadioButton;

    .line 100
    .local v5, "radioButton":Lorg/telegram/ui/Components/RadioButton;
    invoke-virtual {v5}, Lorg/telegram/ui/Components/RadioButton;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 101
    .local v4, "num":I
    iget v6, p0, Lorg/telegram/ui/Cells/PhotoEditRadioCell;->currentType:I

    if-nez v6, :cond_1

    iget-object v6, p0, Lorg/telegram/ui/Cells/PhotoEditRadioCell;->tintShadowColors:[I

    aget v3, v6, v4

    .line 102
    .local v3, "color2":I
    :goto_1
    iget v6, p0, Lorg/telegram/ui/Cells/PhotoEditRadioCell;->currentColor:I

    if-ne v6, v3, :cond_2

    const/4 v6, 0x1

    :goto_2
    invoke-virtual {v5, v6, p1}, Lorg/telegram/ui/Components/RadioButton;->setChecked(ZZ)V

    .line 103
    if-nez v4, :cond_3

    move v8, v7

    :goto_3
    if-nez v4, :cond_5

    move v6, v7

    :goto_4
    invoke-virtual {v5, v8, v6}, Lorg/telegram/ui/Components/RadioButton;->setColor(II)V

    .line 96
    .end local v3    # "color2":I
    .end local v4    # "num":I
    .end local v5    # "radioButton":Lorg/telegram/ui/Components/RadioButton;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    .restart local v4    # "num":I
    .restart local v5    # "radioButton":Lorg/telegram/ui/Components/RadioButton;
    :cond_1
    iget-object v6, p0, Lorg/telegram/ui/Cells/PhotoEditRadioCell;->tintHighlighsColors:[I

    aget v3, v6, v4

    goto :goto_1

    .line 102
    .restart local v3    # "color2":I
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 103
    :cond_3
    iget v6, p0, Lorg/telegram/ui/Cells/PhotoEditRadioCell;->currentType:I

    if-nez v6, :cond_4

    iget-object v6, p0, Lorg/telegram/ui/Cells/PhotoEditRadioCell;->tintShadowColors:[I

    aget v6, v6, v4

    move v8, v6

    goto :goto_3

    :cond_4
    iget-object v6, p0, Lorg/telegram/ui/Cells/PhotoEditRadioCell;->tintHighlighsColors:[I

    aget v6, v6, v4

    move v8, v6

    goto :goto_3

    :cond_5
    iget v6, p0, Lorg/telegram/ui/Cells/PhotoEditRadioCell;->currentType:I

    if-nez v6, :cond_6

    iget-object v6, p0, Lorg/telegram/ui/Cells/PhotoEditRadioCell;->tintShadowColors:[I

    aget v6, v6, v4

    goto :goto_4

    :cond_6
    iget-object v6, p0, Lorg/telegram/ui/Cells/PhotoEditRadioCell;->tintHighlighsColors:[I

    aget v6, v6, v4

    goto :goto_4

    .line 106
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "color2":I
    .end local v4    # "num":I
    .end local v5    # "radioButton":Lorg/telegram/ui/Components/RadioButton;
    :cond_7
    return-void
.end method


# virtual methods
.method public getCurrentColor()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lorg/telegram/ui/Cells/PhotoEditRadioCell;->currentColor:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 115
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 116
    return-void
.end method

.method public setIconAndTextAndValue(Ljava/lang/String;II)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "value"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 119
    iput p2, p0, Lorg/telegram/ui/Cells/PhotoEditRadioCell;->currentType:I

    .line 120
    iput p3, p0, Lorg/telegram/ui/Cells/PhotoEditRadioCell;->currentColor:I

    .line 121
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditRadioCell;->nameTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-direct {p0, v3}, Lorg/telegram/ui/Cells/PhotoEditRadioCell;->updateSelectedTintButton(Z)V

    .line 123
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 110
    iput-object p1, p0, Lorg/telegram/ui/Cells/PhotoEditRadioCell;->onClickListener:Landroid/view/View$OnClickListener;

    .line 111
    return-void
.end method
