.class public final Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;
.super Ljava/lang/Object;
.source "Ac3Reader.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader$State;
    }
.end annotation


# static fields
.field private static final HEADER_SIZE:I = 0x8

.field private static final STATE_FINDING_SYNC:I = 0x0

.field private static final STATE_READING_HEADER:I = 0x1

.field private static final STATE_READING_SAMPLE:I = 0x2


# instance fields
.field private bytesRead:I

.field private format:Lorg/telegram/messenger/exoplayer2/Format;

.field private final headerScratchBits:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

.field private final headerScratchBytes:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private final language:Ljava/lang/String;

.field private lastByteWas0B:Z

.field private output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

.field private sampleDurationUs:J

.field private sampleSize:I

.field private state:I

.field private timeUs:J

.field private trackFormatId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;-><init>(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v1, 0x8

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBits:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    .line 79
    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBits:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->data:[B

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBytes:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->state:I

    .line 81
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->language:Ljava/lang/String;

    .line 82
    return-void
.end method

.method private continueRead(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;[BI)Z
    .locals 3
    .param p1, "source"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p2, "target"    # [B
    .param p3, "targetLength"    # I

    .prologue
    .line 154
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->bytesRead:I

    sub-int v2, p3, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 155
    .local v0, "bytesToRead":I
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->bytesRead:I

    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 156
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->bytesRead:I

    .line 157
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->bytesRead:I

    if-ne v1, p3, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parseHeader()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 189
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBits:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 190
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBits:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->parseAc3SyncframeInfo(Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;)Lorg/telegram/messenger/exoplayer2/audio/Ac3Util$Ac3SyncFrameInfo;

    move-result-object v11

    .line 191
    .local v11, "frameInfo":Lorg/telegram/messenger/exoplayer2/audio/Ac3Util$Ac3SyncFrameInfo;
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->format:Lorg/telegram/messenger/exoplayer2/Format;

    if-eqz v0, :cond_0

    iget v0, v11, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util$Ac3SyncFrameInfo;->channelCount:I

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iget v1, v1, Lorg/telegram/messenger/exoplayer2/Format;->channelCount:I

    if-ne v0, v1, :cond_0

    iget v0, v11, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util$Ac3SyncFrameInfo;->sampleRate:I

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iget v1, v1, Lorg/telegram/messenger/exoplayer2/Format;->sampleRate:I

    if-ne v0, v1, :cond_0

    iget-object v0, v11, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util$Ac3SyncFrameInfo;->mimeType:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    if-eq v0, v1, :cond_1

    .line 194
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->trackFormatId:Ljava/lang/String;

    iget-object v1, v11, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util$Ac3SyncFrameInfo;->mimeType:Ljava/lang/String;

    iget v5, v11, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util$Ac3SyncFrameInfo;->channelCount:I

    iget v6, v11, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util$Ac3SyncFrameInfo;->sampleRate:I

    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->language:Ljava/lang/String;

    move v4, v3

    move-object v7, v2

    move-object v8, v2

    invoke-static/range {v0 .. v10}, Lorg/telegram/messenger/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->format:Lorg/telegram/messenger/exoplayer2/Format;

    .line 197
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->format:Lorg/telegram/messenger/exoplayer2/Format;

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer2/Format;)V

    .line 199
    :cond_1
    iget v0, v11, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util$Ac3SyncFrameInfo;->frameSize:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->sampleSize:I

    .line 202
    const-wide/32 v0, 0xf4240

    iget v2, v11, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util$Ac3SyncFrameInfo;->sampleCount:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iget v2, v2, Lorg/telegram/messenger/exoplayer2/Format;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->sampleDurationUs:J

    .line 203
    return-void
.end method

.method private skipToNextSync(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Z
    .locals 5
    .param p1, "pesBuffer"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    const/16 v4, 0xb

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 168
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-lez v1, :cond_4

    .line 169
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    if-nez v1, :cond_1

    .line 170
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    if-ne v1, v4, :cond_0

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    .line 173
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 174
    .local v0, "secondByte":I
    const/16 v1, 0x77

    if-ne v0, v1, :cond_2

    .line 175
    iput-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    .line 181
    .end local v0    # "secondByte":I
    :goto_2
    return v2

    .line 178
    .restart local v0    # "secondByte":I
    :cond_2
    if-ne v0, v4, :cond_3

    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_3

    .end local v0    # "secondByte":I
    :cond_4
    move v2, v3

    .line 181
    goto :goto_2
.end method


# virtual methods
.method public consume(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V
    .locals 12
    .param p1, "data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 105
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-lez v1, :cond_1

    .line 106
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->state:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 108
    :pswitch_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->skipToNextSync(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    iput v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->state:I

    .line 110
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBytes:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v2, 0xb

    aput-byte v2, v1, v6

    .line 111
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBytes:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v2, 0x77

    aput-byte v2, v1, v4

    .line 112
    iput v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->bytesRead:I

    goto :goto_0

    .line 116
    :pswitch_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBytes:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-direct {p0, p1, v1, v11}, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->continueRead(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;[BI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->parseHeader()V

    .line 118
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBytes:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 119
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBytes:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-interface {v1, v2, v11}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V

    .line 120
    iput v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->state:I

    goto :goto_0

    .line 124
    :pswitch_2
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->sampleSize:I

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->bytesRead:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 125
    .local v0, "bytesToRead":I
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V

    .line 126
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->bytesRead:I

    .line 127
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->bytesRead:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->sampleSize:I

    if-ne v1, v2, :cond_0

    .line 128
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->timeUs:J

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->sampleSize:I

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    .line 129
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->timeUs:J

    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->sampleDurationUs:J

    add-long/2addr v2, v8

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->timeUs:J

    .line 130
    iput v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->state:I

    goto :goto_0

    .line 137
    .end local v0    # "bytesToRead":I
    :cond_1
    return-void

    .line 106
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
    .param p2, "generator"    # Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .prologue
    .line 93
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 94
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->trackFormatId:Ljava/lang/String;

    .line 95
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->track(II)Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    .line 96
    return-void
.end method

.method public packetFinished()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public packetStarted(JZ)V
    .locals 1
    .param p1, "pesTimeUs"    # J
    .param p3, "dataAlignmentIndicator"    # Z

    .prologue
    .line 100
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->timeUs:J

    .line 101
    return-void
.end method

.method public seek()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 86
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->state:I

    .line 87
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->bytesRead:I

    .line 88
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    .line 89
    return-void
.end method
