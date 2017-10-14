.class public abstract Lorg/telegram/tgnet/TLRPC$ChannelMessagesFilter;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ChannelMessagesFilter"
.end annotation


# instance fields
.field public exclude_new_messages:Z

.field public flags:I

.field public ranges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_messageRange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17809
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 17812
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChannelMessagesFilter;->ranges:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChannelMessagesFilter;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 17815
    const/4 v0, 0x0

    .line 17816
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$ChannelMessagesFilter;
    sparse-switch p1, :sswitch_data_0

    .line 17824
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 17825
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in ChannelMessagesFilter"

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

    .line 17818
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelMessagesFilterEmpty;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelMessagesFilter;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelMessagesFilterEmpty;-><init>()V

    .line 17819
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelMessagesFilter;
    goto :goto_0

    .line 17821
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelMessagesFilter;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelMessagesFilter;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelMessagesFilter;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelMessagesFilter;
    goto :goto_0

    .line 17827
    :cond_0
    if-eqz v0, :cond_1

    .line 17828
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$ChannelMessagesFilter;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 17830
    :cond_1
    return-object v0

    .line 17816
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6b2bd119 -> :sswitch_0
        -0x328826a9 -> :sswitch_1
    .end sparse-switch
.end method
