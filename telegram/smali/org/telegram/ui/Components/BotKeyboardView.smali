.class public Lorg/telegram/ui/Components/BotKeyboardView;
.super Landroid/widget/LinearLayout;
.source "BotKeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/BotKeyboardView$BotKeyboardViewDelegate;
    }
.end annotation


# instance fields
.field private botButtons:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

.field private buttonHeight:I

.field private buttonViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private container:Landroid/widget/LinearLayout;

.field private delegate:Lorg/telegram/ui/Components/BotKeyboardView$BotKeyboardViewDelegate;

.field private isFullSize:Z

.field private panelHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/BotKeyboardView;->buttonViews:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/BotKeyboardView;->setOrientation(I)V

    .line 45
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 46
    .local v0, "scrollView":Landroid/widget/ScrollView;
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/BotKeyboardView;->addView(Landroid/view/View;)V

    .line 47
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/BotKeyboardView;->container:Landroid/widget/LinearLayout;

    .line 48
    iget-object v1, p0, Lorg/telegram/ui/Components/BotKeyboardView;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 49
    iget-object v1, p0, Lorg/telegram/ui/Components/BotKeyboardView;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 50
    const-string/jumbo v1, "chat_emojiPanelBackground"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->setScrollViewEdgeEffectColor(Landroid/widget/ScrollView;I)V

    .line 52
    const-string/jumbo v1, "chat_emojiPanelBackground"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/BotKeyboardView;->setBackgroundColor(I)V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/BotKeyboardView;)Lorg/telegram/ui/Components/BotKeyboardView$BotKeyboardViewDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/BotKeyboardView;

    .prologue
    .line 26
    iget-object v0, p0, Lorg/telegram/ui/Components/BotKeyboardView;->delegate:Lorg/telegram/ui/Components/BotKeyboardView$BotKeyboardViewDelegate;

    return-object v0
.end method


# virtual methods
.method public getKeyboardHeight()I
    .locals 3

    .prologue
    .line 126
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BotKeyboardView;->isFullSize:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/BotKeyboardView;->panelHeight:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/BotKeyboardView;->botButtons:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/BotKeyboardView;->buttonHeight:I

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    mul-int/2addr v0, v1

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/BotKeyboardView;->botButtons:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public invalidateViews()V
    .locals 2

    .prologue
    .line 77
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/BotKeyboardView;->buttonViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 78
    iget-object v1, p0, Lorg/telegram/ui/Components/BotKeyboardView;->buttonViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_0
    return-void
.end method

.method public isFullSize()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BotKeyboardView;->isFullSize:Z

    return v0
.end method

.method public setButtons(Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;)V
    .locals 13
    .param p1, "buttons"    # Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    .prologue
    .line 87
    iput-object p1, p0, Lorg/telegram/ui/Components/BotKeyboardView;->botButtons:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    .line 88
    iget-object v0, p0, Lorg/telegram/ui/Components/BotKeyboardView;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 89
    iget-object v0, p0, Lorg/telegram/ui/Components/BotKeyboardView;->buttonViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 91
    if-eqz p1, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/BotKeyboardView;->botButtons:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_6

    .line 92
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->resize:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Components/BotKeyboardView;->isFullSize:Z

    .line 93
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BotKeyboardView;->isFullSize:Z

    if-nez v0, :cond_1

    const/16 v0, 0x2a

    :goto_1
    iput v0, p0, Lorg/telegram/ui/Components/BotKeyboardView;->buttonHeight:I

    .line 94
    const/4 v7, 0x0

    .local v7, "a":I
    :goto_2
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_6

    .line 95
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;

    .line 97
    .local v11, "row":Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BotKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 98
    .local v10, "layout":Landroid/widget/LinearLayout;
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 99
    iget-object v6, p0, Lorg/telegram/ui/Components/BotKeyboardView;->container:Landroid/widget/LinearLayout;

    const/4 v0, -0x1

    iget v1, p0, Lorg/telegram/ui/Components/BotKeyboardView;->buttonHeight:I

    const/high16 v2, 0x41700000    # 15.0f

    if-nez v7, :cond_2

    const/high16 v3, 0x41700000    # 15.0f

    :goto_3
    const/high16 v4, 0x41700000    # 15.0f

    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v7, v5, :cond_3

    const/high16 v5, 0x41700000    # 15.0f

    :goto_4
    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v6, v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, v11, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-float v1, v1

    div-float v2, v0, v1

    .line 102
    .local v2, "weight":F
    const/4 v8, 0x0

    .local v8, "b":I
    :goto_5
    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_5

    .line 103
    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    .line 104
    .local v9, "button":Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    new-instance v12, Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BotKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v12, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 105
    .local v12, "textView":Landroid/widget/TextView;
    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 106
    const-string/jumbo v0, "chat_botKeyboardButtonText"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    const/4 v0, 0x1

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v12, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 108
    const/16 v0, 0x11

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 109
    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const-string/jumbo v1, "chat_botKeyboardButtonBackground"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v3, "chat_botKeyboardButtonBackgroundPressed"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/4 v1, 0x0

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v12, v0, v1, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 111
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->text:Ljava/lang/String;

    invoke-virtual {v12}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, v11, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v8, v5, :cond_4

    const/16 v5, 0xa

    :goto_6
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v10, v12, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    new-instance v0, Lorg/telegram/ui/Components/BotKeyboardView$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/BotKeyboardView$1;-><init>(Lorg/telegram/ui/Components/BotKeyboardView;)V

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lorg/telegram/ui/Components/BotKeyboardView;->buttonViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_5

    .line 92
    .end local v2    # "weight":F
    .end local v7    # "a":I
    .end local v8    # "b":I
    .end local v9    # "button":Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    .end local v10    # "layout":Landroid/widget/LinearLayout;
    .end local v11    # "row":Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;
    .end local v12    # "textView":Landroid/widget/TextView;
    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 93
    :cond_1
    const/high16 v0, 0x42280000    # 42.0f

    iget v1, p0, Lorg/telegram/ui/Components/BotKeyboardView;->panelHeight:I

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/BotKeyboardView;->botButtons:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    mul-int/2addr v3, v4

    sub-int/2addr v1, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/BotKeyboardView;->botButtons:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    div-int/2addr v1, v3

    int-to-float v1, v1

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    goto/16 :goto_1

    .line 99
    .restart local v7    # "a":I
    .restart local v10    # "layout":Landroid/widget/LinearLayout;
    .restart local v11    # "row":Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;
    :cond_2
    const/high16 v3, 0x41200000    # 10.0f

    goto/16 :goto_3

    :cond_3
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 112
    .restart local v2    # "weight":F
    .restart local v8    # "b":I
    .restart local v9    # "button":Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    .restart local v12    # "textView":Landroid/widget/TextView;
    :cond_4
    const/4 v5, 0x0

    goto :goto_6

    .line 94
    .end local v9    # "button":Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    .end local v12    # "textView":Landroid/widget/TextView;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 123
    .end local v2    # "weight":F
    .end local v7    # "a":I
    .end local v8    # "b":I
    .end local v10    # "layout":Landroid/widget/LinearLayout;
    .end local v11    # "row":Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;
    :cond_6
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/BotKeyboardView$BotKeyboardViewDelegate;)V
    .locals 0
    .param p1, "botKeyboardViewDelegate"    # Lorg/telegram/ui/Components/BotKeyboardView$BotKeyboardViewDelegate;

    .prologue
    .line 56
    iput-object p1, p0, Lorg/telegram/ui/Components/BotKeyboardView;->delegate:Lorg/telegram/ui/Components/BotKeyboardView$BotKeyboardViewDelegate;

    .line 57
    return-void
.end method

.method public setPanelHeight(I)V
    .locals 9
    .param p1, "height"    # I

    .prologue
    .line 60
    iput p1, p0, Lorg/telegram/ui/Components/BotKeyboardView;->panelHeight:I

    .line 61
    iget-boolean v5, p0, Lorg/telegram/ui/Components/BotKeyboardView;->isFullSize:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/Components/BotKeyboardView;->botButtons:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/Components/BotKeyboardView;->botButtons:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_2

    .line 62
    iget-boolean v5, p0, Lorg/telegram/ui/Components/BotKeyboardView;->isFullSize:Z

    if-nez v5, :cond_1

    const/16 v5, 0x2a

    :goto_0
    iput v5, p0, Lorg/telegram/ui/Components/BotKeyboardView;->buttonHeight:I

    .line 63
    iget-object v5, p0, Lorg/telegram/ui/Components/BotKeyboardView;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 64
    .local v1, "count":I
    iget v5, p0, Lorg/telegram/ui/Components/BotKeyboardView;->buttonHeight:I

    int-to-float v5, v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    .line 65
    .local v3, "newHeight":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 66
    iget-object v5, p0, Lorg/telegram/ui/Components/BotKeyboardView;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 67
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 68
    .local v2, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget v5, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-eq v5, v3, :cond_0

    .line 69
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 70
    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 62
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "newHeight":I
    .end local v4    # "v":Landroid/view/View;
    :cond_1
    const/high16 v5, 0x42280000    # 42.0f

    iget v6, p0, Lorg/telegram/ui/Components/BotKeyboardView;->panelHeight:I

    const/high16 v7, 0x41f00000    # 30.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/ui/Components/BotKeyboardView;->botButtons:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    mul-int/2addr v7, v8

    sub-int/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/ui/Components/BotKeyboardView;->botButtons:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    div-int/2addr v6, v7

    int-to-float v6, v6

    sget v7, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    float-to-int v5, v5

    goto :goto_0

    .line 74
    :cond_2
    return-void
.end method
