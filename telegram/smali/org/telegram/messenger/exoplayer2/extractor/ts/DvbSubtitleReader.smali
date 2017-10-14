.class public final Lorg/telegram/messenger/exoplayer2/extractor/ts/DvbSubtitleReader;
.super Ljava/lang/Object;
.source "DvbSubtitleReader.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;


# instance fields
.field private bytesToCheck:I

.field private final outputs:[Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

.field private sampleBytesWritten:I

.field private sampleTimeUs:J

.field private final subtitleInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$DvbSubtitleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private writingSample:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$DvbSubtitleInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "subtitleInfos":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$DvbSubtitleInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DvbSubtitleReader;->subtitleInfos:Ljava/util/List;

    .line 47
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DvbSubtitleReader;->outputs:[Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    .line 48
    return-void
.end method

.method private checkNextByte(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)Z
    .locals 2
    .param p1, "data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p2, "expectedValue"    # I

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-nez v1, :cond_0

    .line 118
    :goto_0
    return v0

    .line 114
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    if-eq v1, p2, :cond_1

    .line 115
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DvbSubtitleReader;->writingSample:Z

    .line 117
    :cond_1
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DvbSubtitleReader;->bytesToCheck:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DvbSubtitleReader;->bytesToCheck:I

    .line 118
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DvbSubtitleReader;->writingSample:Z

    goto :goto_0
.end method


# virtual methods
.method public consume(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V
    .locals 6
    .param p1, "data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    const/4 v3, 0x0

    .line 91
    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DvbSubtitleReader;->writingSample:Z

    if-eqz v4, :cond_0

    .line 92
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DvbSubtitleReader;->bytesToCheck:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    const/16 v4, 0x20

    invoke-direct {p0, p1, v4}, Lorg/telegram/messenger/exoplayer2/extractor/ts/DvbSubtitleReader;->checkNextByte(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DvbSubtitleReader;->bytesToCheck:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    invoke-direct {p0, p1, v3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/DvbSubtitleReader;->checkNextByte(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 100
    :cond_2
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 101
    .local v1, "dataPosition":I
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    .line 102
    .local v0, "bytesAvailable":I
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DvbSubtitleReader;->outputs:[Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    array-length v5, v4

    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v2, v4, v3

    .line 103
    .local v2, "output":Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;
    invoke-virtual {p1, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 104
    invoke-interface {v2, p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V

    .line 102
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 106
    .end local v2    # "output":Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;
    :cond_3
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DvbSubtitleReader;->sampleBytesWritten:I

    add-int/2addr v3, v0

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DvbSubtitleReader;->sampleBytesWritten:I

    goto :goto_0
.end method

.method public createTracks(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 10
    .param p1, "extractorOutput"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;
    .param p2, "idGenerator"    # Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .prologue
    const/4 v2, 0x0

    .line 57
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DvbSubtitleReader;->outputs:[Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    array-length v0, v0

    if-ge v7, v0, :cond_0

    .line 58
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DvbSubtitleReader;->subtitleInfos:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$DvbSubtitleInfo;

    .line 59
    .local v9, "subtitleInfo":Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$DvbSubtitleInfo;
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 60
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x3

    invoke-interface {p1, v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->track(II)Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-result-object v8

    .line 61
    .local v8, "output":Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "application/dvbsubs"

    const/4 v3, -0x1

    iget-object v4, v9, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$DvbSubtitleInfo;->initializationData:[B

    .line 63
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iget-object v5, v9, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$DvbSubtitleInfo;->language:Ljava/lang/String;

    move-object v6, v2

    .line 61
    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/Format;->createImageSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v0

    invoke-interface {v8, v0}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer2/Format;)V

    .line 64
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DvbSubtitleReader;->outputs:[Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    aput-object v8, v0, v7

    .line 57
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 66
    .end local v8    # "output":Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;
    .end local v9    # "subtitleInfo":Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$DvbSubtitleInfo;
    :cond_0
    return-void
.end method

.method public packetFinished()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 81
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DvbSubtitleReader;->writingSample:Z

    if-eqz v0, :cond_1

    .line 82
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DvbSubtitleReader;->outputs:[Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    array-length v9, v8

    move v0, v6

    :goto_0
    if-ge v0, v9, :cond_0

    aget-object v1, v8, v0

    .line 83
    .local v1, "output":Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DvbSubtitleReader;->sampleTimeUs:J

    const/4 v4, 0x1

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DvbSubtitleReader;->sampleBytesWritten:I

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    .end local v1    # "output":Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;
    :cond_0
    iput-boolean v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DvbSubtitleReader;->writingSample:Z

    .line 87
    :cond_1
    return-void
.end method

.method public packetStarted(JZ)V
    .locals 1
    .param p1, "pesTimeUs"    # J
    .param p3, "dataAlignmentIndicator"    # Z

    .prologue
    .line 70
    if-nez p3, :cond_0

    .line 77
    :goto_0
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DvbSubtitleReader;->writingSample:Z

    .line 74
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DvbSubtitleReader;->sampleTimeUs:J

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DvbSubtitleReader;->sampleBytesWritten:I

    .line 76
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DvbSubtitleReader;->bytesToCheck:I

    goto :goto_0
.end method

.method public seek()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DvbSubtitleReader;->writingSample:Z

    .line 53
    return-void
.end method
