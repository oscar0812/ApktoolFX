.class public Lorg/telegram/tgnet/TLRPC$TL_message;
.super Lorg/telegram/tgnet/TLRPC$Message;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_message"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28240
    const v0, -0x6f2223ef

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_message;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28239
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Message;-><init>()V

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

    .line 28243
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    .line 28244
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_6

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->out:Z

    .line 28245
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_7

    move v6, v7

    :goto_1
    iput-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->mentioned:Z

    .line 28246
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_8

    move v6, v7

    :goto_2
    iput-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->media_unread:Z

    .line 28247
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit16 v6, v6, 0x2000

    if-eqz v6, :cond_9

    move v6, v7

    :goto_3
    iput-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->silent:Z

    .line 28248
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit16 v6, v6, 0x4000

    if-eqz v6, :cond_a

    move v6, v7

    :goto_4
    iput-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->post:Z

    .line 28249
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    .line 28250
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit16 v6, v6, 0x100

    if-eqz v6, :cond_0

    .line 28251
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->from_id:I

    .line 28253
    :cond_0
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    invoke-static {p1, v6, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 28254
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_1

    .line 28255
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    invoke-static {p1, v6, p2}, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    .line 28257
    :cond_1
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit16 v6, v6, 0x800

    if-eqz v6, :cond_2

    .line 28258
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->via_bot_id:I

    .line 28260
    :cond_2
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_3

    .line 28261
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->reply_to_msg_id:I

    .line 28263
    :cond_3
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->date:I

    .line 28264
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->message:Ljava/lang/String;

    .line 28265
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit16 v6, v6, 0x200

    if-eqz v6, :cond_4

    .line 28266
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    invoke-static {p1, v6, p2}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 28267
    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v6, :cond_4

    .line 28268
    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->ttl:I

    .line 28271
    :cond_4
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_5

    .line 28272
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    invoke-static {p1, v6, p2}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    .line 28274
    :cond_5
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_e

    .line 28275
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    .line 28276
    .local v4, "magic":I
    const v6, 0x1cb5c415

    if-eq v4, v6, :cond_b

    .line 28277
    if-eqz p2, :cond_c

    .line 28278
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

    .line 28244
    goto/16 :goto_0

    :cond_7
    move v6, v8

    .line 28245
    goto/16 :goto_1

    :cond_8
    move v6, v8

    .line 28246
    goto/16 :goto_2

    :cond_9
    move v6, v8

    .line 28247
    goto/16 :goto_3

    :cond_a
    move v6, v8

    .line 28248
    goto/16 :goto_4

    .line 28282
    .restart local v4    # "magic":I
    :cond_b
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v3

    .line 28283
    .local v3, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_5
    if-ge v0, v3, :cond_e

    .line 28284
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    invoke-static {p1, v6, p2}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageEntity;

    move-result-object v5

    .line 28285
    .local v5, "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    if-nez v5, :cond_d

    .line 28319
    .end local v0    # "a":I
    .end local v3    # "count":I
    .end local v4    # "magic":I
    .end local v5    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_c
    :goto_6
    return-void

    .line 28288
    .restart local v0    # "a":I
    .restart local v3    # "count":I
    .restart local v4    # "magic":I
    .restart local v5    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_d
    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28283
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 28291
    .end local v0    # "a":I
    .end local v3    # "count":I
    .end local v4    # "magic":I
    .end local v5    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_e
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit16 v6, v6, 0x400

    if-eqz v6, :cond_f

    .line 28292
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->views:I

    .line 28294
    :cond_f
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    const v9, 0x8000

    and-int/2addr v6, v9

    if-eqz v6, :cond_10

    .line 28295
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->edit_date:I

    .line 28297
    :cond_10
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    const/high16 v9, 0x10000

    and-int/2addr v6, v9

    if-eqz v6, :cond_11

    .line 28298
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->post_author:Ljava/lang/String;

    .line 28300
    :cond_11
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    if-ltz v6, :cond_12

    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v6, :cond_15

    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    if-nez v6, :cond_15

    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-nez v6, :cond_15

    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->message:Ljava/lang/String;

    if-eqz v6, :cond_15

    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->message:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_15

    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->message:Ljava/lang/String;

    const-string/jumbo v9, "-1"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 28301
    :cond_12
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->attachPath:Ljava/lang/String;

    .line 28302
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    if-gez v6, :cond_15

    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->attachPath:Ljava/lang/String;

    const-string/jumbo v9, "||"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 28303
    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->attachPath:Ljava/lang/String;

    const-string/jumbo v9, "\\|\\|"

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 28304
    .local v1, "args":[Ljava/lang/String;
    array-length v6, v1

    if-lez v6, :cond_15

    .line 28305
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->params:Ljava/util/HashMap;

    .line 28306
    const/4 v0, 0x1

    .restart local v0    # "a":I
    :goto_7
    array-length v6, v1

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_14

    .line 28307
    aget-object v6, v1, v0

    const-string/jumbo v9, "\\|=\\|"

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 28308
    .local v2, "args2":[Ljava/lang/String;
    array-length v6, v2

    const/4 v9, 0x2

    if-ne v6, v9, :cond_13

    .line 28309
    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->params:Ljava/util/HashMap;

    aget-object v9, v2, v8

    aget-object v10, v2, v7

    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28306
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 28312
    .end local v2    # "args2":[Ljava/lang/String;
    :cond_14
    array-length v6, v1

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v1, v6

    iput-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->attachPath:Ljava/lang/String;

    .line 28316
    .end local v0    # "a":I
    .end local v1    # "args":[Ljava/lang/String;
    :cond_15
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_c

    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    if-gez v6, :cond_c

    .line 28317
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->fwd_msg_id:I

    goto/16 :goto_6
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 7
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 28322
    sget v4, Lorg/telegram/tgnet/TLRPC$TL_message;->constructor:I

    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28323
    iget-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->out:Z

    if-eqz v4, :cond_6

    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    or-int/lit8 v4, v4, 0x2

    :goto_0
    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    .line 28324
    iget-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->mentioned:Z

    if-eqz v4, :cond_7

    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    or-int/lit8 v4, v4, 0x10

    :goto_1
    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    .line 28325
    iget-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->media_unread:Z

    if-eqz v4, :cond_8

    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    or-int/lit8 v4, v4, 0x20

    :goto_2
    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    .line 28326
    iget-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->silent:Z

    if-eqz v4, :cond_9

    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    or-int/lit16 v4, v4, 0x2000

    :goto_3
    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    .line 28327
    iget-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->post:Z

    if-eqz v4, :cond_a

    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    or-int/lit16 v4, v4, 0x4000

    :goto_4
    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    .line 28328
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28329
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28330
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_0

    .line 28331
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->from_id:I

    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28333
    :cond_0
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v4, p1}, Lorg/telegram/tgnet/TLRPC$Peer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 28334
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_1

    .line 28335
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    invoke-virtual {v4, p1}, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 28337
    :cond_1
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit16 v4, v4, 0x800

    if-eqz v4, :cond_2

    .line 28338
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->via_bot_id:I

    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28340
    :cond_2
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_3

    .line 28341
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->reply_to_msg_id:I

    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28343
    :cond_3
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->date:I

    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28344
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->message:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 28345
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_4

    .line 28346
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v4, p1}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 28348
    :cond_4
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_5

    .line 28349
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    invoke-virtual {v4, p1}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 28351
    :cond_5
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_b

    .line 28352
    const v4, 0x1cb5c415

    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28353
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 28354
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28355
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_5
    if-ge v0, v1, :cond_b

    .line 28356
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    invoke-virtual {v4, p1}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 28355
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 28323
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_6
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v4, v4, -0x3

    goto/16 :goto_0

    .line 28324
    :cond_7
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v4, v4, -0x11

    goto/16 :goto_1

    .line 28325
    :cond_8
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v4, v4, -0x21

    goto/16 :goto_2

    .line 28326
    :cond_9
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit16 v4, v4, -0x2001

    goto/16 :goto_3

    .line 28327
    :cond_a
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit16 v4, v4, -0x4001

    goto/16 :goto_4

    .line 28359
    :cond_b
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_c

    .line 28360
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->views:I

    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28362
    :cond_c
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    const v5, 0x8000

    and-int/2addr v4, v5

    if-eqz v4, :cond_d

    .line 28363
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->edit_date:I

    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28365
    :cond_d
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    const/high16 v5, 0x10000

    and-int/2addr v4, v5

    if-eqz v4, :cond_e

    .line 28366
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->post_author:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 28368
    :cond_e
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->attachPath:Ljava/lang/String;

    .line 28369
    .local v3, "path":Ljava/lang/String;
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    if-gez v4, :cond_10

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->params:Ljava/util/HashMap;

    if-eqz v4, :cond_10

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->params:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_10

    .line 28370
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->params:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 28371
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

    .line 28372
    goto :goto_6

    .line 28373
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "||"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 28375
    :cond_10
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 28376
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_11

    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    if-gez v4, :cond_11

    .line 28377
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->fwd_msg_id:I

    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28379
    :cond_11
    return-void
.end method
