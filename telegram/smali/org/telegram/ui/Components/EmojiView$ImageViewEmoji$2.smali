.class Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

.field final synthetic val$this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    .prologue
    .line 195
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->val$this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 11
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/high16 v10, 0x40a00000    # 5.0f

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 198
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 199
    .local v0, "code":Ljava/lang/String;
    sget-object v5, Lorg/telegram/messenger/EmojiData;->emojiColoredMap:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 200
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->access$202(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;Z)Z

    .line 201
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v9, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    invoke-static {v9}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->access$400(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)F

    move-result v9

    invoke-static {v5, v9}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->access$302(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;F)F

    .line 202
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v9, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    invoke-static {v9}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->access$600(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)F

    move-result v9

    invoke-static {v5, v9}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->access$502(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;F)F

    .line 204
    sget-object v5, Lorg/telegram/messenger/Emoji;->emojiColor:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 205
    .local v1, "color":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 206
    const/4 v5, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v5, :pswitch_data_1

    .line 226
    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v5, v5, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$800(Lorg/telegram/ui/Components/EmojiView;)[I

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 227
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v5, v5, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$900(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v5

    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v7, v7, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView;->access$700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->getSelection()I

    move-result v7

    mul-int/2addr v7, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v5, v5, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->getSelection()I

    move-result v5

    mul-int/lit8 v8, v5, 0x4

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x5

    :goto_2
    sub-int v5, v8, v5

    int-to-float v5, v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int v2, v7, v5

    .line 228
    .local v2, "x":I
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v5, v5, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$800(Lorg/telegram/ui/Components/EmojiView;)[I

    move-result-object v5

    aget v5, v5, v4

    sub-int/2addr v5, v2

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    if-ge v5, v7, :cond_5

    .line 229
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v5, v5, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$800(Lorg/telegram/ui/Components/EmojiView;)[I

    move-result-object v5

    aget v5, v5, v4

    sub-int/2addr v5, v2

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v5, v7

    add-int/2addr v2, v5

    .line 233
    :cond_1
    :goto_3
    neg-int v3, v2

    .line 234
    .local v3, "xOffset":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    if-gez v5, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    .line 236
    .local v4, "yOffset":I
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v5, v5, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    move-result-object v7

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_6

    const/high16 v5, 0x41f00000    # 30.0f

    :goto_4
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v5, v3

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v8

    float-to-int v8, v8

    add-int/2addr v5, v8

    invoke-virtual {v7, v0, v5}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->setEmoji(Ljava/lang/String;I)V

    .line 238
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v5, v5, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$1100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    move-result-object v5

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->setFocusable(Z)V

    .line 239
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v5, v5, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$1100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    neg-int v7, v7

    iget-object v8, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v8, v8, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v8}, Lorg/telegram/ui/Components/EmojiView;->access$1200(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v9, v9, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v9}, Lorg/telegram/ui/Components/EmojiView;->access$900(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    sub-int/2addr v7, v4

    invoke-virtual {v5, p1, v3, v7}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 240
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 245
    .end local v1    # "color":Ljava/lang/String;
    .end local v2    # "x":I
    .end local v3    # "xOffset":I
    .end local v4    # "yOffset":I
    :goto_5
    return v6

    .line 206
    .restart local v1    # "color":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v9, "\ud83c\udffb"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v5, v4

    goto/16 :goto_0

    :pswitch_1
    const-string/jumbo v9, "\ud83c\udffc"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v5, v6

    goto/16 :goto_0

    :pswitch_2
    const-string/jumbo v9, "\ud83c\udffd"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v5, v7

    goto/16 :goto_0

    :pswitch_3
    const-string/jumbo v9, "\ud83c\udffe"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v5, v8

    goto/16 :goto_0

    :pswitch_4
    const-string/jumbo v9, "\ud83c\udfff"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v5, 0x4

    goto/16 :goto_0

    .line 208
    :pswitch_5
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v5, v5, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    move-result-object v5

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->setSelection(I)V

    goto/16 :goto_1

    .line 211
    :pswitch_6
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v5, v5, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    move-result-object v5

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->setSelection(I)V

    goto/16 :goto_1

    .line 214
    :pswitch_7
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v5, v5, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    move-result-object v5

    invoke-virtual {v5, v8}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->setSelection(I)V

    goto/16 :goto_1

    .line 217
    :pswitch_8
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v5, v5, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    move-result-object v5

    const/4 v7, 0x4

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->setSelection(I)V

    goto/16 :goto_1

    .line 220
    :pswitch_9
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v5, v5, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    move-result-object v5

    const/4 v7, 0x5

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->setSelection(I)V

    goto/16 :goto_1

    .line 224
    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v5, v5, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->setSelection(I)V

    goto/16 :goto_1

    :cond_4
    move v5, v6

    .line 227
    goto/16 :goto_2

    .line 230
    .restart local v2    # "x":I
    :cond_5
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v5, v5, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$800(Lorg/telegram/ui/Components/EmojiView;)[I

    move-result-object v5

    aget v5, v5, v4

    sub-int/2addr v5, v2

    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v7, v7, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView;->access$1000(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v7

    add-int/2addr v5, v7

    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v7, v8

    if-le v5, v7, :cond_1

    .line 231
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v5, v5, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$800(Lorg/telegram/ui/Components/EmojiView;)[I

    move-result-object v5

    aget v5, v5, v4

    sub-int/2addr v5, v2

    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v7, v7, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView;->access$1000(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v7

    add-int/2addr v5, v7

    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v7, v8

    sub-int/2addr v5, v7

    add-int/2addr v2, v5

    goto/16 :goto_3

    .line 236
    .restart local v3    # "xOffset":I
    .restart local v4    # "yOffset":I
    :cond_6
    const/high16 v5, 0x41b00000    # 22.0f

    goto/16 :goto_4

    .line 242
    .end local v1    # "color":Ljava/lang/String;
    .end local v2    # "x":I
    .end local v3    # "xOffset":I
    .end local v4    # "yOffset":I
    :cond_7
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v5, v5, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$1300(Lorg/telegram/ui/Components/EmojiView;)Landroid/support/v4/view/ViewPager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v5

    if-nez v5, :cond_8

    .line 243
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v5, v5, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$Listener;

    move-result-object v5

    invoke-interface {v5}, Lorg/telegram/ui/Components/EmojiView$Listener;->onClearEmojiRecent()V

    :cond_8
    move v6, v4

    .line 245
    goto/16 :goto_5

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x1b0f3f
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
