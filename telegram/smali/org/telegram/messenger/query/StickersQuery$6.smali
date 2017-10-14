.class final Lorg/telegram/messenger/query/StickersQuery$6;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery;->loadGroupStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSet;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$stickerSet:Lorg/telegram/tgnet/TLRPC$StickerSet;


# direct methods
.method constructor <init>(Lorg/telegram/tgnet/TLRPC$StickerSet;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lorg/telegram/messenger/query/StickersQuery$6;->val$stickerSet:Lorg/telegram/tgnet/TLRPC$StickerSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 302
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SELECT document FROM web_recent_v3 WHERE id = \'s_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/messenger/query/StickersQuery$6;->val$stickerSet:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    .line 303
    .local v0, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 304
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v1

    .line 305
    .local v1, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v1, :cond_3

    .line 306
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v3

    .line 307
    .local v3, "set":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    invoke-virtual {v1}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 314
    .end local v1    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :goto_0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 315
    if-eqz v3, :cond_0

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->hash:I

    iget-object v5, p0, Lorg/telegram/messenger/query/StickersQuery$6;->val$stickerSet:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->hash:I

    if-eq v4, v5, :cond_1

    .line 316
    :cond_0
    iget-object v4, p0, Lorg/telegram/messenger/query/StickersQuery$6;->val$stickerSet:Lorg/telegram/tgnet/TLRPC$StickerSet;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/telegram/messenger/query/StickersQuery;->access$000(Lorg/telegram/tgnet/TLRPC$StickerSet;Z)V

    .line 318
    :cond_1
    if-eqz v3, :cond_2

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v4, :cond_2

    .line 319
    new-instance v4, Lorg/telegram/messenger/query/StickersQuery$6$1;

    invoke-direct {v4, p0, v3}, Lorg/telegram/messenger/query/StickersQuery$6$1;-><init>(Lorg/telegram/messenger/query/StickersQuery$6;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    .end local v0    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v3    # "set":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    :cond_2
    :goto_1
    return-void

    .line 309
    .restart local v0    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v1    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "set":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    goto :goto_0

    .line 312
    .end local v1    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v3    # "set":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "set":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    goto :goto_0

    .line 327
    .end local v0    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v3    # "set":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    :catch_0
    move-exception v2

    .line 328
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
