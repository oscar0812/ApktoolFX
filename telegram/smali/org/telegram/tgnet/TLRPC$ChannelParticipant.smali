.class public abstract Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ChannelParticipant"
.end annotation


# instance fields
.field public admin_rights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

.field public banned_rights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

.field public can_edit:Z

.field public date:I

.field public flags:I

.field public inviter_id:I

.field public kicked_by:I

.field public left:Z

.field public promoted_by:I

.field public user_id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18136
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 18149
    const/4 v0, 0x0

    .line 18150
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    sparse-switch p1, :sswitch_data_0

    .line 18176
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 18177
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in ChannelParticipant"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 18152
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantBanned;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantBanned;-><init>()V

    .line 18153
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    goto :goto_0

    .line 18155
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;-><init>()V

    .line 18156
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    goto :goto_0

    .line 18158
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipant;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipant;-><init>()V

    .line 18159
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    goto :goto_0

    .line 18161
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantKicked_layer67;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantKicked_layer67;-><init>()V

    .line 18162
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    goto :goto_0

    .line 18164
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantSelf;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantSelf;-><init>()V

    .line 18165
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    goto :goto_0

    .line 18167
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantModerator_layer67;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantModerator_layer67;-><init>()V

    .line 18168
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    goto :goto_0

    .line 18170
    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantEditor_layer67;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantEditor_layer67;-><init>()V

    .line 18171
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    goto :goto_0

    .line 18173
    :sswitch_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    goto :goto_0

    .line 18179
    :cond_0
    if-eqz v0, :cond_1

    .line 18180
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 18182
    :cond_1
    return-object v0

    .line 18150
    nop

    :sswitch_data_0
    .sparse-switch
        -0x733a1966 -> :sswitch_3
        -0x6efa8011 -> :sswitch_5
        -0x67e6d29f -> :sswitch_6
        -0x5cd76593 -> :sswitch_4
        -0x57d05768 -> :sswitch_7
        -0x1c1d1e07 -> :sswitch_1
        0x15ebac1d -> :sswitch_2
        0x222c1886 -> :sswitch_0
    .end sparse-switch
.end method
