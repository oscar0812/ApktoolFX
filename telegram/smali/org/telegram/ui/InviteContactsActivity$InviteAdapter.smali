.class public Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "InviteContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/InviteContactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InviteAdapter"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private searchResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/ContactsController$Contact;",
            ">;"
        }
    .end annotation
.end field

.field private searchResultNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private searchTimer:Ljava/util/Timer;

.field private searching:Z

.field final synthetic this$0:Lorg/telegram/ui/InviteContactsActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/InviteContactsActivity;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lorg/telegram/ui/InviteContactsActivity;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 720
    iput-object p1, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 715
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->searchResult:Ljava/util/ArrayList;

    .line 716
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->searchResultNames:Ljava/util/ArrayList;

    .line 721
    iput-object p2, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->context:Landroid/content/Context;

    .line 722
    return-void
.end method

.method static synthetic access$2500(Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;

    .prologue
    .line 712
    iget-object v0, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->searchTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$2502(Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 712
    iput-object p1, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->searchTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$2600(Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/util/ArrayList;

    .prologue
    .line 712
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2702(Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 712
    iput-object p1, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->searchResult:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2802(Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 712
    iput-object p1, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->searchResultNames:Ljava/util/ArrayList;

    return-object p1
.end method

.method private updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/ContactsController$Contact;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 880
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/ContactsController$Contact;>;"
    .local p2, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$2;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$2;-><init>(Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 888
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 734
    iget-boolean v0, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->searching:Z

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 737
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/InviteContactsActivity;->access$2400(Lorg/telegram/ui/InviteContactsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 778
    iget-boolean v0, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->searching:Z

    if-nez v0, :cond_0

    .line 779
    if-nez p1, :cond_0

    .line 780
    const/4 v0, 0x1

    .line 783
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 795
    const/4 v0, 0x1

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 892
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;->notifyDataSetChanged()V

    .line 893
    invoke-virtual {p0}, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->getItemCount()I

    move-result v0

    .line 894
    .local v0, "count":I
    iget-object v1, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v1}, Lorg/telegram/ui/InviteContactsActivity;->access$1400(Lorg/telegram/ui/InviteContactsActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v4

    if-ne v0, v3, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setVisibility(I)V

    .line 895
    iget-object v1, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v1}, Lorg/telegram/ui/InviteContactsActivity;->access$2900(Lorg/telegram/ui/InviteContactsActivity;)Lorg/telegram/ui/Components/GroupCreateDividerItemDecoration;

    move-result-object v1

    if-ne v0, v3, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/GroupCreateDividerItemDecoration;->setSingle(Z)V

    .line 896
    return-void

    .line 894
    :cond_1
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 5
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 757
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 774
    :goto_0
    return-void

    .line 759
    :pswitch_0
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/InviteUserCell;

    .line 762
    .local v0, "cell":Lorg/telegram/ui/Cells/InviteUserCell;
    iget-boolean v3, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->searching:Z

    if-eqz v3, :cond_0

    .line 763
    iget-object v3, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/ContactsController$Contact;

    .line 764
    .local v1, "contact":Lorg/telegram/messenger/ContactsController$Contact;
    iget-object v3, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->searchResultNames:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 769
    .local v2, "name":Ljava/lang/CharSequence;
    :goto_1
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/InviteUserCell;->setUser(Lorg/telegram/messenger/ContactsController$Contact;Ljava/lang/CharSequence;)V

    .line 770
    iget-object v3, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v3}, Lorg/telegram/ui/InviteContactsActivity;->access$500(Lorg/telegram/ui/InviteContactsActivity;)Ljava/util/HashMap;

    move-result-object v3

    iget v4, v1, Lorg/telegram/messenger/ContactsController$Contact;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Cells/InviteUserCell;->setChecked(ZZ)V

    goto :goto_0

    .line 766
    .end local v1    # "contact":Lorg/telegram/messenger/ContactsController$Contact;
    .end local v2    # "name":Ljava/lang/CharSequence;
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v3}, Lorg/telegram/ui/InviteContactsActivity;->access$2400(Lorg/telegram/ui/InviteContactsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v4, p2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/ContactsController$Contact;

    .line 767
    .restart local v1    # "contact":Lorg/telegram/messenger/ContactsController$Contact;
    const/4 v2, 0x0

    .restart local v2    # "name":Ljava/lang/CharSequence;
    goto :goto_1

    .line 757
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
    .line 743
    packed-switch p2, :pswitch_data_0

    .line 749
    new-instance v0, Lorg/telegram/ui/Cells/InviteUserCell;

    iget-object v1, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->context:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Cells/InviteUserCell;-><init>(Landroid/content/Context;Z)V

    .line 752
    .local v0, "view":Landroid/view/View;
    :goto_0
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 745
    .end local v0    # "view":Landroid/view/View;
    :pswitch_0
    new-instance v0, Lorg/telegram/ui/Cells/InviteTextCell;

    iget-object v1, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/InviteTextCell;-><init>(Landroid/content/Context;)V

    .restart local v0    # "view":Landroid/view/View;
    move-object v1, v0

    .line 746
    check-cast v1, Lorg/telegram/ui/Cells/InviteTextCell;

    const-string/jumbo v2, "ShareTelegram"

    const v3, 0x7f07058d

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f02019a

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Cells/InviteTextCell;->setTextAndIcon(Ljava/lang/String;I)V

    goto :goto_0

    .line 743
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onViewRecycled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 788
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Lorg/telegram/ui/Cells/InviteUserCell;

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/InviteUserCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/InviteUserCell;->recycle()V

    .line 791
    :cond_0
    return-void
.end method

.method public searchDialogs(Ljava/lang/String;)V
    .locals 7
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 800
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->searchTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 801
    iget-object v0, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->searchTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 806
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 807
    iget-object v0, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 808
    iget-object v0, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->searchResultNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 809
    invoke-virtual {p0}, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->notifyDataSetChanged()V

    .line 877
    :goto_1
    return-void

    .line 803
    :catch_0
    move-exception v6

    .line 804
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 811
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->searchTimer:Ljava/util/Timer;

    .line 812
    iget-object v0, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->searchTimer:Ljava/util/Timer;

    new-instance v1, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1;-><init>(Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;Ljava/lang/String;)V

    const-wide/16 v2, 0xc8

    const-wide/16 v4, 0x12c

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_1
.end method

.method public setSearching(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 725
    iget-boolean v0, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->searching:Z

    if-ne v0, p1, :cond_0

    .line 730
    :goto_0
    return-void

    .line 728
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->searching:Z

    .line 729
    invoke-virtual {p0}, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
