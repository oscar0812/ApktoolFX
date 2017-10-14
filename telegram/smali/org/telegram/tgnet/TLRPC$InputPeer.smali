.class public abstract Lorg/telegram/tgnet/TLRPC$InputPeer;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "InputPeer"
.end annotation


# instance fields
.field public access_hash:J

.field public channel_id:I

.field public chat_id:I

.field public user_id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22551
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputPeer;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 22558
    const/4 v0, 0x0

    .line 22559
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$InputPeer;
    sparse-switch p1, :sswitch_data_0

    .line 22576
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 22577
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in InputPeer"

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

    .line 22561
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPeer;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;-><init>()V

    .line 22562
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPeer;
    goto :goto_0

    .line 22564
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPeer;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;-><init>()V

    .line 22565
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPeer;
    goto :goto_0

    .line 22567
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPeer;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    .line 22568
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPeer;
    goto :goto_0

    .line 22570
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPeer;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;-><init>()V

    .line 22571
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPeer;
    goto :goto_0

    .line 22573
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPeer;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPeer;
    goto :goto_0

    .line 22579
    :cond_0
    if-eqz v0, :cond_1

    .line 22580
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$InputPeer;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 22582
    :cond_1
    return-object v0

    .line 22559
    nop

    :sswitch_data_0
    .sparse-switch
        0x179be863 -> :sswitch_1
        0x20adaef8 -> :sswitch_4
        0x7b8e7de6 -> :sswitch_0
        0x7da07ec9 -> :sswitch_3
        0x7f3b18ea -> :sswitch_2
    .end sparse-switch
.end method
