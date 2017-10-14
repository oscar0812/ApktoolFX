.class public Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader_layer68;
.super Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messageFwdHeader_layer68"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21104
    const v0, -0x38792235

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader_layer68;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21103
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 21108
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader_layer68;->flags:I

    .line 21109
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader_layer68;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 21110
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader_layer68;->from_id:I

    .line 21112
    :cond_0
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader_layer68;->date:I

    .line 21113
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader_layer68;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 21114
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader_layer68;->channel_id:I

    .line 21116
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader_layer68;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 21117
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader_layer68;->channel_post:I

    .line 21119
    :cond_2
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 21122
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader_layer68;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21123
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader_layer68;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21124
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader_layer68;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 21125
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader_layer68;->from_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21127
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader_layer68;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21128
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader_layer68;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 21129
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader_layer68;->channel_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21131
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader_layer68;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 21132
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader_layer68;->channel_post:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21134
    :cond_2
    return-void
.end method
