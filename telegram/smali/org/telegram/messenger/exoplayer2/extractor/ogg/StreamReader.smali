.class abstract Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;
.super Ljava/lang/Object;
.source "StreamReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader$UnseekableOggSeeker;,
        Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader$SetupData;
    }
.end annotation


# static fields
.field private static final STATE_END_OF_INPUT:I = 0x3

.field private static final STATE_READ_HEADERS:I = 0x0

.field private static final STATE_READ_PAYLOAD:I = 0x2

.field private static final STATE_SKIP_HEADERS:I = 0x1


# instance fields
.field private currentGranule:J

.field private extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

.field private formatSet:Z

.field private lengthOfReadPacket:J

.field private oggPacket:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;

.field private oggSeeker:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggSeeker;

.field private payloadStartPosition:J

.field private sampleRate:I

.field private seekMapSet:Z

.field private setupData:Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader$SetupData;

.field private state:I

.field private targetGranule:J

.field private trackOutput:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readHeaders(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)I
    .locals 12
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 122
    const/4 v10, 0x1

    .line 123
    .local v10, "readingHeaders":Z
    :cond_0
    :goto_0
    if-eqz v10, :cond_2

    .line 124
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->oggPacket:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;->populate(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 125
    const/4 v1, 0x3

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->state:I

    .line 126
    const/4 v1, -0x1

    .line 155
    :goto_1
    return v1

    .line 128
    :cond_1
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->payloadStartPosition:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->lengthOfReadPacket:J

    .line 130
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->oggPacket:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;->getPayload()Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->payloadStartPosition:J

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->setupData:Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader$SetupData;

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->readHeaders(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;JLorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader$SetupData;)Z

    move-result v10

    .line 131
    if-eqz v10, :cond_0

    .line 132
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->payloadStartPosition:J

    goto :goto_0

    .line 136
    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->setupData:Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader$SetupData;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader$SetupData;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iget v1, v1, Lorg/telegram/messenger/exoplayer2/Format;->sampleRate:I

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->sampleRate:I

    .line 137
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->formatSet:Z

    if-nez v1, :cond_3

    .line 138
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->trackOutput:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->setupData:Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader$SetupData;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader$SetupData;->format:Lorg/telegram/messenger/exoplayer2/Format;

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer2/Format;)V

    .line 139
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->formatSet:Z

    .line 142
    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->setupData:Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader$SetupData;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader$SetupData;->oggSeeker:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggSeeker;

    if-eqz v1, :cond_4

    .line 143
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->setupData:Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader$SetupData;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader$SetupData;->oggSeeker:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggSeeker;

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->oggSeeker:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggSeeker;

    .line 153
    :goto_2
    iput-object v11, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->setupData:Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader$SetupData;

    .line 154
    const/4 v1, 0x2

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->state:I

    .line 155
    const/4 v1, 0x0

    goto :goto_1

    .line 144
    :cond_4
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_5

    .line 145
    new-instance v1, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader$UnseekableOggSeeker;

    invoke-direct {v1, v11}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader$UnseekableOggSeeker;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader$1;)V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->oggSeeker:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggSeeker;

    goto :goto_2

    .line 147
    :cond_5
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->oggPacket:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;->getPageHeader()Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;

    move-result-object v0

    .line 148
    .local v0, "firstPayloadPageHeader":Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;
    new-instance v1, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->payloadStartPosition:J

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    iget v6, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->headerSize:I

    iget v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->bodySize:I

    add-int/2addr v7, v6

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->granulePosition:J

    move-object v6, p0

    invoke-direct/range {v1 .. v9}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;-><init>(JJLorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;IJ)V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->oggSeeker:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggSeeker;

    goto :goto_2
.end method

.method private readPayload(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;)I
    .locals 13
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 160
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->oggSeeker:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggSeeker;

    invoke-interface {v1, p1}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggSeeker;->read(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)J

    move-result-wide v10

    .line 161
    .local v10, "position":J
    const-wide/16 v4, 0x0

    cmp-long v1, v10, v4

    if-ltz v1, :cond_0

    .line 162
    iput-wide v10, p2, Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;->position:J

    .line 163
    const/4 v1, 0x1

    .line 189
    :goto_0
    return v1

    .line 164
    :cond_0
    const-wide/16 v4, -0x1

    cmp-long v1, v10, v4

    if-gez v1, :cond_1

    .line 165
    const-wide/16 v4, 0x2

    add-long/2addr v4, v10

    neg-long v4, v4

    invoke-virtual {p0, v4, v5}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->onSeekEnd(J)V

    .line 167
    :cond_1
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->seekMapSet:Z

    if-nez v1, :cond_2

    .line 168
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->oggSeeker:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggSeeker;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggSeeker;->createSeekMap()Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;

    move-result-object v12

    .line 169
    .local v12, "seekMap":Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v1, v12}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->seekMap(Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;)V

    .line 170
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->seekMapSet:Z

    .line 173
    .end local v12    # "seekMap":Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;
    :cond_2
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->lengthOfReadPacket:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-gtz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->oggPacket:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;->populate(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 174
    :cond_3
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->lengthOfReadPacket:J

    .line 175
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->oggPacket:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;->getPayload()Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    move-result-object v0

    .line 176
    .local v0, "payload":Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->preparePayload(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)J

    move-result-wide v8

    .line 177
    .local v8, "granulesInPacket":J
    const-wide/16 v4, 0x0

    cmp-long v1, v8, v4

    if-ltz v1, :cond_4

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->currentGranule:J

    add-long/2addr v4, v8

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->targetGranule:J

    cmp-long v1, v4, v6

    if-ltz v1, :cond_4

    .line 179
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->currentGranule:J

    invoke-virtual {p0, v4, v5}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->convertGranuleToTime(J)J

    move-result-wide v2

    .line 180
    .local v2, "timeUs":J
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->trackOutput:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v4

    invoke-interface {v1, v0, v4}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V

    .line 181
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->trackOutput:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    const/4 v4, 0x1

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    .line 182
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->targetGranule:J

    .line 184
    .end local v2    # "timeUs":J
    :cond_4
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->currentGranule:J

    add-long/2addr v4, v8

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->currentGranule:J

    .line 189
    const/4 v1, 0x0

    goto :goto_0

    .line 186
    .end local v0    # "payload":Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .end local v8    # "granulesInPacket":J
    :cond_5
    const/4 v1, 0x3

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->state:I

    .line 187
    const/4 v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method protected convertGranuleToTime(J)J
    .locals 5
    .param p1, "granule"    # J

    .prologue
    .line 199
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p1

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method protected convertTimeToGranule(J)J
    .locals 5
    .param p1, "timeUs"    # J

    .prologue
    .line 209
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->sampleRate:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method init(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;)V
    .locals 1
    .param p1, "output"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;
    .param p2, "trackOutput"    # Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    .prologue
    .line 59
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    .line 60
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->trackOutput:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    .line 61
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->oggPacket:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;

    .line 63
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->reset(Z)V

    .line 64
    return-void
.end method

.method protected onSeekEnd(J)V
    .locals 1
    .param p1, "currentGranule"    # J

    .prologue
    .line 238
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->currentGranule:J

    .line 239
    return-void
.end method

.method protected abstract preparePayload(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)J
.end method

.method final read(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;)I
    .locals 2
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 103
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->state:I

    packed-switch v0, :pswitch_data_0

    .line 117
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 105
    :pswitch_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->readHeaders(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)I

    move-result v0

    .line 113
    :goto_0
    return v0

    .line 108
    :pswitch_1
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->payloadStartPosition:J

    long-to-int v0, v0

    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 109
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->state:I

    .line 110
    const/4 v0, 0x0

    goto :goto_0

    .line 113
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->readPayload(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;)I

    move-result v0

    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected abstract readHeaders(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;JLorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader$SetupData;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method protected reset(Z)V
    .locals 4
    .param p1, "headerData"    # Z

    .prologue
    const-wide/16 v2, 0x0

    .line 72
    if-eqz p1, :cond_0

    .line 73
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader$SetupData;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader$SetupData;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->setupData:Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader$SetupData;

    .line 74
    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->payloadStartPosition:J

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->state:I

    .line 79
    :goto_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->targetGranule:J

    .line 80
    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->currentGranule:J

    .line 81
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->state:I

    goto :goto_0
.end method

.method final seek(JJ)V
    .locals 3
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .prologue
    .line 87
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->oggPacket:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;->reset()V

    .line 88
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 89
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->seekMapSet:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->reset(Z)V

    .line 96
    :cond_0
    :goto_1
    return-void

    .line 89
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 91
    :cond_2
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->state:I

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->oggSeeker:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggSeeker;

    invoke-interface {v0, p3, p4}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggSeeker;->startSeek(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->targetGranule:J

    .line 93
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->state:I

    goto :goto_1
.end method
