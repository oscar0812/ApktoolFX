.class Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;
.super Landroid/view/View;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmojiColorPickerView"
.end annotation


# instance fields
.field private arrowDrawable:Landroid/graphics/drawable/Drawable;

.field private arrowX:I

.field private backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private currentEmoji:Ljava/lang/String;

.field private rect:Landroid/graphics/RectF;

.field private rectPaint:Landroid/graphics/Paint;

.field private selection:I

.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 493
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    .line 494
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 467
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->rectPaint:Landroid/graphics/Paint;

    .line 468
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->rect:Landroid/graphics/RectF;

    .line 496
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 497
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    .line 498
    return-void
.end method


# virtual methods
.method public getEmoji()Ljava/lang/String;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->currentEmoji:Ljava/lang/String;

    return-object v0
.end method

.method public getSelection()I
    .locals 1

    .prologue
    .line 490
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->selection:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 502
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->getMeasuredWidth()I

    move-result v10

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_3

    const/high16 v6, 0x42700000    # 60.0f

    :goto_0
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v7, v8, v9, v10, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 503
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 505
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->arrowX:I

    const/high16 v8, 0x41100000    # 9.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int v8, v6, v8

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_4

    const/high16 v6, 0x425e0000    # 55.5f

    :goto_1
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    iget v6, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->arrowX:I

    const/high16 v10, 0x41100000    # 9.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int/2addr v10, v6

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_5

    const/high16 v6, 0x425e0000    # 55.5f

    :goto_2
    const/high16 v11, 0x41000000    # 8.0f

    add-float/2addr v6, v11

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v7, v8, v9, v10, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 506
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 508
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->currentEmoji:Ljava/lang/String;

    if-eqz v6, :cond_6

    .line 510
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_3
    const/4 v6, 0x6

    if-ge v0, v6, :cond_6

    .line 511
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->access$900(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v6

    mul-int/2addr v6, v0

    mul-int/lit8 v7, v0, 0x4

    add-int/lit8 v7, v7, 0x5

    int-to-float v7, v7

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int v4, v6, v7

    .line 512
    .local v4, "x":I
    const/high16 v6, 0x41100000    # 9.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    .line 513
    .local v5, "y":I
    iget v6, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->selection:I

    if-ne v6, v0, :cond_0

    .line 514
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->rect:Landroid/graphics/RectF;

    int-to-float v7, v4

    const/high16 v8, 0x40600000    # 3.5f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v8

    float-to-int v8, v8

    sub-int v8, v5, v8

    int-to-float v8, v8

    iget-object v9, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v9}, Lorg/telegram/ui/Components/EmojiView;->access$900(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v9

    add-int/2addr v9, v4

    int-to-float v9, v9

    iget-object v10, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v10}, Lorg/telegram/ui/Components/EmojiView;->access$900(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v10

    add-int/2addr v10, v5

    const/high16 v11, 0x40400000    # 3.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 515
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->rect:Landroid/graphics/RectF;

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x40800000    # 4.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->rectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 517
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->currentEmoji:Ljava/lang/String;

    .line 518
    .local v1, "code":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 520
    packed-switch v0, :pswitch_data_0

    .line 537
    const-string/jumbo v2, ""

    .line 539
    .local v2, "color":Ljava/lang/String;
    :goto_4
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/EmojiView;->access$1400(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 541
    .end local v2    # "color":Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Lorg/telegram/messenger/Emoji;->getEmojiBigDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 542
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_2

    .line 543
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->access$900(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v6

    add-int/2addr v6, v4

    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView;->access$900(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 544
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 510
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 502
    .end local v0    # "a":I
    .end local v1    # "code":Ljava/lang/String;
    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "x":I
    .end local v5    # "y":I
    :cond_3
    const/high16 v6, 0x42500000    # 52.0f

    goto/16 :goto_0

    .line 505
    :cond_4
    const/high16 v6, 0x423e0000    # 47.5f

    goto/16 :goto_1

    :cond_5
    const/high16 v6, 0x423e0000    # 47.5f

    goto/16 :goto_2

    .line 522
    .restart local v0    # "a":I
    .restart local v1    # "code":Ljava/lang/String;
    .restart local v4    # "x":I
    .restart local v5    # "y":I
    :pswitch_0
    const-string/jumbo v2, "\ud83c\udffb"

    .line 523
    .restart local v2    # "color":Ljava/lang/String;
    goto :goto_4

    .line 525
    .end local v2    # "color":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v2, "\ud83c\udffc"

    .line 526
    .restart local v2    # "color":Ljava/lang/String;
    goto :goto_4

    .line 528
    .end local v2    # "color":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v2, "\ud83c\udffd"

    .line 529
    .restart local v2    # "color":Ljava/lang/String;
    goto :goto_4

    .line 531
    .end local v2    # "color":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v2, "\ud83c\udffe"

    .line 532
    .restart local v2    # "color":Ljava/lang/String;
    goto :goto_4

    .line 534
    .end local v2    # "color":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v2, "\ud83c\udfff"

    .line 535
    .restart local v2    # "color":Ljava/lang/String;
    goto :goto_4

    .line 548
    .end local v0    # "a":I
    .end local v1    # "code":Ljava/lang/String;
    .end local v2    # "color":Ljava/lang/String;
    .end local v4    # "x":I
    .end local v5    # "y":I
    :cond_6
    return-void

    .line 520
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setEmoji(Ljava/lang/String;I)V
    .locals 2
    .param p1, "emoji"    # Ljava/lang/String;
    .param p2, "arrowPosition"    # I

    .prologue
    .line 471
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->currentEmoji:Ljava/lang/String;

    .line 472
    iput p2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->arrowX:I

    .line 473
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->rectPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x2f000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 474
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->invalidate()V

    .line 475
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 482
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->selection:I

    if-ne v0, p1, :cond_0

    .line 487
    :goto_0
    return-void

    .line 485
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->selection:I

    .line 486
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->invalidate()V

    goto :goto_0
.end method
