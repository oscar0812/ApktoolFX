.class public final Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;
.super Ljava/lang/Object;
.source "ParsableBitArray.java"


# instance fields
.field private bitOffset:I

.field private byteLimit:I

.field private byteOffset:I

.field public data:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 42
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;-><init>([BI)V

    .line 43
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "limit"    # I

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->data:[B

    .line 53
    iput p2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteLimit:I

    .line 54
    return-void
.end method

.method private assertValidOffset()V
    .locals 2

    .prologue
    .line 233
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteOffset:I

    if-ltz v0, :cond_1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->bitOffset:I

    if-ltz v0, :cond_1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->bitOffset:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteOffset:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteLimit:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteOffset:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteLimit:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->bitOffset:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 236
    return-void

    .line 233
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bitsLeft()I
    .locals 2

    .prologue
    .line 82
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteLimit:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteOffset:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->bitOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public byteAlign()V
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->bitOffset:I

    if-nez v0, :cond_0

    .line 200
    :goto_0
    return-void

    .line 197
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 198
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteOffset:I

    .line 199
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->assertValidOffset()V

    goto :goto_0
.end method

.method public getBytePosition()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->bitOffset:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 99
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteOffset:I

    return v0

    .line 98
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPosition()I
    .locals 2

    .prologue
    .line 89
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteOffset:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->bitOffset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public readBit()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 134
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readBits(I)I
    .locals 10
    .param p1, "numBits"    # I

    .prologue
    const/16 v9, 0x8

    .line 144
    if-nez p1, :cond_0

    .line 145
    const/4 v3, 0x0

    .line 187
    :goto_0
    return v3

    .line 148
    :cond_0
    const/4 v3, 0x0

    .line 151
    .local v3, "returnValue":I
    div-int/lit8 v4, p1, 0x8

    .line 152
    .local v4, "wholeBytes":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 154
    iget v6, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->bitOffset:I

    if-eqz v6, :cond_1

    .line 155
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->data:[B

    iget v7, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteOffset:I

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    iget v7, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->bitOffset:I

    shl-int/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->data:[B

    iget v8, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v8, v8, 0x1

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    iget v8, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->bitOffset:I

    rsub-int/lit8 v8, v8, 0x8

    ushr-int/2addr v7, v8

    or-int v0, v6, v7

    .line 160
    .local v0, "byteValue":I
    :goto_2
    add-int/lit8 p1, p1, -0x8

    .line 161
    and-int/lit16 v6, v0, 0xff

    shl-int/2addr v6, p1

    or-int/2addr v3, v6

    .line 162
    iget v6, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteOffset:I

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 158
    .end local v0    # "byteValue":I
    :cond_1
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->data:[B

    iget v7, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteOffset:I

    aget-byte v0, v6, v7

    .restart local v0    # "byteValue":I
    goto :goto_2

    .line 166
    .end local v0    # "byteValue":I
    :cond_2
    if-lez p1, :cond_4

    .line 167
    iget v6, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->bitOffset:I

    add-int v2, v6, p1

    .line 168
    .local v2, "nextBit":I
    const/16 v6, 0xff

    rsub-int/lit8 v7, p1, 0x8

    shr-int/2addr v6, v7

    int-to-byte v5, v6

    .line 170
    .local v5, "writeMask":B
    if-le v2, v9, :cond_5

    .line 172
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->data:[B

    iget v7, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteOffset:I

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v2, -0x8

    shl-int/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->data:[B

    iget v8, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v8, v8, 0x1

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    rsub-int/lit8 v8, v2, 0x10

    shr-int/2addr v7, v8

    or-int/2addr v6, v7

    and-int/2addr v6, v5

    or-int/2addr v3, v6

    .line 174
    iget v6, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteOffset:I

    .line 183
    :cond_3
    :goto_3
    rem-int/lit8 v6, v2, 0x8

    iput v6, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 186
    .end local v2    # "nextBit":I
    .end local v5    # "writeMask":B
    :cond_4
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->assertValidOffset()V

    goto :goto_0

    .line 177
    .restart local v2    # "nextBit":I
    .restart local v5    # "writeMask":B
    :cond_5
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->data:[B

    iget v7, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteOffset:I

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    rsub-int/lit8 v7, v2, 0x8

    shr-int/2addr v6, v7

    and-int/2addr v6, v5

    or-int/2addr v3, v6

    .line 178
    if-ne v2, v9, :cond_3

    .line 179
    iget v6, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteOffset:I

    goto :goto_3
.end method

.method public readBytes([BII)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 213
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->bitOffset:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 214
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->data:[B

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteOffset:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteOffset:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteOffset:I

    .line 216
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->assertValidOffset()V

    .line 217
    return-void

    .line 213
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 62
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->reset([BI)V

    .line 63
    return-void
.end method

.method public reset([BI)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "limit"    # I

    .prologue
    const/4 v0, 0x0

    .line 72
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->data:[B

    .line 73
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteOffset:I

    .line 74
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 75
    iput p2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteLimit:I

    .line 76
    return-void
.end method

.method public setPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 108
    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteOffset:I

    .line 109
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteOffset:I

    mul-int/lit8 v0, v0, 0x8

    sub-int v0, p1, v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 110
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->assertValidOffset()V

    .line 111
    return-void
.end method

.method public skipBits(I)V
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteOffset:I

    div-int/lit8 v1, p1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteOffset:I

    .line 120
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->bitOffset:I

    rem-int/lit8 v1, p1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 121
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->bitOffset:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    .line 122
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteOffset:I

    .line 123
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->bitOffset:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 125
    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->assertValidOffset()V

    .line 126
    return-void
.end method

.method public skipBytes(I)V
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 226
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->bitOffset:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 227
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteOffset:I

    .line 228
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->assertValidOffset()V

    .line 229
    return-void

    .line 226
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
