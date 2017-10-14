.class final Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeaderReader;
.super Ljava/lang/Object;
.source "WavHeaderReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WavHeaderReader"

.field private static final TYPE_PCM:I = 0x1

.field private static final TYPE_WAVE_FORMAT_EXTENSIBLE:I = 0xfffe


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static peek(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;
    .locals 18
    .param p0, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-static/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    new-instance v12, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/16 v2, 0x10

    invoke-direct {v12, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 54
    .local v12, "scratch":Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;->peek(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;

    move-result-object v9

    .line 55
    .local v9, "chunkHeader":Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;
    iget v2, v9, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;->id:I

    const-string/jumbo v14, "RIFF"

    invoke-static {v14}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v14

    if-eq v2, v14, :cond_0

    .line 56
    const/4 v2, 0x0

    .line 104
    :goto_0
    return-object v2

    .line 59
    :cond_0
    iget-object v2, v12, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v14, 0x0

    const/4 v15, 0x4

    move-object/from16 v0, p0

    invoke-interface {v0, v2, v14, v15}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 60
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 61
    invoke-virtual {v12}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v11

    .line 62
    .local v11, "riffFormat":I
    const-string/jumbo v2, "WAVE"

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    if-eq v11, v2, :cond_1

    .line 63
    const-string/jumbo v2, "WavHeaderReader"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Unsupported RIFF format: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 v2, 0x0

    goto :goto_0

    .line 68
    :cond_1
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;->peek(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;

    move-result-object v9

    .line 69
    :goto_1
    iget v2, v9, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;->id:I

    const-string/jumbo v14, "fmt "

    invoke-static {v14}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v14

    if-eq v2, v14, :cond_2

    .line 70
    iget-wide v14, v9, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;->size:J

    long-to-int v2, v14

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 71
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;->peek(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;

    move-result-object v9

    goto :goto_1

    .line 74
    :cond_2
    iget-wide v14, v9, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;->size:J

    const-wide/16 v16, 0x10

    cmp-long v2, v14, v16

    if-ltz v2, :cond_3

    const/4 v2, 0x1

    :goto_2
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 75
    iget-object v2, v12, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v14, 0x0

    const/16 v15, 0x10

    move-object/from16 v0, p0

    invoke-interface {v0, v2, v14, v15}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 76
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 77
    invoke-virtual {v12}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v13

    .line 78
    .local v13, "type":I
    invoke-virtual {v12}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v3

    .line 79
    .local v3, "numChannels":I
    invoke-virtual {v12}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedIntToInt()I

    move-result v4

    .line 80
    .local v4, "sampleRateHz":I
    invoke-virtual {v12}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedIntToInt()I

    move-result v5

    .line 81
    .local v5, "averageBytesPerSecond":I
    invoke-virtual {v12}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v6

    .line 82
    .local v6, "blockAlignment":I
    invoke-virtual {v12}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v7

    .line 84
    .local v7, "bitsPerSample":I
    mul-int v2, v3, v7

    div-int/lit8 v10, v2, 0x8

    .line 85
    .local v10, "expectedBlockAlignment":I
    if-eq v6, v10, :cond_4

    .line 86
    new-instance v2, Lorg/telegram/messenger/exoplayer2/ParserException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Expected block alignment: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "; got: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v2, v14}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 74
    .end local v3    # "numChannels":I
    .end local v4    # "sampleRateHz":I
    .end local v5    # "averageBytesPerSecond":I
    .end local v6    # "blockAlignment":I
    .end local v7    # "bitsPerSample":I
    .end local v10    # "expectedBlockAlignment":I
    .end local v13    # "type":I
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 90
    .restart local v3    # "numChannels":I
    .restart local v4    # "sampleRateHz":I
    .restart local v5    # "averageBytesPerSecond":I
    .restart local v6    # "blockAlignment":I
    .restart local v7    # "bitsPerSample":I
    .restart local v10    # "expectedBlockAlignment":I
    .restart local v13    # "type":I
    :cond_4
    invoke-static {v7}, Lorg/telegram/messenger/exoplayer2/util/Util;->getPcmEncoding(I)I

    move-result v8

    .line 91
    .local v8, "encoding":I
    if-nez v8, :cond_5

    .line 92
    const-string/jumbo v2, "WavHeaderReader"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Unsupported WAV bit depth: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 96
    :cond_5
    const/4 v2, 0x1

    if-eq v13, v2, :cond_6

    const v2, 0xfffe

    if-eq v13, v2, :cond_6

    .line 97
    const-string/jumbo v2, "WavHeaderReader"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Unsupported WAV format type: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 102
    :cond_6
    iget-wide v14, v9, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;->size:J

    long-to-int v2, v14

    add-int/lit8 v2, v2, -0x10

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 104
    new-instance v2, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;

    invoke-direct/range {v2 .. v8}, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;-><init>(IIIIII)V

    goto/16 :goto_0
.end method

.method public static skipToData(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;)V
    .locals 9
    .param p0, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .param p1, "wavHeader"    # Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x8

    .line 123
    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-interface {p0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 129
    new-instance v3, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-direct {v3, v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 131
    .local v3, "scratch":Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    invoke-static {p0, v3}, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;->peek(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;

    move-result-object v2

    .line 132
    .local v2, "chunkHeader":Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;
    :goto_0
    iget v4, v2, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;->id:I

    const-string/jumbo v5, "data"

    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 133
    const-string/jumbo v4, "WavHeaderReader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Ignoring unknown WAV chunk: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-wide/16 v4, 0x8

    iget-wide v6, v2, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;->size:J

    add-long v0, v4, v6

    .line 136
    .local v0, "bytesToSkip":J
    iget v4, v2, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;->id:I

    const-string/jumbo v5, "RIFF"

    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 137
    const-wide/16 v0, 0xc

    .line 139
    :cond_0
    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    .line 140
    new-instance v4, Lorg/telegram/messenger/exoplayer2/ParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Chunk is too large (~2GB+) to skip; id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 142
    :cond_1
    long-to-int v4, v0

    invoke-interface {p0, v4}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 143
    invoke-static {p0, v3}, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;->peek(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;

    move-result-object v2

    .line 144
    goto :goto_0

    .line 146
    .end local v0    # "bytesToSkip":J
    :cond_2
    invoke-interface {p0, v8}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 148
    invoke-interface {p0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    iget-wide v6, v2, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;->size:J

    invoke-virtual {p1, v4, v5, v6, v7}, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;->setDataBounds(JJ)V

    .line 149
    return-void
.end method
