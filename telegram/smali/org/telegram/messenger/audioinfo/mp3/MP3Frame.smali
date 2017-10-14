.class public Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;
.super Ljava/lang/Object;
.source "MP3Frame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;,
        Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$CRC16;
    }
.end annotation


# instance fields
.field private final bytes:[B

.field private final header:Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;[B)V
    .locals 0
    .param p1, "header"    # Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;
    .param p2, "bytes"    # [B

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput-object p1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->header:Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;

    .line 242
    iput-object p2, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    .line 243
    return-void
.end method


# virtual methods
.method public getHeader()Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->header:Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;

    return-object v0
.end method

.method public getNumberOfFrames()I
    .locals 6

    .prologue
    .line 297
    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->isXingFrame()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 298
    iget-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->header:Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;

    invoke-virtual {v3}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getXingOffset()I

    move-result v2

    .line 299
    .local v2, "xingOffset":I
    iget-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    add-int/lit8 v4, v2, 0x7

    aget-byte v0, v3, v4

    .line 300
    .local v0, "flags":B
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_1

    .line 301
    iget-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    add-int/lit8 v4, v2, 0x8

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    iget-object v4, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    add-int/lit8 v5, v2, 0x9

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    add-int/lit8 v5, v2, 0xa

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    add-int/lit8 v5, v2, 0xb

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    .line 313
    .end local v0    # "flags":B
    .end local v2    # "xingOffset":I
    :goto_0
    return v3

    .line 306
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->isVBRIFrame()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 307
    iget-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->header:Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;

    invoke-virtual {v3}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getVBRIOffset()I

    move-result v1

    .line 308
    .local v1, "vbriOffset":I
    iget-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    add-int/lit8 v4, v1, 0xe

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    iget-object v4, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    add-int/lit8 v5, v1, 0xf

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    add-int/lit8 v5, v1, 0x10

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    add-int/lit8 v5, v1, 0x11

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    goto :goto_0

    .line 313
    .end local v1    # "vbriOffset":I
    :cond_1
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    array-length v0, v0

    return v0
.end method

.method isChecksumError()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 246
    iget-object v6, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->header:Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;

    invoke-virtual {v6}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getProtection()I

    move-result v6

    if-nez v6, :cond_2

    .line 247
    iget-object v6, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->header:Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;

    invoke-virtual {v6}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getLayer()I

    move-result v6

    if-ne v6, v4, :cond_2

    .line 248
    new-instance v1, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$CRC16;

    invoke-direct {v1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$CRC16;-><init>()V

    .line 249
    .local v1, "crc16":Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$CRC16;
    iget-object v6, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    invoke-virtual {v1, v6}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$CRC16;->update(B)V

    .line 250
    iget-object v6, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    const/4 v7, 0x3

    aget-byte v6, v6, v7

    invoke-virtual {v1, v6}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$CRC16;->update(B)V

    .line 252
    iget-object v6, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->header:Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;

    invoke-virtual {v6}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getSideInfoSize()I

    move-result v3

    .line 253
    .local v3, "sideInfoSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 254
    iget-object v6, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    add-int/lit8 v7, v2, 0x6

    aget-byte v6, v6, v7

    invoke-virtual {v1, v6}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$CRC16;->update(B)V

    .line 253
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 256
    :cond_0
    iget-object v6, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    const/4 v7, 0x4

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    iget-object v7, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    const/4 v8, 0x5

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    or-int v0, v6, v7

    .line 257
    .local v0, "crc":I
    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$CRC16;->getValue()S

    move-result v6

    if-eq v0, v6, :cond_1

    .line 260
    .end local v0    # "crc":I
    .end local v1    # "crc16":Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$CRC16;
    .end local v2    # "i":I
    .end local v3    # "sideInfoSize":I
    :goto_1
    return v4

    .restart local v0    # "crc":I
    .restart local v1    # "crc16":Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$CRC16;
    .restart local v2    # "i":I
    .restart local v3    # "sideInfoSize":I
    :cond_1
    move v4, v5

    .line 257
    goto :goto_1

    .end local v0    # "crc":I
    .end local v1    # "crc16":Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$CRC16;
    .end local v2    # "i":I
    .end local v3    # "sideInfoSize":I
    :cond_2
    move v4, v5

    .line 260
    goto :goto_1
.end method

.method isVBRIFrame()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 289
    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->header:Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;

    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getVBRIOffset()I

    move-result v0

    .line 290
    .local v0, "vbriOffset":I
    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    array-length v2, v2

    add-int/lit8 v3, v0, 0x1a

    if-ge v2, v3, :cond_1

    .line 293
    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    aget-byte v2, v2, v0

    const/16 v3, 0x56

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v2, v2, v3

    const/16 v3, 0x42

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    add-int/lit8 v3, v0, 0x2

    aget-byte v2, v2, v3

    const/16 v3, 0x52

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    add-int/lit8 v3, v0, 0x3

    aget-byte v2, v2, v3

    const/16 v3, 0x49

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method isXingFrame()Z
    .locals 6

    .prologue
    const/16 v5, 0x6e

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 272
    iget-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->header:Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;

    invoke-virtual {v3}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getXingOffset()I

    move-result v0

    .line 273
    .local v0, "xingOffset":I
    iget-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    array-length v3, v3

    add-int/lit8 v4, v0, 0xc

    if-ge v3, v4, :cond_1

    .line 285
    :cond_0
    :goto_0
    return v1

    .line 276
    :cond_1
    if-ltz v0, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    array-length v3, v3

    add-int/lit8 v4, v0, 0x8

    if-lt v3, v4, :cond_0

    .line 279
    iget-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    aget-byte v3, v3, v0

    const/16 v4, 0x58

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v3, v3, v4

    const/16 v4, 0x69

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    add-int/lit8 v4, v0, 0x2

    aget-byte v3, v3, v4

    if-ne v3, v5, :cond_2

    iget-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    add-int/lit8 v4, v0, 0x3

    aget-byte v3, v3, v4

    const/16 v4, 0x67

    if-ne v3, v4, :cond_2

    move v1, v2

    .line 280
    goto :goto_0

    .line 282
    :cond_2
    iget-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    aget-byte v3, v3, v0

    const/16 v4, 0x49

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v3, v3, v4

    if-ne v3, v5, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    add-int/lit8 v4, v0, 0x2

    aget-byte v3, v3, v4

    const/16 v4, 0x66

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    add-int/lit8 v4, v0, 0x3

    aget-byte v3, v3, v4

    const/16 v4, 0x6f

    if-ne v3, v4, :cond_0

    move v1, v2

    .line 283
    goto :goto_0
.end method
