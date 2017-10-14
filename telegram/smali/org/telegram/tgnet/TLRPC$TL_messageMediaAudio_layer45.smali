.class public Lorg/telegram/tgnet/TLRPC$TL_messageMediaAudio_layer45;
.super Lorg/telegram/tgnet/TLRPC$MessageMedia;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messageMediaAudio_layer45"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3820
    const v0, -0x39497d00    # -23361.5f

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaAudio_layer45;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3819
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$MessageMedia;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 3824
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Audio;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Audio;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaAudio_layer45;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    .line 3825
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 3828
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaAudio_layer45;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 3829
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaAudio_layer45;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$Audio;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 3830
    return-void
.end method
