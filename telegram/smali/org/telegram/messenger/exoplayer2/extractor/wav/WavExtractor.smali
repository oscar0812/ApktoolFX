.class public final Lorg/telegram/messenger/exoplayer2/extractor/wav/WavExtractor;
.super Ljava/lang/Object;
.source "WavExtractor.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
.implements Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;


# static fields
.field public static final FACTORY:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorsFactory;

.field private static final MAX_INPUT_SIZE:I = 0x8000


# instance fields
.field private bytesPerFrame:I

.field private extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

.field private pendingBytes:I

.field private trackOutput:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

.field private wavHeader:Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavExtractor$1;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavExtractor$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavExtractor;->FACTORY:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavExtractor;->wavHeader:Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;->getDurationUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPosition(J)J
    .locals 3
    .param p1, "timeUs"    # J

    .prologue
    .line 130
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavExtractor;->wavHeader:Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;->getPosition(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public init(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;)V
    .locals 2
    .param p1, "output"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    .prologue
    .line 62
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavExtractor;->extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    .line 63
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->track(II)Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavExtractor;->trackOutput:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavExtractor;->wavHeader:Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;

    .line 65
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 66
    return-void
.end method

.method public isSeekable()Z
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x1

    return v0
.end method

.method public read(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;)I
    .locals 17
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 81
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavExtractor;->wavHeader:Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;

    if-nez v2, :cond_1

    .line 82
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeaderReader;->peek(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavExtractor;->wavHeader:Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;

    .line 83
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavExtractor;->wavHeader:Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;

    if-nez v2, :cond_0

    .line 85
    new-instance v2, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v3, "Unsupported or unrecognized wav header."

    invoke-direct {v2, v3}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 87
    :cond_0
    const/4 v2, 0x0

    const-string/jumbo v3, "audio/raw"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavExtractor;->wavHeader:Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;

    .line 88
    invoke-virtual {v6}, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;->getBitrate()I

    move-result v5

    const v6, 0x8000

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavExtractor;->wavHeader:Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;

    invoke-virtual {v8}, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;->getNumChannels()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavExtractor;->wavHeader:Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;

    .line 89
    invoke-virtual {v8}, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;->getSampleRateHz()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavExtractor;->wavHeader:Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;

    invoke-virtual {v9}, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;->getEncoding()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 87
    invoke-static/range {v2 .. v13}, Lorg/telegram/messenger/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v15

    .line 90
    .local v15, "format":Lorg/telegram/messenger/exoplayer2/Format;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavExtractor;->trackOutput:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    invoke-interface {v2, v15}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer2/Format;)V

    .line 91
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavExtractor;->wavHeader:Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;->getBytesPerFrame()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavExtractor;->bytesPerFrame:I

    .line 94
    .end local v15    # "format":Lorg/telegram/messenger/exoplayer2/Format;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavExtractor;->wavHeader:Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;->hasDataBounds()Z

    move-result v2

    if-nez v2, :cond_2

    .line 95
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavExtractor;->wavHeader:Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeaderReader;->skipToData(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;)V

    .line 96
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavExtractor;->extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->seekMap(Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;)V

    .line 99
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavExtractor;->trackOutput:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    const v3, 0x8000

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavExtractor;->pendingBytes:I

    sub-int/2addr v3, v6

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v3, v6}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;IZ)I

    move-result v14

    .line 100
    .local v14, "bytesAppended":I
    const/4 v2, -0x1

    if-eq v14, v2, :cond_3

    .line 101
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavExtractor;->pendingBytes:I

    add-int/2addr v2, v14

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavExtractor;->pendingBytes:I

    .line 105
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavExtractor;->pendingBytes:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavExtractor;->bytesPerFrame:I

    div-int v16, v2, v3

    .line 106
    .local v16, "pendingFrames":I
    if-lez v16, :cond_4

    .line 107
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavExtractor;->wavHeader:Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;

    invoke-interface/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavExtractor;->pendingBytes:I

    int-to-long v10, v3

    sub-long/2addr v8, v10

    invoke-virtual {v2, v8, v9}, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;->getTimeUs(J)J

    move-result-wide v4

    .line 108
    .local v4, "timeUs":J
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavExtractor;->bytesPerFrame:I

    mul-int v7, v16, v2

    .line 109
    .local v7, "size":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavExtractor;->pendingBytes:I

    sub-int/2addr v2, v7

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavExtractor;->pendingBytes:I

    .line 110
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavExtractor;->trackOutput:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavExtractor;->pendingBytes:I

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    .line 113
    .end local v4    # "timeUs":J
    .end local v7    # "size":I
    :cond_4
    const/4 v2, -0x1

    if-ne v14, v2, :cond_5

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_5
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public seek(JJ)V
    .locals 1
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .prologue
    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavExtractor;->pendingBytes:I

    .line 71
    return-void
.end method

.method public sniff(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Z
    .locals 1
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeaderReader;->peek(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
