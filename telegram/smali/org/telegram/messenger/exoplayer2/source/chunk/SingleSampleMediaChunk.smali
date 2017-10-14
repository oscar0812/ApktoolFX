.class public final Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;
.super Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;
.source "SingleSampleMediaChunk.java"


# instance fields
.field private volatile bytesLoaded:I

.field private volatile loadCanceled:Z

.field private volatile loadCompleted:Z

.field private final sampleFormat:Lorg/telegram/messenger/exoplayer2/Format;

.field private final trackType:I


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;Lorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;JJIILorg/telegram/messenger/exoplayer2/Format;)V
    .locals 0
    .param p1, "dataSource"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    .param p2, "dataSpec"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    .param p3, "trackFormat"    # Lorg/telegram/messenger/exoplayer2/Format;
    .param p4, "trackSelectionReason"    # I
    .param p5, "trackSelectionData"    # Ljava/lang/Object;
    .param p6, "startTimeUs"    # J
    .param p8, "endTimeUs"    # J
    .param p10, "chunkIndex"    # I
    .param p11, "trackType"    # I
    .param p12, "sampleFormat"    # Lorg/telegram/messenger/exoplayer2/Format;

    .prologue
    .line 56
    invoke-direct/range {p0 .. p10}, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;Lorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;JJI)V

    .line 58
    iput p11, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->trackType:I

    .line 59
    iput-object p12, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->sampleFormat:Lorg/telegram/messenger/exoplayer2/Format;

    .line 60
    return-void
.end method


# virtual methods
.method public bytesLoaded()J
    .locals 2

    .prologue
    .line 70
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->bytesLoaded:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public cancelLoad()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->loadCanceled:Z

    .line 78
    return-void
.end method

.method public isLoadCanceled()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->loadCanceled:Z

    return v0
.end method

.method public isLoadCompleted()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->loadCompleted:Z

    return v0
.end method

.method public load()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 88
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->bytesLoaded:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/exoplayer2/util/Util;->getRemainderDataSpec(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;I)Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    move-result-object v8

    .line 91
    .local v8, "loadDataSpec":Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v3, v8}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)J

    move-result-wide v6

    .line 92
    .local v6, "length":J
    const-wide/16 v4, -0x1

    cmp-long v3, v6, v4

    if-eqz v3, :cond_0

    .line 93
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->bytesLoaded:I

    int-to-long v4, v3

    add-long/2addr v6, v4

    .line 95
    :cond_0
    new-instance v2, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->bytesLoaded:I

    int-to-long v4, v4

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;JJ)V

    .line 96
    .local v2, "extractorInput":Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->getOutput()Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunkOutput;

    move-result-object v16

    .line 97
    .local v16, "output":Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunkOutput;
    const-wide/16 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunkOutput;->setSampleOffsetUs(J)V

    .line 98
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->trackType:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunkOutput;->track(II)Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-result-object v9

    .line 99
    .local v9, "trackOutput":Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->sampleFormat:Lorg/telegram/messenger/exoplayer2/Format;

    invoke-interface {v9, v3}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer2/Format;)V

    .line 101
    const/16 v17, 0x0

    .line 102
    .local v17, "result":I
    :goto_0
    const/4 v3, -0x1

    move/from16 v0, v17

    if-eq v0, v3, :cond_1

    .line 103
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->bytesLoaded:I

    add-int v3, v3, v17

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->bytesLoaded:I

    .line 104
    const v3, 0x7fffffff

    const/4 v4, 0x1

    invoke-interface {v9, v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;IZ)I

    move-result v17

    goto :goto_0

    .line 106
    :cond_1
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->bytesLoaded:I

    .line 107
    .local v13, "sampleSize":I
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->startTimeUs:J

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface/range {v9 .. v15}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIII[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/util/Util;->closeQuietly(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;)V

    .line 111
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->loadCompleted:Z

    .line 112
    return-void

    .line 109
    .end local v2    # "extractorInput":Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .end local v6    # "length":J
    .end local v9    # "trackOutput":Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;
    .end local v13    # "sampleSize":I
    .end local v16    # "output":Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunkOutput;
    .end local v17    # "result":I
    :catchall_0
    move-exception v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-static {v4}, Lorg/telegram/messenger/exoplayer2/util/Util;->closeQuietly(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;)V

    throw v3
.end method
