.class public Lorg/telegram/messenger/query/MessagesSearchQuery;
.super Ljava/lang/Object;
.source "MessagesSearchQuery.java"


# static fields
.field private static lastMergeDialogId:J

.field private static lastReqId:I

.field private static lastReturnedNum:I

.field private static lastSearchQuery:Ljava/lang/String;

.field private static mergeReqId:I

.field private static messagesSearchCount:[I

.field private static messagesSearchEndReached:[Z

.field private static reqId:I

.field private static searchResultMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private static searchResultMessagesMap:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x2

    .line 31
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchCount:[I

    .line 32
    new-array v0, v1, [Z

    fill-array-data v0, :array_1

    sput-object v0, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchEndReached:[Z

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/messenger/query/MessagesSearchQuery;->searchResultMessages:Ljava/util/ArrayList;

    .line 34
    new-array v0, v1, [Ljava/util/HashMap;

    const/4 v1, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lorg/telegram/messenger/query/MessagesSearchQuery;->searchResultMessagesMap:[Ljava/util/HashMap;

    return-void

    .line 31
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 32
    :array_1
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .prologue
    .line 25
    sget-wide v0, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastMergeDialogId:J

    return-wide v0
.end method

.method static synthetic access$1000()I
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->getMask()I

    move-result v0

    return v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 25
    sput p0, Lorg/telegram/messenger/query/MessagesSearchQuery;->mergeReqId:I

    return p0
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastSearchQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()[Z
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchEndReached:[Z

    return-object v0
.end method

.method static synthetic access$300()[I
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchCount:[I

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;JJIIZLorg/telegram/tgnet/TLRPC$User;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # I
    .param p6, "x4"    # I
    .param p7, "x5"    # Z
    .param p8, "x6"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 25
    invoke-static/range {p0 .. p8}, Lorg/telegram/messenger/query/MessagesSearchQuery;->searchMessagesInChat(Ljava/lang/String;JJIIZLorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 25
    sget v0, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReqId:I

    return v0
.end method

.method static synthetic access$602(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 25
    sput p0, Lorg/telegram/messenger/query/MessagesSearchQuery;->reqId:I

    return p0
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 25
    sget v0, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    return v0
.end method

.method static synthetic access$702(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 25
    sput p0, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    return p0
.end method

.method static synthetic access$800()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lorg/telegram/messenger/query/MessagesSearchQuery;->searchResultMessages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900()[Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lorg/telegram/messenger/query/MessagesSearchQuery;->searchResultMessagesMap:[Ljava/util/HashMap;

    return-object v0
.end method

.method public static getLastSearchQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    sget-object v0, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastSearchQuery:Ljava/lang/String;

    return-object v0
.end method

.method private static getMask()I
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 40
    .local v0, "mask":I
    sget v1, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    sget-object v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_0

    sget-object v1, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchEndReached:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    sget-object v1, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchEndReached:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-nez v1, :cond_1

    .line 41
    :cond_0
    or-int/lit8 v0, v0, 0x1

    .line 43
    :cond_1
    sget v1, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    if-lez v1, :cond_2

    .line 44
    or-int/lit8 v0, v0, 0x2

    .line 46
    :cond_2
    return v0
.end method

.method public static isMessageFound(IZ)Z
    .locals 2
    .param p0, "messageId"    # I
    .param p1, "mergeDialog"    # Z

    .prologue
    .line 50
    sget-object v1, Lorg/telegram/messenger/query/MessagesSearchQuery;->searchResultMessagesMap:[Ljava/util/HashMap;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    aget-object v0, v1, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static searchMessagesInChat(Ljava/lang/String;JJIILorg/telegram/tgnet/TLRPC$User;)V
    .locals 11
    .param p0, "query"    # Ljava/lang/String;
    .param p1, "dialog_id"    # J
    .param p3, "mergeDialogId"    # J
    .param p5, "guid"    # I
    .param p6, "direction"    # I
    .param p7, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 54
    const/4 v8, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v9, p7

    invoke-static/range {v1 .. v9}, Lorg/telegram/messenger/query/MessagesSearchQuery;->searchMessagesInChat(Ljava/lang/String;JJIIZLorg/telegram/tgnet/TLRPC$User;)V

    .line 55
    return-void
.end method

.method private static searchMessagesInChat(Ljava/lang/String;JJIIZLorg/telegram/tgnet/TLRPC$User;)V
    .locals 21
    .param p0, "query"    # Ljava/lang/String;
    .param p1, "dialog_id"    # J
    .param p3, "mergeDialogId"    # J
    .param p5, "guid"    # I
    .param p6, "direction"    # I
    .param p7, "internal"    # Z
    .param p8, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 58
    const/16 v16, 0x0

    .line 59
    .local v16, "max_id":I
    move-wide/from16 v18, p1

    .line 60
    .local v18, "queryWithDialog":J
    if-nez p7, :cond_3

    const/4 v14, 0x1

    .line 61
    .local v14, "firstQuery":Z
    :goto_0
    sget v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->reqId:I

    if-eqz v2, :cond_0

    .line 62
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/query/MessagesSearchQuery;->reqId:I

    const/4 v8, 0x1

    invoke-virtual {v2, v3, v8}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 63
    const/4 v2, 0x0

    sput v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->reqId:I

    .line 65
    :cond_0
    sget v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->mergeReqId:I

    if-eqz v2, :cond_1

    .line 66
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/query/MessagesSearchQuery;->mergeReqId:I

    const/4 v8, 0x1

    invoke-virtual {v2, v3, v8}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 67
    const/4 v2, 0x0

    sput v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->mergeReqId:I

    .line 69
    :cond_1
    if-nez p0, :cond_f

    .line 70
    sget-object v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 239
    :cond_2
    :goto_1
    return-void

    .line 60
    .end local v14    # "firstQuery":Z
    :cond_3
    const/4 v14, 0x0

    goto :goto_0

    .line 73
    .restart local v14    # "firstQuery":Z
    :cond_4
    const/4 v2, 0x1

    move/from16 v0, p6

    if-ne v0, v2, :cond_c

    .line 74
    sget v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    .line 75
    sget v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    sget-object v3, Lorg/telegram/messenger/query/MessagesSearchQuery;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 76
    sget-object v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->searchResultMessages:Ljava/util/ArrayList;

    sget v3, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/telegram/messenger/MessageObject;

    .line 77
    .local v17, "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->chatSearchResultsAvailable:I

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->getMask()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    sget v10, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x5

    sget-object v10, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchCount:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    sget-object v11, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchCount:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    add-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v2, v3, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_1

    .line 80
    .end local v17    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_5
    sget-object v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchEndReached:[Z

    const/4 v3, 0x0

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_6

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-nez v2, :cond_6

    sget-object v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchEndReached:[Z

    const/4 v3, 0x1

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_6

    .line 81
    sget v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    goto/16 :goto_1

    .line 84
    :cond_6
    const/4 v14, 0x0

    .line 85
    sget-object p0, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastSearchQuery:Ljava/lang/String;

    .line 86
    sget-object v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->searchResultMessages:Ljava/util/ArrayList;

    sget-object v3, Lorg/telegram/messenger/query/MessagesSearchQuery;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/telegram/messenger/MessageObject;

    .line 87
    .restart local v17    # "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_a

    sget-object v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchEndReached:[Z

    const/4 v3, 0x0

    aget-boolean v2, v2, v3

    if-nez v2, :cond_a

    .line 88
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v16

    .line 89
    move-wide/from16 v18, p1

    .line 121
    .end local v17    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_7
    :goto_2
    sget-object v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchEndReached:[Z

    const/4 v3, 0x0

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_8

    sget-object v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchEndReached:[Z

    const/4 v3, 0x1

    aget-boolean v2, v2, v3

    if-nez v2, :cond_8

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-eqz v2, :cond_8

    .line 122
    move-wide/from16 v18, p3

    .line 124
    :cond_8
    cmp-long v2, v18, p1

    if-nez v2, :cond_12

    if-eqz v14, :cond_12

    .line 125
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-eqz v2, :cond_11

    .line 126
    move-wide/from16 v0, p3

    long-to-int v2, v0

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v15

    .line 127
    .local v15, "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    if-eqz v15, :cond_2

    .line 130
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messages_search;-><init>()V

    .line 131
    .local v5, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_search;
    iput-object v15, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 132
    sput-wide p3, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastMergeDialogId:J

    .line 133
    const/4 v2, 0x1

    iput v2, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->limit:I

    .line 134
    if-eqz p0, :cond_10

    move-object/from16 v2, p0

    :goto_3
    iput-object v2, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->q:Ljava/lang/String;

    .line 135
    if-eqz p8, :cond_9

    .line 136
    invoke-static/range {p8 .. p8}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v2

    iput-object v2, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->from_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 137
    iget v2, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->flags:I

    .line 139
    :cond_9
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;-><init>()V

    iput-object v2, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    .line 140
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v11

    new-instance v2, Lorg/telegram/messenger/query/MessagesSearchQuery$1;

    move-wide/from16 v3, p3

    move-wide/from16 v6, p1

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lorg/telegram/messenger/query/MessagesSearchQuery$1;-><init>(JLorg/telegram/tgnet/TLRPC$TL_messages_search;JIILorg/telegram/tgnet/TLRPC$User;)V

    const/4 v3, 0x2

    invoke-virtual {v11, v5, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->mergeReqId:I

    goto/16 :goto_1

    .line 91
    .end local v5    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_search;
    .end local v15    # "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    .restart local v17    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_a
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    cmp-long v2, v2, p3

    if-nez v2, :cond_b

    .line 92
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v16

    .line 94
    :cond_b
    move-wide/from16 v18, p3

    .line 95
    sget-object v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchEndReached:[Z

    const/4 v3, 0x1

    const/4 v8, 0x0

    aput-boolean v8, v2, v3

    goto/16 :goto_2

    .line 98
    .end local v17    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_c
    const/4 v2, 0x2

    move/from16 v0, p6

    if-ne v0, v2, :cond_2

    .line 99
    sget v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    .line 100
    sget v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    if-gez v2, :cond_d

    .line 101
    const/4 v2, 0x0

    sput v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    goto/16 :goto_1

    .line 104
    :cond_d
    sget v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    sget-object v3, Lorg/telegram/messenger/query/MessagesSearchQuery;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_e

    .line 105
    sget-object v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sput v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    .line 107
    :cond_e
    sget-object v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->searchResultMessages:Ljava/util/ArrayList;

    sget v3, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/telegram/messenger/MessageObject;

    .line 108
    .restart local v17    # "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->chatSearchResultsAvailable:I

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->getMask()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    sget v10, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x5

    sget-object v10, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchCount:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    sget-object v11, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchCount:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    add-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v2, v3, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 113
    .end local v17    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_f
    if-eqz v14, :cond_7

    .line 114
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->chatSearchResultsLoading:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v2, v3, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 115
    sget-object v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchEndReached:[Z

    const/4 v3, 0x0

    sget-object v8, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchEndReached:[Z

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-boolean v10, v8, v9

    aput-boolean v10, v2, v3

    .line 116
    sget-object v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchCount:[I

    const/4 v3, 0x0

    sget-object v8, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchCount:[I

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput v10, v8, v9

    aput v10, v2, v3

    .line 117
    sget-object v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 118
    sget-object v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->searchResultMessagesMap:[Ljava/util/HashMap;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 119
    sget-object v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->searchResultMessagesMap:[Ljava/util/HashMap;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_2

    .line 134
    .restart local v5    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_search;
    .restart local v15    # "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    :cond_10
    const-string/jumbo v2, ""

    goto/16 :goto_3

    .line 161
    .end local v5    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_search;
    .end local v15    # "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    :cond_11
    const-wide/16 v2, 0x0

    sput-wide v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastMergeDialogId:J

    .line 162
    sget-object v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchEndReached:[Z

    const/4 v3, 0x1

    const/4 v8, 0x1

    aput-boolean v8, v2, v3

    .line 163
    sget-object v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchCount:[I

    const/4 v3, 0x1

    const/4 v8, 0x0

    aput v8, v2, v3

    .line 166
    :cond_12
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messages_search;-><init>()V

    .line 167
    .restart local v5    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_search;
    move-wide/from16 v0, v18

    long-to-int v2, v0

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 168
    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v2, :cond_2

    .line 171
    const/16 v2, 0x15

    iput v2, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->limit:I

    .line 172
    if-eqz p0, :cond_14

    move-object/from16 v2, p0

    :goto_4
    iput-object v2, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->q:Ljava/lang/String;

    .line 173
    move/from16 v0, v16

    iput v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->offset_id:I

    .line 174
    if-eqz p8, :cond_13

    .line 175
    invoke-static/range {p8 .. p8}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v2

    iput-object v2, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->from_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 176
    iget v2, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->flags:I

    .line 178
    :cond_13
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;-><init>()V

    iput-object v2, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    .line 179
    sget v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReqId:I

    add-int/lit8 v4, v2, 0x1

    sput v4, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReqId:I

    .line 180
    .local v4, "currentReqId":I
    sput-object p0, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastSearchQuery:Ljava/lang/String;

    .line 181
    move-wide/from16 v6, v18

    .line 182
    .local v6, "queryWithDialogFinal":J
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    move-wide/from16 v8, p1

    move/from16 v10, p5

    move-wide/from16 v11, p3

    move-object/from16 v13, p8

    invoke-direct/range {v3 .. v13}, Lorg/telegram/messenger/query/MessagesSearchQuery$2;-><init>(ILorg/telegram/tgnet/TLRPC$TL_messages_search;JJIJLorg/telegram/tgnet/TLRPC$User;)V

    const/4 v8, 0x2

    invoke-virtual {v2, v5, v3, v8}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->reqId:I

    goto/16 :goto_1

    .line 172
    .end local v4    # "currentReqId":I
    .end local v6    # "queryWithDialogFinal":J
    :cond_14
    const-string/jumbo v2, ""

    goto :goto_4
.end method
