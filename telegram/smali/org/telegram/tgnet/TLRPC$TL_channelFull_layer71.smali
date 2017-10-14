.class public Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;
.super Lorg/telegram/tgnet/TLRPC$TL_channelFull;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_channelFull_layer71"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5898
    const v0, 0x17f45fcf

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5897
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_channelFull;-><init>()V

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

    .line 5902
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->flags:I

    .line 5903
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_4

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->can_view_participants:Z

    .line 5904
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->flags:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_5

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->can_set_username:Z

    .line 5905
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_6

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->can_set_stickers:Z

    .line 5906
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->id:I

    .line 5907
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->about:Ljava/lang/String;

    .line 5908
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 5909
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->participants_count:I

    .line 5911
    :cond_0
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 5912
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->admins_count:I

    .line 5914
    :cond_1
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    .line 5915
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->kicked_count:I

    .line 5917
    :cond_2
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_3

    .line 5918
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->banned_count:I

    .line 5920
    :cond_3
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->read_inbox_max_id:I

    .line 5921
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->read_outbox_max_id:I

    .line 5922
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->unread_count:I

    .line 5923
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$Photo;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 5924
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 5925
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->exported_invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    .line 5926
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 5927
    .local v2, "magic":I
    const v4, 0x1cb5c415

    if-eq v2, v4, :cond_7

    .line 5928
    if-eqz p2, :cond_8

    .line 5929
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

    .line 5903
    goto/16 :goto_0

    :cond_5
    move v4, v6

    .line 5904
    goto/16 :goto_1

    :cond_6
    move v4, v6

    .line 5905
    goto/16 :goto_2

    .line 5933
    .restart local v2    # "magic":I
    :cond_7
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 5934
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_3
    if-ge v0, v1, :cond_a

    .line 5935
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$BotInfo;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$BotInfo;

    move-result-object v3

    .line 5936
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$BotInfo;
    if-nez v3, :cond_9

    .line 5953
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$BotInfo;
    :cond_8
    :goto_4
    return-void

    .line 5939
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$BotInfo;
    :cond_9
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->bot_info:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5934
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 5941
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$BotInfo;
    :cond_a
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_b

    .line 5942
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->migrated_from_chat_id:I

    .line 5944
    :cond_b
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_c

    .line 5945
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->migrated_from_max_id:I

    .line 5947
    :cond_c
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->flags:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_d

    .line 5948
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->pinned_msg_id:I

    .line 5950
    :cond_d
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->flags:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_8

    .line 5951
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$StickerSet;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$StickerSet;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    goto :goto_4
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 5956
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5957
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->can_view_participants:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->flags:I

    or-int/lit8 v2, v2, 0x8

    :goto_0
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->flags:I

    .line 5958
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->can_set_username:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->flags:I

    or-int/lit8 v2, v2, 0x40

    :goto_1
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->flags:I

    .line 5959
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->can_set_stickers:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->flags:I

    or-int/lit16 v2, v2, 0x80

    :goto_2
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->flags:I

    .line 5960
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->flags:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5961
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5962
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->about:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 5963
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 5964
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->participants_count:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5966
    :cond_0
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 5967
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->admins_count:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5969
    :cond_1
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 5970
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->kicked_count:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5972
    :cond_2
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    .line 5973
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->banned_count:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5975
    :cond_3
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->read_inbox_max_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5976
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->read_outbox_max_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5977
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->unread_count:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5978
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$Photo;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 5979
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 5980
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->exported_invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 5981
    const v2, 0x1cb5c415

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5982
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->bot_info:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5983
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5984
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_3
    if-ge v0, v1, :cond_7

    .line 5985
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->bot_info:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$BotInfo;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$BotInfo;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 5984
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 5957
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_4
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->flags:I

    and-int/lit8 v2, v2, -0x9

    goto/16 :goto_0

    .line 5958
    :cond_5
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->flags:I

    and-int/lit8 v2, v2, -0x41

    goto/16 :goto_1

    .line 5959
    :cond_6
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->flags:I

    and-int/lit16 v2, v2, -0x81

    goto/16 :goto_2

    .line 5987
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    :cond_7
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_8

    .line 5988
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->migrated_from_chat_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5990
    :cond_8
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_9

    .line 5991
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->migrated_from_max_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5993
    :cond_9
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->flags:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_a

    .line 5994
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->pinned_msg_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5996
    :cond_a
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->flags:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_b

    .line 5997
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$StickerSet;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 5999
    :cond_b
    return-void
.end method
