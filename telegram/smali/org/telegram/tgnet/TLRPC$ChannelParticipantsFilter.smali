.class public abstract Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ChannelParticipantsFilter"
.end annotation


# instance fields
.field public q:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9467
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 9471
    const/4 v0, 0x0

    .line 9472
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;
    sparse-switch p1, :sswitch_data_0

    .line 9492
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 9493
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in ChannelParticipantsFilter"

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

    .line 9474
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsAdmins;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsAdmins;-><init>()V

    .line 9475
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;
    goto :goto_0

    .line 9477
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;-><init>()V

    .line 9478
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;
    goto :goto_0

    .line 9480
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsKicked;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsKicked;-><init>()V

    .line 9481
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;
    goto :goto_0

    .line 9483
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsSearch;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsSearch;-><init>()V

    .line 9484
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;
    goto :goto_0

    .line 9486
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsBots;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsBots;-><init>()V

    .line 9487
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;
    goto :goto_0

    .line 9489
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsBanned;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsBanned;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;
    goto :goto_0

    .line 9495
    :cond_0
    if-eqz v0, :cond_1

    .line 9496
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 9498
    :cond_1
    return-object v0

    .line 9472
    nop

    :sswitch_data_0
    .sparse-switch
        -0x5c4ab67b -> :sswitch_2
        -0x4f2e79a5 -> :sswitch_4
        -0x4b9f7697 -> :sswitch_0
        -0x21c0c387 -> :sswitch_1
        0x656ac4b -> :sswitch_3
        0x1427a5e1 -> :sswitch_5
    .end sparse-switch
.end method
