.class final Lorg/telegram/messenger/query/MessagesQuery$6;
.super Ljava/lang/Object;
.source "MessagesQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/MessagesQuery;->loadReplyMessagesForMessages(Ljava/util/ArrayList;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dialogId:J

.field final synthetic val$replyMessageRandomOwners:Ljava/util/HashMap;

.field final synthetic val$replyMessages:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;JLjava/util/HashMap;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lorg/telegram/messenger/query/MessagesQuery$6;->val$replyMessages:Ljava/util/ArrayList;

    iput-wide p2, p0, Lorg/telegram/messenger/query/MessagesQuery$6;->val$dialogId:J

    iput-object p4, p0, Lorg/telegram/messenger/query/MessagesQuery$6;->val$replyMessageRandomOwners:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    .line 247
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v14, "SELECT m.data, m.mid, m.date, r.random_id FROM randoms as r INNER JOIN messages as m ON r.mid = m.mid WHERE r.random_id IN(%s)"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string/jumbo v17, ","

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/query/MessagesQuery$6;->val$replyMessages:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v12, v13, v14}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v5

    .line 248
    .local v5, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_0
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 249
    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v6

    .line 250
    .local v6, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v6, :cond_0

    .line 251
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v12

    const/4 v13, 0x0

    invoke-static {v6, v12, v13}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v9

    .line 252
    .local v9, "message":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-virtual {v6}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 253
    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v12

    iput v12, v9, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 254
    const/4 v12, 0x2

    invoke-virtual {v5, v12}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v12

    iput v12, v9, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 255
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/query/MessagesQuery$6;->val$dialogId:J

    iput-wide v12, v9, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 257
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/query/MessagesQuery$6;->val$replyMessageRandomOwners:Ljava/util/HashMap;

    const/4 v13, 0x3

    invoke-virtual {v5, v13}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 258
    .local v3, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-eqz v3, :cond_0

    .line 259
    new-instance v10, Lorg/telegram/messenger/MessageObject;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v10, v9, v12, v13, v14}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V

    .line 260
    .local v10, "messageObject":Lorg/telegram/messenger/MessageObject;
    const/4 v4, 0x0

    .local v4, "b":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v4, v12, :cond_0

    .line 261
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/MessageObject;

    .line 262
    .local v11, "object":Lorg/telegram/messenger/MessageObject;
    iput-object v10, v11, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 263
    iget-object v12, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v13

    iput v13, v12, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_msg_id:I

    .line 264
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isMegagroup()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 265
    iget-object v12, v11, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v12, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v13, v12, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v14, -0x80000000

    or-int/2addr v13, v14

    iput v13, v12, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 260
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 271
    .end local v3    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v4    # "b":I
    .end local v6    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v9    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v10    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v11    # "object":Lorg/telegram/messenger/MessageObject;
    :cond_2
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 272
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/query/MessagesQuery$6;->val$replyMessageRandomOwners:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_4

    .line 273
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/query/MessagesQuery$6;->val$replyMessageRandomOwners:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 274
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 275
    .restart local v3    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v2, v12, :cond_3

    .line 276
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/messenger/MessageObject;

    iget-object v12, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const-wide/16 v14, 0x0

    iput-wide v14, v12, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_random_id:J

    .line 275
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 280
    .end local v2    # "a":I
    .end local v3    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    :cond_4
    new-instance v12, Lorg/telegram/messenger/query/MessagesQuery$6$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lorg/telegram/messenger/query/MessagesQuery$6$1;-><init>(Lorg/telegram/messenger/query/MessagesQuery$6;)V

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    .end local v5    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :goto_2
    return-void

    .line 286
    :catch_0
    move-exception v7

    .line 287
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2
.end method
