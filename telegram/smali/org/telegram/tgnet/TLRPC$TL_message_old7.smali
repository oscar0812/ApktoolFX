.class public Lorg/telegram/tgnet/TLRPC$TL_message_old7;
.super Lorg/telegram/tgnet/TLRPC$TL_message;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_message_old7"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28683
    const v0, 0x5ba66c13

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28682
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 10
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 28686
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v5

    iput v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    .line 28687
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_6

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->unread:Z

    .line 28688
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_7

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->out:Z

    .line 28689
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_8

    move v5, v6

    :goto_2
    iput-boolean v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->mentioned:Z

    .line 28690
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_9

    move v5, v6

    :goto_3
    iput-boolean v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->media_unread:Z

    .line 28691
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v5

    iput v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->id:I

    .line 28692
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_0

    .line 28693
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v5

    iput v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->from_id:I

    .line 28695
    :cond_0
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v5

    invoke-static {p1, v5, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 28696
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->from_id:I

    if-nez v5, :cond_1

    .line 28697
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-eqz v5, :cond_a

    .line 28698
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    iput v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->from_id:I

    .line 28703
    :cond_1
    :goto_4
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_3

    .line 28704
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;-><init>()V

    iput-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    .line 28705
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v5

    invoke-static {p1, v5, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v4

    .line 28706
    .local v4, "peer":Lorg/telegram/tgnet/TLRPC$Peer;
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v5, :cond_b

    .line 28707
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v8, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    iput v8, v5, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->channel_id:I

    .line 28708
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v8, v5, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I

    or-int/lit8 v8, v8, 0x2

    iput v8, v5, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I

    .line 28713
    :cond_2
    :goto_5
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v8

    iput v8, v5, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->date:I

    .line 28715
    .end local v4    # "peer":Lorg/telegram/tgnet/TLRPC$Peer;
    :cond_3
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_4

    .line 28716
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v5

    iput v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->reply_to_msg_id:I

    .line 28718
    :cond_4
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v5

    iput v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->date:I

    .line 28719
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->message:Ljava/lang/String;

    .line 28720
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit16 v5, v5, 0x200

    if-eqz v5, :cond_c

    .line 28721
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v5

    invoke-static {p1, v5, p2}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 28725
    :goto_6
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_5

    .line 28726
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v5

    invoke-static {p1, v5, p2}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    .line 28728
    :cond_5
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_10

    .line 28729
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 28730
    .local v2, "magic":I
    const v5, 0x1cb5c415

    if-eq v2, v5, :cond_d

    .line 28731
    if-eqz p2, :cond_e

    .line 28732
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "wrong Vector magic, got %x"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v2    # "magic":I
    :cond_6
    move v5, v7

    .line 28687
    goto/16 :goto_0

    :cond_7
    move v5, v7

    .line 28688
    goto/16 :goto_1

    :cond_8
    move v5, v7

    .line 28689
    goto/16 :goto_2

    :cond_9
    move v5, v7

    .line 28690
    goto/16 :goto_3

    .line 28700
    :cond_a
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v5, v5

    iput v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->from_id:I

    goto/16 :goto_4

    .line 28709
    .restart local v4    # "peer":Lorg/telegram/tgnet/TLRPC$Peer;
    :cond_b
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    if-eqz v5, :cond_2

    .line 28710
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v8, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    iput v8, v5, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:I

    .line 28711
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v8, v5, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I

    or-int/lit8 v8, v8, 0x1

    iput v8, v5, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I

    goto/16 :goto_5

    .line 28723
    .end local v4    # "peer":Lorg/telegram/tgnet/TLRPC$Peer;
    :cond_c
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    goto :goto_6

    .line 28736
    .restart local v2    # "magic":I
    :cond_d
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 28737
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_7
    if-ge v0, v1, :cond_10

    .line 28738
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v5

    invoke-static {p1, v5, p2}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageEntity;

    move-result-object v3

    .line 28739
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    if-nez v3, :cond_f

    .line 28754
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v2    # "magic":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_e
    :goto_8
    return-void

    .line 28742
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v2    # "magic":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_f
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->entities:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28737
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 28745
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v2    # "magic":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_10
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_11

    .line 28746
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v5

    iput v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->views:I

    .line 28748
    :cond_11
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->id:I

    if-ltz v5, :cond_12

    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v5, :cond_13

    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    if-nez v5, :cond_13

    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-nez v5, :cond_13

    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->message:Ljava/lang/String;

    if-eqz v5, :cond_13

    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->message:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_13

    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->message:Ljava/lang/String;

    const-string/jumbo v6, "-1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 28749
    :cond_12
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->attachPath:Ljava/lang/String;

    .line 28751
    :cond_13
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_e

    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->id:I

    if-gez v5, :cond_e

    .line 28752
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v5

    iput v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->fwd_msg_id:I

    goto :goto_8
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 28757
    sget v3, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->constructor:I

    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28758
    iget-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->unread:Z

    if-eqz v3, :cond_5

    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    or-int/lit8 v3, v3, 0x1

    :goto_0
    iput v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    .line 28759
    iget-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->out:Z

    if-eqz v3, :cond_6

    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    or-int/lit8 v3, v3, 0x2

    :goto_1
    iput v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    .line 28760
    iget-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->mentioned:Z

    if-eqz v3, :cond_7

    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    or-int/lit8 v3, v3, 0x10

    :goto_2
    iput v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    .line 28761
    iget-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->media_unread:Z

    if-eqz v3, :cond_8

    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    or-int/lit8 v3, v3, 0x20

    :goto_3
    iput v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    .line 28762
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28763
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->id:I

    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28764
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_0

    .line 28765
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->from_id:I

    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28767
    :cond_0
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v3, p1}, Lorg/telegram/tgnet/TLRPC$Peer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 28768
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_1

    .line 28769
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:I

    if-eqz v3, :cond_9

    .line 28770
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    .line 28771
    .local v2, "peer":Lorg/telegram/tgnet/TLRPC$TL_peerUser;
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_peerUser;->user_id:I

    .line 28772
    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 28778
    .end local v2    # "peer":Lorg/telegram/tgnet/TLRPC$TL_peerUser;
    :goto_4
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->date:I

    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28780
    :cond_1
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_2

    .line 28781
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->reply_to_msg_id:I

    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28783
    :cond_2
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->date:I

    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28784
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->message:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 28785
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_3

    .line 28786
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v3, p1}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 28788
    :cond_3
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_4

    .line 28789
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    invoke-virtual {v3, p1}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 28791
    :cond_4
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_a

    .line 28792
    const v3, 0x1cb5c415

    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28793
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->entities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 28794
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28795
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_5
    if-ge v0, v1, :cond_a

    .line 28796
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->entities:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    invoke-virtual {v3, p1}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 28795
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 28758
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_5
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v3, v3, -0x2

    goto/16 :goto_0

    .line 28759
    :cond_6
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v3, v3, -0x3

    goto/16 :goto_1

    .line 28760
    :cond_7
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v3, v3, -0x11

    goto/16 :goto_2

    .line 28761
    :cond_8
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v3, v3, -0x21

    goto/16 :goto_3

    .line 28774
    :cond_9
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    .line 28775
    .local v2, "peer":Lorg/telegram/tgnet/TLRPC$TL_peerChannel;
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->channel_id:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;->channel_id:I

    .line 28776
    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    goto :goto_4

    .line 28799
    .end local v2    # "peer":Lorg/telegram/tgnet/TLRPC$TL_peerChannel;
    :cond_a
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_b

    .line 28800
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->views:I

    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28802
    :cond_b
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->attachPath:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 28803
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_c

    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->id:I

    if-gez v3, :cond_c

    .line 28804
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->fwd_msg_id:I

    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28806
    :cond_c
    return-void
.end method
