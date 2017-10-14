.class Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ChannelRightsEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChannelRightsEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/ChannelRightsEditActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ChannelRightsEditActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 502
    iput-object p1, p0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 503
    iput-object p2, p0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 504
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$2600(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 677
    if-nez p1, :cond_1

    .line 678
    const/4 v0, 0x0

    .line 690
    :cond_0
    :goto_0
    return v0

    .line 679
    :cond_1
    if-eq p1, v0, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$2900(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v2

    if-eq p1, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$3000(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v2

    if-ne p1, v2, :cond_3

    .line 680
    :cond_2
    const/4 v0, 0x5

    goto :goto_0

    .line 681
    :cond_3
    if-ne p1, v1, :cond_4

    .line 682
    const/4 v0, 0x3

    goto :goto_0

    .line 683
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$1100(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v2

    if-eq p1, v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$1200(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v2

    if-eq p1, v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$1300(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v2

    if-eq p1, v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$1400(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v2

    if-eq p1, v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$1500(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v2

    if-eq p1, v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    .line 684
    invoke-static {v2}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$1600(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v2

    if-eq p1, v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$1700(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v2

    if-eq p1, v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$1800(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v2

    if-eq p1, v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    .line 685
    invoke-static {v2}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$1900(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v2

    if-eq p1, v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$2000(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v2

    if-eq p1, v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$2100(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v2

    if-eq p1, v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$2200(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v2

    if-eq p1, v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$2300(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v2

    if-ne p1, v2, :cond_6

    .line 686
    :cond_5
    const/4 v0, 0x4

    goto/16 :goto_0

    .line 687
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$2700(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v2

    if-eq p1, v2, :cond_0

    move v0, v1

    .line 690
    goto/16 :goto_0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 5
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 508
    iget-object v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$700(Lorg/telegram/ui/ChannelRightsEditActivity;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 532
    :goto_0
    return v3

    .line 511
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    .line 512
    .local v1, "type":I
    iget-object v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$000(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v4

    if-nez v4, :cond_8

    const/4 v4, 0x4

    if-ne v1, v4, :cond_8

    .line 513
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 514
    .local v0, "position":I
    iget-object v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$1100(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v4

    if-ne v0, v4, :cond_1

    .line 515
    iget-object v2, p0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$2500(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-result-object v2

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->change_info:Z

    goto :goto_0

    .line 516
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$1200(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v4

    if-ne v0, v4, :cond_2

    .line 517
    iget-object v2, p0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$2500(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-result-object v2

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->post_messages:Z

    goto :goto_0

    .line 518
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$1300(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v4

    if-ne v0, v4, :cond_3

    .line 519
    iget-object v2, p0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$2500(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-result-object v2

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->edit_messages:Z

    goto :goto_0

    .line 520
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$1400(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v4

    if-ne v0, v4, :cond_4

    .line 521
    iget-object v2, p0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$2500(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-result-object v2

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->delete_messages:Z

    goto :goto_0

    .line 522
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$1500(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v4

    if-ne v0, v4, :cond_5

    .line 523
    iget-object v2, p0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$2500(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-result-object v2

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->add_admins:Z

    goto :goto_0

    .line 524
    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$1600(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v4

    if-ne v0, v4, :cond_6

    .line 525
    iget-object v2, p0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$2500(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-result-object v2

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->ban_users:Z

    goto :goto_0

    .line 526
    :cond_6
    iget-object v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$1700(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v4

    if-ne v0, v4, :cond_7

    .line 527
    iget-object v2, p0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$2500(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-result-object v2

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->invite_users:Z

    goto/16 :goto_0

    .line 528
    :cond_7
    iget-object v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$1800(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v4

    if-ne v0, v4, :cond_8

    .line 529
    iget-object v2, p0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$2500(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-result-object v2

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->pin_messages:Z

    goto/16 :goto_0

    .line 532
    .end local v0    # "position":I
    :cond_8
    const/4 v4, 0x3

    if-eq v1, v4, :cond_9

    if-eq v1, v2, :cond_9

    const/4 v4, 0x5

    if-eq v1, v4, :cond_9

    :goto_1
    move v3, v2

    goto/16 :goto_0

    :cond_9
    move v2, v3

    goto :goto_1
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 16
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 574
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 576
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v7, Lorg/telegram/ui/Cells/UserCell;

    .line 577
    .local v7, "userCell":Lorg/telegram/ui/Cells/UserCell;
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$400(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v7, v9, v10, v11, v12}, Lorg/telegram/ui/Cells/UserCell;->setData(Lorg/telegram/tgnet/TLObject;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 580
    .end local v7    # "userCell":Lorg/telegram/ui/Cells/UserCell;
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 581
    .local v5, "privacyCell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$2700(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v9

    move/from16 v0, p2

    if-ne v0, v9, :cond_0

    .line 582
    const-string/jumbo v9, "EditAdminCantEdit"

    const v10, 0x7f0701fa

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 586
    .end local v5    # "privacyCell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 587
    .local v2, "actionCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$800(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v9

    move/from16 v0, p2

    if-ne v0, v9, :cond_2

    .line 588
    const-string/jumbo v9, "windowBackgroundWhiteRedText3"

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v9}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 589
    const-string/jumbo v9, "windowBackgroundWhiteRedText3"

    invoke-virtual {v2, v9}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 590
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$000(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v9

    if-nez v9, :cond_1

    .line 591
    const-string/jumbo v9, "EditAdminRemoveAdmin"

    const v10, 0x7f070203

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto :goto_0

    .line 592
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$000(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 593
    const-string/jumbo v9, "UserRestrictionsBlock"

    const v10, 0x7f070610

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 595
    :cond_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$900(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v9

    move/from16 v0, p2

    if-ne v0, v9, :cond_0

    .line 596
    const-string/jumbo v9, "windowBackgroundWhiteBlackText"

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v9}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 597
    const-string/jumbo v9, "windowBackgroundWhiteBlackText"

    invoke-virtual {v2, v9}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 599
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v9

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->until_date:I

    if-eqz v9, :cond_3

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v9

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->until_date:I

    int-to-long v10, v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    sub-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/32 v12, 0x12cc0300

    cmp-long v9, v10, v12

    if-lez v9, :cond_4

    .line 600
    :cond_3
    const-string/jumbo v9, "UserRestrictionsUntilForever"

    const v10, 0x7f070619

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 604
    .local v8, "value":Ljava/lang/String;
    :goto_1
    const-string/jumbo v9, "UserRestrictionsUntil"

    const v10, 0x7f070618

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v8, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 602
    .end local v8    # "value":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v9

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->until_date:I

    int-to-long v10, v9

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->formatDateForBan(J)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "value":Ljava/lang/String;
    goto :goto_1

    .line 608
    .end local v2    # "actionCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    .end local v8    # "value":Ljava/lang/String;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v4, Lorg/telegram/ui/Cells/HeaderCell;

    .line 609
    .local v4, "headerCell":Lorg/telegram/ui/Cells/HeaderCell;
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$000(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v9

    if-nez v9, :cond_5

    .line 610
    const-string/jumbo v9, "EditAdminWhatCanDo"

    const v10, 0x7f070204

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 611
    :cond_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$000(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 612
    const-string/jumbo v9, "UserRestrictionsCanDo"

    const v10, 0x7f070612

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 616
    .end local v4    # "headerCell":Lorg/telegram/ui/Cells/HeaderCell;
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/TextCheckCell2;

    .line 617
    .local v3, "checkCell":Lorg/telegram/ui/Cells/TextCheckCell2;
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$1100(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v9

    move/from16 v0, p2

    if-ne v0, v9, :cond_9

    .line 618
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$100(Lorg/telegram/ui/ChannelRightsEditActivity;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 619
    const-string/jumbo v9, "EditAdminChangeGroupInfo"

    const v10, 0x7f0701fc

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v10}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$200(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-result-object v10

    iget-boolean v10, v10, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->change_info:Z

    const/4 v11, 0x1

    invoke-virtual {v3, v9, v10, v11}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/String;ZZ)V

    .line 656
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$2100(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v9

    move/from16 v0, p2

    if-eq v0, v9, :cond_7

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$2200(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v9

    move/from16 v0, p2

    if-eq v0, v9, :cond_7

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$2300(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v9

    move/from16 v0, p2

    if-ne v0, v9, :cond_1d

    .line 657
    :cond_7
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v9

    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_messages:Z

    if-nez v9, :cond_1c

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v9

    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->view_messages:Z

    if-nez v9, :cond_1c

    const/4 v9, 0x1

    :goto_3
    invoke-virtual {v3, v9}, Lorg/telegram/ui/Cells/TextCheckCell2;->setEnabled(Z)V

    goto/16 :goto_0

    .line 621
    :cond_8
    const-string/jumbo v9, "EditAdminChangeChannelInfo"

    const v10, 0x7f0701fb

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v10}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$200(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-result-object v10

    iget-boolean v10, v10, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->change_info:Z

    const/4 v11, 0x1

    invoke-virtual {v3, v9, v10, v11}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto :goto_2

    .line 623
    :cond_9
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$1200(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v9

    move/from16 v0, p2

    if-ne v0, v9, :cond_a

    .line 624
    const-string/jumbo v9, "EditAdminPostMessages"

    const v10, 0x7f070201

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v10}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$200(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-result-object v10

    iget-boolean v10, v10, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->post_messages:Z

    const/4 v11, 0x1

    invoke-virtual {v3, v9, v10, v11}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto :goto_2

    .line 625
    :cond_a
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$1300(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v9

    move/from16 v0, p2

    if-ne v0, v9, :cond_b

    .line 626
    const-string/jumbo v9, "EditAdminEditMessages"

    const v10, 0x7f0701fe

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v10}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$200(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-result-object v10

    iget-boolean v10, v10, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->edit_messages:Z

    const/4 v11, 0x1

    invoke-virtual {v3, v9, v10, v11}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_2

    .line 627
    :cond_b
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$1400(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v9

    move/from16 v0, p2

    if-ne v0, v9, :cond_d

    .line 628
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$100(Lorg/telegram/ui/ChannelRightsEditActivity;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 629
    const-string/jumbo v9, "EditAdminGroupDeleteMessages"

    const v10, 0x7f0701ff

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v10}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$200(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-result-object v10

    iget-boolean v10, v10, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->delete_messages:Z

    const/4 v11, 0x1

    invoke-virtual {v3, v9, v10, v11}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_2

    .line 631
    :cond_c
    const-string/jumbo v9, "EditAdminDeleteMessages"

    const v10, 0x7f0701fd

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v10}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$200(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-result-object v10

    iget-boolean v10, v10, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->delete_messages:Z

    const/4 v11, 0x1

    invoke-virtual {v3, v9, v10, v11}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_2

    .line 633
    :cond_d
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$1500(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v9

    move/from16 v0, p2

    if-ne v0, v9, :cond_e

    .line 634
    const-string/jumbo v9, "EditAdminAddAdmins"

    const v10, 0x7f0701f6

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v10}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$200(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-result-object v10

    iget-boolean v10, v10, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->add_admins:Z

    const/4 v11, 0x0

    invoke-virtual {v3, v9, v10, v11}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_2

    .line 635
    :cond_e
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$1600(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v9

    move/from16 v0, p2

    if-ne v0, v9, :cond_f

    .line 636
    const-string/jumbo v9, "EditAdminBanUsers"

    const v10, 0x7f0701f9

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v10}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$200(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-result-object v10

    iget-boolean v10, v10, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->ban_users:Z

    const/4 v11, 0x1

    invoke-virtual {v3, v9, v10, v11}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_2

    .line 637
    :cond_f
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$1700(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v9

    move/from16 v0, p2

    if-ne v0, v9, :cond_11

    .line 638
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$2800(Lorg/telegram/ui/ChannelRightsEditActivity;)Z

    move-result v9

    if-nez v9, :cond_10

    .line 639
    const-string/jumbo v9, "EditAdminAddUsers"

    const v10, 0x7f0701f7

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v10}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$200(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-result-object v10

    iget-boolean v10, v10, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->invite_users:Z

    const/4 v11, 0x1

    invoke-virtual {v3, v9, v10, v11}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_2

    .line 641
    :cond_10
    const-string/jumbo v9, "EditAdminAddUsersViaLink"

    const v10, 0x7f0701f8

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v10}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$200(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-result-object v10

    iget-boolean v10, v10, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->invite_users:Z

    const/4 v11, 0x1

    invoke-virtual {v3, v9, v10, v11}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_2

    .line 643
    :cond_11
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$1800(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v9

    move/from16 v0, p2

    if-ne v0, v9, :cond_12

    .line 644
    const-string/jumbo v9, "EditAdminPinMessages"

    const v10, 0x7f070200

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v10}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$200(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-result-object v10

    iget-boolean v10, v10, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->pin_messages:Z

    const/4 v11, 0x1

    invoke-virtual {v3, v9, v10, v11}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_2

    .line 645
    :cond_12
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$1900(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v9

    move/from16 v0, p2

    if-ne v0, v9, :cond_14

    .line 646
    const-string/jumbo v9, "UserRestrictionsRead"

    const v10, 0x7f070614

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v9

    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->view_messages:Z

    if-nez v9, :cond_13

    const/4 v9, 0x1

    :goto_4
    const/4 v11, 0x1

    invoke-virtual {v3, v10, v9, v11}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_2

    :cond_13
    const/4 v9, 0x0

    goto :goto_4

    .line 647
    :cond_14
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$2000(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v9

    move/from16 v0, p2

    if-ne v0, v9, :cond_16

    .line 648
    const-string/jumbo v9, "UserRestrictionsSend"

    const v10, 0x7f070615

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v9

    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_messages:Z

    if-nez v9, :cond_15

    const/4 v9, 0x1

    :goto_5
    const/4 v11, 0x1

    invoke-virtual {v3, v10, v9, v11}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_2

    :cond_15
    const/4 v9, 0x0

    goto :goto_5

    .line 649
    :cond_16
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$2100(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v9

    move/from16 v0, p2

    if-ne v0, v9, :cond_18

    .line 650
    const-string/jumbo v9, "UserRestrictionsSendMedia"

    const v10, 0x7f070616

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v9

    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_media:Z

    if-nez v9, :cond_17

    const/4 v9, 0x1

    :goto_6
    const/4 v11, 0x1

    invoke-virtual {v3, v10, v9, v11}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_2

    :cond_17
    const/4 v9, 0x0

    goto :goto_6

    .line 651
    :cond_18
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$2200(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v9

    move/from16 v0, p2

    if-ne v0, v9, :cond_1a

    .line 652
    const-string/jumbo v9, "UserRestrictionsSendStickers"

    const v10, 0x7f070617

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v9

    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_stickers:Z

    if-nez v9, :cond_19

    const/4 v9, 0x1

    :goto_7
    const/4 v11, 0x1

    invoke-virtual {v3, v10, v9, v11}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_2

    :cond_19
    const/4 v9, 0x0

    goto :goto_7

    .line 653
    :cond_1a
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$2300(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v9

    move/from16 v0, p2

    if-ne v0, v9, :cond_6

    .line 654
    const-string/jumbo v9, "UserRestrictionsEmbedLinks"

    const v10, 0x7f070613

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v9

    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->embed_links:Z

    if-nez v9, :cond_1b

    const/4 v9, 0x1

    :goto_8
    const/4 v11, 0x1

    invoke-virtual {v3, v10, v9, v11}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_2

    :cond_1b
    const/4 v9, 0x0

    goto :goto_8

    .line 657
    :cond_1c
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 658
    :cond_1d
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$2000(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v9

    move/from16 v0, p2

    if-ne v0, v9, :cond_0

    .line 659
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v9

    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->view_messages:Z

    if-nez v9, :cond_1e

    const/4 v9, 0x1

    :goto_9
    invoke-virtual {v3, v9}, Lorg/telegram/ui/Cells/TextCheckCell2;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_1e
    const/4 v9, 0x0

    goto :goto_9

    .line 663
    .end local v3    # "checkCell":Lorg/telegram/ui/Cells/TextCheckCell2;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v6, Lorg/telegram/ui/Cells/ShadowSectionCell;

    .line 664
    .local v6, "shadowCell":Lorg/telegram/ui/Cells/ShadowSectionCell;
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$2900(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v9

    move/from16 v0, p2

    if-ne v0, v9, :cond_20

    .line 665
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$800(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v9

    const/4 v11, -0x1

    if-ne v9, v11, :cond_1f

    const v9, 0x7f020085

    :goto_a
    const-string/jumbo v11, "windowBackgroundGrayShadow"

    invoke-static {v10, v9, v11}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/telegram/ui/Cells/ShadowSectionCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_1f
    const v9, 0x7f020084

    goto :goto_a

    .line 666
    :cond_20
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$3000(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v9

    move/from16 v0, p2

    if-ne v0, v9, :cond_21

    .line 667
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f020085

    const-string/jumbo v11, "windowBackgroundGrayShadow"

    invoke-static {v9, v10, v11}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/telegram/ui/Cells/ShadowSectionCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 669
    :cond_21
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f020084

    const-string/jumbo v11, "windowBackgroundGrayShadow"

    invoke-static {v9, v10, v11}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/telegram/ui/Cells/ShadowSectionCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 574
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v3, 0x0

    .line 543
    packed-switch p2, :pswitch_data_0

    .line 566
    new-instance v0, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object v1, p0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 569
    .local v0, "view":Landroid/view/View;
    :goto_0
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 545
    .end local v0    # "view":Landroid/view/View;
    :pswitch_0
    new-instance v0, Lorg/telegram/ui/Cells/UserCell;

    iget-object v1, p0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3, v3}, Lorg/telegram/ui/Cells/UserCell;-><init>(Landroid/content/Context;IIZ)V

    .line 546
    .restart local v0    # "view":Landroid/view/View;
    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 549
    .end local v0    # "view":Landroid/view/View;
    :pswitch_1
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v1, p0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 550
    .restart local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f020085

    const-string/jumbo v3, "windowBackgroundGrayShadow"

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 553
    .end local v0    # "view":Landroid/view/View;
    :pswitch_2
    new-instance v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object v1, p0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 554
    .restart local v0    # "view":Landroid/view/View;
    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 557
    .end local v0    # "view":Landroid/view/View;
    :pswitch_3
    new-instance v0, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v1, p0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 558
    .restart local v0    # "view":Landroid/view/View;
    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 561
    .end local v0    # "view":Landroid/view/View;
    :pswitch_4
    new-instance v0, Lorg/telegram/ui/Cells/TextCheckCell2;

    iget-object v1, p0, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell2;-><init>(Landroid/content/Context;)V

    .line 562
    .restart local v0    # "view":Landroid/view/View;
    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 543
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
