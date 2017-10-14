.class public Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;
.super Ljava/lang/Object;
.source "ID3v2FrameHeader.java"


# instance fields
.field private bodySize:I

.field private compression:Z

.field private dataLengthIndicator:I

.field private encryption:Z

.field private frameId:Ljava/lang/String;

.field private headerSize:I

.field private unsynchronization:Z


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;)V
    .locals 12
    .param p1, "input"    # Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->getPosition()J

    move-result-wide v6

    .line 32
    .local v6, "startPosition":J
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->getData()Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;

    move-result-object v1

    .line 37
    .local v1, "data":Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->getTagHeader()Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->getVersion()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    .line 38
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x3

    invoke-virtual {v1, v10}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readFully(I)[B

    move-result-object v10

    const-string/jumbo v11, "ISO-8859-1"

    invoke-direct {v9, v10, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v9, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->frameId:Ljava/lang/String;

    .line 46
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->getTagHeader()Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->getVersion()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_4

    .line 47
    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readByte()B

    move-result v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readByte()B

    move-result v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readByte()B

    move-result v10

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v9, v10

    iput v9, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->bodySize:I

    .line 57
    :goto_1
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->getTagHeader()Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->getVersion()I

    move-result v9

    const/4 v10, 0x2

    if-le v9, v10, :cond_2

    .line 58
    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readByte()B

    .line 59
    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readByte()B

    move-result v4

    .line 63
    .local v4, "formatFlags":B
    const/4 v8, 0x0

    .line 64
    .local v8, "unsynchronizationMask":I
    const/4 v2, 0x0

    .line 65
    .local v2, "dataLengthIndicatorMask":I
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->getTagHeader()Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->getVersion()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_6

    .line 66
    const/16 v0, 0x80

    .line 67
    .local v0, "compressionMask":I
    const/16 v3, 0x40

    .line 68
    .local v3, "encryptionMask":I
    const/16 v5, 0x20

    .line 76
    .local v5, "groupingIdentityMask":I
    :goto_2
    and-int v9, v4, v0

    if-eqz v9, :cond_7

    const/4 v9, 0x1

    :goto_3
    iput-boolean v9, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->compression:Z

    .line 77
    and-int v9, v4, v8

    if-eqz v9, :cond_8

    const/4 v9, 0x1

    :goto_4
    iput-boolean v9, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->unsynchronization:Z

    .line 78
    and-int v9, v4, v3

    if-eqz v9, :cond_9

    const/4 v9, 0x1

    :goto_5
    iput-boolean v9, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->encryption:Z

    .line 83
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->getTagHeader()Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->getVersion()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_a

    .line 84
    iget-boolean v9, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->compression:Z

    if-eqz v9, :cond_0

    .line 85
    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readInt()I

    move-result v9

    iput v9, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->dataLengthIndicator:I

    .line 86
    iget v9, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->bodySize:I

    add-int/lit8 v9, v9, -0x4

    iput v9, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->bodySize:I

    .line 88
    :cond_0
    iget-boolean v9, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->encryption:Z

    if-eqz v9, :cond_1

    .line 89
    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readByte()B

    .line 90
    iget v9, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->bodySize:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->bodySize:I

    .line 92
    :cond_1
    and-int v9, v4, v5

    if-eqz v9, :cond_2

    .line 93
    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readByte()B

    .line 94
    iget v9, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->bodySize:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->bodySize:I

    .line 112
    .end local v0    # "compressionMask":I
    .end local v2    # "dataLengthIndicatorMask":I
    .end local v3    # "encryptionMask":I
    .end local v4    # "formatFlags":B
    .end local v5    # "groupingIdentityMask":I
    .end local v8    # "unsynchronizationMask":I
    :cond_2
    :goto_6
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->getPosition()J

    move-result-wide v10

    sub-long/2addr v10, v6

    long-to-int v9, v10

    iput v9, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->headerSize:I

    .line 113
    return-void

    .line 40
    :cond_3
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x4

    invoke-virtual {v1, v10}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readFully(I)[B

    move-result-object v10

    const-string/jumbo v11, "ISO-8859-1"

    invoke-direct {v9, v10, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v9, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->frameId:Ljava/lang/String;

    goto/16 :goto_0

    .line 48
    :cond_4
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->getTagHeader()Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->getVersion()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_5

    .line 49
    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readInt()I

    move-result v9

    iput v9, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->bodySize:I

    goto/16 :goto_1

    .line 51
    :cond_5
    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readSyncsafeInt()I

    move-result v9

    iput v9, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->bodySize:I

    goto/16 :goto_1

    .line 70
    .restart local v2    # "dataLengthIndicatorMask":I
    .restart local v4    # "formatFlags":B
    .restart local v8    # "unsynchronizationMask":I
    :cond_6
    const/16 v5, 0x40

    .line 71
    .restart local v5    # "groupingIdentityMask":I
    const/16 v0, 0x8

    .line 72
    .restart local v0    # "compressionMask":I
    const/4 v3, 0x4

    .line 73
    .restart local v3    # "encryptionMask":I
    const/4 v8, 0x2

    .line 74
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 76
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 77
    :cond_8
    const/4 v9, 0x0

    goto :goto_4

    .line 78
    :cond_9
    const/4 v9, 0x0

    goto :goto_5

    .line 97
    :cond_a
    and-int v9, v4, v5

    if-eqz v9, :cond_b

    .line 98
    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readByte()B

    .line 99
    iget v9, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->bodySize:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->bodySize:I

    .line 101
    :cond_b
    iget-boolean v9, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->encryption:Z

    if-eqz v9, :cond_c

    .line 102
    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readByte()B

    .line 103
    iget v9, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->bodySize:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->bodySize:I

    .line 105
    :cond_c
    and-int v9, v4, v2

    if-eqz v9, :cond_2

    .line 106
    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readSyncsafeInt()I

    move-result v9

    iput v9, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->dataLengthIndicator:I

    .line 107
    iget v9, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->bodySize:I

    add-int/lit8 v9, v9, -0x4

    iput v9, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->bodySize:I

    goto :goto_6
.end method


# virtual methods
.method public getBodySize()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->bodySize:I

    return v0
.end method

.method public getDataLengthIndicator()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->dataLengthIndicator:I

    return v0
.end method

.method public getFrameId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->frameId:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderSize()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->headerSize:I

    return v0
.end method

.method public isCompression()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->compression:Z

    return v0
.end method

.method public isEncryption()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->encryption:Z

    return v0
.end method

.method public isPadding()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 153
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->frameId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 154
    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->frameId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eqz v2, :cond_1

    .line 158
    :cond_0
    :goto_1
    return v1

    .line 153
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_2
    iget v2, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->bodySize:I

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_1
.end method

.method public isUnsynchronization()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->unsynchronization:Z

    return v0
.end method

.method public isValid()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 144
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->frameId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 145
    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->frameId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x41

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->frameId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5a

    if-le v2, v3, :cond_2

    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->frameId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->frameId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x39

    if-le v2, v3, :cond_2

    .line 149
    :cond_1
    :goto_1
    return v1

    .line 144
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_3
    iget v2, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->bodySize:I

    if-lez v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 163
    const-string/jumbo v0, "%s[id=%s, bodysize=%d]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->frameId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->bodySize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
