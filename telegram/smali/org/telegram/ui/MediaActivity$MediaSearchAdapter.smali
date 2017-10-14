.class public Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "MediaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/MediaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaSearchAdapter"
.end annotation


# instance fields
.field private currentType:I

.field protected globalSearch:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private lastReqId:I

.field private mContext:Landroid/content/Context;

.field private reqId:I

.field private searchResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private searchTimer:Ljava/util/Timer;

.field final synthetic this$0:Lorg/telegram/ui/MediaActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/MediaActivity;Landroid/content/Context;I)V
    .locals 1
    .param p1, "this$0"    # Lorg/telegram/ui/MediaActivity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "type"    # I

    .prologue
    .line 1737
    iput-object p1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 1730
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    .line 1732
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->globalSearch:Ljava/util/ArrayList;

    .line 1733
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->reqId:I

    .line 1738
    iput-object p2, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->mContext:Landroid/content/Context;

    .line 1739
    iput p3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I

    .line 1740
    return-void
.end method

.method static synthetic access$4100(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    .prologue
    .line 1728
    iget v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->lastReqId:I

    return v0
.end method

.method static synthetic access$4202(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 1728
    iput p1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->reqId:I

    return p1
.end method

.method static synthetic access$4400(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    .prologue
    .line 1728
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$4402(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 1728
    iput-object p1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$4500(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1728
    invoke-direct {p0, p1}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->processSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4600(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    .prologue
    .line 1728
    iget v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I

    return v0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 1728
    invoke-direct {p0, p1}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->updateSearchResults(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$4802(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 1728
    iput-object p1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    return-object p1
.end method

.method private processSearch(Ljava/lang/String;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 1831
    new-instance v0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;-><init>(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1912
    return-void
.end method

.method private updateSearchResults(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1915
    .local p1, "documents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    new-instance v0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$4;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$4;-><init>(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1922
    return-void
.end method


# virtual methods
.method public getItem(I)Lorg/telegram/messenger/MessageObject;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 1951
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1952
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .line 1954
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->globalSearch:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 3

    .prologue
    .line 1931
    iget-object v2, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1932
    .local v0, "count":I
    iget-object v2, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1933
    .local v1, "globalCount":I
    if-eqz v1, :cond_0

    .line 1934
    add-int/2addr v0, v1

    .line 1936
    :cond_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 2005
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 3
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 1926
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGlobalSearch(I)Z
    .locals 4
    .param p1, "i"    # I

    .prologue
    const/4 v2, 0x0

    .line 1940
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1941
    .local v1, "localCount":I
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1942
    .local v0, "globalCount":I
    if-ltz p1, :cond_1

    if-ge p1, v1, :cond_1

    .line 1947
    :cond_0
    :goto_0
    return v2

    .line 1944
    :cond_1
    if-le p1, v1, :cond_0

    add-int v3, v0, v1

    if-gt p1, v3, :cond_0

    .line 1945
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 12
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1982
    iget v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I

    if-eq v3, v4, :cond_0

    iget v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I

    const/4 v6, 0x4

    if-ne v3, v6, :cond_7

    .line 1983
    :cond_0
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .line 1984
    .local v1, "sharedDocumentCell":Lorg/telegram/ui/Cells/SharedDocumentCell;
    invoke-virtual {p0, p2}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->getItem(I)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 1985
    .local v0, "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {p0}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->getItemCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq p2, v3, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {v1, v0, v3}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setDocument(Lorg/telegram/messenger/MessageObject;Z)V

    .line 1986
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$5000(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1987
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$600(Lorg/telegram/ui/MediaActivity;)[Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v8

    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$000(Lorg/telegram/ui/MediaActivity;)J

    move-result-wide v10

    cmp-long v3, v8, v10

    if-nez v3, :cond_3

    move v3, v5

    :goto_1
    aget-object v3, v6, v3

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    iget-object v6, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v6}, Lorg/telegram/ui/MediaActivity;->access$2200(Lorg/telegram/ui/MediaActivity;)Z

    move-result v6

    if-nez v6, :cond_4

    :goto_2
    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    .line 2001
    .end local v0    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v1    # "sharedDocumentCell":Lorg/telegram/ui/Cells/SharedDocumentCell;
    :cond_1
    :goto_3
    return-void

    .restart local v0    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .restart local v1    # "sharedDocumentCell":Lorg/telegram/ui/Cells/SharedDocumentCell;
    :cond_2
    move v3, v5

    .line 1985
    goto :goto_0

    :cond_3
    move v3, v4

    .line 1987
    goto :goto_1

    :cond_4
    move v4, v5

    goto :goto_2

    .line 1989
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$2200(Lorg/telegram/ui/MediaActivity;)Z

    move-result v3

    if-nez v3, :cond_6

    :goto_4
    invoke-virtual {v1, v5, v4}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    goto :goto_3

    :cond_6
    move v4, v5

    goto :goto_4

    .line 1991
    .end local v0    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v1    # "sharedDocumentCell":Lorg/telegram/ui/Cells/SharedDocumentCell;
    :cond_7
    iget v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I

    const/4 v6, 0x3

    if-ne v3, v6, :cond_1

    .line 1992
    iget-object v2, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/SharedLinkCell;

    .line 1993
    .local v2, "sharedLinkCell":Lorg/telegram/ui/Cells/SharedLinkCell;
    invoke-virtual {p0, p2}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->getItem(I)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 1994
    .restart local v0    # "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {p0}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->getItemCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq p2, v3, :cond_8

    move v3, v4

    :goto_5
    invoke-virtual {v2, v0, v3}, Lorg/telegram/ui/Cells/SharedLinkCell;->setLink(Lorg/telegram/messenger/MessageObject;Z)V

    .line 1995
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$5100(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1996
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$600(Lorg/telegram/ui/MediaActivity;)[Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v8

    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$000(Lorg/telegram/ui/MediaActivity;)J

    move-result-wide v10

    cmp-long v3, v8, v10

    if-nez v3, :cond_9

    move v3, v5

    :goto_6
    aget-object v3, v6, v3

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    iget-object v6, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v6}, Lorg/telegram/ui/MediaActivity;->access$2200(Lorg/telegram/ui/MediaActivity;)Z

    move-result v6

    if-nez v6, :cond_a

    :goto_7
    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Cells/SharedLinkCell;->setChecked(ZZ)V

    goto :goto_3

    :cond_8
    move v3, v5

    .line 1994
    goto :goto_5

    :cond_9
    move v3, v4

    .line 1996
    goto :goto_6

    :cond_a
    move v4, v5

    goto :goto_7

    .line 1998
    :cond_b
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$2200(Lorg/telegram/ui/MediaActivity;)Z

    move-result v3

    if-nez v3, :cond_c

    :goto_8
    invoke-virtual {v2, v5, v4}, Lorg/telegram/ui/Cells/SharedLinkCell;->setChecked(ZZ)V

    goto :goto_3

    :cond_c
    move v4, v5

    goto :goto_8
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 1961
    iget v1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 1962
    :cond_0
    new-instance v0, Lorg/telegram/ui/Cells/SharedDocumentCell;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/SharedDocumentCell;-><init>(Landroid/content/Context;)V

    .line 1977
    .local v0, "view":Landroid/view/View;
    :goto_0
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 1964
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    new-instance v0, Lorg/telegram/ui/Cells/SharedLinkCell;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/SharedLinkCell;-><init>(Landroid/content/Context;)V

    .restart local v0    # "view":Landroid/view/View;
    move-object v1, v0

    .line 1965
    check-cast v1, Lorg/telegram/ui/Cells/SharedLinkCell;

    new-instance v2, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$5;

    invoke-direct {v2, p0}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$5;-><init>(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/SharedLinkCell;->setDelegate(Lorg/telegram/ui/Cells/SharedLinkCell$SharedLinkCellDelegate;)V

    goto :goto_0
.end method

.method public queryServerSearch(Ljava/lang/String;IJ)V
    .locals 7
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "max_id"    # I
    .param p3, "did"    # J

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1743
    long-to-int v2, p3

    .line 1744
    .local v2, "uid":I
    if-nez v2, :cond_1

    .line 1800
    :cond_0
    :goto_0
    return-void

    .line 1747
    :cond_1
    iget v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->reqId:I

    if-eqz v3, :cond_2

    .line 1748
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->reqId:I

    invoke-virtual {v3, v4, v6}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 1749
    iput v5, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->reqId:I

    .line 1751
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    .line 1752
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1753
    iput v5, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->lastReqId:I

    .line 1754
    invoke-virtual {p0}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1757
    :cond_4
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_search;-><init>()V

    .line 1758
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_search;
    const/16 v3, 0x32

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->limit:I

    .line 1759
    iput p2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->offset_id:I

    .line 1760
    iget v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I

    if-ne v3, v6, :cond_6

    .line 1761
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterDocument;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterDocument;-><init>()V

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    .line 1767
    :cond_5
    :goto_1
    iput-object p1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->q:Ljava/lang/String;

    .line 1768
    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1769
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v3, :cond_0

    .line 1772
    iget v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->lastReqId:I

    add-int/lit8 v0, v3, 0x1

    iput v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->lastReqId:I

    .line 1773
    .local v0, "currentReqId":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$1;

    invoke-direct {v4, p0, p2, v0}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$1;-><init>(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;II)V

    const/4 v5, 0x2

    invoke-virtual {v3, v1, v4, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->reqId:I

    .line 1799
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->reqId:I

    iget-object v5, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v5}, Lorg/telegram/ui/MediaActivity;->access$4300(Lorg/telegram/ui/MediaActivity;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto :goto_0

    .line 1762
    .end local v0    # "currentReqId":I
    :cond_6
    iget v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_7

    .line 1763
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterUrl;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterUrl;-><init>()V

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    goto :goto_1

    .line 1764
    :cond_7
    iget v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    .line 1765
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterMusic;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterMusic;-><init>()V

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    goto :goto_1
.end method

.method public search(Ljava/lang/String;)V
    .locals 7
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 1804
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1805
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1810
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 1811
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1812
    invoke-virtual {p0}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->notifyDataSetChanged()V

    .line 1828
    :goto_1
    return-void

    .line 1807
    :catch_0
    move-exception v6

    .line 1808
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1814
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchTimer:Ljava/util/Timer;

    .line 1815
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->searchTimer:Ljava/util/Timer;

    new-instance v1, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$2;-><init>(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;Ljava/lang/String;)V

    const-wide/16 v2, 0xc8

    const-wide/16 v4, 0x12c

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_1
.end method
