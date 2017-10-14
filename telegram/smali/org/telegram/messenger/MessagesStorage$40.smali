.class Lorg/telegram/messenger/MessagesStorage$40;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->updateChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$ifExist:Z

.field final synthetic val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;ZLorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 2388
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$40;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput-boolean p2, p0, Lorg/telegram/messenger/MessagesStorage$40;->val$ifExist:Z

    iput-object p3, p0, Lorg/telegram/messenger/MessagesStorage$40;->val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 2392
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesStorage$40;->val$ifExist:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 2393
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$40;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "SELECT uid FROM chat_settings_v2 WHERE uid = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$40;->val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v4

    .line 2394
    .local v4, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v8

    .line 2395
    .local v8, "exist":Z
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 2396
    if-nez v8, :cond_1

    .line 2447
    .end local v4    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v8    # "exist":Z
    :cond_0
    :goto_0
    return-void

    .line 2400
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$40;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v18

    const-string/jumbo v19, "REPLACE INTO chat_settings_v2 VALUES(?, ?, ?)"

    invoke-virtual/range {v18 .. v19}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v17

    .line 2401
    .local v17, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    new-instance v5, Lorg/telegram/tgnet/NativeByteBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$40;->val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/tgnet/TLRPC$ChatFull;->getObjectSize()I

    move-result v18

    move/from16 v0, v18

    invoke-direct {v5, v0}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 2402
    .local v5, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$40;->val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lorg/telegram/tgnet/TLRPC$ChatFull;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 2403
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$40;->val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:I

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 2404
    const/16 v18, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 2405
    const/16 v18, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$40;->val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->pinned_msg_id:I

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 2406
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 2407
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 2408
    invoke-virtual {v5}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 2410
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$40;->val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 2411
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$40;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "SELECT date, pts, last_mid, inbox_max, outbox_max, pinned, unread_count_i FROM dialogs WHERE did = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$40;->val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:I

    move/from16 v20, v0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v4

    .line 2412
    .restart local v4    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 2413
    const/16 v18, 0x3

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v10

    .line 2414
    .local v10, "inbox_max":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$40;->val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->read_inbox_max_id:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-gt v10, v0, :cond_3

    .line 2415
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$40;->val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->read_inbox_max_id:I

    move/from16 v18, v0

    sub-int v9, v18, v10

    .line 2416
    .local v9, "inbox_diff":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$40;->val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->unread_count:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v9, v0, :cond_2

    .line 2417
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$40;->val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput v9, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->unread_count:I

    .line 2419
    :cond_2
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v6

    .line 2420
    .local v6, "dialog_date":I
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v16

    .line 2421
    .local v16, "pts":I
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v12

    .line 2422
    .local v12, "last_mid":J
    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v14

    .line 2423
    .local v14, "outbox_max":I
    const/16 v18, 0x5

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v15

    .line 2424
    .local v15, "pinned":I
    const/16 v18, 0x6

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v11

    .line 2426
    .local v11, "mentions":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$40;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v18

    const-string/jumbo v19, "REPLACE INTO dialogs VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    invoke-virtual/range {v18 .. v19}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v17

    .line 2427
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$40;->val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:I

    move/from16 v19, v0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 2428
    const/16 v18, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 2429
    const/16 v18, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$40;->val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->unread_count:I

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 2430
    const/16 v18, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v12, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 2431
    const/16 v18, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$40;->val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->read_inbox_max_id:I

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 2432
    const/16 v18, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesStorage$40;->val$info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->read_outbox_max_id:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v19

    invoke-virtual/range {v17 .. v19}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 2433
    const/16 v18, 0x7

    const-wide/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 2434
    const/16 v18, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 2435
    const/16 v18, 0x9

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 2436
    const/16 v18, 0xa

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 2437
    const/16 v18, 0xb

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 2438
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 2439
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 2442
    .end local v6    # "dialog_date":I
    .end local v9    # "inbox_diff":I
    .end local v10    # "inbox_max":I
    .end local v11    # "mentions":I
    .end local v12    # "last_mid":J
    .end local v14    # "outbox_max":I
    .end local v15    # "pinned":I
    .end local v16    # "pts":I
    :cond_3
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2444
    .end local v4    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v5    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v17    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :catch_0
    move-exception v7

    .line 2445
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
