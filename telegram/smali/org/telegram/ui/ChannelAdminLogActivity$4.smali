.class Lorg/telegram/ui/ChannelAdminLogActivity$4;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.source "ChannelAdminLogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelAdminLogActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelAdminLogActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelAdminLogActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChannelAdminLogActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 496
    iput-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$4;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 509
    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 510
    .local v0, "result":Z
    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$4;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$2000(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$4;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$2100(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 511
    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$4;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$2400(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v2

    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$4;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$2200(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$4;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$2300(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getMeasuredHeight()I

    move-result v1

    :goto_0
    invoke-virtual {v2, p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->drawHeaderShadow(Landroid/graphics/Canvas;I)V

    .line 513
    :cond_0
    return v0

    .line 511
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isActionBarVisible()Z
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$4;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$2500(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    .line 500
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onAttachedToWindow()V

    .line 501
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 502
    .local v0, "messageObject":Lorg/telegram/messenger/MessageObject;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$4;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$1600(Lorg/telegram/ui/ChannelAdminLogActivity;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 503
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$4;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$1700(Lorg/telegram/ui/ChannelAdminLogActivity;Z)Landroid/view/TextureView;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ChannelAdminLogActivity$4;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$1800(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ChannelAdminLogActivity$4;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$1900(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroid/widget/FrameLayout;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/messenger/MediaController;->setTextureView(Landroid/view/TextureView;Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;Landroid/widget/FrameLayout;Z)V

    .line 505
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 561
    invoke-virtual {p0}, Lorg/telegram/ui/ChannelAdminLogActivity$4;->getChildCount()I

    move-result v4

    .line 563
    .local v4, "count":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v4, :cond_6

    .line 564
    invoke-virtual {p0, v7}, Lorg/telegram/ui/ChannelAdminLogActivity$4;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 565
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_0

    .line 563
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 568
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 570
    .local v8, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 571
    .local v10, "width":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 576
    .local v6, "height":I
    iget v5, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 577
    .local v5, "gravity":I
    const/4 v11, -0x1

    if-ne v5, v11, :cond_1

    .line 578
    const/16 v5, 0x33

    .line 581
    :cond_1
    and-int/lit8 v0, v5, 0x7

    .line 582
    .local v0, "absoluteGravity":I
    and-int/lit8 v9, v5, 0x70

    .line 584
    .local v9, "verticalGravity":I
    and-int/lit8 v11, v0, 0x7

    sparse-switch v11, :sswitch_data_0

    .line 593
    iget v2, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 596
    .local v2, "childLeft":I
    :goto_2
    sparse-switch v9, :sswitch_data_1

    .line 610
    iget v3, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 613
    .local v3, "childTop":I
    :cond_2
    :goto_3
    iget-object v11, p0, Lorg/telegram/ui/ChannelAdminLogActivity$4;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$700(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroid/widget/FrameLayout;

    move-result-object v11

    if-ne v1, v11, :cond_5

    .line 614
    const/high16 v11, 0x41c00000    # 24.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    iget-object v11, p0, Lorg/telegram/ui/ChannelAdminLogActivity$4;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$3300(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/ui/ActionBar/ActionBar;->getVisibility()I

    move-result v11

    if-nez v11, :cond_4

    iget-object v11, p0, Lorg/telegram/ui/ChannelAdminLogActivity$4;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$3400(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/ui/ActionBar/ActionBar;->getMeasuredHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    :goto_4
    sub-int v11, v12, v11

    sub-int/2addr v3, v11

    .line 618
    :cond_3
    :goto_5
    add-int v11, v2, v10

    add-int v12, v3, v6

    invoke-virtual {v1, v2, v3, v11, v12}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 586
    .end local v2    # "childLeft":I
    .end local v3    # "childTop":I
    :sswitch_0
    sub-int v11, p4, p2

    sub-int/2addr v11, v10

    div-int/lit8 v11, v11, 0x2

    iget v12, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v11, v12

    iget v12, v8, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v2, v11, v12

    .line 587
    .restart local v2    # "childLeft":I
    goto :goto_2

    .line 589
    .end local v2    # "childLeft":I
    :sswitch_1
    sub-int v11, p4, v10

    iget v12, v8, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v2, v11, v12

    .line 590
    .restart local v2    # "childLeft":I
    goto :goto_2

    .line 598
    :sswitch_2
    iget v11, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lorg/telegram/ui/ChannelAdminLogActivity$4;->getPaddingTop()I

    move-result v12

    add-int v3, v11, v12

    .line 599
    .restart local v3    # "childTop":I
    iget-object v11, p0, Lorg/telegram/ui/ChannelAdminLogActivity$4;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$3000(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v11

    if-eq v1, v11, :cond_2

    iget-object v11, p0, Lorg/telegram/ui/ChannelAdminLogActivity$4;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$3100(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/ui/ActionBar/ActionBar;->getVisibility()I

    move-result v11

    if-nez v11, :cond_2

    .line 600
    iget-object v11, p0, Lorg/telegram/ui/ChannelAdminLogActivity$4;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$3200(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/ui/ActionBar/ActionBar;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v3, v11

    goto :goto_3

    .line 604
    .end local v3    # "childTop":I
    :sswitch_3
    sub-int v11, p5, p3

    sub-int/2addr v11, v6

    div-int/lit8 v11, v11, 0x2

    iget v12, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v11, v12

    iget v12, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v3, v11, v12

    .line 605
    .restart local v3    # "childTop":I
    goto :goto_3

    .line 607
    .end local v3    # "childTop":I
    :sswitch_4
    sub-int v11, p5, p3

    sub-int/2addr v11, v6

    iget v12, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v3, v11, v12

    .line 608
    .restart local v3    # "childTop":I
    goto/16 :goto_3

    .line 614
    :cond_4
    const/4 v11, 0x0

    goto :goto_4

    .line 615
    :cond_5
    iget-object v11, p0, Lorg/telegram/ui/ChannelAdminLogActivity$4;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$3500(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v11

    if-ne v1, v11, :cond_3

    .line 616
    invoke-virtual {p0}, Lorg/telegram/ui/ChannelAdminLogActivity$4;->getPaddingTop()I

    move-result v11

    sub-int/2addr v3, v11

    goto :goto_5

    .line 621
    .end local v0    # "absoluteGravity":I
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childLeft":I
    .end local v3    # "childTop":I
    .end local v5    # "gravity":I
    .end local v6    # "height":I
    .end local v8    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v9    # "verticalGravity":I
    .end local v10    # "width":I
    :cond_6
    iget-object v11, p0, Lorg/telegram/ui/ChannelAdminLogActivity$4;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$3600(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    .line 622
    invoke-virtual {p0}, Lorg/telegram/ui/ChannelAdminLogActivity$4;->notifyHeightChanged()V

    .line 623
    return-void

    .line 584
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch

    .line 596
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x30 -> :sswitch_2
        0x50 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 14
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 524
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 525
    .local v13, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 527
    .local v10, "heightSize":I
    invoke-virtual {p0, v13, v10}, Lorg/telegram/ui/ChannelAdminLogActivity$4;->setMeasuredDimension(II)V

    .line 528
    invoke-virtual {p0}, Lorg/telegram/ui/ChannelAdminLogActivity$4;->getPaddingTop()I

    move-result v0

    sub-int/2addr v10, v0

    .line 530
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$4;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$2600(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ChannelAdminLogActivity$4;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 531
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$4;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$2700(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getMeasuredHeight()I

    move-result v6

    .line 532
    .local v6, "actionBarHeight":I
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$4;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$2800(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 533
    sub-int/2addr v10, v6

    .line 536
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ChannelAdminLogActivity$4;->getKeyboardHeight()I

    move-result v12

    .line 538
    .local v12, "keyboardSize":I
    invoke-virtual {p0}, Lorg/telegram/ui/ChannelAdminLogActivity$4;->getChildCount()I

    move-result v7

    .line 540
    .local v7, "childCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v7, :cond_6

    .line 541
    invoke-virtual {p0, v11}, Lorg/telegram/ui/ChannelAdminLogActivity$4;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 542
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$4;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$2900(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    if-ne v1, v0, :cond_2

    .line 540
    :cond_1
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 545
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$4;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$800(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    if-eq v1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$4;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$600(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne v1, v0, :cond_4

    .line 546
    :cond_3
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v13, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 547
    .local v9, "contentWidthSpec":I
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v2, 0x42480000    # 50.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v2, v10, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 548
    .local v8, "contentHeightSpec":I
    invoke-virtual {v1, v9, v8}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 549
    .end local v8    # "contentHeightSpec":I
    .end local v9    # "contentWidthSpec":I
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$4;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$700(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne v1, v0, :cond_5

    .line 550
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v13, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 551
    .restart local v9    # "contentWidthSpec":I
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v10, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 552
    .restart local v8    # "contentHeightSpec":I
    invoke-virtual {v1, v9, v8}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 554
    .end local v8    # "contentHeightSpec":I
    .end local v9    # "contentWidthSpec":I
    :cond_5
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ChannelAdminLogActivity$4;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_1

    .line 557
    .end local v1    # "child":Landroid/view/View;
    :cond_6
    return-void
.end method
