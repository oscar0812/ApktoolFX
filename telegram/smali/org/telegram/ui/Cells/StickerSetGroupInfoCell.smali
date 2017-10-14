.class public Lorg/telegram/ui/Cells/StickerSetGroupInfoCell;
.super Landroid/widget/LinearLayout;
.source "StickerSetGroupInfoCell.java"


# instance fields
.field private addButton:Landroid/widget/TextView;

.field private isLast:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v10, 0x41880000    # 17.0f

    const/high16 v9, 0x41600000    # 14.0f

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/16 v3, 0x11

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-virtual {p0, v8}, Lorg/telegram/ui/Cells/StickerSetGroupInfoCell;->setOrientation(I)V

    .line 33
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 34
    .local v7, "infoTextView":Landroid/widget/TextView;
    const-string/jumbo v0, "chat_emojiPanelTrendingDescription"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 36
    const-string/jumbo v0, "GroupStickersInfo"

    const v1, 0x7f0702e0

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    const/4 v0, -0x1

    const/4 v1, -0x2

    const/16 v2, 0x33

    const/4 v4, 0x4

    move v5, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/StickerSetGroupInfoCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/StickerSetGroupInfoCell;->addButton:Landroid/widget/TextView;

    .line 40
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetGroupInfoCell;->addButton:Landroid/widget/TextView;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v1, v6, v2, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 41
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetGroupInfoCell;->addButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 42
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetGroupInfoCell;->addButton:Landroid/widget/TextView;

    const-string/jumbo v1, "featuredStickers_buttonText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetGroupInfoCell;->addButton:Landroid/widget/TextView;

    invoke-virtual {v0, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 44
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetGroupInfoCell;->addButton:Landroid/widget/TextView;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 45
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetGroupInfoCell;->addButton:Landroid/widget/TextView;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const-string/jumbo v2, "featuredStickers_addButton"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v4, "featuredStickers_addButtonPressed"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v1, v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetGroupInfoCell;->addButton:Landroid/widget/TextView;

    const-string/jumbo v1, "ChooseStickerSet"

    const v2, 0x7f070169

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v8, p0, Lorg/telegram/ui/Cells/StickerSetGroupInfoCell;->addButton:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/16 v1, 0x1c

    const/16 v2, 0x33

    const/16 v4, 0xa

    const/16 v5, 0xe

    const/16 v6, 0x8

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v8, v0}, Lorg/telegram/ui/Cells/StickerSetGroupInfoCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 52
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-super {p0, v2, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 53
    iget-boolean v2, p0, Lorg/telegram/ui/Cells/StickerSetGroupInfoCell;->isLast:Z

    if-eqz v2, :cond_0

    .line 54
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/StickerSetGroupInfoCell;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 55
    .local v1, "parent":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v0, v2, v3

    .line 57
    .local v0, "height":I
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/StickerSetGroupInfoCell;->getMeasuredHeight()I

    move-result v2

    if-ge v2, v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/StickerSetGroupInfoCell;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0, v2, v0}, Lorg/telegram/ui/Cells/StickerSetGroupInfoCell;->setMeasuredDimension(II)V

    .line 62
    .end local v0    # "height":I
    .end local v1    # "parent":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setAddOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 65
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetGroupInfoCell;->addButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method

.method public setIsLast(Z)V
    .locals 0
    .param p1, "last"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/StickerSetGroupInfoCell;->isLast:Z

    .line 70
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/StickerSetGroupInfoCell;->requestLayout()V

    .line 71
    return-void
.end method
