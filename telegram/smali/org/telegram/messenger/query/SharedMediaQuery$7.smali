.class final Lorg/telegram/messenger/query/SharedMediaQuery$7;
.super Ljava/lang/Object;
.source "SharedMediaQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/SharedMediaQuery;->loadMediaDatabase(JIIIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$classGuid:I

.field final synthetic val$count:I

.field final synthetic val$isChannel:Z

.field final synthetic val$max_id:I

.field final synthetic val$type:I

.field final synthetic val$uid:J


# direct methods
.method constructor <init>(IJIZII)V
    .locals 0

    .prologue
    .line 291
    iput p1, p0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$count:I

    iput-wide p2, p0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$uid:J

    iput p4, p0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$max_id:I

    iput-boolean p5, p0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$isChannel:Z

    iput p6, p0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$type:I

    iput p7, p0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$classGuid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 29

    .prologue
    .line 294
    const/4 v12, 0x0

    .line 295
    .local v12, "topReached":Z
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;-><init>()V

    .line 297
    .local v3, "res":Lorg/telegram/tgnet/TLRPC$TL_messages_messages;
    :try_start_0
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v27, "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .local v13, "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$count:I

    add-int/lit8 v14, v4, 0x1

    .line 302
    .local v14, "countToLoad":I
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v17

    .line 303
    .local v17, "database":Lorg/telegram/SQLite/SQLiteDatabase;
    const/16 v19, 0x0

    .line 304
    .local v19, "isEnd":Z
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$uid:J

    long-to-int v4, v4

    if-eqz v4, :cond_c

    .line 305
    const/4 v2, 0x0

    .line 306
    .local v2, "channelId":I
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$max_id:I

    int-to-long v0, v4

    move-wide/from16 v24, v0

    .line 307
    .local v24, "messageMaxId":J
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$isChannel:Z

    if-eqz v4, :cond_0

    .line 308
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$uid:J

    long-to-int v4, v4

    neg-int v2, v4

    .line 310
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v4, v24, v4

    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    .line 311
    int-to-long v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long v24, v24, v4

    .line 314
    :cond_1
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "SELECT start FROM media_holes_v2 WHERE uid = %d AND type = %d AND start IN (0, 1)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$type:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v15

    .line 315
    .local v15, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    invoke-virtual {v15}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 316
    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    const/16 v19, 0x1

    .line 317
    :goto_0
    invoke-virtual {v15}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 337
    :goto_1
    const-wide/16 v4, 0x0

    cmp-long v4, v24, v4

    if-eqz v4, :cond_9

    .line 338
    const-wide/16 v20, 0x0

    .line 339
    .local v20, "holeMessageId":J
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "SELECT end FROM media_holes_v2 WHERE uid = %d AND type = %d AND end <= %d ORDER BY end DESC LIMIT 1"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$type:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$max_id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v15

    .line 340
    invoke-virtual {v15}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 341
    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v20, v0

    .line 342
    if-eqz v2, :cond_2

    .line 343
    int-to-long v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long v20, v20, v4

    .line 346
    :cond_2
    invoke-virtual {v15}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 347
    const-wide/16 v4, 0x1

    cmp-long v4, v20, v4

    if-lez v4, :cond_8

    .line 348
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "SELECT data, mid FROM media_v2 WHERE uid = %d AND mid > 0 AND mid < %d AND mid >= %d AND type = %d ORDER BY date DESC, mid DESC LIMIT %d"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$type:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v15

    .line 377
    .end local v2    # "channelId":I
    .end local v20    # "holeMessageId":J
    .end local v24    # "messageMaxId":J
    :cond_3
    :goto_2
    invoke-virtual {v15}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 378
    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v16

    .line 379
    .local v16, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v16, :cond_3

    .line 380
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v4, v5}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v22

    .line 381
    .local v22, "message":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-virtual/range {v16 .. v16}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 382
    const/4 v4, 0x1

    invoke-virtual {v15, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    move-object/from16 v0, v22

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 383
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$uid:J

    move-object/from16 v0, v22

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 384
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$uid:J

    long-to-int v4, v4

    if-nez v4, :cond_4

    .line 385
    const/4 v4, 0x2

    invoke-virtual {v15, v4}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v4

    move-object/from16 v0, v22

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    .line 387
    :cond_4
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->messages:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    move-object/from16 v0, v22

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    if-lez v4, :cond_e

    .line 389
    move-object/from16 v0, v22

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 390
    move-object/from16 v0, v22

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 413
    .end local v13    # "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v14    # "countToLoad":I
    .end local v15    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v16    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v17    # "database":Lorg/telegram/SQLite/SQLiteDatabase;
    .end local v19    # "isEnd":Z
    .end local v22    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v27    # "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v18

    .line 414
    .local v18, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 415
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 416
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 417
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 419
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$uid:J

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$count:I

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$max_id:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$type:I

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$classGuid:I

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$isChannel:Z

    invoke-static/range {v3 .. v12}, Lorg/telegram/messenger/query/SharedMediaQuery;->access$000(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIIZIZZ)V

    .line 421
    .end local v18    # "e":Ljava/lang/Exception;
    :goto_3
    return-void

    .line 316
    .restart local v2    # "channelId":I
    .restart local v13    # "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v14    # "countToLoad":I
    .restart local v15    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v17    # "database":Lorg/telegram/SQLite/SQLiteDatabase;
    .restart local v19    # "isEnd":Z
    .restart local v24    # "messageMaxId":J
    .restart local v27    # "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_5
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 319
    :cond_6
    :try_start_2
    invoke-virtual {v15}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 320
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "SELECT min(mid) FROM media_v2 WHERE uid = %d AND type = %d AND mid > 0"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$type:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v15

    .line 321
    invoke-virtual {v15}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 322
    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v23

    .line 323
    .local v23, "mid":I
    if-eqz v23, :cond_7

    .line 324
    const-string/jumbo v4, "REPLACE INTO media_holes_v2 VALUES(?, ?, ?, ?)"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v26

    .line 325
    .local v26, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    invoke-virtual/range {v26 .. v26}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 326
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$uid:J

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 327
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$type:I

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 328
    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 329
    const/4 v4, 0x4

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v4, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 330
    invoke-virtual/range {v26 .. v26}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 331
    invoke-virtual/range {v26 .. v26}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 334
    .end local v23    # "mid":I
    .end local v26    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_7
    invoke-virtual {v15}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 419
    .end local v2    # "channelId":I
    .end local v13    # "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v14    # "countToLoad":I
    .end local v15    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v17    # "database":Lorg/telegram/SQLite/SQLiteDatabase;
    .end local v19    # "isEnd":Z
    .end local v24    # "messageMaxId":J
    .end local v27    # "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v4

    move-object/from16 v28, v4

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$uid:J

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$count:I

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$max_id:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$type:I

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$classGuid:I

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$isChannel:Z

    invoke-static/range {v3 .. v12}, Lorg/telegram/messenger/query/SharedMediaQuery;->access$000(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIIZIZZ)V

    throw v28

    .line 350
    .restart local v2    # "channelId":I
    .restart local v13    # "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v14    # "countToLoad":I
    .restart local v15    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v17    # "database":Lorg/telegram/SQLite/SQLiteDatabase;
    .restart local v19    # "isEnd":Z
    .restart local v20    # "holeMessageId":J
    .restart local v24    # "messageMaxId":J
    .restart local v27    # "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_8
    :try_start_3
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "SELECT data, mid FROM media_v2 WHERE uid = %d AND mid > 0 AND mid < %d AND type = %d ORDER BY date DESC, mid DESC LIMIT %d"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$type:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v15

    goto/16 :goto_2

    .line 353
    .end local v20    # "holeMessageId":J
    :cond_9
    const-wide/16 v20, 0x0

    .line 354
    .restart local v20    # "holeMessageId":J
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "SELECT max(end) FROM media_holes_v2 WHERE uid = %d AND type = %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$type:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v15

    .line 355
    invoke-virtual {v15}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 356
    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v20, v0

    .line 357
    if-eqz v2, :cond_a

    .line 358
    int-to-long v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long v20, v20, v4

    .line 361
    :cond_a
    invoke-virtual {v15}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 362
    const-wide/16 v4, 0x1

    cmp-long v4, v20, v4

    if-lez v4, :cond_b

    .line 363
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "SELECT data, mid FROM media_v2 WHERE uid = %d AND mid >= %d AND type = %d ORDER BY date DESC, mid DESC LIMIT %d"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$type:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v15

    goto/16 :goto_2

    .line 365
    :cond_b
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "SELECT data, mid FROM media_v2 WHERE uid = %d AND mid > 0 AND type = %d ORDER BY date DESC, mid DESC LIMIT %d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$type:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v15

    goto/16 :goto_2

    .line 369
    .end local v2    # "channelId":I
    .end local v15    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v20    # "holeMessageId":J
    .end local v24    # "messageMaxId":J
    :cond_c
    const/16 v19, 0x1

    .line 370
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$max_id:I

    if-eqz v4, :cond_d

    .line 371
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "SELECT m.data, m.mid, r.random_id FROM media_v2 as m LEFT JOIN randoms as r ON r.mid = m.mid WHERE m.uid = %d AND m.mid > %d AND type = %d ORDER BY m.mid ASC LIMIT %d"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$max_id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$type:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v15

    .restart local v15    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    goto/16 :goto_2

    .line 373
    .end local v15    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_d
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "SELECT m.data, m.mid, r.random_id FROM media_v2 as m LEFT JOIN randoms as r ON r.mid = m.mid WHERE m.uid = %d AND type = %d ORDER BY m.mid ASC LIMIT %d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$type:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v15

    .restart local v15    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    goto/16 :goto_2

    .line 393
    .restart local v16    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v22    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_e
    move-object/from16 v0, v22

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    neg-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 394
    move-object/from16 v0, v22

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    neg-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 399
    .end local v16    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v22    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_f
    invoke-virtual {v15}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 401
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_10

    .line 402
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const-string/jumbo v5, ","

    move-object/from16 v0, v27

    invoke-static {v5, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 404
    :cond_10
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_11

    .line 405
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-static {v5, v13}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/MessagesStorage;->getChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 407
    :cond_11
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$count:I

    if-le v4, v5, :cond_12

    .line 408
    const/4 v12, 0x0

    .line 409
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->messages:Ljava/util/ArrayList;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 419
    :goto_4
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$uid:J

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$count:I

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$max_id:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$type:I

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$classGuid:I

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$isChannel:Z

    invoke-static/range {v3 .. v12}, Lorg/telegram/messenger/query/SharedMediaQuery;->access$000(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIIZIZZ)V

    goto/16 :goto_3

    .line 411
    :cond_12
    move/from16 v12, v19

    goto :goto_4
.end method
