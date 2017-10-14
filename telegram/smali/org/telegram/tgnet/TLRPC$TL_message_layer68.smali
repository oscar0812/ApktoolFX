.class public Lorg/telegram/tgnet/TLRPC$TL_message_layer68;
.super Lorg/telegram/tgnet/TLRPC$TL_message;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_message_layer68"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28383
    const v0, -0x3f641ba1

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28382
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 11
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 28386
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->flags:I

    .line 28387
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_6

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->unread:Z

    .line 28388
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->flags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_7

    move v6, v7

    :goto_1
    iput-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->out:Z

    .line 28389
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->flags:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_8

    move v6, v7

    :goto_2
    iput-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->mentioned:Z

    .line 28390
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->flags:I

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_9

    move v6, v7

    :goto_3
    iput-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->media_unread:Z

    .line 28391
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->flags:I

    and-int/lit16 v6, v6, 0x2000

    if-eqz v6, :cond_a

    move v6, v7

    :goto_4
    iput-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->silent:Z

    .line 28392
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->flags:I

    and-int/lit16 v6, v6, 0x4000

    if-eqz v6, :cond_b

    move v6, v7

    :goto_5
    iput-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->post:Z

    .line 28393
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->flags:I

    const/high16 v9, 0x40000000    # 2.0f

    and-int/2addr v6, v9

    if-eqz v6, :cond_c

    move v6, v7

    :goto_6
    iput-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->with_my_score:Z

    .line 28394
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->id:I

    .line 28395
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->flags:I

    and-int/lit16 v6, v6, 0x100

    if-eqz v6, :cond_0

    .line 28396
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->from_id:I

    .line 28398
    :cond_0
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    invoke-static {p1, v6, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 28399
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->from_id:I

    if-nez v6, :cond_1

    .line 28400
    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-eqz v6, :cond_d

    .line 28401
    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->from_id:I

    .line 28406
    :cond_1
    :goto_7
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_2

    .line 28407
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    invoke-static {p1, v6, p2}, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    .line 28409
    :cond_2
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->flags:I

    and-int/lit16 v6, v6, 0x800

    if-eqz v6, :cond_3

    .line 28410
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->via_bot_id:I

    .line 28412
    :cond_3
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->flags:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_4

    .line 28413
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->reply_to_msg_id:I

    .line 28415
    :cond_4
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->date:I

    .line 28416
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->message:Ljava/lang/String;

    .line 28417
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->flags:I

    and-int/lit16 v6, v6, 0x200

    if-eqz v6, :cond_e

    .line 28418
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    invoke-static {p1, v6, p2}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 28422
    :goto_8
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->flags:I

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_5

    .line 28423
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    invoke-static {p1, v6, p2}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    .line 28425
    :cond_5
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->flags:I

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_12

    .line 28426
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    .line 28427
    .local v4, "magic":I
    const v6, 0x1cb5c415

    if-eq v4, v6, :cond_f

    .line 28428
    if-eqz p2, :cond_10

    .line 28429
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v9, "wrong Vector magic, got %x"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v8

    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .end local v4    # "magic":I
    :cond_6
    move v6, v8

    .line 28387
    goto/16 :goto_0

    :cond_7
    move v6, v8

    .line 28388
    goto/16 :goto_1

    :cond_8
    move v6, v8

    .line 28389
    goto/16 :goto_2

    :cond_9
    move v6, v8

    .line 28390
    goto/16 :goto_3

    :cond_a
    move v6, v8

    .line 28391
    goto/16 :goto_4

    :cond_b
    move v6, v8

    .line 28392
    goto/16 :goto_5

    :cond_c
    move v6, v8

    .line 28393
    goto/16 :goto_6

    .line 28403
    :cond_d
    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v6, v6

    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->from_id:I

    goto/16 :goto_7

    .line 28420
    :cond_e
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    goto :goto_8

    .line 28433
    .restart local v4    # "magic":I
    :cond_f
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v3

    .line 28434
    .local v3, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_9
    if-ge v0, v3, :cond_12

    .line 28435
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    invoke-static {p1, v6, p2}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageEntity;

    move-result-object v5

    .line 28436
    .local v5, "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    if-nez v5, :cond_11

    .line 28467
    .end local v0    # "a":I
    .end local v3    # "count":I
    .end local v4    # "magic":I
    .end local v5    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_10
    :goto_a
    return-void

    .line 28439
    .restart local v0    # "a":I
    .restart local v3    # "count":I
    .restart local v4    # "magic":I
    .restart local v5    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_11
    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->entities:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28434
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 28442
    .end local v0    # "a":I
    .end local v3    # "count":I
    .end local v4    # "magic":I
    .end local v5    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_12
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->flags:I

    and-int/lit16 v6, v6, 0x400

    if-eqz v6, :cond_13

    .line 28443
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->views:I

    .line 28445
    :cond_13
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->flags:I

    const v9, 0x8000

    and-int/2addr v6, v9

    if-eqz v6, :cond_14

    .line 28446
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->edit_date:I

    .line 28448
    :cond_14
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->id:I

    if-ltz v6, :cond_15

    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v6, :cond_18

    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    if-nez v6, :cond_18

    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-nez v6, :cond_18

    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->message:Ljava/lang/String;

    if-eqz v6, :cond_18

    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->message:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_18

    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->message:Ljava/lang/String;

    const-string/jumbo v9, "-1"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 28449
    :cond_15
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->attachPath:Ljava/lang/String;

    .line 28450
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->id:I

    if-gez v6, :cond_18

    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->attachPath:Ljava/lang/String;

    const-string/jumbo v9, "||"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 28451
    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->attachPath:Ljava/lang/String;

    const-string/jumbo v9, "\\|\\|"

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 28452
    .local v1, "args":[Ljava/lang/String;
    array-length v6, v1

    if-lez v6, :cond_18

    .line 28453
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->params:Ljava/util/HashMap;

    .line 28454
    const/4 v0, 0x1

    .restart local v0    # "a":I
    :goto_b
    array-length v6, v1

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_17

    .line 28455
    aget-object v6, v1, v0

    const-string/jumbo v9, "\\|=\\|"

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 28456
    .local v2, "args2":[Ljava/lang/String;
    array-length v6, v2

    const/4 v9, 0x2

    if-ne v6, v9, :cond_16

    .line 28457
    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->params:Ljava/util/HashMap;

    aget-object v9, v2, v8

    aget-object v10, v2, v7

    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28454
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 28460
    .end local v2    # "args2":[Ljava/lang/String;
    :cond_17
    array-length v6, v1

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v1, v6

    iput-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->attachPath:Ljava/lang/String;

    .line 28464
    .end local v0    # "a":I
    .end local v1    # "args":[Ljava/lang/String;
    :cond_18
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_10

    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->id:I

    if-gez v6, :cond_10

    .line 28465
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->fwd_msg_id:I

    goto/16 :goto_a
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 7
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 28470
    sget v4, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->constructor:I

    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28471
    iget-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->unread:Z

    if-eqz v4, :cond_6

    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->flags:I

    or-int/lit8 v4, v4, 0x1

    :goto_0
    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->flags:I

    .line 28472
    iget-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->out:Z

    if-eqz v4, :cond_7

    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->flags:I

    or-int/lit8 v4, v4, 0x2

    :goto_1
    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->flags:I

    .line 28473
    iget-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->mentioned:Z

    if-eqz v4, :cond_8

    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->flags:I

    or-int/lit8 v4, v4, 0x10

    :goto_2
    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->flags:I

    .line 28474
    iget-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->media_unread:Z

    if-eqz v4, :cond_9

    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->flags:I

    or-int/lit8 v4, v4, 0x20

    :goto_3
    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->flags:I

    .line 28475
    iget-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->silent:Z

    if-eqz v4, :cond_a

    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->flags:I

    or-int/lit16 v4, v4, 0x2000

    :goto_4
    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->flags:I

    .line 28476
    iget-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->post:Z

    if-eqz v4, :cond_b

    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->flags:I

    or-int/lit16 v4, v4, 0x4000

    :goto_5
    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->flags:I

    .line 28477
    iget-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->with_my_score:Z

    if-eqz v4, :cond_c

    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->flags:I

    const/high16 v5, 0x40000000    # 2.0f

    or-int/2addr v4, v5

    :goto_6
    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->flags:I

    .line 28478
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->flags:I

    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28479
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->id:I

    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28480
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->flags:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_0

    .line 28481
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->from_id:I

    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28483
    :cond_0
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v4, p1}, Lorg/telegram/tgnet/TLRPC$Peer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 28484
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_1

    .line 28485
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    invoke-virtual {v4, p1}, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 28487
    :cond_1
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->flags:I

    and-int/lit16 v4, v4, 0x800

    if-eqz v4, :cond_2

    .line 28488
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->via_bot_id:I

    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28490
    :cond_2
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_3

    .line 28491
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->reply_to_msg_id:I

    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28493
    :cond_3
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->date:I

    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28494
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->message:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 28495
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->flags:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_4

    .line 28496
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v4, p1}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 28498
    :cond_4
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->flags:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_5

    .line 28499
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    invoke-virtual {v4, p1}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 28501
    :cond_5
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_d

    .line 28502
    const v4, 0x1cb5c415

    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28503
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 28504
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28505
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_7
    if-ge v0, v1, :cond_d

    .line 28506
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    invoke-virtual {v4, p1}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 28505
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 28471
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_6
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->flags:I

    and-int/lit8 v4, v4, -0x2

    goto/16 :goto_0

    .line 28472
    :cond_7
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->flags:I

    and-int/lit8 v4, v4, -0x3

    goto/16 :goto_1

    .line 28473
    :cond_8
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->flags:I

    and-int/lit8 v4, v4, -0x11

    goto/16 :goto_2

    .line 28474
    :cond_9
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->flags:I

    and-int/lit8 v4, v4, -0x21

    goto/16 :goto_3

    .line 28475
    :cond_a
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->flags:I

    and-int/lit16 v4, v4, -0x2001

    goto/16 :goto_4

    .line 28476
    :cond_b
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->flags:I

    and-int/lit16 v4, v4, -0x4001

    goto/16 :goto_5

    .line 28477
    :cond_c
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->flags:I

    const v5, -0x40000001    # -1.9999999f

    and-int/2addr v4, v5

    goto/16 :goto_6

    .line 28509
    :cond_d
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->flags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_e

    .line 28510
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->views:I

    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28512
    :cond_e
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->flags:I

    const v5, 0x8000

    and-int/2addr v4, v5

    if-eqz v4, :cond_f

    .line 28513
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->edit_date:I

    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28515
    :cond_f
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->attachPath:Ljava/lang/String;

    .line 28516
    .local v3, "path":Ljava/lang/String;
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->id:I

    if-gez v4, :cond_11

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->params:Ljava/util/HashMap;

    if-eqz v4, :cond_11

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->params:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_11

    .line 28517
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->params:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 28518
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "|=|"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "||"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 28519
    goto :goto_8

    .line 28520
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "||"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 28522
    :cond_11
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 28523
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_12

    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->id:I

    if-gez v4, :cond_12

    .line 28524
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;->fwd_msg_id:I

    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28526
    :cond_12
    return-void
.end method
