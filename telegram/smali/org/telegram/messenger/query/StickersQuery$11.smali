.class final Lorg/telegram/messenger/query/StickersQuery$11;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery;->processLoadedRecentDocuments(ILjava/util/ArrayList;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$date:I

.field final synthetic val$documents:Ljava/util/ArrayList;

.field final synthetic val$gif:Z

.field final synthetic val$type:I


# direct methods
.method constructor <init>(ZILjava/util/ArrayList;I)V
    .locals 0

    .prologue
    .line 578
    iput-boolean p1, p0, Lorg/telegram/messenger/query/StickersQuery$11;->val$gif:Z

    iput p2, p0, Lorg/telegram/messenger/query/StickersQuery$11;->val$type:I

    iput-object p3, p0, Lorg/telegram/messenger/query/StickersQuery$11;->val$documents:Ljava/util/ArrayList;

    iput p4, p0, Lorg/telegram/messenger/query/StickersQuery$11;->val$date:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 582
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    .line 584
    .local v4, "database":Lorg/telegram/SQLite/SQLiteDatabase;
    iget-boolean v9, p0, Lorg/telegram/messenger/query/StickersQuery$11;->val$gif:Z

    if-eqz v9, :cond_1

    .line 585
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget v7, v9, Lorg/telegram/messenger/MessagesController;->maxRecentGifsCount:I

    .line 593
    .local v7, "maxCount":I
    :goto_0
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    .line 594
    const-string/jumbo v9, "REPLACE INTO web_recent_v3 VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    invoke-virtual {v4, v9}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v8

    .line 595
    .local v8, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    iget-object v9, p0, Lorg/telegram/messenger/query/StickersQuery$11;->val$documents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 597
    .local v2, "count":I
    iget-boolean v9, p0, Lorg/telegram/messenger/query/StickersQuery$11;->val$gif:Z

    if-eqz v9, :cond_3

    .line 598
    const/4 v1, 0x2

    .line 606
    .local v1, "cacheType":I
    :goto_1
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    if-ge v0, v2, :cond_0

    .line 607
    if-ne v0, v7, :cond_6

    .line 629
    :cond_0
    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 630
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    .line 631
    iget-object v9, p0, Lorg/telegram/messenger/query/StickersQuery$11;->val$documents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v9, v7, :cond_a

    .line 632
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    .line 633
    move v0, v7

    :goto_3
    iget-object v9, p0, Lorg/telegram/messenger/query/StickersQuery$11;->val$documents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_9

    .line 634
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "DELETE FROM web_recent_v3 WHERE id = \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, p0, Lorg/telegram/messenger/query/StickersQuery$11;->val$documents:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v12, v9, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\' AND type = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 633
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 587
    .end local v0    # "a":I
    .end local v1    # "cacheType":I
    .end local v2    # "count":I
    .end local v7    # "maxCount":I
    .end local v8    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_1
    iget v9, p0, Lorg/telegram/messenger/query/StickersQuery$11;->val$type:I

    if-ne v9, v11, :cond_2

    .line 588
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget v7, v9, Lorg/telegram/messenger/MessagesController;->maxFaveStickersCount:I

    .restart local v7    # "maxCount":I
    goto :goto_0

    .line 590
    .end local v7    # "maxCount":I
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget v7, v9, Lorg/telegram/messenger/MessagesController;->maxRecentStickersCount:I

    .restart local v7    # "maxCount":I
    goto :goto_0

    .line 599
    .restart local v2    # "count":I
    .restart local v8    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_3
    iget v9, p0, Lorg/telegram/messenger/query/StickersQuery$11;->val$type:I

    if-nez v9, :cond_4

    .line 600
    const/4 v1, 0x3

    .restart local v1    # "cacheType":I
    goto :goto_1

    .line 601
    .end local v1    # "cacheType":I
    :cond_4
    iget v9, p0, Lorg/telegram/messenger/query/StickersQuery$11;->val$type:I

    if-ne v9, v10, :cond_5

    .line 602
    const/4 v1, 0x4

    .restart local v1    # "cacheType":I
    goto :goto_1

    .line 604
    .end local v1    # "cacheType":I
    :cond_5
    const/4 v1, 0x5

    .restart local v1    # "cacheType":I
    goto :goto_1

    .line 610
    .restart local v0    # "a":I
    :cond_6
    iget-object v9, p0, Lorg/telegram/messenger/query/StickersQuery$11;->val$documents:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Document;

    .line 611
    .local v5, "document":Lorg/telegram/tgnet/TLRPC$Document;
    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 612
    const/4 v9, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, v5, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    .line 613
    const/4 v9, 0x2

    invoke-virtual {v8, v9, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 614
    const/4 v9, 0x3

    const-string/jumbo v10, ""

    invoke-virtual {v8, v9, v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    .line 615
    const/4 v9, 0x4

    const-string/jumbo v10, ""

    invoke-virtual {v8, v9, v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    .line 616
    const/4 v9, 0x5

    const-string/jumbo v10, ""

    invoke-virtual {v8, v9, v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    .line 617
    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 618
    const/4 v9, 0x7

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 619
    const/16 v9, 0x8

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 620
    const/16 v10, 0x9

    iget v9, p0, Lorg/telegram/messenger/query/StickersQuery$11;->val$date:I

    if-eqz v9, :cond_8

    iget v9, p0, Lorg/telegram/messenger/query/StickersQuery$11;->val$date:I

    :goto_4
    invoke-virtual {v8, v10, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 621
    new-instance v3, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v5}, Lorg/telegram/tgnet/TLRPC$Document;->getObjectSize()I

    move-result v9

    invoke-direct {v3, v9}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 622
    .local v3, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    invoke-virtual {v5, v3}, Lorg/telegram/tgnet/TLRPC$Document;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 623
    const/16 v9, 0xa

    invoke-virtual {v8, v9, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 624
    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 625
    if-eqz v3, :cond_7

    .line 626
    invoke-virtual {v3}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 606
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 620
    .end local v3    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :cond_8
    sub-int v9, v2, v0

    goto :goto_4

    .line 636
    .end local v5    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_9
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 641
    .end local v0    # "a":I
    .end local v1    # "cacheType":I
    .end local v2    # "count":I
    .end local v4    # "database":Lorg/telegram/SQLite/SQLiteDatabase;
    .end local v7    # "maxCount":I
    .end local v8    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_a
    :goto_5
    return-void

    .line 638
    :catch_0
    move-exception v6

    .line 639
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_5
.end method
