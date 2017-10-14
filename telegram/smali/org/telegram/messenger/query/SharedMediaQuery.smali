.class public Lorg/telegram/messenger/query/SharedMediaQuery;
.super Ljava/lang/Object;
.source "SharedMediaQuery.java"


# static fields
.field public static final MEDIA_AUDIO:I = 0x2

.field public static final MEDIA_FILE:I = 0x1

.field public static final MEDIA_MUSIC:I = 0x4

.field public static final MEDIA_PHOTOVIDEO:I = 0x0

.field public static final MEDIA_TYPES_COUNT:I = 0x5

.field public static final MEDIA_URL:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIIZIZZ)V
    .locals 1
    .param p0, "x0"    # Lorg/telegram/tgnet/TLRPC$messages_Messages;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # Z
    .param p7, "x6"    # I
    .param p8, "x7"    # Z
    .param p9, "x8"    # Z

    .prologue
    .line 34
    invoke-static/range {p0 .. p9}, Lorg/telegram/messenger/query/SharedMediaQuery;->processLoadedMedia(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIIZIZZ)V

    return-void
.end method

.method static synthetic access$100(IJIIZ)V
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Z

    .prologue
    .line 34
    invoke-static/range {p0 .. p5}, Lorg/telegram/messenger/query/SharedMediaQuery;->processLoadedMediaCount(IJIIZ)V

    return-void
.end method

.method static synthetic access$200(JII)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .prologue
    .line 34
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/messenger/query/SharedMediaQuery;->putMediaCountDatabase(JII)V

    return-void
.end method

.method public static canAddMessageToMedia(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 6
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 171
    instance-of v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v4, :cond_2

    :cond_0
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    if-eqz v4, :cond_2

    .line 186
    :cond_1
    :goto_0
    return v2

    .line 173
    :cond_2
    instance-of v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v4, :cond_3

    iget v4, p0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    if-eqz v4, :cond_3

    iget v4, p0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    const/16 v5, 0x3c

    if-le v4, v5, :cond_1

    .line 175
    :cond_3
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-nez v4, :cond_4

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 176
    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    move v2, v3

    .line 177
    goto :goto_0

    .line 178
    :cond_5
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 179
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 180
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    .line 181
    .local v1, "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    instance-of v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messageEntityUrl;

    if-nez v4, :cond_6

    instance-of v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;

    if-nez v4, :cond_6

    instance-of v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messageEntityEmail;

    if-eqz v4, :cond_7

    :cond_6
    move v2, v3

    .line 182
    goto :goto_0

    .line 179
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getMediaCount(JIIZ)V
    .locals 6
    .param p0, "uid"    # J
    .param p2, "type"    # I
    .param p3, "classGuid"    # I
    .param p4, "fromCache"    # Z

    .prologue
    const/4 v4, 0x1

    .line 90
    long-to-int v0, p0

    .line 91
    .local v0, "lower_part":I
    if-nez p4, :cond_0

    if-nez v0, :cond_2

    .line 92
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaCountDatabase(JII)V

    .line 139
    :cond_1
    :goto_0
    return-void

    .line 94
    :cond_2
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_search;-><init>()V

    .line 95
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_search;
    iput v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->limit:I

    .line 96
    const/4 v3, 0x0

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->offset_id:I

    .line 97
    if-nez p2, :cond_4

    .line 98
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhotoVideo;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhotoVideo;-><init>()V

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    .line 108
    :cond_3
    :goto_1
    const-string/jumbo v3, ""

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->q:Ljava/lang/String;

    .line 109
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 110
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v3, :cond_1

    .line 113
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/query/SharedMediaQuery$2;

    invoke-direct {v4, p0, p1, p2, p3}, Lorg/telegram/messenger/query/SharedMediaQuery$2;-><init>(JII)V

    invoke-virtual {v3, v1, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v2

    .line 137
    .local v2, "reqId":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    invoke-virtual {v3, v2, p3}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto :goto_0

    .line 99
    .end local v2    # "reqId":I
    :cond_4
    if-ne p2, v4, :cond_5

    .line 100
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterDocument;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterDocument;-><init>()V

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    goto :goto_1

    .line 101
    :cond_5
    const/4 v3, 0x2

    if-ne p2, v3, :cond_6

    .line 102
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterVoice;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterVoice;-><init>()V

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    goto :goto_1

    .line 103
    :cond_6
    const/4 v3, 0x3

    if-ne p2, v3, :cond_7

    .line 104
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterUrl;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterUrl;-><init>()V

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    goto :goto_1

    .line 105
    :cond_7
    const/4 v3, 0x4

    if-ne p2, v3, :cond_3

    .line 106
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterMusic;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterMusic;-><init>()V

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    goto :goto_1
.end method

.method private static getMediaCountDatabase(JII)V
    .locals 2
    .param p0, "uid"    # J
    .param p2, "type"    # I
    .param p3, "classGuid"    # I

    .prologue
    .line 260
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/query/SharedMediaQuery$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/query/SharedMediaQuery$6;-><init>(JII)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 288
    return-void
.end method

.method public static getMediaType(Lorg/telegram/tgnet/TLRPC$Message;)I
    .locals 5
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 142
    if-nez p0, :cond_1

    .line 167
    :cond_0
    :goto_0
    return v2

    .line 145
    :cond_1
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v4, :cond_2

    move v2, v3

    .line 146
    goto :goto_0

    .line 147
    :cond_2
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v4, :cond_7

    .line 148
    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->isVoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->isRoundVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 149
    :cond_3
    const/4 v2, 0x2

    goto :goto_0

    .line 150
    :cond_4
    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->isVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v2, v3

    .line 151
    goto :goto_0

    .line 152
    :cond_5
    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->isStickerMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 154
    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->isMusicMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 155
    const/4 v2, 0x4

    goto :goto_0

    .line 157
    :cond_6
    const/4 v2, 0x1

    goto :goto_0

    .line 159
    :cond_7
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 160
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 161
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    .line 162
    .local v1, "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messageEntityUrl;

    if-nez v3, :cond_8

    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;

    if-nez v3, :cond_8

    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messageEntityEmail;

    if-eqz v3, :cond_9

    .line 163
    :cond_8
    const/4 v2, 0x3

    goto :goto_0

    .line 160
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static loadMedia(JIIIZI)V
    .locals 20
    .param p0, "uid"    # J
    .param p2, "count"    # I
    .param p3, "max_id"    # I
    .param p4, "type"    # I
    .param p5, "fromCache"    # Z
    .param p6, "classGuid"    # I

    .prologue
    .line 44
    move-wide/from16 v0, p0

    long-to-int v2, v0

    if-gez v2, :cond_2

    move-wide/from16 v0, p0

    long-to-int v2, v0

    neg-int v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v8, 0x1

    .line 46
    .local v8, "isChannel":Z
    :goto_0
    move-wide/from16 v0, p0

    long-to-int v9, v0

    .line 47
    .local v9, "lower_part":I
    if-nez p5, :cond_0

    if-nez v9, :cond_3

    :cond_0
    move-wide/from16 v2, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p6

    .line 48
    invoke-static/range {v2 .. v8}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMediaDatabase(JIIIIZ)V

    .line 87
    :cond_1
    :goto_1
    return-void

    .line 44
    .end local v8    # "isChannel":Z
    .end local v9    # "lower_part":I
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 50
    .restart local v8    # "isChannel":Z
    .restart local v9    # "lower_part":I
    :cond_3
    new-instance v18, Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    invoke-direct/range {v18 .. v18}, Lorg/telegram/tgnet/TLRPC$TL_messages_search;-><init>()V

    .line 51
    .local v18, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_search;
    add-int/lit8 v2, p2, 0x1

    move-object/from16 v0, v18

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->limit:I

    .line 52
    move/from16 v0, p3

    move-object/from16 v1, v18

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->offset_id:I

    .line 53
    if-nez p4, :cond_5

    .line 54
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhotoVideo;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhotoVideo;-><init>()V

    move-object/from16 v0, v18

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    .line 64
    :cond_4
    :goto_2
    const-string/jumbo v2, ""

    move-object/from16 v0, v18

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->q:Ljava/lang/String;

    .line 65
    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 66
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v2, :cond_1

    .line 69
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v10, Lorg/telegram/messenger/query/SharedMediaQuery$1;

    move/from16 v11, p2

    move-wide/from16 v12, p0

    move/from16 v14, p3

    move/from16 v15, p4

    move/from16 v16, p6

    move/from16 v17, v8

    invoke-direct/range {v10 .. v17}, Lorg/telegram/messenger/query/SharedMediaQuery$1;-><init>(IJIIIZ)V

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v10}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v19

    .line 85
    .local v19, "reqId":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    move/from16 v0, v19

    move/from16 v1, p6

    invoke-virtual {v2, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto :goto_1

    .line 55
    .end local v19    # "reqId":I
    :cond_5
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_6

    .line 56
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterDocument;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterDocument;-><init>()V

    move-object/from16 v0, v18

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    goto :goto_2

    .line 57
    :cond_6
    const/4 v2, 0x2

    move/from16 v0, p4

    if-ne v0, v2, :cond_7

    .line 58
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterVoice;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterVoice;-><init>()V

    move-object/from16 v0, v18

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    goto :goto_2

    .line 59
    :cond_7
    const/4 v2, 0x3

    move/from16 v0, p4

    if-ne v0, v2, :cond_8

    .line 60
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterUrl;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterUrl;-><init>()V

    move-object/from16 v0, v18

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    goto :goto_2

    .line 61
    :cond_8
    const/4 v2, 0x4

    move/from16 v0, p4

    if-ne v0, v2, :cond_4

    .line 62
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterMusic;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterMusic;-><init>()V

    move-object/from16 v0, v18

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    goto :goto_2
.end method

.method private static loadMediaDatabase(JIIIIZ)V
    .locals 10
    .param p0, "uid"    # J
    .param p2, "count"    # I
    .param p3, "max_id"    # I
    .param p4, "type"    # I
    .param p5, "classGuid"    # I
    .param p6, "isChannel"    # Z

    .prologue
    .line 291
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v8

    new-instance v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;

    move v1, p2

    move-wide v2, p0

    move v4, p3

    move/from16 v5, p6

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/query/SharedMediaQuery$7;-><init>(IJIZII)V

    invoke-virtual {v8, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 423
    return-void
.end method

.method public static loadMusic(JJ)V
    .locals 2
    .param p0, "uid"    # J
    .param p2, "max_id"    # J

    .prologue
    .line 476
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/query/SharedMediaQuery$9;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/query/SharedMediaQuery$9;-><init>(JJ)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 513
    return-void
.end method

.method private static processLoadedMedia(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIIZIZZ)V
    .locals 17
    .param p0, "res"    # Lorg/telegram/tgnet/TLRPC$messages_Messages;
    .param p1, "uid"    # J
    .param p3, "count"    # I
    .param p4, "max_id"    # I
    .param p5, "type"    # I
    .param p6, "fromCache"    # Z
    .param p7, "classGuid"    # I
    .param p8, "isChannel"    # Z
    .param p9, "topReached"    # Z

    .prologue
    .line 190
    move-wide/from16 v0, p1

    long-to-int v13, v0

    .line 191
    .local v13, "lower_part":I
    if-eqz p6, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v13, :cond_0

    .line 192
    const/4 v7, 0x0

    move-wide/from16 v2, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v8, p7

    invoke-static/range {v2 .. v8}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMedia(JIIIZI)V

    .line 221
    :goto_0
    return-void

    .line 194
    :cond_0
    if-nez p6, :cond_1

    .line 195
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLoader;->saveMessagesThumbs(Ljava/util/ArrayList;)V

    .line 196
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 197
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    move-wide/from16 v2, p1

    move/from16 v4, p5

    move/from16 v6, p4

    move/from16 v7, p9

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/query/SharedMediaQuery;->putMediaDatabase(JILjava/util/ArrayList;IZ)V

    .line 200
    :cond_1
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 201
    .local v16, "usersDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    const/4 v12, 0x0

    .local v12, "a":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_2

    .line 202
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$User;

    .line 203
    .local v15, "u":Lorg/telegram/tgnet/TLRPC$User;
    iget v2, v15, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 205
    .end local v15    # "u":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v8, "objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    const/4 v12, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_3

    .line 207
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/tgnet/TLRPC$Message;

    .line 208
    .local v14, "message":Lorg/telegram/tgnet/TLRPC$Message;
    new-instance v2, Lorg/telegram/messenger/MessageObject;

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-direct {v2, v14, v0, v3}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 211
    .end local v14    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_3
    new-instance v3, Lorg/telegram/messenger/query/SharedMediaQuery$3;

    move-object/from16 v4, p0

    move/from16 v5, p6

    move-wide/from16 v6, p1

    move/from16 v9, p7

    move/from16 v10, p5

    move/from16 v11, p9

    invoke-direct/range {v3 .. v11}, Lorg/telegram/messenger/query/SharedMediaQuery$3;-><init>(Lorg/telegram/tgnet/TLRPC$messages_Messages;ZJLjava/util/ArrayList;IIZ)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method private static processLoadedMediaCount(IJIIZ)V
    .locals 9
    .param p0, "count"    # I
    .param p1, "uid"    # J
    .param p3, "type"    # I
    .param p4, "classGuid"    # I
    .param p5, "fromCache"    # Z

    .prologue
    .line 224
    new-instance v1, Lorg/telegram/messenger/query/SharedMediaQuery$4;

    move-wide v2, p1

    move v4, p5

    move v5, p0

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/query/SharedMediaQuery$4;-><init>(JZIII)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 238
    return-void
.end method

.method private static putMediaCountDatabase(JII)V
    .locals 2
    .param p0, "uid"    # J
    .param p2, "type"    # I
    .param p3, "count"    # I

    .prologue
    .line 241
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/query/SharedMediaQuery$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/query/SharedMediaQuery$5;-><init>(JII)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 257
    return-void
.end method

.method private static putMediaDatabase(JILjava/util/ArrayList;IZ)V
    .locals 8
    .param p0, "uid"    # J
    .param p2, "type"    # I
    .param p4, "max_id"    # I
    .param p5, "topReached"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 426
    .local p3, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/query/SharedMediaQuery$8;

    move-object v2, p3

    move v3, p5

    move-wide v4, p0

    move v6, p4

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/query/SharedMediaQuery$8;-><init>(Ljava/util/ArrayList;ZJII)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 473
    return-void
.end method
