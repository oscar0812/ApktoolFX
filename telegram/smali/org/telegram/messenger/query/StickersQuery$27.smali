.class final Lorg/telegram/messenger/query/StickersQuery$27;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery;->processLoadedStickers(ILjava/util/ArrayList;ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cache:Z

.field final synthetic val$date:I

.field final synthetic val$hash:I

.field final synthetic val$res:Ljava/util/ArrayList;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(ZLjava/util/ArrayList;III)V
    .locals 0

    .prologue
    .line 1242
    iput-boolean p1, p0, Lorg/telegram/messenger/query/StickersQuery$27;->val$cache:Z

    iput-object p2, p0, Lorg/telegram/messenger/query/StickersQuery$27;->val$res:Ljava/util/ArrayList;

    iput p3, p0, Lorg/telegram/messenger/query/StickersQuery$27;->val$date:I

    iput p4, p0, Lorg/telegram/messenger/query/StickersQuery$27;->val$hash:I

    iput p5, p0, Lorg/telegram/messenger/query/StickersQuery$27;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 1245
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/query/StickersQuery$27;->val$cache:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/query/StickersQuery$27;->val$res:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v20, 0x3e8

    div-long v2, v2, v20

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/query/StickersQuery$27;->val$date:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v2, v2, v20

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v20, 0xe10

    cmp-long v2, v2, v20

    if-gez v2, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/query/StickersQuery$27;->val$cache:Z

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/query/StickersQuery$27;->val$res:Ljava/util/ArrayList;

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/query/StickersQuery$27;->val$hash:I

    if-nez v2, :cond_4

    .line 1246
    :cond_1
    new-instance v20, Lorg/telegram/messenger/query/StickersQuery$27$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/query/StickersQuery$27$1;-><init>(Lorg/telegram/messenger/query/StickersQuery$27;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/query/StickersQuery$27;->val$res:Ljava/util/ArrayList;

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/query/StickersQuery$27;->val$cache:Z

    if-nez v2, :cond_3

    const-wide/16 v2, 0x3e8

    :goto_0
    move-object/from16 v0, v20

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1255
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/query/StickersQuery$27;->val$res:Ljava/util/ArrayList;

    if-nez v2, :cond_4

    .line 1345
    :cond_2
    :goto_1
    return-void

    .line 1246
    :cond_3
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 1259
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/query/StickersQuery$27;->val$res:Ljava/util/ArrayList;

    if-eqz v2, :cond_11

    .line 1261
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1262
    .local v6, "stickerSetsNew":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1263
    .local v4, "stickerSetsByIdNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1264
    .local v5, "stickerSetsByNameNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1265
    .local v8, "stickersByEmojiNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 1266
    .local v19, "stickersByIdNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1268
    .local v7, "allStickersNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;>;"
    const/4 v9, 0x0

    .local v9, "a":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/query/StickersQuery$27;->val$res:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_f

    .line 1269
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/query/StickersQuery$27;->val$res:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 1270
    .local v18, "stickerSet":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    if-nez v18, :cond_6

    .line 1268
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1273
    :cond_6
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1274
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1275
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v5, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1277
    const/4 v11, 0x0

    .local v11, "b":I
    :goto_3
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_9

    .line 1278
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$Document;

    .line 1279
    .local v13, "document":Lorg/telegram/tgnet/TLRPC$Document;
    if-eqz v13, :cond_7

    instance-of v2, v13, Lorg/telegram/tgnet/TLRPC$TL_documentEmpty;

    if-eqz v2, :cond_8

    .line 1277
    :cond_7
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1282
    :cond_8
    iget-wide v2, v13, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 1333
    .end local v4    # "stickerSetsByIdNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    .end local v5    # "stickerSetsByNameNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    .end local v6    # "stickerSetsNew":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    .end local v7    # "allStickersNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;>;"
    .end local v8    # "stickersByEmojiNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v9    # "a":I
    .end local v11    # "b":I
    .end local v13    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .end local v18    # "stickerSet":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    .end local v19    # "stickersByIdNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;>;"
    :catch_0
    move-exception v14

    .line 1334
    .local v14, "e":Ljava/lang/Throwable;
    invoke-static {v14}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 1284
    .end local v14    # "e":Ljava/lang/Throwable;
    .restart local v4    # "stickerSetsByIdNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    .restart local v5    # "stickerSetsByNameNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    .restart local v6    # "stickerSetsNew":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    .restart local v7    # "allStickersNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;>;"
    .restart local v8    # "stickersByEmojiNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    .restart local v9    # "a":I
    .restart local v11    # "b":I
    .restart local v18    # "stickerSet":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    .restart local v19    # "stickersByIdNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;>;"
    :cond_9
    :try_start_1
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->archived:Z

    if-nez v2, :cond_5

    .line 1285
    const/4 v11, 0x0

    :goto_5
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_5

    .line 1286
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;

    .line 1287
    .local v17, "stickerPack":Lorg/telegram/tgnet/TLRPC$TL_stickerPack;
    if-eqz v17, :cond_a

    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    if-nez v2, :cond_b

    .line 1285
    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 1290
    :cond_b
    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    const-string/jumbo v3, "\ufe0f"

    const-string/jumbo v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    .line 1291
    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 1292
    .local v10, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    if-nez v10, :cond_c

    .line 1293
    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1294
    .restart local v10    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    invoke-virtual {v7, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1296
    :cond_c
    const/4 v12, 0x0

    .local v12, "c":I
    :goto_6
    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_a

    .line 1297
    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    .line 1298
    .local v15, "id":Ljava/lang/Long;
    invoke-virtual {v8, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 1299
    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    invoke-virtual {v8, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1301
    :cond_d
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/telegram/tgnet/TLRPC$Document;

    .line 1302
    .local v16, "sticker":Lorg/telegram/tgnet/TLRPC$Document;
    if-eqz v16, :cond_e

    .line 1303
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1296
    :cond_e
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 1310
    .end local v10    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    .end local v11    # "b":I
    .end local v12    # "c":I
    .end local v15    # "id":Ljava/lang/Long;
    .end local v16    # "sticker":Lorg/telegram/tgnet/TLRPC$Document;
    .end local v17    # "stickerPack":Lorg/telegram/tgnet/TLRPC$TL_stickerPack;
    .end local v18    # "stickerSet":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/query/StickersQuery$27;->val$cache:Z

    if-nez v2, :cond_10

    .line 1311
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/query/StickersQuery$27;->val$type:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/query/StickersQuery$27;->val$date:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/query/StickersQuery$27;->val$hash:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-static {v2, v6, v3, v0}, Lorg/telegram/messenger/query/StickersQuery;->access$2700(ILjava/util/ArrayList;II)V

    .line 1313
    :cond_10
    new-instance v2, Lorg/telegram/messenger/query/StickersQuery$27$2;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/messenger/query/StickersQuery$27$2;-><init>(Lorg/telegram/messenger/query/StickersQuery$27;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 1336
    .end local v4    # "stickerSetsByIdNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    .end local v5    # "stickerSetsByNameNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    .end local v6    # "stickerSetsNew":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    .end local v7    # "allStickersNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;>;"
    .end local v8    # "stickersByEmojiNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v9    # "a":I
    .end local v19    # "stickersByIdNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;>;"
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/query/StickersQuery$27;->val$cache:Z

    if-nez v2, :cond_2

    .line 1337
    new-instance v2, Lorg/telegram/messenger/query/StickersQuery$27$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/messenger/query/StickersQuery$27$3;-><init>(Lorg/telegram/messenger/query/StickersQuery$27;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1343
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/query/StickersQuery$27;->val$type:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/query/StickersQuery$27;->val$date:I

    move/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v2, v3, v0, v1}, Lorg/telegram/messenger/query/StickersQuery;->access$2700(ILjava/util/ArrayList;II)V

    goto/16 :goto_1
.end method
