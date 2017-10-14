.class public Lorg/telegram/tgnet/TLRPC$TL_message_old6;
.super Lorg/telegram/tgnet/TLRPC$TL_message;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_message_old6"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28861
    const v0, 0x2bebfa86

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28860
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 9
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 28865
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    or-int/lit16 v4, v4, 0x100

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    .line 28866
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->unread:Z

    .line 28867
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_4

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->out:Z

    .line 28868
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_5

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->mentioned:Z

    .line 28869
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_6

    move v4, v5

    :goto_3
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->media_unread:Z

    .line 28870
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->id:I

    .line 28871
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->from_id:I

    .line 28872
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 28873
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_0

    .line 28874
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;-><init>()V

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    .line 28875
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v7

    iput v7, v4, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:I

    .line 28876
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v7, v4, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I

    or-int/lit8 v7, v7, 0x1

    iput v7, v4, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I

    .line 28877
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v7

    iput v7, v4, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->date:I

    .line 28879
    :cond_0
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_1

    .line 28880
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->reply_to_msg_id:I

    .line 28882
    :cond_1
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->date:I

    .line 28883
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->message:Ljava/lang/String;

    .line 28884
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_7

    .line 28885
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 28889
    :goto_4
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_2

    .line 28890
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    .line 28892
    :cond_2
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_b

    .line 28893
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 28894
    .local v2, "magic":I
    const v4, 0x1cb5c415

    if-eq v2, v4, :cond_8

    .line 28895
    if-eqz p2, :cond_9

    .line 28896
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "wrong Vector magic, got %x"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v2    # "magic":I
    :cond_3
    move v4, v6

    .line 28866
    goto/16 :goto_0

    :cond_4
    move v4, v6

    .line 28867
    goto/16 :goto_1

    :cond_5
    move v4, v6

    .line 28868
    goto/16 :goto_2

    :cond_6
    move v4, v6

    .line 28869
    goto/16 :goto_3

    .line 28887
    :cond_7
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    goto :goto_4

    .line 28900
    .restart local v2    # "magic":I
    :cond_8
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 28901
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_5
    if-ge v0, v1, :cond_b

    .line 28902
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageEntity;

    move-result-object v3

    .line 28903
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    if-nez v3, :cond_a

    .line 28915
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v2    # "magic":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_9
    :goto_6
    return-void

    .line 28906
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v2    # "magic":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_a
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28901
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 28909
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v2    # "magic":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_b
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->id:I

    if-ltz v4, :cond_c

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    if-nez v4, :cond_d

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-nez v4, :cond_d

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->message:Ljava/lang/String;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->message:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->message:Ljava/lang/String;

    const-string/jumbo v5, "-1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 28910
    :cond_c
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->attachPath:Ljava/lang/String;

    .line 28912
    :cond_d
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_9

    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->id:I

    if-gez v4, :cond_9

    .line 28913
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->fwd_msg_id:I

    goto :goto_6
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 28918
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28919
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->unread:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    or-int/lit8 v2, v2, 0x1

    :goto_0
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    .line 28920
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->out:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    or-int/lit8 v2, v2, 0x2

    :goto_1
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    .line 28921
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->mentioned:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    or-int/lit8 v2, v2, 0x10

    :goto_2
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    .line 28922
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->media_unread:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    or-int/lit8 v2, v2, 0x20

    :goto_3
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    .line 28923
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28924
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28925
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->from_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28926
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$Peer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 28927
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    .line 28928
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28929
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->date:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28931
    :cond_0
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_1

    .line 28932
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->reply_to_msg_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28934
    :cond_1
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->date:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28935
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->message:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 28936
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_2

    .line 28937
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 28939
    :cond_2
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_3

    .line 28940
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 28942
    :cond_3
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_8

    .line 28943
    const v2, 0x1cb5c415

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28944
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->entities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 28945
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28946
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_4
    if-ge v0, v1, :cond_8

    .line 28947
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->entities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 28946
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 28919
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_4
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v2, v2, -0x2

    goto/16 :goto_0

    .line 28920
    :cond_5
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v2, v2, -0x3

    goto/16 :goto_1

    .line 28921
    :cond_6
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v2, v2, -0x11

    goto/16 :goto_2

    .line 28922
    :cond_7
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v2, v2, -0x21

    goto/16 :goto_3

    .line 28950
    :cond_8
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->attachPath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 28951
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_9

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->id:I

    if-gez v2, :cond_9

    .line 28952
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->fwd_msg_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28954
    :cond_9
    return-void
.end method
