.class Lorg/telegram/ui/ChannelEditActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ChannelEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChannelEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/ChannelEditActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ChannelEditActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 694
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 695
    iput-object p2, p0, Lorg/telegram/ui/ChannelEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 696
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelEditActivity;->access$2300(Lorg/telegram/ui/ChannelEditActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    const/4 v0, 0x0

    .line 796
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$1200(Lorg/telegram/ui/ChannelEditActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$1100(Lorg/telegram/ui/ChannelEditActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$1400(Lorg/telegram/ui/ChannelEditActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$1300(Lorg/telegram/ui/ChannelEditActivity;)I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 805
    :cond_0
    :goto_0
    return v0

    .line 798
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$700(Lorg/telegram/ui/ChannelEditActivity;)I

    move-result v1

    if-lt p1, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$800(Lorg/telegram/ui/ChannelEditActivity;)I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 799
    const/4 v0, 0x1

    goto :goto_0

    .line 800
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$2200(Lorg/telegram/ui/ChannelEditActivity;)I

    move-result v1

    if-eq p1, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$2400(Lorg/telegram/ui/ChannelEditActivity;)I

    move-result v1

    if-ne p1, v1, :cond_4

    .line 801
    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    .line 802
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$2500(Lorg/telegram/ui/ChannelEditActivity;)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 803
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v1, 0x1

    .line 785
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    .line 786
    .local v0, "type":I
    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 11
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "i"    # I

    .prologue
    const/4 v10, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 743
    const/4 v0, 0x1

    .line 744
    .local v0, "checkBackground":Z
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 781
    :cond_0
    :goto_0
    return-void

    .line 746
    :pswitch_0
    iget-object v2, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/ManageChatTextCell;

    .line 747
    .local v2, "textCell":Lorg/telegram/ui/Cells/ManageChatTextCell;
    const-string/jumbo v4, "windowBackgroundWhiteBlackText"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setTextColor(I)V

    .line 748
    const-string/jumbo v4, "windowBackgroundWhiteBlackText"

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setTag(Ljava/lang/Object;)V

    .line 750
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelEditActivity;->access$1200(Lorg/telegram/ui/ChannelEditActivity;)I

    move-result v4

    if-ne p2, v4, :cond_3

    .line 751
    const-string/jumbo v4, "ChannelAdministrators"

    const v8, 0x7f070109

    invoke-static {v4, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelEditActivity;->access$1000(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "%d"

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v9, p0, Lorg/telegram/ui/ChannelEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChannelEditActivity;->access$1000(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v9

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$ChatFull;->admins_count:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    const v9, 0x7f020087

    iget-object v5, p0, Lorg/telegram/ui/ChannelEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelEditActivity;->access$1100(Lorg/telegram/ui/ChannelEditActivity;)I

    move-result v5

    if-eq v5, v10, :cond_2

    move v5, v6

    :goto_2
    invoke-virtual {v2, v8, v4, v9, v5}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setText(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_0

    :cond_1
    move-object v4, v5

    goto :goto_1

    :cond_2
    move v5, v7

    goto :goto_2

    .line 752
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelEditActivity;->access$1100(Lorg/telegram/ui/ChannelEditActivity;)I

    move-result v4

    if-ne p2, v4, :cond_5

    .line 753
    const-string/jumbo v4, "ChannelBlacklist"

    const v8, 0x7f07010e

    invoke-static {v4, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iget-object v8, p0, Lorg/telegram/ui/ChannelEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChannelEditActivity;->access$1000(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v8

    if-eqz v8, :cond_4

    const-string/jumbo v5, "%d"

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v8, p0, Lorg/telegram/ui/ChannelEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChannelEditActivity;->access$1000(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v8

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$ChatFull;->kicked_count:I

    iget-object v9, p0, Lorg/telegram/ui/ChannelEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChannelEditActivity;->access$1000(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v9

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$ChatFull;->banned_count:I

    add-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :cond_4
    const v6, 0x7f02008b

    invoke-virtual {v2, v4, v5, v6, v7}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setText(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 754
    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelEditActivity;->access$1300(Lorg/telegram/ui/ChannelEditActivity;)I

    move-result v4

    if-ne p2, v4, :cond_6

    .line 755
    const-string/jumbo v4, "EventLog"

    const v7, 0x7f07022d

    invoke-static {v4, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const v7, 0x7f02008e

    invoke-virtual {v2, v4, v5, v7, v6}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setText(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 756
    :cond_6
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelEditActivity;->access$1400(Lorg/telegram/ui/ChannelEditActivity;)I

    move-result v4

    if-ne p2, v4, :cond_0

    .line 757
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelEditActivity;->access$000(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v4, :cond_7

    const-string/jumbo v4, "EventLogFilterGroupInfo"

    const v7, 0x7f070248

    invoke-static {v4, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    :goto_3
    const v7, 0x7f02008c

    invoke-virtual {v2, v4, v5, v7, v6}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setText(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v4, "EventLogFilterChannelInfo"

    const v7, 0x7f070245

    invoke-static {v4, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 761
    .end local v2    # "textCell":Lorg/telegram/ui/Cells/ManageChatTextCell;
    :pswitch_1
    iget-object v3, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/ManageChatUserCell;

    .line 762
    .local v3, "userCell":Lorg/telegram/ui/Cells/ManageChatUserCell;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/ManageChatUserCell;->setTag(Ljava/lang/Object;)V

    .line 764
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelEditActivity;->access$900(Lorg/telegram/ui/ChannelEditActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 765
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelEditActivity;->access$1000(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelEditActivity;->access$900(Lorg/telegram/ui/ChannelEditActivity;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v7, p0, Lorg/telegram/ui/ChannelEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChannelEditActivity;->access$700(Lorg/telegram/ui/ChannelEditActivity;)I

    move-result v7

    sub-int v7, p2, v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 769
    .local v1, "part":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :goto_4
    if-eqz v1, :cond_0

    .line 770
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v6, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    invoke-virtual {v3, v4, v5, v5}, Lorg/telegram/ui/Cells/ManageChatUserCell;->setData(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 767
    .end local v1    # "part":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_8
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelEditActivity;->access$1000(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    iget-object v6, p0, Lorg/telegram/ui/ChannelEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChannelEditActivity;->access$700(Lorg/telegram/ui/ChannelEditActivity;)I

    move-result v6

    sub-int v6, p2, v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .restart local v1    # "part":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    goto :goto_4

    .line 774
    .end local v1    # "part":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    .end local v3    # "userCell":Lorg/telegram/ui/Cells/ManageChatUserCell;
    :pswitch_2
    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelEditActivity;->access$2200(Lorg/telegram/ui/ChannelEditActivity;)I

    move-result v4

    if-ne p2, v4, :cond_9

    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelEditActivity;->access$700(Lorg/telegram/ui/ChannelEditActivity;)I

    move-result v4

    if-eq v4, v10, :cond_9

    .line 775
    iget-object v4, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v5, p0, Lorg/telegram/ui/ChannelEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f020084

    const-string/jumbo v7, "windowBackgroundGrayShadow"

    invoke-static {v5, v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 777
    :cond_9
    iget-object v4, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v5, p0, Lorg/telegram/ui/ChannelEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f020085

    const-string/jumbo v7, "windowBackgroundGrayShadow"

    invoke-static {v5, v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 744
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 700
    const/4 v0, 0x0

    .line 701
    .local v0, "view":Landroid/view/View;
    packed-switch p2, :pswitch_data_0

    .line 730
    :goto_0
    new-instance v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 731
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 703
    :pswitch_0
    new-instance v0, Lorg/telegram/ui/Cells/ManageChatTextCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/ManageChatTextCell;-><init>(Landroid/content/Context;)V

    .line 704
    .restart local v0    # "view":Landroid/view/View;
    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 707
    :pswitch_1
    new-instance v0, Lorg/telegram/ui/Cells/ManageChatUserCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/ManageChatUserCell;-><init>(Landroid/content/Context;IZ)V

    .line 708
    .restart local v0    # "view":Landroid/view/View;
    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    move-object v1, v0

    .line 709
    check-cast v1, Lorg/telegram/ui/Cells/ManageChatUserCell;

    new-instance v2, Lorg/telegram/ui/ChannelEditActivity$ListAdapter$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChannelEditActivity$ListAdapter$1;-><init>(Lorg/telegram/ui/ChannelEditActivity$ListAdapter;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/ManageChatUserCell;->setDelegate(Lorg/telegram/ui/Cells/ManageChatUserCell$ManageChatUserCellDelegate;)V

    goto :goto_0

    .line 724
    :pswitch_2
    new-instance v0, Lorg/telegram/ui/Cells/ShadowSectionCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 725
    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0

    .line 727
    :pswitch_3
    new-instance v0, Lorg/telegram/ui/Cells/LoadingCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/LoadingCell;-><init>(Landroid/content/Context;)V

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0

    .line 701
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onViewRecycled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 736
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Lorg/telegram/ui/Cells/ManageChatUserCell;

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/ManageChatUserCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ManageChatUserCell;->recycle()V

    .line 739
    :cond_0
    return-void
.end method
