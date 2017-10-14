.class Lorg/telegram/ui/DialogsActivity$4;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field inputFieldHeight:I

.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lorg/telegram/ui/DialogsActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 352
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$4;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;)V

    .line 354
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/DialogsActivity$4;->inputFieldHeight:I

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 15
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 409
    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity$4;->getChildCount()I

    move-result v4

    .line 412
    .local v4, "count":I
    iget-object v13, p0, Lorg/telegram/ui/DialogsActivity$4;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v13}, Lorg/telegram/ui/DialogsActivity;->access$1600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v13

    if-eqz v13, :cond_0

    iget-object v13, p0, Lorg/telegram/ui/DialogsActivity$4;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v13}, Lorg/telegram/ui/DialogsActivity;->access$1600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getTag()Ljava/lang/Object;

    move-result-object v10

    .line 413
    .local v10, "tag":Ljava/lang/Object;
    :goto_0
    if-eqz v10, :cond_2

    const/4 v13, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 414
    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity$4;->getKeyboardHeight()I

    move-result v13

    const/high16 v14, 0x41a00000    # 20.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    if-gt v13, v14, :cond_1

    sget-boolean v13, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v13, :cond_1

    iget-object v13, p0, Lorg/telegram/ui/DialogsActivity$4;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v13}, Lorg/telegram/ui/DialogsActivity;->access$1600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiPadding()I

    move-result v9

    .line 418
    .local v9, "paddingBottom":I
    :goto_1
    invoke-virtual {p0, v9}, Lorg/telegram/ui/DialogsActivity$4;->setBottomClip(I)V

    .line 420
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v4, :cond_7

    .line 421
    invoke-virtual {p0, v7}, Lorg/telegram/ui/DialogsActivity$4;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 422
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_3

    .line 420
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 412
    .end local v1    # "child":Landroid/view/View;
    .end local v7    # "i":I
    .end local v9    # "paddingBottom":I
    .end local v10    # "tag":Ljava/lang/Object;
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 414
    .restart local v10    # "tag":Ljava/lang/Object;
    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .line 416
    :cond_2
    const/4 v9, 0x0

    .restart local v9    # "paddingBottom":I
    goto :goto_1

    .line 425
    .restart local v1    # "child":Landroid/view/View;
    .restart local v7    # "i":I
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 427
    .local v8, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    .line 428
    .local v12, "width":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 433
    .local v6, "height":I
    iget v5, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 434
    .local v5, "gravity":I
    const/4 v13, -0x1

    if-ne v5, v13, :cond_4

    .line 435
    const/16 v5, 0x33

    .line 438
    :cond_4
    and-int/lit8 v0, v5, 0x7

    .line 439
    .local v0, "absoluteGravity":I
    and-int/lit8 v11, v5, 0x70

    .line 441
    .local v11, "verticalGravity":I
    and-int/lit8 v13, v0, 0x7

    sparse-switch v13, :sswitch_data_0

    .line 450
    iget v2, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 453
    .local v2, "childLeft":I
    :goto_4
    sparse-switch v11, :sswitch_data_1

    .line 464
    iget v3, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 467
    .local v3, "childTop":I
    :goto_5
    iget-object v13, p0, Lorg/telegram/ui/DialogsActivity$4;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v13}, Lorg/telegram/ui/DialogsActivity;->access$1600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v13

    if-eqz v13, :cond_5

    iget-object v13, p0, Lorg/telegram/ui/DialogsActivity$4;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v13}, Lorg/telegram/ui/DialogsActivity;->access$1600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v13

    invoke-virtual {v13, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupView(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 468
    sget-boolean v13, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-eqz v13, :cond_6

    .line 469
    iget-object v13, p0, Lorg/telegram/ui/DialogsActivity$4;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v13}, Lorg/telegram/ui/DialogsActivity;->access$1600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getTop()I

    move-result v13

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v13, v14

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    add-int v3, v13, v14

    .line 474
    :cond_5
    :goto_6
    add-int v13, v2, v12

    add-int v14, v3, v6

    invoke-virtual {v1, v2, v3, v13, v14}, Landroid/view/View;->layout(IIII)V

    goto :goto_3

    .line 443
    .end local v2    # "childLeft":I
    .end local v3    # "childTop":I
    :sswitch_0
    sub-int v13, p4, p2

    sub-int/2addr v13, v12

    div-int/lit8 v13, v13, 0x2

    iget v14, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v13, v14

    iget v14, v8, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v2, v13, v14

    .line 444
    .restart local v2    # "childLeft":I
    goto :goto_4

    .line 446
    .end local v2    # "childLeft":I
    :sswitch_1
    sub-int v13, p4, v12

    iget v14, v8, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v2, v13, v14

    .line 447
    .restart local v2    # "childLeft":I
    goto :goto_4

    .line 455
    :sswitch_2
    iget v13, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity$4;->getPaddingTop()I

    move-result v14

    add-int v3, v13, v14

    .line 456
    .restart local v3    # "childTop":I
    goto :goto_5

    .line 458
    .end local v3    # "childTop":I
    :sswitch_3
    sub-int v13, p5, v9

    sub-int v13, v13, p3

    sub-int/2addr v13, v6

    div-int/lit8 v13, v13, 0x2

    iget v14, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v13, v14

    iget v14, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v3, v13, v14

    .line 459
    .restart local v3    # "childTop":I
    goto :goto_5

    .line 461
    .end local v3    # "childTop":I
    :sswitch_4
    sub-int v13, p5, v9

    sub-int v13, v13, p3

    sub-int/2addr v13, v6

    iget v14, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v3, v13, v14

    .line 462
    .restart local v3    # "childTop":I
    goto :goto_5

    .line 471
    :cond_6
    iget-object v13, p0, Lorg/telegram/ui/DialogsActivity$4;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v13}, Lorg/telegram/ui/DialogsActivity;->access$1600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getBottom()I

    move-result v3

    goto :goto_6

    .line 477
    .end local v0    # "absoluteGravity":I
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childLeft":I
    .end local v3    # "childTop":I
    .end local v5    # "gravity":I
    .end local v6    # "height":I
    .end local v8    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v11    # "verticalGravity":I
    .end local v12    # "width":I
    :cond_7
    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity$4;->notifyHeightChanged()V

    .line 478
    return-void

    .line 441
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch

    .line 453
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
    .line 358
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 359
    .local v13, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 361
    .local v9, "heightSize":I
    invoke-virtual {p0, v13, v9}, Lorg/telegram/ui/DialogsActivity$4;->setMeasuredDimension(II)V

    .line 362
    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity$4;->getPaddingTop()I

    move-result v0

    sub-int/2addr v9, v0

    .line 364
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$4;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/DialogsActivity$4;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 366
    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity$4;->getKeyboardHeight()I

    move-result v11

    .line 367
    .local v11, "keyboardSize":I
    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity$4;->getChildCount()I

    move-result v6

    .line 369
    .local v6, "childCount":I
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$4;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 370
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$4;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/DialogsActivity$4;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 371
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$4;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getTag()Ljava/lang/Object;

    move-result-object v12

    .line 372
    .local v12, "tag":Ljava/lang/Object;
    if-eqz v12, :cond_3

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 373
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    if-gt v11, v0, :cond_0

    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v0, :cond_0

    .line 374
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$4;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiPadding()I

    move-result v0

    sub-int/2addr v9, v0

    .line 376
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$4;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/DialogsActivity$4;->inputFieldHeight:I

    .line 382
    .end local v12    # "tag":Ljava/lang/Object;
    :cond_1
    :goto_0
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v6, :cond_a

    .line 383
    invoke-virtual {p0, v10}, Lorg/telegram/ui/DialogsActivity$4;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 384
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$4;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v0

    if-eq v1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$4;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    if-ne v1, v0, :cond_4

    .line 382
    :cond_2
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 378
    .end local v1    # "child":Landroid/view/View;
    .end local v10    # "i":I
    .restart local v12    # "tag":Ljava/lang/Object;
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/DialogsActivity$4;->inputFieldHeight:I

    goto :goto_0

    .line 387
    .end local v12    # "tag":Ljava/lang/Object;
    .restart local v1    # "child":Landroid/view/View;
    .restart local v10    # "i":I
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$4;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    if-eq v1, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$4;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object v0

    if-eq v1, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$4;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v0

    if-ne v1, v0, :cond_6

    .line 388
    :cond_5
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v13, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 389
    .local v8, "contentWidthSpec":I
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget v2, p0, Lorg/telegram/ui/DialogsActivity$4;->inputFieldHeight:I

    sub-int v2, v9, v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 390
    .local v7, "contentHeightSpec":I
    invoke-virtual {v1, v8, v7}, Landroid/view/View;->measure(II)V

    goto :goto_2

    .line 391
    .end local v7    # "contentHeightSpec":I
    .end local v8    # "contentWidthSpec":I
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$4;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$4;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 392
    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-eqz v0, :cond_8

    .line 393
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 394
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v13, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/high16 v2, 0x43a00000    # 320.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/DialogsActivity$4;->inputFieldHeight:I

    sub-int v3, v9, v3

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity$4;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->measure(II)V

    goto/16 :goto_2

    .line 396
    :cond_7
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v13, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v2, p0, Lorg/telegram/ui/DialogsActivity$4;->inputFieldHeight:I

    sub-int v2, v9, v2

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity$4;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->measure(II)V

    goto/16 :goto_2

    .line 399
    :cond_8
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v13, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->measure(II)V

    goto/16 :goto_2

    .line 402
    :cond_9
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/DialogsActivity$4;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto/16 :goto_2

    .line 405
    .end local v1    # "child":Landroid/view/View;
    :cond_a
    return-void
.end method
