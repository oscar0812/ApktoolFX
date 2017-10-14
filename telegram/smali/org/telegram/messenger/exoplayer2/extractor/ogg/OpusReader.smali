.class final Lorg/telegram/messenger/exoplayer2/extractor/ogg/OpusReader;
.super Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;
.source "OpusReader.java"


# static fields
.field private static final DEFAULT_SEEK_PRE_ROLL_SAMPLES:I = 0xf00

.field private static final OPUS_CODE:I

.field private static final OPUS_SIGNATURE:[B

.field private static final SAMPLE_RATE:I = 0xbb80


# instance fields
.field private headerRead:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string/jumbo v0, "Opus"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OpusReader;->OPUS_CODE:I

    .line 43
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OpusReader;->OPUS_SIGNATURE:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x48t
        0x65t
        0x61t
        0x64t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;-><init>()V

    return-void
.end method

.method private getPacketDurationUs([B)J
    .locals 6
    .param p1, "packet"    # [B

    .prologue
    const/16 v5, 0x2710

    .line 107
    const/4 v4, 0x0

    aget-byte v4, p1, v4

    and-int/lit16 v3, v4, 0xff

    .line 109
    .local v3, "toc":I
    and-int/lit8 v4, v3, 0x3

    packed-switch v4, :pswitch_data_0

    .line 118
    const/4 v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit8 v1, v4, 0x3f

    .line 122
    .local v1, "frames":I
    :goto_0
    shr-int/lit8 v0, v3, 0x3

    .line 123
    .local v0, "config":I
    and-int/lit8 v2, v0, 0x3

    .line 124
    .local v2, "length":I
    const/16 v4, 0x10

    if-lt v0, v4, :cond_0

    .line 125
    const/16 v4, 0x9c4

    shl-int v2, v4, v2

    .line 133
    :goto_1
    mul-int v4, v1, v2

    int-to-long v4, v4

    return-wide v4

    .line 111
    .end local v0    # "config":I
    .end local v1    # "frames":I
    .end local v2    # "length":I
    :pswitch_0
    const/4 v1, 0x1

    .line 112
    .restart local v1    # "frames":I
    goto :goto_0

    .line 115
    .end local v1    # "frames":I
    :pswitch_1
    const/4 v1, 0x2

    .line 116
    .restart local v1    # "frames":I
    goto :goto_0

    .line 126
    .restart local v0    # "config":I
    .restart local v2    # "length":I
    :cond_0
    const/16 v4, 0xc

    if-lt v0, v4, :cond_1

    .line 127
    and-int/lit8 v4, v2, 0x1

    shl-int v2, v5, v4

    goto :goto_1

    .line 128
    :cond_1
    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    .line 129
    const v2, 0xea60

    goto :goto_1

    .line 131
    :cond_2
    shl-int v2, v5, v2

    goto :goto_1

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private putNativeOrderLong(Ljava/util/List;I)V
    .locals 8
    .param p2, "samples"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;I)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    int-to-long v4, p2

    const-wide/32 v6, 0x3b9aca00

    mul-long/2addr v4, v6

    const-wide/32 v6, 0xbb80

    div-long v2, v4, v6

    .line 96
    .local v2, "ns":J
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 97
    .local v0, "array":[B
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

.method public static verifyBitstreamType(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Z
    .locals 4
    .param p0, "data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    sget-object v3, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OpusReader;->OPUS_SIGNATURE:[B

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 53
    :goto_0
    return v1

    .line 51
    :cond_0
    sget-object v2, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OpusReader;->OPUS_SIGNATURE:[B

    array-length v2, v2

    new-array v0, v2, [B

    .line 52
    .local v0, "header":[B
    sget-object v2, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OpusReader;->OPUS_SIGNATURE:[B

    array-length v2, v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 53
    sget-object v1, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OpusReader;->OPUS_SIGNATURE:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method protected preparePayload(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)J
    .locals 2
    .param p1, "packet"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    .line 66
    iget-object v0, p1, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OpusReader;->getPacketDurationUs([B)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OpusReader;->convertTimeToGranule(J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected readHeaders(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;JLorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader$SetupData;)Z
    .locals 15
    .param p1, "packet"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p2, "position"    # J
    .param p4, "setupData"    # Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader$SetupData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 72
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OpusReader;->headerRead:Z

    if-nez v1, :cond_0

    .line 73
    move-object/from16 v0, p1

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v13

    .line 74
    .local v13, "metadata":[B
    const/16 v1, 0x9

    aget-byte v1, v13, v1

    and-int/lit16 v6, v1, 0xff

    .line 75
    .local v6, "channelCount":I
    const/16 v1, 0xb

    aget-byte v1, v13, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/16 v2, 0xa

    aget-byte v2, v13, v2

    and-int/lit16 v2, v2, 0xff

    or-int v14, v1, v2

    .line 77
    .local v14, "preskip":I
    new-instance v8, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 78
    .local v8, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-direct {p0, v8, v14}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OpusReader;->putNativeOrderLong(Ljava/util/List;I)V

    .line 80
    const/16 v1, 0xf00

    invoke-direct {p0, v8, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OpusReader;->putNativeOrderLong(Ljava/util/List;I)V

    .line 82
    const/4 v1, 0x0

    const-string/jumbo v2, "audio/opus"

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const v7, 0xbb80

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lorg/telegram/messenger/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v1

    move-object/from16 v0, p4

    iput-object v1, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader$SetupData;->format:Lorg/telegram/messenger/exoplayer2/Format;

    .line 85
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OpusReader;->headerRead:Z

    .line 91
    const/4 v12, 0x1

    .end local v6    # "channelCount":I
    .end local v8    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v13    # "metadata":[B
    .end local v14    # "preskip":I
    :goto_0
    return v12

    .line 87
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OpusReader;->OPUS_CODE:I

    if-ne v1, v2, :cond_1

    const/4 v12, 0x1

    .line 88
    .local v12, "headerPacket":Z
    :goto_1
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_0

    .line 87
    .end local v12    # "headerPacket":Z
    :cond_1
    const/4 v12, 0x0

    goto :goto_1
.end method

.method protected reset(Z)V
    .locals 1
    .param p1, "headerData"    # Z

    .prologue
    .line 58
    invoke-super {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->reset(Z)V

    .line 59
    if-eqz p1, :cond_0

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OpusReader;->headerRead:Z

    .line 62
    :cond_0
    return-void
.end method
