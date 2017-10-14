.class Lorg/telegram/messenger/MessagesStorage$38;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->saveBotCache(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$result:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 2322
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$38;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$38;->val$result:Lorg/telegram/tgnet/TLObject;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesStorage$38;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2326
    :try_start_0
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    .line 2327
    .local v0, "currentDate":I
    iget-object v4, p0, Lorg/telegram/messenger/MessagesStorage$38;->val$result:Lorg/telegram/tgnet/TLObject;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;

    if-eqz v4, :cond_1

    .line 2328
    iget-object v4, p0, Lorg/telegram/messenger/MessagesStorage$38;->val$result:Lorg/telegram/tgnet/TLObject;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->cache_time:I

    add-int/2addr v0, v4

    .line 2332
    :cond_0
    :goto_0
    iget-object v4, p0, Lorg/telegram/messenger/MessagesStorage$38;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    const-string/jumbo v5, "REPLACE INTO botcache VALUES(?, ?, ?)"

    invoke-virtual {v4, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v3

    .line 2333
    .local v3, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    new-instance v1, Lorg/telegram/tgnet/NativeByteBuffer;

    iget-object v4, p0, Lorg/telegram/messenger/MessagesStorage$38;->val$result:Lorg/telegram/tgnet/TLObject;

    invoke-virtual {v4}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v4

    invoke-direct {v1, v4}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 2334
    .local v1, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    iget-object v4, p0, Lorg/telegram/messenger/MessagesStorage$38;->val$result:Lorg/telegram/tgnet/TLObject;

    invoke-virtual {v4, v1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 2335
    const/4 v4, 0x1

    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$38;->val$key:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    .line 2336
    const/4 v4, 0x2

    invoke-virtual {v3, v4, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 2337
    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 2338
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 2339
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 2340
    invoke-virtual {v1}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 2344
    .end local v0    # "currentDate":I
    .end local v1    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v3    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :goto_1
    return-void

    .line 2329
    .restart local v0    # "currentDate":I
    :cond_1
    iget-object v4, p0, Lorg/telegram/messenger/MessagesStorage$38;->val$result:Lorg/telegram/tgnet/TLObject;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;

    if-eqz v4, :cond_0

    .line 2330
    iget-object v4, p0, Lorg/telegram/messenger/MessagesStorage$38;->val$result:Lorg/telegram/tgnet/TLObject;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->cache_time:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v4

    goto :goto_0

    .line 2341
    .end local v0    # "currentDate":I
    :catch_0
    move-exception v2

    .line 2342
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
