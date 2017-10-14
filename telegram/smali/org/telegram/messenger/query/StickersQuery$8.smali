.class final Lorg/telegram/messenger/query/StickersQuery$8;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery;->loadRecents(IZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$gif:Z

.field final synthetic val$type:I


# direct methods
.method constructor <init>(ZI)V
    .locals 0

    .prologue
    .line 456
    iput-boolean p1, p0, Lorg/telegram/messenger/query/StickersQuery$8;->val$gif:Z

    iput p2, p0, Lorg/telegram/messenger/query/StickersQuery$8;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 461
    :try_start_0
    iget-boolean v6, p0, Lorg/telegram/messenger/query/StickersQuery$8;->val$gif:Z

    if-eqz v6, :cond_2

    .line 462
    const/4 v1, 0x2

    .line 470
    .local v1, "cacheType":I
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "SELECT document FROM web_recent_v3 WHERE type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " ORDER BY date DESC"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v2

    .line 471
    .local v2, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 472
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    :cond_0
    :goto_1
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 473
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lorg/telegram/SQLite/SQLiteCursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 474
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v3

    .line 475
    .local v3, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v3, :cond_0

    .line 476
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Lorg/telegram/tgnet/TLRPC$Document;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    .line 477
    .local v4, "document":Lorg/telegram/tgnet/TLRPC$Document;
    if-eqz v4, :cond_1

    .line 478
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    :cond_1
    invoke-virtual {v3}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 501
    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    .end local v1    # "cacheType":I
    .end local v2    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v3    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v4    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    :catch_0
    move-exception v5

    .line 502
    .local v5, "e":Ljava/lang/Throwable;
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 504
    .end local v5    # "e":Ljava/lang/Throwable;
    :goto_2
    return-void

    .line 463
    :cond_2
    :try_start_1
    iget v6, p0, Lorg/telegram/messenger/query/StickersQuery$8;->val$type:I

    if-nez v6, :cond_3

    .line 464
    const/4 v1, 0x3

    .restart local v1    # "cacheType":I
    goto :goto_0

    .line 465
    .end local v1    # "cacheType":I
    :cond_3
    iget v6, p0, Lorg/telegram/messenger/query/StickersQuery$8;->val$type:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 466
    const/4 v1, 0x4

    .restart local v1    # "cacheType":I
    goto :goto_0

    .line 468
    .end local v1    # "cacheType":I
    :cond_4
    const/4 v1, 0x5

    .restart local v1    # "cacheType":I
    goto :goto_0

    .line 484
    .restart local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    .restart local v2    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_5
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 485
    new-instance v6, Lorg/telegram/messenger/query/StickersQuery$8$1;

    invoke-direct {v6, p0, v0}, Lorg/telegram/messenger/query/StickersQuery$8$1;-><init>(Lorg/telegram/messenger/query/StickersQuery$8;Ljava/util/ArrayList;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
