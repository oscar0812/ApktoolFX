.class public Lorg/telegram/ui/Components/PickerBottomLayoutViewer;
.super Landroid/widget/FrameLayout;
.source "PickerBottomLayoutViewer.java"


# instance fields
.field public cancelButton:Landroid/widget/TextView;

.field public doneButton:Landroid/widget/TextView;

.field public doneButtonBadgeTextView:Landroid/widget/TextView;

.field private isDarkTheme:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;-><init>(Landroid/content/Context;Z)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "darkTheme"    # Z

    .prologue
    const/4 v0, -0x2

    const/4 v3, 0x0

    const/high16 v7, 0x41a00000    # 20.0f

    const/4 v2, -0x1

    const/4 v6, 0x0

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 37
    iput-boolean p2, p0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->isDarkTheme:Z

    .line 39
    iget-boolean v1, p0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->isDarkTheme:Z

    if-eqz v1, :cond_0

    const v1, -0xe5e5e6

    :goto_0
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setBackgroundColor(I)V

    .line 41
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->cancelButton:Landroid/widget/TextView;

    .line 42
    iget-object v1, p0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->cancelButton:Landroid/widget/TextView;

    const/4 v4, 0x1

    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 43
    iget-object v4, p0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->cancelButton:Landroid/widget/TextView;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->isDarkTheme:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44
    iget-object v1, p0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->cancelButton:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 45
    iget-object v4, p0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->cancelButton:Landroid/widget/TextView;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->isDarkTheme:Z

    if-eqz v1, :cond_2

    const v1, -0xc2c2c3

    :goto_2
    invoke-static {v1, v6}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    iget-object v1, p0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->cancelButton:Landroid/widget/TextView;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v1, v4, v6, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 47
    iget-object v1, p0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->cancelButton:Landroid/widget/TextView;

    const-string/jumbo v4, "Cancel"

    const v5, 0x7f0700f4

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v1, p0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->cancelButton:Landroid/widget/TextView;

    const-string/jumbo v4, "fonts/rmedium.ttf"

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 49
    iget-object v1, p0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->cancelButton:Landroid/widget/TextView;

    const/16 v4, 0x33

    invoke-static {v0, v2, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButton:Landroid/widget/TextView;

    .line 52
    iget-object v1, p0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButton:Landroid/widget/TextView;

    const/4 v4, 0x1

    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 53
    iget-object v4, p0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButton:Landroid/widget/TextView;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->isDarkTheme:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    iget-object v1, p0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButton:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 55
    iget-object v4, p0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButton:Landroid/widget/TextView;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->isDarkTheme:Z

    if-eqz v1, :cond_4

    const v1, -0xc2c2c3

    :goto_4
    invoke-static {v1, v6}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    iget-object v1, p0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButton:Landroid/widget/TextView;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v1, v4, v6, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 57
    iget-object v1, p0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButton:Landroid/widget/TextView;

    const-string/jumbo v4, "Send"

    const v5, 0x7f070554

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v1, p0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButton:Landroid/widget/TextView;

    const-string/jumbo v4, "fonts/rmedium.ttf"

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 59
    iget-object v1, p0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButton:Landroid/widget/TextView;

    const/16 v4, 0x35

    invoke-static {v0, v2, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButtonBadgeTextView:Landroid/widget/TextView;

    .line 62
    iget-object v1, p0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButtonBadgeTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "fonts/rmedium.ttf"

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 63
    iget-object v1, p0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButtonBadgeTextView:Landroid/widget/TextView;

    const/4 v4, 0x1

    const/high16 v5, 0x41500000    # 13.0f

    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 64
    iget-object v1, p0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButtonBadgeTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    iget-object v1, p0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButtonBadgeTextView:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 66
    iget-object v2, p0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButtonBadgeTextView:Landroid/widget/TextView;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->isDarkTheme:Z

    if-eqz v1, :cond_5

    const v1, 0x7f020172

    :goto_5
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 67
    iget-object v1, p0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButtonBadgeTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41b80000    # 23.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 68
    iget-object v1, p0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButtonBadgeTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v1, v2, v6, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 69
    iget-object v7, p0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButtonBadgeTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41b80000    # 23.0f

    const/16 v2, 0x35

    const/high16 v5, 0x40e00000    # 7.0f

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    return-void

    :cond_0
    move v1, v2

    .line 39
    goto/16 :goto_0

    .line 43
    :cond_1
    const v1, -0xe65818

    goto/16 :goto_1

    .line 45
    :cond_2
    const/high16 v1, 0x2f000000

    goto/16 :goto_2

    .line 53
    :cond_3
    const v1, -0xe65818

    goto/16 :goto_3

    .line 55
    :cond_4
    const/high16 v1, 0x2f000000

    goto/16 :goto_4

    .line 66
    :cond_5
    const v1, 0x7f02002d

    goto :goto_5
.end method


# virtual methods
.method public updateSelectedCount(IZ)V
    .locals 8
    .param p1, "count"    # I
    .param p2, "disable"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v0, -0x1

    const v1, -0xe65818

    const/4 v6, 0x0

    .line 73
    if-nez p1, :cond_3

    .line 74
    iget-object v2, p0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButtonBadgeTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    if-eqz p2, :cond_1

    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButton:Landroid/widget/TextView;

    const v1, -0x666667

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    iget-object v0, p0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButton:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButton:Landroid/widget/TextView;

    iget-boolean v3, p0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->isDarkTheme:Z

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 83
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButtonBadgeTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    iget-object v2, p0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButtonBadgeTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "%d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v2, p0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButton:Landroid/widget/TextView;

    iget-boolean v3, p0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->isDarkTheme:Z

    if-eqz v3, :cond_4

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    if-eqz p2, :cond_0

    .line 88
    iget-object v0, p0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButton:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 86
    goto :goto_2
.end method
