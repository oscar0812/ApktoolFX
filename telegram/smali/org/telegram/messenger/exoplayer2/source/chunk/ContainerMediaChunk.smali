.class public Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;
.super Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;
.source "ContainerMediaChunk.java"


# instance fields
.field private volatile bytesLoaded:I

.field private final chunkCount:I

.field private final extractorWrapper:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

.field private volatile loadCanceled:Z

.field private volatile loadCompleted:Z

.field private final sampleOffsetUs:J


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;Lorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;JJIIJLorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;)V
    .locals 0
    .param p1, "dataSource"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    .param p2, "dataSpec"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    .param p3, "trackFormat"    # Lorg/telegram/messenger/exoplayer2/Format;
    .param p4, "trackSelectionReason"    # I
    .param p5, "trackSelectionData"    # Ljava/lang/Object;
    .param p6, "startTimeUs"    # J
    .param p8, "endTimeUs"    # J
    .param p10, "chunkIndex"    # I
    .param p11, "chunkCount"    # I
    .param p12, "sampleOffsetUs"    # J
    .param p14, "extractorWrapper"    # Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

    .prologue
    .line 59
    invoke-direct/range {p0 .. p10}, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;Lorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;JJI)V

    .line 61
    iput p11, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->chunkCount:I

    .line 62
    iput-wide p12, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->sampleOffsetUs:J

    .line 63
    iput-object p14, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->extractorWrapper:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

    .line 64
    return-void
.end method


# virtual methods
.method public final bytesLoaded()J
    .locals 2

    .prologue
    .line 78
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->bytesLoaded:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final cancelLoad()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->loadCanceled:Z

    .line 86
    return-void
.end method

.method public getNextChunkIndex()I
    .locals 2

    .prologue
    .line 68
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->chunkIndex:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->chunkCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final isLoadCanceled()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->loadCanceled:Z

    return v0
.end method

.method public isLoadCompleted()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->loadCompleted:Z

    return v0
.end method

.method public final load()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 96
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->bytesLoaded:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/exoplayer2/util/Util;->getRemainderDataSpec(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;I)Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    move-result-object v7

    .line 99
    .local v7, "loadDataSpec":Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    :try_start_0
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iget-wide v2, v7, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    .line 100
    invoke-interface {v4, v7}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;JJ)V

    .line 101
    .local v0, "input":Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->bytesLoaded:I

    if-nez v1, :cond_0

    .line 103
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->getOutput()Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunkOutput;

    move-result-object v8

    .line 104
    .local v8, "output":Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunkOutput;
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->sampleOffsetUs:J

    invoke-virtual {v8, v2, v3}, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunkOutput;->setSampleOffsetUs(J)V

    .line 105
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->extractorWrapper:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

    invoke-virtual {v1, v8}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;->init(Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 109
    .end local v8    # "output":Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunkOutput;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->extractorWrapper:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

    iget-object v6, v1, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;->extractor:Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    .line 110
    .local v6, "extractor":Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    const/4 v9, 0x0

    .line 111
    .local v9, "result":I
    :goto_0
    if-nez v9, :cond_1

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->loadCanceled:Z

    if-nez v1, :cond_1

    .line 112
    const/4 v1, 0x0

    invoke-interface {v6, v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/Extractor;->read(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;)I

    move-result v9

    goto :goto_0

    .line 114
    :cond_1
    if-eq v9, v10, :cond_2

    move v1, v10

    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :try_start_2
    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget-wide v4, v1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long/2addr v2, v4

    long-to-int v1, v2

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->bytesLoaded:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 119
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Util;->closeQuietly(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;)V

    .line 121
    iput-boolean v10, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->loadCompleted:Z

    .line 122
    return-void

    .line 114
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 116
    .end local v6    # "extractor":Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    .end local v9    # "result":I
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget-wide v4, v4, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->bytesLoaded:I

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 119
    .end local v0    # "input":Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/util/Util;->closeQuietly(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;)V

    throw v1
.end method
