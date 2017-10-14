.class Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ChannelEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChannelEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

.field private searchTimer:Ljava/util/Timer;

.field final synthetic this$0:Lorg/telegram/ui/ChannelEditActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ChannelEditActivity;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 570
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 571
    iput-object p2, p0, Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;->mContext:Landroid/content/Context;

    .line 572
    new-instance v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-direct {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    .line 573
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    new-instance v1, Lorg/telegram/ui/ChannelEditActivity$SearchAdapter$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ChannelEditActivity$SearchAdapter$1;-><init>(Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;Lorg/telegram/ui/ChannelEditActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->setDelegate(Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;)V

    .line 584
    return-void
.end method

.method static synthetic access$1900(Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;

    .prologue
    .line 564
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;->searchTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$1902(Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 564
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;->searchTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$2000(Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 564
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;->processSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;)Lorg/telegram/ui/Adapters/SearchAdapterHelper;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;

    .prologue
    .line 564
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    return-object v0
.end method

.method private processSearch(Ljava/lang/String;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 615
    new-instance v0, Lorg/telegram/ui/ChannelEditActivity$SearchAdapter$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ChannelEditActivity$SearchAdapter$3;-><init>(Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 621
    return-void
.end method


# virtual methods
.method public getItem(I)Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 634
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGroupSearch()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGroupSearch()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 686
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v0, 0x1

    .line 625
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
    .locals 13
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 652
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 682
    :goto_0
    return-void

    .line 654
    :pswitch_0
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;->getItem(I)Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    move-result-object v3

    .line 656
    .local v3, "object":Lorg/telegram/tgnet/TLObject;
    instance-of v9, v3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v9, :cond_1

    move-object v6, v3

    .line 657
    check-cast v6, Lorg/telegram/tgnet/TLRPC$User;

    .line 661
    .end local v3    # "object":Lorg/telegram/tgnet/TLObject;
    .local v6, "user":Lorg/telegram/tgnet/TLRPC$User;
    :goto_1
    iget-object v5, v6, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    .line 662
    .local v5, "un":Ljava/lang/String;
    const/4 v8, 0x0

    .line 663
    .local v8, "username":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 665
    .local v1, "name":Ljava/lang/CharSequence;
    iget-object v9, p0, Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v9}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLastFoundChannel()Ljava/lang/String;

    move-result-object v2

    .line 667
    .local v2, "nameSearch":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 668
    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    .line 669
    .local v4, "u":Ljava/lang/String;
    new-instance v1, Landroid/text/SpannableStringBuilder;

    .end local v1    # "name":Ljava/lang/CharSequence;
    invoke-direct {v1, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 670
    .restart local v1    # "name":Ljava/lang/CharSequence;
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 671
    .local v0, "idx":I
    const/4 v9, -0x1

    if-eq v0, v9, :cond_0

    move-object v9, v1

    .line 672
    check-cast v9, Landroid/text/SpannableStringBuilder;

    new-instance v10, Landroid/text/style/ForegroundColorSpan;

    const-string/jumbo v11, "windowBackgroundWhiteBlueText4"

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v11

    invoke-direct {v10, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v0

    const/16 v12, 0x21

    invoke-virtual {v9, v10, v0, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 676
    .end local v0    # "idx":I
    .end local v4    # "u":Ljava/lang/String;
    :cond_0
    iget-object v7, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v7, Lorg/telegram/ui/Cells/ManageChatUserCell;

    .line 677
    .local v7, "userCell":Lorg/telegram/ui/Cells/ManageChatUserCell;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/telegram/ui/Cells/ManageChatUserCell;->setTag(Ljava/lang/Object;)V

    .line 678
    invoke-virtual {v7, v6, v1, v8}, Lorg/telegram/ui/Cells/ManageChatUserCell;->setData(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 659
    .end local v1    # "name":Ljava/lang/CharSequence;
    .end local v2    # "nameSearch":Ljava/lang/String;
    .end local v5    # "un":Ljava/lang/String;
    .end local v6    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v7    # "userCell":Lorg/telegram/ui/Cells/ManageChatUserCell;
    .end local v8    # "username":Ljava/lang/CharSequence;
    .restart local v3    # "object":Lorg/telegram/tgnet/TLObject;
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    check-cast v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .end local v3    # "object":Lorg/telegram/tgnet/TLObject;
    iget v10, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    .restart local v6    # "user":Lorg/telegram/tgnet/TLRPC$User;
    goto :goto_1

    .line 652
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 639
    new-instance v0, Lorg/telegram/ui/Cells/ManageChatUserCell;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;->mContext:Landroid/content/Context;

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/ManageChatUserCell;-><init>(Landroid/content/Context;IZ)V

    .line 640
    .local v0, "view":Landroid/view/View;
    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    move-object v1, v0

    .line 641
    check-cast v1, Lorg/telegram/ui/Cells/ManageChatUserCell;

    new-instance v2, Lorg/telegram/ui/ChannelEditActivity$SearchAdapter$4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChannelEditActivity$SearchAdapter$4;-><init>(Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/ManageChatUserCell;->setDelegate(Lorg/telegram/ui/Cells/ManageChatUserCell$ManageChatUserCellDelegate;)V

    .line 647
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public searchDialogs(Ljava/lang/String;)V
    .locals 9
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 588
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;->searchTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;->searchTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 595
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    const/4 v1, 0x0

    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditActivity;->access$100(Lorg/telegram/ui/ChannelEditActivity;)I

    move-result v6

    move v3, v2

    move v5, v4

    move v7, v2

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->queryServerSearch(Ljava/lang/String;ZZZZIZ)V

    .line 596
    invoke-virtual {p0}, Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;->notifyDataSetChanged()V

    .line 612
    :goto_1
    return-void

    .line 591
    :catch_0
    move-exception v8

    .line 592
    .local v8, "e":Ljava/lang/Exception;
    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 598
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;->searchTimer:Ljava/util/Timer;

    .line 599
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;->searchTimer:Ljava/util/Timer;

    new-instance v1, Lorg/telegram/ui/ChannelEditActivity$SearchAdapter$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ChannelEditActivity$SearchAdapter$2;-><init>(Lorg/telegram/ui/ChannelEditActivity$SearchAdapter;Ljava/lang/String;)V

    const-wide/16 v2, 0xc8

    const-wide/16 v4, 0x12c

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_1
.end method
