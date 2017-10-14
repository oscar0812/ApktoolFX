.class final Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$CRC16;
.super Ljava/lang/Object;
.source "MP3Frame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CRC16"
.end annotation


# instance fields
.field private crc:S


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, -0x1

    iput-short v0, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$CRC16;->crc:S

    return-void
.end method


# virtual methods
.method public getValue()S
    .locals 1

    .prologue
    .line 40
    iget-short v0, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$CRC16;->crc:S

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, -0x1

    iput-short v0, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$CRC16;->crc:S

    .line 45
    return-void
.end method

.method public update(B)V
    .locals 1
    .param p1, "value"    # B

    .prologue
    .line 36
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$CRC16;->update(II)V

    .line 37
    return-void
.end method

.method public update(II)V
    .locals 5
    .param p1, "value"    # I
    .param p2, "length"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 24
    add-int/lit8 v1, p2, -0x1

    shl-int v0, v2, v1

    .line 26
    .local v0, "mask":I
    :cond_0
    iget-short v1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$CRC16;->crc:S

    const v4, 0x8000

    and-int/2addr v1, v4

    if-nez v1, :cond_1

    move v4, v2

    :goto_0
    and-int v1, p1, v0

    if-nez v1, :cond_2

    move v1, v2

    :goto_1
    xor-int/2addr v1, v4

    if-eqz v1, :cond_3

    .line 27
    iget-short v1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$CRC16;->crc:S

    shl-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    iput-short v1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$CRC16;->crc:S

    .line 28
    iget-short v1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$CRC16;->crc:S

    const v4, 0x8005

    xor-int/2addr v1, v4

    int-to-short v1, v1

    iput-short v1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$CRC16;->crc:S

    .line 32
    :goto_2
    ushr-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 33
    return-void

    :cond_1
    move v4, v3

    .line 26
    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    .line 30
    :cond_3
    iget-short v1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$CRC16;->crc:S

    shl-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    iput-short v1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$CRC16;->crc:S

    goto :goto_2
.end method
