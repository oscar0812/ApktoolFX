.class public abstract Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PeerNotifySettings"
.end annotation


# instance fields
.field public events_mask:I

.field public flags:I

.field public mute_until:I

.field public silent:Z

.field public sound:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4492
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 4500
    const/4 v0, 0x0

    .line 4501
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;
    sparse-switch p1, :sswitch_data_0

    .line 4512
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 4513
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in PeerNotifySettings"

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

    .line 4503
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;-><init>()V

    .line 4504
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;
    goto :goto_0

    .line 4506
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings_layer47;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings_layer47;-><init>()V

    .line 4507
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;
    goto :goto_0

    .line 4509
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettingsEmpty;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettingsEmpty;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;
    goto :goto_0

    .line 4515
    :cond_0
    if-eqz v0, :cond_1

    .line 4516
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 4518
    :cond_1
    return-object v0

    .line 4501
    nop

    :sswitch_data_0
    .sparse-switch
        -0x72a1ee12 -> :sswitch_1
        -0x65325b40 -> :sswitch_0
        0x70a68512 -> :sswitch_2
    .end sparse-switch
.end method
