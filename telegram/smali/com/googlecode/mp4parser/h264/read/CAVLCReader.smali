.class public Lcom/googlecode/mp4parser/h264/read/CAVLCReader;
.super Lcom/googlecode/mp4parser/h264/read/BitstreamReader;
.source "CAVLCReader.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;-><init>(Ljava/io/InputStream;)V

    .line 36
    return-void
.end method

.method private readUE()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, "cnt":I
    :goto_0
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->read1Bit()I

    move-result v4

    if-eqz v4, :cond_1

    .line 58
    const/4 v1, 0x0

    .line 59
    .local v1, "res":I
    if-lez v0, :cond_0

    .line 60
    invoke-virtual {p0, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(I)J

    move-result-wide v2

    .line 62
    .local v2, "val":J
    const/4 v4, 0x1

    shl-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    int-to-long v4, v4

    add-long/2addr v4, v2

    long-to-int v1, v4

    .line 65
    .end local v2    # "val":J
    :cond_0
    return v1

    .line 56
    .end local v1    # "res":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private trace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x20

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .local v3, "traceBuilder":Ljava/lang/StringBuilder;
    sget v4, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->bitsRead:I

    iget-object v5, p0, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->debugBits:Lcom/googlecode/mp4parser/h264/CharCache;

    invoke-virtual {v5}, Lcom/googlecode/mp4parser/h264/CharCache;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "pos":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v2, v4, 0x8

    .line 170
    .local v2, "spaces":I
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "@"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 175
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x64

    iget-object v5, p0, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->debugBits:Lcom/googlecode/mp4parser/h264/CharCache;

    invoke-virtual {v5}, Lcom/googlecode/mp4parser/h264/CharCache;->length()I

    move-result v5

    sub-int v2, v4, v5

    .line 177
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v2, :cond_1

    .line 179
    iget-object v4, p0, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->debugBits:Lcom/googlecode/mp4parser/h264/CharCache;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, " ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    iget-object v4, p0, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->debugBits:Lcom/googlecode/mp4parser/h264/CharCache;

    invoke-virtual {v4}, Lcom/googlecode/mp4parser/h264/CharCache;->clear()V

    .line 183
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/googlecode/mp4parser/h264/Debug;->println(Ljava/lang/String;)V

    .line 184
    return-void

    .line 173
    :cond_0
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    :cond_1
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public read(I)[B
    .locals 3
    .param p1, "payloadSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    new-array v1, p1, [B

    .line 108
    .local v1, "result":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 111
    return-object v1

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readByte()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public readAE()Z
    .locals 2

    .prologue
    .line 116
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Stan"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readAEI()I
    .locals 2

    .prologue
    .line 127
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Stan"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readBool(Ljava/lang/String;)Z
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->read1Bit()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 97
    .local v0, "res":Z
    :goto_0
    if-eqz v0, :cond_1

    const-string/jumbo v1, "1"

    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return v0

    .line 95
    .end local v0    # "res":Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 97
    .restart local v0    # "res":Z
    :cond_1
    const-string/jumbo v1, "0"

    goto :goto_1
.end method

.method public readCE(Lcom/googlecode/mp4parser/h264/BTree;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "bt"    # Lcom/googlecode/mp4parser/h264/BTree;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->read1Bit()I

    move-result v0

    .line 137
    .local v0, "bit":I
    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/h264/BTree;->down(I)Lcom/googlecode/mp4parser/h264/BTree;

    move-result-object p1

    .line 138
    if-nez p1, :cond_1

    .line 139
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Illegal code"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 141
    :cond_1
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/h264/BTree;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 142
    .local v1, "i":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-object v1
.end method

.method public readME(Ljava/lang/String;)I
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public readNBit(ILjava/lang/String;)J
    .locals 3
    .param p1, "n"    # I
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(I)J

    move-result-wide v0

    .line 41
    .local v0, "val":J
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-wide v0
.end method

.method public readSE(Ljava/lang/String;)I
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE()I

    move-result v1

    .line 85
    .local v1, "val":I
    and-int/lit8 v2, v1, 0x1

    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v2, -0x1

    .line 86
    .local v0, "sign":I
    shr-int/lit8 v2, v1, 0x1

    and-int/lit8 v3, v1, 0x1

    add-int/2addr v2, v3

    mul-int v1, v2, v0

    .line 88
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return v1
.end method

.method public readTE(I)I
    .locals 1
    .param p1, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE()I

    move-result v0

    .line 122
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->read1Bit()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    and-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public readTrailingBits()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->read1Bit()I

    .line 161
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readRemainingByte()J

    .line 162
    return-void
.end method

.method public readU(ILjava/lang/String;)I
    .locals 2
    .param p1, "i"    # I
    .param p2, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(ILjava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public readUE(Ljava/lang/String;)I
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE()I

    move-result v0

    .line 77
    .local v0, "res":I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return v0
.end method

.method public readZeroBitCount(Ljava/lang/String;)I
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, "count":I
    :goto_0
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->read1Bit()I

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return v0

    .line 152
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
