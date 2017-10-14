.class public abstract Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "channels_ChannelParticipants"
.end annotation


# instance fields
.field public count:I

.field public participants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$ChannelParticipant;",
            ">;"
        }
    .end annotation
.end field

.field public users:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18390
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 18392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->participants:Ljava/util/ArrayList;

    .line 18393
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->users:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 18396
    const/4 v0, 0x0

    .line 18397
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;
    sparse-switch p1, :sswitch_data_0

    .line 18405
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 18406
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in channels_ChannelParticipants"

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

    .line 18399
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;-><init>()V

    .line 18400
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;
    goto :goto_0

    .line 18402
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipantsNotModified;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipantsNotModified;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;
    goto :goto_0

    .line 18408
    :cond_0
    if-eqz v0, :cond_1

    .line 18409
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 18411
    :cond_1
    return-object v0

    .line 18397
    nop

    :sswitch_data_0
    .sparse-switch
        -0xfe8c017 -> :sswitch_1
        -0xa911d58 -> :sswitch_0
    .end sparse-switch
.end method
