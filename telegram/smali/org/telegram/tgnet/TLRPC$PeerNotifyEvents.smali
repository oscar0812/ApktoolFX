.class public abstract Lorg/telegram/tgnet/TLRPC$PeerNotifyEvents;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PeerNotifyEvents"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10264
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PeerNotifyEvents;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 10267
    const/4 v0, 0x0

    .line 10268
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$PeerNotifyEvents;
    sparse-switch p1, :sswitch_data_0

    .line 10276
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 10277
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in PeerNotifyEvents"

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

    .line 10270
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerNotifyEventsEmpty;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PeerNotifyEvents;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerNotifyEventsEmpty;-><init>()V

    .line 10271
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PeerNotifyEvents;
    goto :goto_0

    .line 10273
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerNotifyEventsAll;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PeerNotifyEvents;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerNotifyEventsAll;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PeerNotifyEvents;
    goto :goto_0

    .line 10279
    :cond_0
    if-eqz v0, :cond_1

    .line 10280
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$PeerNotifyEvents;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 10282
    :cond_1
    return-object v0

    .line 10268
    nop

    :sswitch_data_0
    .sparse-switch
        -0x522ac34d -> :sswitch_0
        0x6d1ded88 -> :sswitch_1
    .end sparse-switch
.end method
