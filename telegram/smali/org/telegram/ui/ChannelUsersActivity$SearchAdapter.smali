.class Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ChannelUsersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChannelUsersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchAdapter"
.end annotation


# instance fields
.field private contactsStartRow:I

.field private globalStartRow:I

.field private group2StartRow:I

.field private groupStartRow:I

.field private mContext:Landroid/content/Context;

.field private searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

.field private searchResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
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

.field final synthetic this$0:Lorg/telegram/ui/ChannelUsersActivity;

.field private totalCount:I


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ChannelUsersActivity;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 911
    iput-object p1, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 900
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    .line 901
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    .line 912
    iput-object p2, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->mContext:Landroid/content/Context;

    .line 913
    new-instance v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-direct {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    .line 914
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    new-instance v1, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter$1;-><init>(Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;Lorg/telegram/ui/ChannelUsersActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->setDelegate(Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;)V

    .line 925
    return-void
.end method

.method static synthetic access$2400(Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;

    .prologue
    .line 897
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->searchTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$2402(Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 897
    iput-object p1, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->searchTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$2500(Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 897
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->processSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;)Lorg/telegram/ui/Adapters/SearchAdapterHelper;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;

    .prologue
    .line 897
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    return-object v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/util/ArrayList;

    .prologue
    .line 897
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2802(Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 897
    iput-object p1, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2902(Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 897
    iput-object p1, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    return-object p1
.end method

.method private processSearch(Ljava/lang/String;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 958
    new-instance v0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter$3;-><init>(Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1025
    return-void
.end method

.method private updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1028
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .local p2, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter$4;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter$4;-><init>(Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1036
    return-void
.end method


# virtual methods
.method public getItem(I)Lorg/telegram/tgnet/TLObject;
    .locals 3
    .param p1, "i"    # I

    .prologue
    const/4 v1, 0x0

    .line 1100
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGroupSearch()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1101
    .local v0, "count":I
    if-eqz v0, :cond_3

    .line 1102
    add-int/lit8 v2, v0, 0x1

    if-le v2, p1, :cond_2

    .line 1103
    if-nez p1, :cond_1

    .line 1146
    :cond_0
    :goto_0
    return-object v1

    .line 1106
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGroupSearch()Ljava/util/ArrayList;

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLObject;

    goto :goto_0

    .line 1109
    :cond_2
    add-int/lit8 v2, v0, 0x1

    sub-int/2addr p1, v2

    .line 1112
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGroupSearch2()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1113
    if-eqz v0, :cond_5

    .line 1114
    add-int/lit8 v2, v0, 0x1

    if-le v2, p1, :cond_4

    .line 1115
    if-eqz p1, :cond_0

    .line 1118
    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGroupSearch2()Ljava/util/ArrayList;

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLObject;

    goto :goto_0

    .line 1121
    :cond_4
    add-int/lit8 v2, v0, 0x1

    sub-int/2addr p1, v2

    .line 1124
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1125
    if-eqz v0, :cond_7

    .line 1126
    add-int/lit8 v2, v0, 0x1

    if-le v2, p1, :cond_6

    .line 1127
    if-eqz p1, :cond_0

    .line 1130
    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLObject;

    goto :goto_0

    .line 1133
    :cond_6
    add-int/lit8 v2, v0, 0x1

    sub-int/2addr p1, v2

    .line 1136
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1137
    if-eqz v0, :cond_0

    .line 1138
    add-int/lit8 v2, v0, 0x1

    if-le v2, p1, :cond_0

    .line 1139
    if-eqz p1, :cond_0

    .line 1142
    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLObject;

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 6

    .prologue
    .line 1045
    iget-object v5, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1046
    .local v0, "contactsCount":I
    iget-object v5, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v5}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1047
    .local v2, "globalCount":I
    iget-object v5, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v5}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGroupSearch()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1048
    .local v3, "groupsCount":I
    iget-object v5, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v5}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGroupSearch2()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1049
    .local v4, "groupsCount2":I
    const/4 v1, 0x0

    .line 1050
    .local v1, "count":I
    if-eqz v0, :cond_0

    .line 1051
    add-int/lit8 v5, v0, 0x1

    add-int/2addr v1, v5

    .line 1053
    :cond_0
    if-eqz v2, :cond_1

    .line 1054
    add-int/lit8 v5, v2, 0x1

    add-int/2addr v1, v5

    .line 1056
    :cond_1
    if-eqz v3, :cond_2

    .line 1057
    add-int/lit8 v5, v3, 0x1

    add-int/2addr v1, v5

    .line 1059
    :cond_2
    if-eqz v4, :cond_3

    .line 1060
    add-int/lit8 v5, v4, 0x1

    add-int/2addr v1, v5

    .line 1062
    :cond_3
    return v1
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 1294
    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->globalStartRow:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->groupStartRow:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->contactsStartRow:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->group2StartRow:I

    if-ne p1, v0, :cond_1

    .line 1295
    :cond_0
    const/4 v0, 0x1

    .line 1297
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v0, 0x1

    .line 1040
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 1067
    iput v2, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->totalCount:I

    .line 1068
    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGroupSearch()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1069
    .local v0, "count":I
    if-eqz v0, :cond_0

    .line 1070
    iput v2, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->groupStartRow:I

    .line 1071
    iget v1, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->totalCount:I

    add-int/lit8 v2, v0, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->totalCount:I

    .line 1075
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGroupSearch2()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1076
    if-eqz v0, :cond_1

    .line 1077
    iget v1, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->totalCount:I

    iput v1, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->group2StartRow:I

    .line 1078
    iget v1, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->totalCount:I

    add-int/lit8 v2, v0, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->totalCount:I

    .line 1082
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1083
    if-eqz v0, :cond_2

    .line 1084
    iget v1, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->totalCount:I

    iput v1, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->contactsStartRow:I

    .line 1085
    iget v1, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->totalCount:I

    add-int/lit8 v2, v0, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->totalCount:I

    .line 1089
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1090
    if-eqz v0, :cond_3

    .line 1091
    iget v1, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->totalCount:I

    iput v1, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->globalStartRow:I

    .line 1092
    iget v1, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->totalCount:I

    add-int/lit8 v2, v0, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->totalCount:I

    .line 1096
    :goto_3
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;->notifyDataSetChanged()V

    .line 1097
    return-void

    .line 1073
    :cond_0
    iput v3, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->groupStartRow:I

    goto :goto_0

    .line 1080
    :cond_1
    iput v3, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->group2StartRow:I

    goto :goto_1

    .line 1087
    :cond_2
    iput v3, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->contactsStartRow:I

    goto :goto_2

    .line 1094
    :cond_3
    iput v3, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->globalStartRow:I

    goto :goto_3
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 24
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 1179
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v19

    packed-switch v19, :pswitch_data_0

    .line 1283
    :cond_0
    :goto_0
    return-void

    .line 1181
    :pswitch_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v10

    .line 1183
    .local v10, "object":Lorg/telegram/tgnet/TLObject;
    instance-of v0, v10, Lorg/telegram/tgnet/TLRPC$User;

    move/from16 v19, v0

    if-eqz v19, :cond_5

    move-object v15, v10

    .line 1184
    check-cast v15, Lorg/telegram/tgnet/TLRPC$User;

    .line 1189
    .end local v10    # "object":Lorg/telegram/tgnet/TLObject;
    .local v15, "user":Lorg/telegram/tgnet/TLRPC$User;
    :goto_1
    iget-object v14, v15, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    .line 1190
    .local v14, "un":Ljava/lang/String;
    const/16 v17, 0x0

    .line 1191
    .local v17, "username":Ljava/lang/CharSequence;
    const/4 v8, 0x0

    .line 1193
    .local v8, "name":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGroupSearch()Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1194
    .local v4, "count":I
    const/4 v11, 0x0

    .line 1195
    .local v11, "ok":Z
    const/4 v9, 0x0

    .line 1196
    .local v9, "nameSearch":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 1197
    add-int/lit8 v19, v4, 0x1

    move/from16 v0, v19

    move/from16 v1, p2

    if-le v0, v1, :cond_6

    .line 1198
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLastFoundChannel()Ljava/lang/String;

    move-result-object v9

    .line 1199
    const/4 v11, 0x1

    .line 1204
    :cond_1
    :goto_2
    if-nez v11, :cond_2

    .line 1205
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGroupSearch2()Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1206
    if-eqz v4, :cond_2

    .line 1207
    add-int/lit8 v19, v4, 0x1

    move/from16 v0, v19

    move/from16 v1, p2

    if-le v0, v1, :cond_7

    .line 1208
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLastFoundChannel2()Ljava/lang/String;

    move-result-object v9

    .line 1214
    :cond_2
    :goto_3
    if-nez v11, :cond_e

    .line 1215
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1216
    if-eqz v4, :cond_e

    .line 1217
    add-int/lit8 v19, v4, 0x1

    move/from16 v0, v19

    move/from16 v1, p2

    if-le v0, v1, :cond_8

    .line 1218
    const/4 v11, 0x1

    .line 1219
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    add-int/lit8 v20, p2, -0x1

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "name":Ljava/lang/CharSequence;
    check-cast v8, Ljava/lang/CharSequence;

    .line 1220
    .restart local v8    # "name":Ljava/lang/CharSequence;
    if-eqz v8, :cond_e

    if-eqz v14, :cond_e

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_e

    .line 1221
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "@"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 1222
    move-object/from16 v17, v8

    .line 1223
    const/4 v8, 0x0

    move-object/from16 v18, v17

    .line 1231
    .end local v17    # "username":Ljava/lang/CharSequence;
    .local v18, "username":Ljava/lang/CharSequence;
    :goto_4
    if-nez v11, :cond_d

    .line 1232
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1233
    if-eqz v4, :cond_d

    .line 1234
    add-int/lit8 v19, v4, 0x1

    move/from16 v0, v19

    move/from16 v1, p2

    if-le v0, v1, :cond_d

    .line 1235
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLastFoundUsername()Ljava/lang/String;

    move-result-object v6

    .line 1236
    .local v6, "foundUserName":Ljava/lang/String;
    const-string/jumbo v19, "@"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 1237
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 1240
    :cond_3
    :try_start_0
    new-instance v17, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v17

    invoke-direct {v0, v14}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1241
    .end local v18    # "username":Ljava/lang/CharSequence;
    .restart local v17    # "username":Ljava/lang/CharSequence;
    :try_start_1
    move-object/from16 v0, v17

    check-cast v0, Landroid/text/SpannableStringBuilder;

    move-object/from16 v19, v0

    new-instance v20, Landroid/text/style/ForegroundColorSpan;

    const-string/jumbo v21, "windowBackgroundWhiteBlueText4"

    invoke-static/range {v21 .. v21}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v21

    invoke-direct/range {v20 .. v21}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v21, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x21

    invoke-virtual/range {v19 .. v23}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1250
    .end local v6    # "foundUserName":Ljava/lang/String;
    :goto_5
    if-eqz v9, :cond_4

    .line 1251
    invoke-static {v15}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v13

    .line 1252
    .local v13, "u":Ljava/lang/String;
    new-instance v8, Landroid/text/SpannableStringBuilder;

    .end local v8    # "name":Ljava/lang/CharSequence;
    invoke-direct {v8, v13}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1253
    .restart local v8    # "name":Ljava/lang/CharSequence;
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 1254
    .local v7, "idx":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v7, v0, :cond_4

    move-object/from16 v19, v8

    .line 1255
    check-cast v19, Landroid/text/SpannableStringBuilder;

    new-instance v20, Landroid/text/style/ForegroundColorSpan;

    const-string/jumbo v21, "windowBackgroundWhiteBlueText4"

    invoke-static/range {v21 .. v21}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v21

    invoke-direct/range {v20 .. v21}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v21

    add-int v21, v21, v7

    const/16 v22, 0x21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1259
    .end local v7    # "idx":I
    .end local v13    # "u":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v16, v0

    check-cast v16, Lorg/telegram/ui/Cells/ManageChatUserCell;

    .line 1260
    .local v16, "userCell":Lorg/telegram/ui/Cells/ManageChatUserCell;
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/ManageChatUserCell;->setTag(Ljava/lang/Object;)V

    .line 1261
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v15, v8, v1}, Lorg/telegram/ui/Cells/ManageChatUserCell;->setData(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1186
    .end local v4    # "count":I
    .end local v8    # "name":Ljava/lang/CharSequence;
    .end local v9    # "nameSearch":Ljava/lang/String;
    .end local v11    # "ok":Z
    .end local v14    # "un":Ljava/lang/String;
    .end local v15    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v16    # "userCell":Lorg/telegram/ui/Cells/ManageChatUserCell;
    .end local v17    # "username":Ljava/lang/CharSequence;
    .restart local v10    # "object":Lorg/telegram/tgnet/TLObject;
    :cond_5
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v19

    check-cast v10, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .end local v10    # "object":Lorg/telegram/tgnet/TLObject;
    iget v0, v10, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v15

    .restart local v15    # "user":Lorg/telegram/tgnet/TLRPC$User;
    goto/16 :goto_1

    .line 1201
    .restart local v4    # "count":I
    .restart local v8    # "name":Ljava/lang/CharSequence;
    .restart local v9    # "nameSearch":Ljava/lang/String;
    .restart local v11    # "ok":Z
    .restart local v14    # "un":Ljava/lang/String;
    .restart local v17    # "username":Ljava/lang/CharSequence;
    :cond_6
    add-int/lit8 v19, v4, 0x1

    sub-int p2, p2, v19

    goto/16 :goto_2

    .line 1210
    :cond_7
    add-int/lit8 v19, v4, 0x1

    sub-int p2, p2, v19

    goto/16 :goto_3

    .line 1227
    :cond_8
    add-int/lit8 v19, v4, 0x1

    sub-int p2, p2, v19

    move-object/from16 v18, v17

    .end local v17    # "username":Ljava/lang/CharSequence;
    .restart local v18    # "username":Ljava/lang/CharSequence;
    goto/16 :goto_4

    .line 1242
    .restart local v6    # "foundUserName":Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object/from16 v17, v18

    .line 1243
    .end local v18    # "username":Ljava/lang/CharSequence;
    .local v5, "e":Ljava/lang/Exception;
    .restart local v17    # "username":Ljava/lang/CharSequence;
    :goto_6
    move-object/from16 v17, v14

    .line 1244
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 1266
    .end local v4    # "count":I
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "foundUserName":Ljava/lang/String;
    .end local v8    # "name":Ljava/lang/CharSequence;
    .end local v9    # "nameSearch":Ljava/lang/String;
    .end local v11    # "ok":Z
    .end local v14    # "un":Ljava/lang/String;
    .end local v15    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v17    # "username":Ljava/lang/CharSequence;
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v12, Lorg/telegram/ui/Cells/GraySectionCell;

    .line 1267
    .local v12, "sectionCell":Lorg/telegram/ui/Cells/GraySectionCell;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->groupStartRow:I

    move/from16 v19, v0

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 1268
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/ChannelUsersActivity;->access$700(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v19

    if-nez v19, :cond_9

    .line 1269
    const-string/jumbo v19, "ChannelRestrictedUsers"

    const v20, 0x7f07013f

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1271
    :cond_9
    const-string/jumbo v19, "ChannelMembers"

    const v20, 0x7f070125

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1273
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->group2StartRow:I

    move/from16 v19, v0

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 1274
    const-string/jumbo v19, "ChannelBlockedUsers"

    const v20, 0x7f070110

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1275
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->globalStartRow:I

    move/from16 v19, v0

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 1276
    const-string/jumbo v19, "GlobalSearch"

    const v20, 0x7f0702d8

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1277
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->contactsStartRow:I

    move/from16 v19, v0

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 1278
    const-string/jumbo v19, "Contacts"

    const v20, 0x7f070192

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1242
    .end local v12    # "sectionCell":Lorg/telegram/ui/Cells/GraySectionCell;
    .restart local v4    # "count":I
    .restart local v6    # "foundUserName":Ljava/lang/String;
    .restart local v8    # "name":Ljava/lang/CharSequence;
    .restart local v9    # "nameSearch":Ljava/lang/String;
    .restart local v11    # "ok":Z
    .restart local v14    # "un":Ljava/lang/String;
    .restart local v15    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .restart local v17    # "username":Ljava/lang/CharSequence;
    :catch_1
    move-exception v5

    goto/16 :goto_6

    .end local v6    # "foundUserName":Ljava/lang/String;
    .end local v17    # "username":Ljava/lang/CharSequence;
    .restart local v18    # "username":Ljava/lang/CharSequence;
    :cond_d
    move-object/from16 v17, v18

    .end local v18    # "username":Ljava/lang/CharSequence;
    .restart local v17    # "username":Ljava/lang/CharSequence;
    goto/16 :goto_5

    :cond_e
    move-object/from16 v18, v17

    .end local v17    # "username":Ljava/lang/CharSequence;
    .restart local v18    # "username":Ljava/lang/CharSequence;
    goto/16 :goto_4

    .line 1179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 1152
    packed-switch p2, :pswitch_data_0

    .line 1171
    new-instance v0, Lorg/telegram/ui/Cells/GraySectionCell;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/GraySectionCell;-><init>(Landroid/content/Context;)V

    .line 1174
    .local v0, "view":Landroid/view/View;
    :goto_0
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 1154
    .end local v0    # "view":Landroid/view/View;
    :pswitch_0
    new-instance v0, Lorg/telegram/ui/Cells/ManageChatUserCell;

    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelUsersActivity;->access$1300(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    invoke-direct {v0, v2, v3, v1}, Lorg/telegram/ui/Cells/ManageChatUserCell;-><init>(Landroid/content/Context;IZ)V

    .line 1155
    .restart local v0    # "view":Landroid/view/View;
    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    move-object v1, v0

    .line 1156
    check-cast v1, Lorg/telegram/ui/Cells/ManageChatUserCell;

    new-instance v2, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter$5;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter$5;-><init>(Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/ManageChatUserCell;->setDelegate(Lorg/telegram/ui/Cells/ManageChatUserCell$ManageChatUserCellDelegate;)V

    goto :goto_0

    .line 1154
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 1152
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onViewRecycled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 1287
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Lorg/telegram/ui/Cells/ManageChatUserCell;

    if-eqz v0, :cond_0

    .line 1288
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/ManageChatUserCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ManageChatUserCell;->recycle()V

    .line 1290
    :cond_0
    return-void
.end method

.method public searchDialogs(Ljava/lang/String;)V
    .locals 9
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 929
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->searchTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 930
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->searchTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 935
    :cond_0
    :goto_0
    if-nez p1, :cond_3

    .line 936
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 937
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 938
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelUsersActivity;->access$700(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelUsersActivity;->access$800(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v6

    iget-object v5, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelUsersActivity;->access$700(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v5

    if-nez v5, :cond_2

    move v7, v4

    :goto_2
    move v5, v4

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->queryServerSearch(Ljava/lang/String;ZZZZIZ)V

    .line 939
    invoke-virtual {p0}, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->notifyDataSetChanged()V

    .line 955
    :goto_3
    return-void

    .line 932
    :catch_0
    move-exception v8

    .line 933
    .local v8, "e":Ljava/lang/Exception;
    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v8    # "e":Ljava/lang/Exception;
    :cond_1
    move v2, v3

    .line 938
    goto :goto_1

    :cond_2
    move v7, v3

    goto :goto_2

    .line 941
    :cond_3
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->searchTimer:Ljava/util/Timer;

    .line 942
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->searchTimer:Ljava/util/Timer;

    new-instance v1, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter$2;-><init>(Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;Ljava/lang/String;)V

    const-wide/16 v2, 0xc8

    const-wide/16 v4, 0x12c

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_3
.end method
