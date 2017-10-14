.class final Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;
.super Ljava/lang/Object;
.source "TrackFragment.java"


# instance fields
.field public atomPosition:J

.field public auxiliaryDataPosition:J

.field public dataPosition:J

.field public definesEncryptionData:Z

.field public header:Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;

.field public nextFragmentDecodeTime:J

.field public sampleCompositionTimeOffsetTable:[I

.field public sampleCount:I

.field public sampleDecodingTimeTable:[J

.field public sampleEncryptionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field public sampleEncryptionDataLength:I

.field public sampleEncryptionDataNeedsFill:Z

.field public sampleHasSubsampleEncryptionTable:[Z

.field public sampleIsSyncFrameTable:[Z

.field public sampleSizeTable:[I

.field public trackEncryptionBox:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;

.field public trunCount:I

.field public trunDataPosition:[J

.field public trunLength:[I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fillEncryptionData(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)V
    .locals 3
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 173
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleEncryptionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleEncryptionDataLength:I

    invoke-interface {p1, v0, v2, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 174
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleEncryptionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 175
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    .line 176
    return-void
.end method

.method public fillEncryptionData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V
    .locals 3
    .param p1, "source"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    const/4 v2, 0x0

    .line 184
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleEncryptionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleEncryptionDataLength:I

    invoke-virtual {p1, v0, v2, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 185
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleEncryptionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 186
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    .line 187
    return-void
.end method

.method public getSamplePresentationTime(I)J
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 190
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleDecodingTimeTable:[J

    aget-wide v0, v0, p1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleCompositionTimeOffsetTable:[I

    aget v2, v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public initEncryptionData(I)V
    .locals 2
    .param p1, "length"    # I

    .prologue
    const/4 v1, 0x1

    .line 159
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleEncryptionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleEncryptionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 160
    :cond_0
    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleEncryptionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .line 162
    :cond_1
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleEncryptionDataLength:I

    .line 163
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    .line 164
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    .line 165
    return-void
.end method

.method public initTables(II)V
    .locals 2
    .param p1, "trunCount"    # I
    .param p2, "sampleCount"    # I

    .prologue
    .line 131
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->trunCount:I

    .line 132
    iput p2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleCount:I

    .line 133
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->trunLength:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->trunLength:[I

    array-length v1, v1

    if-ge v1, p1, :cond_1

    .line 134
    :cond_0
    new-array v1, p1, [J

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->trunDataPosition:[J

    .line 135
    new-array v1, p1, [I

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->trunLength:[I

    .line 137
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    array-length v1, v1

    if-ge v1, p2, :cond_3

    .line 140
    :cond_2
    mul-int/lit8 v1, p2, 0x7d

    div-int/lit8 v0, v1, 0x64

    .line 141
    .local v0, "tableSize":I
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    .line 142
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleCompositionTimeOffsetTable:[I

    .line 143
    new-array v1, v0, [J

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleDecodingTimeTable:[J

    .line 144
    new-array v1, v0, [Z

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    .line 145
    new-array v1, v0, [Z

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    .line 147
    .end local v0    # "tableSize":I
    :cond_3
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 115
    iput v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->trunCount:I

    .line 116
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    .line 117
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    .line 118
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->trackEncryptionBox:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;

    .line 120
    return-void
.end method
