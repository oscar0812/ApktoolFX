.class final Lorg/telegram/messenger/exoplayer2/extractor/flv/AudioTagPayloadReader;
.super Lorg/telegram/messenger/exoplayer2/extractor/flv/TagPayloadReader;
.source "AudioTagPayloadReader.java"


# static fields
.field private static final AAC_PACKET_TYPE_AAC_RAW:I = 0x1

.field private static final AAC_PACKET_TYPE_SEQUENCE_HEADER:I = 0x0

.field private static final AUDIO_FORMAT_AAC:I = 0xa

.field private static final AUDIO_FORMAT_ALAW:I = 0x7

.field private static final AUDIO_FORMAT_MP3:I = 0x2

.field private static final AUDIO_FORMAT_ULAW:I = 0x8

.field private static final AUDIO_SAMPLING_RATE_TABLE:[I


# instance fields
.field private audioFormat:I

.field private hasOutputFormat:Z

.field private hasParsedAudioDataHeader:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/extractor/flv/AudioTagPayloadReader;->AUDIO_SAMPLING_RATE_TABLE:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1588
        0x2b11
        0x5622
        0xac44
    .end array-data
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;)V
    .locals 0
    .param p1, "output"    # Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/flv/TagPayloadReader;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;)V

    .line 49
    return-void
.end method


# virtual methods
.method protected parseHeader(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Z
    .locals 23
    .param p1, "data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException;
        }
    .end annotation

    .prologue
    .line 58
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/telegram/messenger/exoplayer2/extractor/flv/AudioTagPayloadReader;->hasParsedAudioDataHeader:Z

    if-nez v1, :cond_6

    .line 59
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v21

    .line 60
    .local v21, "header":I
    shr-int/lit8 v1, v21, 0x4

    and-int/lit8 v1, v1, 0xf

    move-object/from16 v0, p0

    iput v1, v0, Lorg/telegram/messenger/exoplayer2/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    .line 61
    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/messenger/exoplayer2/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 62
    shr-int/lit8 v1, v21, 0x2

    and-int/lit8 v22, v1, 0x3

    .line 63
    .local v22, "sampleRateIndex":I
    sget-object v1, Lorg/telegram/messenger/exoplayer2/extractor/flv/AudioTagPayloadReader;->AUDIO_SAMPLING_RATE_TABLE:[I

    aget v7, v1, v22

    .line 64
    .local v7, "sampleRate":I
    const/4 v1, 0x0

    const-string/jumbo v2, "audio/mpeg"

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lorg/telegram/messenger/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v20

    .line 66
    .local v20, "format":Lorg/telegram/messenger/exoplayer2/Format;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/extractor/flv/AudioTagPayloadReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-object/from16 v0, v20

    invoke-interface {v1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer2/Format;)V

    .line 67
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lorg/telegram/messenger/exoplayer2/extractor/flv/AudioTagPayloadReader;->hasOutputFormat:Z

    .line 79
    .end local v7    # "sampleRate":I
    .end local v20    # "format":Lorg/telegram/messenger/exoplayer2/Format;
    .end local v22    # "sampleRateIndex":I
    :cond_0
    :goto_0
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lorg/telegram/messenger/exoplayer2/extractor/flv/AudioTagPayloadReader;->hasParsedAudioDataHeader:Z

    .line 84
    .end local v21    # "header":I
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 68
    .restart local v21    # "header":I
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/messenger/exoplayer2/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/messenger/exoplayer2/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_5

    .line 69
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/messenger/exoplayer2/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    const-string/jumbo v9, "audio/g711-alaw"

    .line 71
    .local v9, "type":Ljava/lang/String;
    :goto_2
    and-int/lit8 v1, v21, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    const/4 v15, 0x2

    .line 72
    .local v15, "pcmEncoding":I
    :goto_3
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x1

    const/16 v14, 0x1f40

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v8 .. v19}, Lorg/telegram/messenger/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v20

    .line 74
    .restart local v20    # "format":Lorg/telegram/messenger/exoplayer2/Format;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/extractor/flv/AudioTagPayloadReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-object/from16 v0, v20

    invoke-interface {v1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer2/Format;)V

    .line 75
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lorg/telegram/messenger/exoplayer2/extractor/flv/AudioTagPayloadReader;->hasOutputFormat:Z

    goto :goto_0

    .line 69
    .end local v9    # "type":Ljava/lang/String;
    .end local v15    # "pcmEncoding":I
    .end local v20    # "format":Lorg/telegram/messenger/exoplayer2/Format;
    :cond_3
    const-string/jumbo v9, "audio/g711-mlaw"

    goto :goto_2

    .line 71
    .restart local v9    # "type":Ljava/lang/String;
    :cond_4
    const/4 v15, 0x3

    goto :goto_3

    .line 76
    .end local v9    # "type":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/messenger/exoplayer2/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    .line 77
    new-instance v1, Lorg/telegram/messenger/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Audio format not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    .end local v21    # "header":I
    :cond_6
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_1
.end method

.method protected parsePayload(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;J)V
    .locals 22
    .param p1, "data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p2, "timeUs"    # J

    .prologue
    .line 89
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 90
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v7

    .line 91
    .local v7, "sampleSize":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/flv/AudioTagPayloadReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v7}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V

    .line 92
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/flv/AudioTagPayloadReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide/from16 v4, p2

    invoke-interface/range {v3 .. v9}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    .line 112
    .end local v7    # "sampleSize":I
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v21

    .line 95
    .local v21, "packetType":I
    if-nez v21, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/flv/AudioTagPayloadReader;->hasOutputFormat:Z

    if-nez v3, :cond_2

    .line 97
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    new-array v0, v3, [B

    move-object/from16 v19, v0

    .line 98
    .local v19, "audioSpecificConfig":[B
    const/4 v3, 0x0

    move-object/from16 v0, v19

    array-length v4, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 99
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/exoplayer2/util/CodecSpecificDataUtil;->parseAacAudioSpecificConfig([B)Landroid/util/Pair;

    move-result-object v2

    .line 101
    .local v2, "audioParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    const-string/jumbo v9, "audio/mp4a-latm"

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .line 102
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 103
    invoke-static/range {v19 .. v19}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 101
    invoke-static/range {v8 .. v18}, Lorg/telegram/messenger/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v20

    .line 104
    .local v20, "format":Lorg/telegram/messenger/exoplayer2/Format;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/flv/AudioTagPayloadReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer2/Format;)V

    .line 105
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/flv/AudioTagPayloadReader;->hasOutputFormat:Z

    goto :goto_0

    .line 106
    .end local v2    # "audioParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v19    # "audioSpecificConfig":[B
    .end local v20    # "format":Lorg/telegram/messenger/exoplayer2/Format;
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    move/from16 v0, v21

    if-ne v0, v3, :cond_0

    .line 107
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v7

    .line 108
    .restart local v7    # "sampleSize":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/flv/AudioTagPayloadReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v7}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V

    .line 109
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/flv/AudioTagPayloadReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide/from16 v4, p2

    invoke-interface/range {v3 .. v9}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    goto :goto_0
.end method

.method public seek()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method
