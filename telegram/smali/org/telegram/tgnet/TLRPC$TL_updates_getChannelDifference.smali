.class public Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_updates_getChannelDifference"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

.field public filter:Lorg/telegram/tgnet/TLRPC$ChannelMessagesFilter;

.field public flags:I

.field public force:Z

.field public limit:I

.field public pts:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24598
    const v0, 0x3173d78

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24597
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "constructor"    # I
    .param p3, "exception"    # Z

    .prologue
    .line 24608
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 24612
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 24613
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;->force:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;->flags:I

    .line 24614
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 24615
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$InputChannel;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 24616
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;->filter:Lorg/telegram/tgnet/TLRPC$ChannelMessagesFilter;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$ChannelMessagesFilter;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 24617
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;->pts:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 24618
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;->limit:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 24619
    return-void

    .line 24613
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_0
.end method
