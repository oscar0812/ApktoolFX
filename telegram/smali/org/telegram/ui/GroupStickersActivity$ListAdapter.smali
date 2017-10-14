.class Lorg/telegram/ui/GroupStickersActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "GroupStickersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/GroupStickersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/GroupStickersActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/GroupStickersActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 645
    iput-object p1, p0, Lorg/telegram/ui/GroupStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 646
    iput-object p2, p0, Lorg/telegram/ui/GroupStickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 647
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$2300(Lorg/telegram/ui/GroupStickersActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    const/4 v0, 0x0

    .line 757
    iget-object v1, p0, Lorg/telegram/ui/GroupStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupStickersActivity;->access$1200(Lorg/telegram/ui/GroupStickersActivity;)I

    move-result v1

    if-lt p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/GroupStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupStickersActivity;->access$1300(Lorg/telegram/ui/GroupStickersActivity;)I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 770
    :cond_0
    :goto_0
    return v0

    .line 759
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/GroupStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupStickersActivity;->access$2400(Lorg/telegram/ui/GroupStickersActivity;)I

    move-result v1

    if-ne p1, v1, :cond_2

    .line 760
    const/4 v0, 0x1

    goto :goto_0

    .line 761
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/GroupStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupStickersActivity;->access$2600(Lorg/telegram/ui/GroupStickersActivity;)I

    move-result v1

    if-ne p1, v1, :cond_3

    .line 762
    const/4 v0, 0x2

    goto :goto_0

    .line 763
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/GroupStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupStickersActivity;->access$2700(Lorg/telegram/ui/GroupStickersActivity;)I

    move-result v1

    if-ne p1, v1, :cond_4

    .line 764
    const/4 v0, 0x3

    goto :goto_0

    .line 765
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/GroupStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupStickersActivity;->access$2800(Lorg/telegram/ui/GroupStickersActivity;)I

    move-result v1

    if-ne p1, v1, :cond_5

    .line 766
    const/4 v0, 0x4

    goto :goto_0

    .line 767
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/GroupStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupStickersActivity;->access$1100(Lorg/telegram/ui/GroupStickersActivity;)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 768
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 722
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    .line 723
    .local v0, "type":I
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 18
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 656
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v14

    packed-switch v14, :pswitch_data_0

    .line 718
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 658
    :pswitch_1
    const/4 v14, 0x0

    invoke-static {v14}, Lorg/telegram/messenger/query/StickersQuery;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 659
    .local v2, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/GroupStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v14}, Lorg/telegram/ui/GroupStickersActivity;->access$1200(Lorg/telegram/ui/GroupStickersActivity;)I

    move-result v14

    sub-int v9, p2, v14

    .line 660
    .local v9, "row":I
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v4, Lorg/telegram/ui/Cells/StickerSetCell;

    .line 661
    .local v4, "cell":Lorg/telegram/ui/Cells/StickerSetCell;
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 662
    .local v10, "set":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-eq v9, v15, :cond_1

    const/4 v15, 0x1

    :goto_1
    invoke-virtual {v4, v14, v15}, Lorg/telegram/ui/Cells/StickerSetCell;->setStickersSet(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Z)V

    .line 664
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/GroupStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v14}, Lorg/telegram/ui/GroupStickersActivity;->access$400(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 665
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/GroupStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v14}, Lorg/telegram/ui/GroupStickersActivity;->access$400(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v14

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v6, v14, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    .line 671
    .local v6, "id":J
    :goto_2
    iget-object v14, v10, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    cmp-long v14, v14, v6

    if-nez v14, :cond_4

    const/4 v14, 0x1

    :goto_3
    invoke-virtual {v4, v14}, Lorg/telegram/ui/Cells/StickerSetCell;->setChecked(Z)V

    goto :goto_0

    .line 662
    .end local v6    # "id":J
    :cond_1
    const/4 v15, 0x0

    goto :goto_1

    .line 666
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/GroupStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v14}, Lorg/telegram/ui/GroupStickersActivity;->access$1900(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v14

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/GroupStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v14}, Lorg/telegram/ui/GroupStickersActivity;->access$1900(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v14

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$ChatFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v14, :cond_3

    .line 667
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/GroupStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v14}, Lorg/telegram/ui/GroupStickersActivity;->access$1900(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v14

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$ChatFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v6, v14, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    .restart local v6    # "id":J
    goto :goto_2

    .line 669
    .end local v6    # "id":J
    :cond_3
    const-wide/16 v6, 0x0

    .restart local v6    # "id":J
    goto :goto_2

    .line 671
    :cond_4
    const/4 v14, 0x0

    goto :goto_3

    .line 675
    .end local v2    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    .end local v4    # "cell":Lorg/telegram/ui/Cells/StickerSetCell;
    .end local v6    # "id":J
    .end local v9    # "row":I
    .end local v10    # "set":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/GroupStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v14}, Lorg/telegram/ui/GroupStickersActivity;->access$2400(Lorg/telegram/ui/GroupStickersActivity;)I

    move-result v14

    move/from16 v0, p2

    if-ne v0, v14, :cond_0

    .line 676
    const-string/jumbo v14, "ChooseStickerSetMy"

    const v15, 0x7f07016a

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 677
    .local v13, "text":Ljava/lang/String;
    const-string/jumbo v3, "@stickers"

    .line 678
    .local v3, "botName":Ljava/lang/String;
    invoke-virtual {v13, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 679
    .local v8, "index":I
    const/4 v14, -0x1

    if-eq v8, v14, :cond_5

    .line 681
    :try_start_0
    new-instance v12, Landroid/text/SpannableStringBuilder;

    invoke-direct {v12, v13}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 682
    .local v12, "stringBuilder":Landroid/text/SpannableStringBuilder;
    new-instance v11, Lorg/telegram/ui/GroupStickersActivity$ListAdapter$1;

    const-string/jumbo v14, "@stickers"

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v14}, Lorg/telegram/ui/GroupStickersActivity$ListAdapter$1;-><init>(Lorg/telegram/ui/GroupStickersActivity$ListAdapter;Ljava/lang/String;)V

    .line 688
    .local v11, "spanNoUnderline":Lorg/telegram/ui/Components/URLSpanNoUnderline;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v14, v8

    const/16 v15, 0x12

    invoke-virtual {v12, v11, v8, v14, v15}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 689
    move-object/from16 v0, p1

    iget-object v14, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v14, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v14, v12}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 690
    .end local v11    # "spanNoUnderline":Lorg/telegram/ui/Components/URLSpanNoUnderline;
    .end local v12    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    :catch_0
    move-exception v5

    .line 691
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 692
    move-object/from16 v0, p1

    iget-object v14, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v14, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v14, v13}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 695
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_5
    move-object/from16 v0, p1

    iget-object v14, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v14, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v14, v13}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 701
    .end local v3    # "botName":Ljava/lang/String;
    .end local v8    # "index":I
    .end local v13    # "text":Ljava/lang/String;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v14, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v14, Lorg/telegram/ui/Cells/HeaderCell;

    const-string/jumbo v15, "ChooseFromYourStickers"

    const v16, 0x7f070168

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 705
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v4, Lorg/telegram/ui/Cells/StickerSetCell;

    .line 706
    .restart local v4    # "cell":Lorg/telegram/ui/Cells/StickerSetCell;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/GroupStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v14}, Lorg/telegram/ui/GroupStickersActivity;->access$400(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v14

    if-eqz v14, :cond_6

    .line 707
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/GroupStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v14}, Lorg/telegram/ui/GroupStickersActivity;->access$400(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Lorg/telegram/ui/Cells/StickerSetCell;->setStickersSet(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Z)V

    goto/16 :goto_0

    .line 709
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/GroupStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v14}, Lorg/telegram/ui/GroupStickersActivity;->access$100(Lorg/telegram/ui/GroupStickersActivity;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 710
    const-string/jumbo v14, "Loading"

    const v15, 0x7f07035a

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v4, v14, v15, v0, v1}, Lorg/telegram/ui/Cells/StickerSetCell;->setText(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 712
    :cond_7
    const-string/jumbo v14, "ChooseStickerSetNotFound"

    const v15, 0x7f07016b

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "ChooseStickerSetNotFoundInfo"

    const v16, 0x7f07016c

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    const v16, 0x7f0200d7

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v4, v14, v15, v0, v1}, Lorg/telegram/ui/Cells/StickerSetCell;->setText(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 656
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const v3, 0x7f020085

    .line 728
    const/4 v0, 0x0

    .line 729
    .local v0, "view":Landroid/view/View;
    packed-switch p2, :pswitch_data_0

    .line 751
    :goto_0
    new-instance v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 752
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 732
    :pswitch_0
    new-instance v0, Lorg/telegram/ui/Cells/StickerSetCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v2, p0, Lorg/telegram/ui/GroupStickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    if-nez p2, :cond_0

    const/4 v1, 0x3

    :goto_1
    invoke-direct {v0, v2, v1}, Lorg/telegram/ui/Cells/StickerSetCell;-><init>(Landroid/content/Context;I)V

    .line 733
    .restart local v0    # "view":Landroid/view/View;
    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 732
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    const/4 v1, 0x2

    goto :goto_1

    .line 736
    .restart local v0    # "view":Landroid/view/View;
    :pswitch_1
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/GroupStickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 737
    .restart local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/GroupStickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "windowBackgroundGrayShadow"

    invoke-static {v1, v3, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 740
    :pswitch_2
    iget-object v1, p0, Lorg/telegram/ui/GroupStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupStickersActivity;->access$2500(Lorg/telegram/ui/GroupStickersActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 741
    goto :goto_0

    .line 743
    :pswitch_3
    new-instance v0, Lorg/telegram/ui/Cells/ShadowSectionCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/GroupStickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 744
    .restart local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/GroupStickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "windowBackgroundGrayShadow"

    invoke-static {v1, v3, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 747
    :pswitch_4
    new-instance v0, Lorg/telegram/ui/Cells/HeaderCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/GroupStickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 748
    .restart local v0    # "view":Landroid/view/View;
    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 729
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method
