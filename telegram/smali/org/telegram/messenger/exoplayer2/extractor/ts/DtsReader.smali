.class public final Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;
.super Ljava/lang/Object;
.source "DtsReader.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;


# static fields
.field private static final HEADER_SIZE:I = 0xf

.field private static final STATE_FINDING_SYNC:I = 0x0

.field private static final STATE_READING_HEADER:I = 0x1

.field private static final STATE_READING_SAMPLE:I = 0x2

.field private static final SYNC_VALUE:I = 0x7ffe8001

.field private static final SYNC_VALUE_SIZE:I = 0x4


# instance fields
.field private bytesRead:I

.field private format:Lorg/telegram/messenger/exoplayer2/Format;

.field private formatId:Ljava/lang/String;

.field private final headerScratchBytes:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private final language:Ljava/lang/String;

.field private output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

.field private sampleDurationUs:J

.field private sampleSize:I

.field private state:I

.field private syncBytes:I

.field private timeUs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0xf

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->headerScratchBytes:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .line 66
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->headerScratchBytes:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v1, 0x7f

    aput-byte v1, v0, v3

    .line 67
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->headerScratchBytes:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v1, -0x2

    aput-byte v1, v0, v4

    .line 68
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->headerScratchBytes:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v1, 0x2

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    .line 69
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->headerScratchBytes:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v1, 0x3

    aput-byte v4, v0, v1

    .line 70
    iput v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->state:I

    .line 71
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->language:Ljava/lang/String;

    .line 72
    return-void
.end method

.method private continueRead(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;[BI)Z
    .locals 3
    .param p1, "source"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p2, "target"    # [B
    .param p3, "targetLength"    # I

    .prologue
    .line 140
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->bytesRead:I

    sub-int v2, p3, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 141
    .local v0, "bytesToRead":I
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->bytesRead:I

    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 142
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->bytesRead:I

    .line 143
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->bytesRead:I

    if-ne v1, p3, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parseHeader()V
    .locals 6

    .prologue
    .line 169
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->headerScratchBytes:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v0, v1, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    .line 170
    .local v0, "frameData":[B
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->format:Lorg/telegram/messenger/exoplayer2/Format;

    if-nez v1, :cond_0

    .line 171
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->formatId:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->language:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/audio/DtsUtil;->parseDtsFormat([BLjava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->format:Lorg/telegram/messenger/exoplayer2/Format;

    .line 172
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->format:Lorg/telegram/messenger/exoplayer2/Format;

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer2/Format;)V

    .line 174
    :cond_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/audio/DtsUtil;->getDtsFrameSize([B)I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->sampleSize:I

    .line 177
    const-wide/32 v2, 0xf4240

    .line 178
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/audio/DtsUtil;->parseDtsAudioSampleCount([B)I

    move-result v1

    int-to-long v4, v1

    mul-long/2addr v2, v4

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iget v1, v1, Lorg/telegram/messenger/exoplayer2/Format;->sampleRate:I

    int-to-long v4, v1

    div-long/2addr v2, v4

    long-to-int v1, v2

    int-to-long v2, v1

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->sampleDurationUs:J

    .line 179
    return-void
.end method

.method private skipToNextSync(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Z
    .locals 3
    .param p1, "pesBuffer"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    const/4 v0, 0x0

    .line 154
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-lez v1, :cond_1

    .line 155
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->syncBytes:I

    shl-int/lit8 v1, v1, 0x8

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->syncBytes:I

    .line 156
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->syncBytes:I

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->syncBytes:I

    .line 157
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->syncBytes:I

    const v2, 0x7ffe8001

    if-ne v1, v2, :cond_0

    .line 158
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->syncBytes:I

    .line 159
    const/4 v0, 0x1

    .line 162
    :cond_1
    return v0
.end method


# virtual methods
.method public consume(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V
    .locals 11
    .param p1, "data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    const/16 v10, 0xf

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 95
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-lez v1, :cond_1

    .line 96
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->state:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 98
    :pswitch_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->skipToNextSync(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    const/4 v1, 0x4

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->bytesRead:I

    .line 100
    iput v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->state:I

    goto :goto_0

    .line 104
    :pswitch_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->headerScratchBytes:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-direct {p0, p1, v1, v10}, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->continueRead(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;[BI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->parseHeader()V

    .line 106
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->headerScratchBytes:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 107
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->headerScratchBytes:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-interface {v1, v2, v10}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V

    .line 108
    const/4 v1, 0x2

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->state:I

    goto :goto_0

    .line 112
    :pswitch_2
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->sampleSize:I

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->bytesRead:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 113
    .local v0, "bytesToRead":I
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V

    .line 114
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->bytesRead:I

    .line 115
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->bytesRead:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->sampleSize:I

    if-ne v1, v2, :cond_0

    .line 116
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->timeUs:J

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->sampleSize:I

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    .line 117
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->timeUs:J

    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->sampleDurationUs:J

    add-long/2addr v2, v8

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->timeUs:J

    .line 118
    iput v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->state:I

    goto :goto_0

    .line 123
    .end local v0    # "bytesToRead":I
    :cond_1
    return-void

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public createTracks(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 2
    .param p1, "extractorOutput"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;
    .param p2, "idGenerator"    # Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .prologue
    .line 83
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 84
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->formatId:Ljava/lang/String;

    .line 85
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->track(II)Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    .line 86
    return-void
.end method

.method public packetFinished()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public packetStarted(JZ)V
    .locals 1
    .param p1, "pesTimeUs"    # J
    .param p3, "dataAlignmentIndicator"    # Z

    .prologue
    .line 90
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->timeUs:J

    .line 91
    return-void
.end method

.method public seek()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 76
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->state:I

    .line 77
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->bytesRead:I

    .line 78
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;->syncBytes:I

    .line 79
    return-void
.end method
