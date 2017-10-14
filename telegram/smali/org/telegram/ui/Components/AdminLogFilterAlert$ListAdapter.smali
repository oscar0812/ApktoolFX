.class Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "AdminLogFilterAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/AdminLogFilterAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/AdminLogFilterAlert;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 383
    iput-object p1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 384
    iput-object p2, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->context:Landroid/content/Context;

    .line 385
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$100(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$300(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$300(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x7

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 394
    iget-object v0, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1100(Lorg/telegram/ui/Components/AdminLogFilterAlert;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1100(Lorg/telegram/ui/Components/AdminLogFilterAlert;)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 395
    :cond_0
    const/4 v0, 0x0

    .line 399
    :goto_0
    return v0

    .line 396
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1100(Lorg/telegram/ui/Components/AdminLogFilterAlert;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_2

    .line 397
    const/4 v0, 0x1

    goto :goto_0

    .line 399
    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v0, 0x1

    .line 405
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 8
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 471
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 508
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 473
    :pswitch_1
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/CheckBoxCell;

    .line 474
    .local v0, "cell":Lorg/telegram/ui/Cells/CheckBoxCell;
    if-nez p2, :cond_2

    .line 475
    const-string/jumbo v3, "EventLogFilterAll"

    const v6, 0x7f070244

    invoke-static {v3, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ""

    iget-object v3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v3

    if-nez v3, :cond_1

    move v3, v4

    :goto_1
    invoke-virtual {v0, v6, v7, v3, v4}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_1

    .line 476
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1300(Lorg/telegram/ui/Components/AdminLogFilterAlert;)I

    move-result v3

    if-ne p2, v3, :cond_5

    .line 477
    const-string/jumbo v3, "EventLogFilterNewRestrictions"

    const v6, 0x7f07024c

    invoke-static {v3, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, ""

    iget-object v7, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v7

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->kick:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v7

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->ban:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v7

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->unkick:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v7

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->unban:Z

    if-eqz v7, :cond_4

    :cond_3
    move v5, v4

    :cond_4
    invoke-virtual {v0, v3, v6, v5, v4}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 478
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1400(Lorg/telegram/ui/Components/AdminLogFilterAlert;)I

    move-result v3

    if-ne p2, v3, :cond_8

    .line 479
    const-string/jumbo v3, "EventLogFilterNewAdmins"

    const v6, 0x7f07024a

    invoke-static {v3, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, ""

    iget-object v7, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v7

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->promote:Z

    if-eqz v7, :cond_7

    iget-object v7, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v7

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->demote:Z

    if-eqz v7, :cond_7

    :cond_6
    move v5, v4

    :cond_7
    invoke-virtual {v0, v3, v6, v5, v4}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 480
    :cond_8
    iget-object v3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1500(Lorg/telegram/ui/Components/AdminLogFilterAlert;)I

    move-result v3

    if-ne p2, v3, :cond_b

    .line 481
    const-string/jumbo v3, "EventLogFilterNewMembers"

    const v6, 0x7f07024b

    invoke-static {v3, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, ""

    iget-object v7, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v7

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->invite:Z

    if-eqz v7, :cond_a

    iget-object v7, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v7

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->join:Z

    if-eqz v7, :cond_a

    :cond_9
    move v5, v4

    :cond_a
    invoke-virtual {v0, v3, v6, v5, v4}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 482
    :cond_b
    iget-object v3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1600(Lorg/telegram/ui/Components/AdminLogFilterAlert;)I

    move-result v3

    if-ne p2, v3, :cond_11

    .line 483
    iget-object v3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$100(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 484
    const-string/jumbo v3, "EventLogFilterGroupInfo"

    const v6, 0x7f070248

    invoke-static {v3, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, ""

    iget-object v7, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v7

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->info:Z

    if-eqz v7, :cond_d

    :cond_c
    move v5, v4

    :cond_d
    invoke-virtual {v0, v3, v6, v5, v4}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 486
    :cond_e
    const-string/jumbo v3, "EventLogFilterChannelInfo"

    const v6, 0x7f070245

    invoke-static {v3, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, ""

    iget-object v7, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v7

    if-eqz v7, :cond_f

    iget-object v7, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v7

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->info:Z

    if-eqz v7, :cond_10

    :cond_f
    move v5, v4

    :cond_10
    invoke-virtual {v0, v3, v6, v5, v4}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 488
    :cond_11
    iget-object v3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1700(Lorg/telegram/ui/Components/AdminLogFilterAlert;)I

    move-result v3

    if-ne p2, v3, :cond_14

    .line 489
    const-string/jumbo v3, "EventLogFilterDeletedMessages"

    const v6, 0x7f070246

    invoke-static {v3, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, ""

    iget-object v7, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v7

    if-eqz v7, :cond_12

    iget-object v7, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v7

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->delete:Z

    if-eqz v7, :cond_13

    :cond_12
    move v5, v4

    :cond_13
    invoke-virtual {v0, v3, v6, v5, v4}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 490
    :cond_14
    iget-object v3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1800(Lorg/telegram/ui/Components/AdminLogFilterAlert;)I

    move-result v3

    if-ne p2, v3, :cond_17

    .line 491
    const-string/jumbo v3, "EventLogFilterEditedMessages"

    const v6, 0x7f070247

    invoke-static {v3, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, ""

    iget-object v7, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v7

    if-eqz v7, :cond_15

    iget-object v7, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v7

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->edit:Z

    if-eqz v7, :cond_16

    :cond_15
    move v5, v4

    :cond_16
    invoke-virtual {v0, v3, v6, v5, v4}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 492
    :cond_17
    iget-object v3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1900(Lorg/telegram/ui/Components/AdminLogFilterAlert;)I

    move-result v3

    if-ne p2, v3, :cond_1a

    .line 493
    const-string/jumbo v3, "EventLogFilterPinnedMessages"

    const v6, 0x7f07024d

    invoke-static {v3, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, ""

    iget-object v7, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v7

    if-eqz v7, :cond_18

    iget-object v7, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v7

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->pinned:Z

    if-eqz v7, :cond_19

    :cond_18
    move v5, v4

    :cond_19
    invoke-virtual {v0, v3, v6, v5, v4}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 494
    :cond_1a
    iget-object v3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$2000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)I

    move-result v3

    if-ne p2, v3, :cond_1d

    .line 495
    const-string/jumbo v3, "EventLogFilterLeavingMembers"

    const v6, 0x7f070249

    invoke-static {v3, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, ""

    iget-object v7, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v7

    if-eqz v7, :cond_1b

    iget-object v7, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v7

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->leave:Z

    if-eqz v7, :cond_1c

    :cond_1b
    :goto_2
    invoke-virtual {v0, v3, v6, v4, v5}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    :cond_1c
    move v4, v5

    goto :goto_2

    .line 496
    :cond_1d
    iget-object v3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1100(Lorg/telegram/ui/Components/AdminLogFilterAlert;)I

    move-result v3

    if-ne p2, v3, :cond_0

    .line 497
    const-string/jumbo v3, "EventLogAllAdmins"

    const v6, 0x7f07022f

    invoke-static {v3, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, ""

    iget-object v7, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1200(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Ljava/util/HashMap;

    move-result-object v7

    if-nez v7, :cond_1e

    move v5, v4

    :cond_1e
    invoke-virtual {v0, v3, v6, v5, v4}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 502
    .end local v0    # "cell":Lorg/telegram/ui/Cells/CheckBoxCell;
    :pswitch_2
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/CheckBoxUserCell;

    .line 503
    .local v1, "userCell":Lorg/telegram/ui/Cells/CheckBoxUserCell;
    iget-object v3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$300(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v6, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v6}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1100(Lorg/telegram/ui/Components/AdminLogFilterAlert;)I

    move-result v6

    sub-int v6, p2, v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget v2, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    .line 504
    .local v2, "userId":I
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    iget-object v3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1200(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Ljava/util/HashMap;

    move-result-object v3

    if-eqz v3, :cond_1f

    iget-object v3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1200(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    :cond_1f
    move v3, v4

    :goto_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->getItemCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-eq p2, v7, :cond_21

    :goto_4
    invoke-virtual {v1, v6, v3, v4}, Lorg/telegram/ui/Cells/CheckBoxUserCell;->setUser(Lorg/telegram/tgnet/TLRPC$User;ZZ)V

    goto/16 :goto_0

    :cond_20
    move v3, v5

    goto :goto_3

    :cond_21
    move v4, v5

    goto :goto_4

    .line 471
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v3, 0x1

    .line 410
    const/4 v1, 0x0

    .line 411
    .local v1, "view":Landroid/view/View;
    packed-switch p2, :pswitch_data_0

    .line 428
    :goto_0
    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v2

    .line 413
    :pswitch_0
    new-instance v1, Lorg/telegram/ui/Cells/CheckBoxCell;

    .end local v1    # "view":Landroid/view/View;
    iget-object v2, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;Z)V

    .line 414
    .restart local v1    # "view":Landroid/view/View;
    const/4 v2, 0x0

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 417
    :pswitch_1
    new-instance v0, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object v2, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 418
    .local v0, "shadowSectionCell":Lorg/telegram/ui/Cells/ShadowSectionCell;
    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/ShadowSectionCell;->setSize(I)V

    .line 419
    new-instance v1, Landroid/widget/FrameLayout;

    .end local v1    # "view":Landroid/view/View;
    iget-object v2, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .restart local v1    # "view":Landroid/view/View;
    move-object v2, v1

    .line 420
    check-cast v2, Landroid/widget/FrameLayout;

    const/4 v3, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 421
    const-string/jumbo v2, "dialogBackgroundGray"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 424
    .end local v0    # "shadowSectionCell":Lorg/telegram/ui/Cells/ShadowSectionCell;
    :pswitch_2
    new-instance v1, Lorg/telegram/ui/Cells/CheckBoxUserCell;

    .end local v1    # "view":Landroid/view/View;
    iget-object v2, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/Cells/CheckBoxUserCell;-><init>(Landroid/content/Context;Z)V

    .restart local v1    # "view":Landroid/view/View;
    goto :goto_0

    .line 411
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onViewAttachedToWindow(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 8
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 433
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    .line 434
    .local v1, "position":I
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 467
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 436
    :pswitch_1
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/CheckBoxCell;

    .line 437
    .local v0, "cell":Lorg/telegram/ui/Cells/CheckBoxCell;
    if-nez v1, :cond_2

    .line 438
    iget-object v4, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v4

    if-nez v4, :cond_1

    move v4, v5

    :goto_1
    invoke-virtual {v0, v4, v6}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    goto :goto_0

    :cond_1
    move v4, v6

    goto :goto_1

    .line 439
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1300(Lorg/telegram/ui/Components/AdminLogFilterAlert;)I

    move-result v4

    if-ne v1, v4, :cond_5

    .line 440
    iget-object v4, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->kick:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->ban:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->unkick:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->unban:Z

    if-eqz v4, :cond_4

    :cond_3
    :goto_2
    invoke-virtual {v0, v5, v6}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    goto :goto_0

    :cond_4
    move v5, v6

    goto :goto_2

    .line 441
    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1400(Lorg/telegram/ui/Components/AdminLogFilterAlert;)I

    move-result v4

    if-ne v1, v4, :cond_8

    .line 442
    iget-object v4, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->promote:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->demote:Z

    if-eqz v4, :cond_7

    :cond_6
    :goto_3
    invoke-virtual {v0, v5, v6}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    goto :goto_0

    :cond_7
    move v5, v6

    goto :goto_3

    .line 443
    :cond_8
    iget-object v4, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1500(Lorg/telegram/ui/Components/AdminLogFilterAlert;)I

    move-result v4

    if-ne v1, v4, :cond_b

    .line 444
    iget-object v4, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->invite:Z

    if-eqz v4, :cond_a

    iget-object v4, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->join:Z

    if-eqz v4, :cond_a

    :cond_9
    :goto_4
    invoke-virtual {v0, v5, v6}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    goto/16 :goto_0

    :cond_a
    move v5, v6

    goto :goto_4

    .line 445
    :cond_b
    iget-object v4, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1600(Lorg/telegram/ui/Components/AdminLogFilterAlert;)I

    move-result v4

    if-ne v1, v4, :cond_e

    .line 446
    iget-object v4, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->info:Z

    if-eqz v4, :cond_d

    :cond_c
    :goto_5
    invoke-virtual {v0, v5, v6}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    goto/16 :goto_0

    :cond_d
    move v5, v6

    goto :goto_5

    .line 447
    :cond_e
    iget-object v4, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1700(Lorg/telegram/ui/Components/AdminLogFilterAlert;)I

    move-result v4

    if-ne v1, v4, :cond_11

    .line 448
    iget-object v4, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->delete:Z

    if-eqz v4, :cond_10

    :cond_f
    :goto_6
    invoke-virtual {v0, v5, v6}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    goto/16 :goto_0

    :cond_10
    move v5, v6

    goto :goto_6

    .line 449
    :cond_11
    iget-object v4, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1800(Lorg/telegram/ui/Components/AdminLogFilterAlert;)I

    move-result v4

    if-ne v1, v4, :cond_14

    .line 450
    iget-object v4, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v4

    if-eqz v4, :cond_12

    iget-object v4, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->edit:Z

    if-eqz v4, :cond_13

    :cond_12
    :goto_7
    invoke-virtual {v0, v5, v6}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    goto/16 :goto_0

    :cond_13
    move v5, v6

    goto :goto_7

    .line 451
    :cond_14
    iget-object v4, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1900(Lorg/telegram/ui/Components/AdminLogFilterAlert;)I

    move-result v4

    if-ne v1, v4, :cond_17

    .line 452
    iget-object v4, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v4

    if-eqz v4, :cond_15

    iget-object v4, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->pinned:Z

    if-eqz v4, :cond_16

    :cond_15
    :goto_8
    invoke-virtual {v0, v5, v6}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    goto/16 :goto_0

    :cond_16
    move v5, v6

    goto :goto_8

    .line 453
    :cond_17
    iget-object v4, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$2000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)I

    move-result v4

    if-ne v1, v4, :cond_1a

    .line 454
    iget-object v4, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v4

    if-eqz v4, :cond_18

    iget-object v4, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->leave:Z

    if-eqz v4, :cond_19

    :cond_18
    :goto_9
    invoke-virtual {v0, v5, v6}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    goto/16 :goto_0

    :cond_19
    move v5, v6

    goto :goto_9

    .line 455
    :cond_1a
    iget-object v4, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1100(Lorg/telegram/ui/Components/AdminLogFilterAlert;)I

    move-result v4

    if-ne v1, v4, :cond_0

    .line 456
    iget-object v4, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1200(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Ljava/util/HashMap;

    move-result-object v4

    if-nez v4, :cond_1b

    :goto_a
    invoke-virtual {v0, v5, v6}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    goto/16 :goto_0

    :cond_1b
    move v5, v6

    goto :goto_a

    .line 461
    .end local v0    # "cell":Lorg/telegram/ui/Cells/CheckBoxCell;
    :pswitch_2
    iget-object v2, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/CheckBoxUserCell;

    .line 462
    .local v2, "userCell":Lorg/telegram/ui/Cells/CheckBoxUserCell;
    iget-object v4, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$300(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v7, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1100(Lorg/telegram/ui/Components/AdminLogFilterAlert;)I

    move-result v7

    sub-int v7, v1, v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget v3, v4, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    .line 463
    .local v3, "userId":I
    iget-object v4, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1200(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Ljava/util/HashMap;

    move-result-object v4

    if-eqz v4, :cond_1c

    iget-object v4, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1200(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    :cond_1c
    :goto_b
    invoke-virtual {v2, v5, v6}, Lorg/telegram/ui/Cells/CheckBoxUserCell;->setChecked(ZZ)V

    goto/16 :goto_0

    :cond_1d
    move v5, v6

    goto :goto_b

    .line 434
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
