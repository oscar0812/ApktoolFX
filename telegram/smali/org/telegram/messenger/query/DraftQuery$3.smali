.class final Lorg/telegram/messenger/query/DraftQuery$3;
.super Ljava/lang/Object;
.source "DraftQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/DraftQuery;->saveDraft(JLorg/telegram/tgnet/TLRPC$DraftMessage;Lorg/telegram/tgnet/TLRPC$Message;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$channelIdFinal:I

.field final synthetic val$did:J

.field final synthetic val$messageIdFinal:J


# direct methods
.method constructor <init>(JIJ)V
    .locals 0

    .prologue
    .line 212
    iput-wide p1, p0, Lorg/telegram/messenger/query/DraftQuery$3;->val$messageIdFinal:J

    iput p3, p0, Lorg/telegram/messenger/query/DraftQuery$3;->val$channelIdFinal:I

    iput-wide p4, p0, Lorg/telegram/messenger/query/DraftQuery$3;->val$did:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 216
    const/4 v3, 0x0

    .line 217
    .local v3, "message":Lorg/telegram/tgnet/TLRPC$Message;
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "SELECT data FROM messages WHERE mid = %d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-wide v10, p0, Lorg/telegram/messenger/query/DraftQuery$3;->val$messageIdFinal:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    .line 218
    .local v0, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 219
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v1

    .line 220
    .local v1, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v1, :cond_0

    .line 221
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v1, v5, v6}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v3

    .line 222
    invoke-virtual {v1}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 225
    .end local v1    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 226
    if-nez v3, :cond_2

    .line 227
    iget v5, p0, Lorg/telegram/messenger/query/DraftQuery$3;->val$channelIdFinal:I

    if-eqz v5, :cond_1

    .line 228
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;-><init>()V

    .line 229
    .local v4, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;
    iget v5, p0, Lorg/telegram/messenger/query/DraftQuery$3;->val$channelIdFinal:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 230
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;->id:Ljava/util/ArrayList;

    iget-wide v6, p0, Lorg/telegram/messenger/query/DraftQuery$3;->val$messageIdFinal:J

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    new-instance v6, Lorg/telegram/messenger/query/DraftQuery$3$1;

    invoke-direct {v6, p0}, Lorg/telegram/messenger/query/DraftQuery$3$1;-><init>(Lorg/telegram/messenger/query/DraftQuery$3;)V

    invoke-virtual {v5, v4, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 263
    .end local v0    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v4    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;
    :goto_0
    return-void

    .line 243
    .restart local v0    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_1
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;-><init>()V

    .line 244
    .local v4, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;->id:Ljava/util/ArrayList;

    iget-wide v6, p0, Lorg/telegram/messenger/query/DraftQuery$3;->val$messageIdFinal:J

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    new-instance v6, Lorg/telegram/messenger/query/DraftQuery$3$2;

    invoke-direct {v6, p0}, Lorg/telegram/messenger/query/DraftQuery$3$2;-><init>(Lorg/telegram/messenger/query/DraftQuery$3;)V

    invoke-virtual {v5, v4, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 260
    .end local v0    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v4    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;
    :catch_0
    move-exception v2

    .line 261
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 258
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_2
    :try_start_1
    iget-wide v6, p0, Lorg/telegram/messenger/query/DraftQuery$3;->val$did:J

    invoke-static {v6, v7, v3}, Lorg/telegram/messenger/query/DraftQuery;->access$100(JLorg/telegram/tgnet/TLRPC$Message;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
