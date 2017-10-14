.class Lorg/telegram/messenger/MessagesStorage$43;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->isMigratedChat(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$chat_id:I

.field final synthetic val$result:[Z

.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;I[ZLjava/util/concurrent/Semaphore;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 2585
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$43;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$43;->val$chat_id:I

    iput-object p3, p0, Lorg/telegram/messenger/MessagesStorage$43;->val$result:[Z

    iput-object p4, p0, Lorg/telegram/messenger/MessagesStorage$43;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 2589
    :try_start_0
    iget-object v6, p0, Lorg/telegram/messenger/MessagesStorage$43;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v6}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "SELECT info FROM chat_settings_v2 WHERE uid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lorg/telegram/messenger/MessagesStorage$43;->val$chat_id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    .line 2590
    .local v0, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    const/4 v3, 0x0

    .line 2591
    .local v3, "info":Lorg/telegram/tgnet/TLRPC$ChatFull;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2592
    .local v4, "loadedUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2593
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v1

    .line 2594
    .local v1, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v1, :cond_0

    .line 2595
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v1, v6, v7}, Lorg/telegram/tgnet/TLRPC$ChatFull;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    .line 2596
    invoke-virtual {v1}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 2599
    .end local v1    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 2600
    iget-object v6, p0, Lorg/telegram/messenger/MessagesStorage$43;->val$result:[Z

    const/4 v7, 0x0

    instance-of v8, v3, Lorg/telegram/tgnet/TLRPC$TL_channelFull;

    if-eqz v8, :cond_1

    iget v8, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->migrated_from_chat_id:I

    if-eqz v8, :cond_1

    const/4 v5, 0x1

    :cond_1
    aput-boolean v5, v6, v7

    .line 2601
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$43;->val$semaphore:Ljava/util/concurrent/Semaphore;

    if-eqz v5, :cond_2

    .line 2602
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$43;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2607
    :cond_2
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$43;->val$semaphore:Ljava/util/concurrent/Semaphore;

    if-eqz v5, :cond_3

    .line 2608
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$43;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2611
    .end local v0    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v3    # "info":Lorg/telegram/tgnet/TLRPC$ChatFull;
    .end local v4    # "loadedUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    :cond_3
    :goto_0
    return-void

    .line 2604
    :catch_0
    move-exception v2

    .line 2605
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2607
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$43;->val$semaphore:Ljava/util/concurrent/Semaphore;

    if-eqz v5, :cond_3

    .line 2608
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$43;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    .line 2607
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lorg/telegram/messenger/MessagesStorage$43;->val$semaphore:Ljava/util/concurrent/Semaphore;

    if-eqz v6, :cond_4

    .line 2608
    iget-object v6, p0, Lorg/telegram/messenger/MessagesStorage$43;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v6}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_4
    throw v5
.end method
