.class public Lorg/telegram/tgnet/TLRPC$TL_channelFull;
.super Lorg/telegram/tgnet/TLRPC$ChatFull;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_channelFull"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5785
    const v0, 0x76af5481

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5784
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$ChatFull;-><init>()V

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

    .line 5789
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    .line 5790
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_4

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->can_view_participants:Z

    .line 5791
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_5

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->can_set_username:Z

    .line 5792
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_6

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->can_set_stickers:Z

    .line 5793
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_7

    move v4, v5

    :goto_3
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->hidden_prehistory:Z

    .line 5794
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->id:I

    .line 5795
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->about:Ljava/lang/String;

    .line 5796
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 5797
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->participants_count:I

    .line 5799
    :cond_0
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 5800
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->admins_count:I

    .line 5802
    :cond_1
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    .line 5803
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->kicked_count:I

    .line 5805
    :cond_2
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_3

    .line 5806
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->banned_count:I

    .line 5808
    :cond_3
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->read_inbox_max_id:I

    .line 5809
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->read_outbox_max_id:I

    .line 5810
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->unread_count:I

    .line 5811
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$Photo;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 5812
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 5813
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->exported_invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    .line 5814
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 5815
    .local v2, "magic":I
    const v4, 0x1cb5c415

    if-eq v2, v4, :cond_8

    .line 5816
    if-eqz p2, :cond_9

    .line 5817
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
    :cond_4
    move v4, v6

    .line 5790
    goto/16 :goto_0

    :cond_5
    move v4, v6

    .line 5791
    goto/16 :goto_1

    :cond_6
    move v4, v6

    .line 5792
    goto/16 :goto_2

    :cond_7
    move v4, v6

    .line 5793
    goto/16 :goto_3

    .line 5821
    .restart local v2    # "magic":I
    :cond_8
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 5822
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_4
    if-ge v0, v1, :cond_b

    .line 5823
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$BotInfo;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$BotInfo;

    move-result-object v3

    .line 5824
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$BotInfo;
    if-nez v3, :cond_a

    .line 5844
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$BotInfo;
    :cond_9
    :goto_5
    return-void

    .line 5827
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$BotInfo;
    :cond_a
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->bot_info:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5822
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 5829
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$BotInfo;
    :cond_b
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_c

    .line 5830
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->migrated_from_chat_id:I

    .line 5832
    :cond_c
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_d

    .line 5833
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->migrated_from_max_id:I

    .line 5835
    :cond_d
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_e

    .line 5836
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->pinned_msg_id:I

    .line 5838
    :cond_e
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_f

    .line 5839
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$StickerSet;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$StickerSet;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    .line 5841
    :cond_f
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_9

    .line 5842
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->available_min_id:I

    goto :goto_5
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 5847
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5848
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->can_view_participants:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    or-int/lit8 v2, v2, 0x8

    :goto_0
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    .line 5849
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->can_set_username:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    or-int/lit8 v2, v2, 0x40

    :goto_1
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    .line 5850
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->can_set_stickers:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    or-int/lit16 v2, v2, 0x80

    :goto_2
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    .line 5851
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->hidden_prehistory:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    or-int/lit16 v2, v2, 0x400

    :goto_3
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    .line 5852
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5853
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5854
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->about:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 5855
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 5856
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->participants_count:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5858
    :cond_0
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 5859
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->admins_count:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5861
    :cond_1
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 5862
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->kicked_count:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5864
    :cond_2
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    .line 5865
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->banned_count:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5867
    :cond_3
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->read_inbox_max_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5868
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->read_outbox_max_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5869
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->unread_count:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5870
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$Photo;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 5871
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 5872
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->exported_invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 5873
    const v2, 0x1cb5c415

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5874
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->bot_info:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5875
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5876
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_4
    if-ge v0, v1, :cond_8

    .line 5877
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->bot_info:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$BotInfo;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$BotInfo;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 5876
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 5848
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_4
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit8 v2, v2, -0x9

    goto/16 :goto_0

    .line 5849
    :cond_5
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit8 v2, v2, -0x41

    goto/16 :goto_1

    .line 5850
    :cond_6
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit16 v2, v2, -0x81

    goto/16 :goto_2

    .line 5851
    :cond_7
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit16 v2, v2, -0x401

    goto/16 :goto_3

    .line 5879
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    :cond_8
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_9

    .line 5880
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->migrated_from_chat_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5882
    :cond_9
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_a

    .line 5883
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->migrated_from_max_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5885
    :cond_a
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_b

    .line 5886
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->pinned_msg_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5888
    :cond_b
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_c

    .line 5889
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$StickerSet;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 5891
    :cond_c
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_d

    .line 5892
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->available_min_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5894
    :cond_d
    return-void
.end method
