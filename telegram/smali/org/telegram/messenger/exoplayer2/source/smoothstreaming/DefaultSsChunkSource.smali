.class public Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;
.super Ljava/lang/Object;
.source "DefaultSsChunkSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;
    }
.end annotation


# instance fields
.field private currentManifestChunkOffset:I

.field private final dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

.field private final elementIndex:I

.field private final extractorWrappers:[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

.field private fatalError:Ljava/io/IOException;

.field private manifest:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

.field private final manifestLoaderErrorThrower:Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;

.field private final trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;ILorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;[Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;)V
    .locals 20
    .param p1, "manifestLoaderErrorThrower"    # Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;
    .param p2, "manifest"    # Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;
    .param p3, "elementIndex"    # I
    .param p4, "trackSelection"    # Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    .param p5, "dataSource"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    .param p6, "trackEncryptionBoxes"    # [Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;

    .prologue
    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 86
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->manifestLoaderErrorThrower:Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;

    .line 87
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    .line 88
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->elementIndex:I

    .line 89
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    .line 90
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    .line 92
    move-object/from16 v0, p2

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;->streamElements:[Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    aget-object v19, v5, p3

    .line 94
    .local v19, "streamElement":Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;
    invoke-interface/range {p4 .. p4}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v5

    new-array v5, v5, [Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->extractorWrappers:[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

    .line 95
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->extractorWrappers:[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

    array-length v5, v5

    move/from16 v0, v18

    if-ge v0, v5, :cond_1

    .line 96
    move-object/from16 v0, p4

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v4

    .line 97
    .local v4, "manifestTrackIndex":I
    move-object/from16 v0, v19

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->formats:[Lorg/telegram/messenger/exoplayer2/Format;

    aget-object v12, v5, v4

    .line 98
    .local v12, "format":Lorg/telegram/messenger/exoplayer2/Format;
    move-object/from16 v0, v19

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->type:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    const/4 v15, 0x4

    .line 99
    .local v15, "nalUnitLengthFieldLength":I
    :goto_1
    new-instance v3, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    move-object/from16 v0, v19

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->type:I

    move-object/from16 v0, v19

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->timescale:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p2

    iget-wide v10, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;->durationUs:J

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v14, p6

    invoke-direct/range {v3 .. v17}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;-><init>(IIJJJLorg/telegram/messenger/exoplayer2/Format;I[Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;I[J[J)V

    .line 102
    .local v3, "track":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;
    new-instance v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-direct {v2, v5, v6, v3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(ILorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;)V

    .line 105
    .local v2, "extractor":Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->extractorWrappers:[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

    new-instance v6, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

    invoke-direct {v6, v2, v12}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/Extractor;Lorg/telegram/messenger/exoplayer2/Format;)V

    aput-object v6, v5, v18

    .line 95
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 98
    .end local v2    # "extractor":Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;
    .end local v3    # "track":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;
    .end local v15    # "nalUnitLengthFieldLength":I
    :cond_0
    const/4 v15, 0x0

    goto :goto_1

    .line 107
    .end local v4    # "manifestTrackIndex":I
    .end local v12    # "format":Lorg/telegram/messenger/exoplayer2/Format;
    :cond_1
    return-void
.end method

.method private static newMediaChunk(Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Landroid/net/Uri;Ljava/lang/String;IJJILjava/lang/Object;Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;)Lorg/telegram/messenger/exoplayer2/source/chunk/MediaChunk;
    .locals 17
    .param p0, "format"    # Lorg/telegram/messenger/exoplayer2/Format;
    .param p1, "dataSource"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "cacheKey"    # Ljava/lang/String;
    .param p4, "chunkIndex"    # I
    .param p5, "chunkStartTimeUs"    # J
    .param p7, "chunkEndTimeUs"    # J
    .param p9, "trackSelectionReason"    # I
    .param p10, "trackSelectionData"    # Ljava/lang/Object;
    .param p11, "extractorWrapper"    # Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

    .prologue
    .line 216
    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    move-object/from16 v1, p2

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 219
    .local v0, "dataSpec":Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    move-wide/from16 v14, p5

    .line 220
    .local v14, "sampleOffsetUs":J
    new-instance v2, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;

    const/4 v13, 0x1

    move-object/from16 v3, p1

    move-object v4, v0

    move-object/from16 v5, p0

    move/from16 v6, p9

    move-object/from16 v7, p10

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move/from16 v12, p4

    move-object/from16 v16, p11

    invoke-direct/range {v2 .. v16}, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;Lorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;JJIIJLorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;)V

    return-object v2
.end method


# virtual methods
.method public final getNextChunk(Lorg/telegram/messenger/exoplayer2/source/chunk/MediaChunk;JLorg/telegram/messenger/exoplayer2/source/chunk/ChunkHolder;)V
    .locals 22
    .param p1, "previous"    # Lorg/telegram/messenger/exoplayer2/source/chunk/MediaChunk;
    .param p2, "playbackPositionUs"    # J
    .param p4, "out"    # Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkHolder;

    .prologue
    .line 153
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v5, :cond_0

    .line 198
    :goto_0
    return-void

    .line 157
    :cond_0
    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/MediaChunk;->endTimeUs:J

    sub-long v18, v14, p2

    .line 158
    .local v18, "bufferedDurationUs":J
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    move-wide/from16 v0, v18

    invoke-interface {v5, v0, v1}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->updateSelectedTrack(J)V

    .line 160
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-object v5, v5, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;->streamElements:[Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->elementIndex:I

    aget-object v20, v5, v6

    .line 161
    .local v20, "streamElement":Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;
    move-object/from16 v0, v20

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkCount:I

    if-nez v5, :cond_3

    .line 163
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-boolean v5, v5, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;->isLive:Z

    if-nez v5, :cond_2

    const/4 v5, 0x1

    :goto_2
    move-object/from16 v0, p4

    iput-boolean v5, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkHolder;->endOfStream:Z

    goto :goto_0

    .line 157
    .end local v18    # "bufferedDurationUs":J
    .end local v20    # "streamElement":Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;
    :cond_1
    const-wide/16 v18, 0x0

    goto :goto_1

    .line 163
    .restart local v18    # "bufferedDurationUs":J
    .restart local v20    # "streamElement":Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 168
    :cond_3
    if-nez p1, :cond_5

    .line 169
    move-object/from16 v0, v20

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getChunkIndex(J)I

    move-result v4

    .line 179
    .local v4, "chunkIndex":I
    :cond_4
    move-object/from16 v0, v20

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkCount:I

    if-lt v4, v5, :cond_7

    .line 181
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-boolean v5, v5, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;->isLive:Z

    if-nez v5, :cond_6

    const/4 v5, 0x1

    :goto_3
    move-object/from16 v0, p4

    iput-boolean v5, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkHolder;->endOfStream:Z

    goto :goto_0

    .line 171
    .end local v4    # "chunkIndex":I
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/source/chunk/MediaChunk;->getNextChunkIndex()I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->currentManifestChunkOffset:I

    sub-int v4, v5, v6

    .line 172
    .restart local v4    # "chunkIndex":I
    if-gez v4, :cond_4

    .line 174
    new-instance v5, Lorg/telegram/messenger/exoplayer2/source/BehindLiveWindowException;

    invoke-direct {v5}, Lorg/telegram/messenger/exoplayer2/source/BehindLiveWindowException;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->fatalError:Ljava/io/IOException;

    goto :goto_0

    .line 181
    :cond_6
    const/4 v5, 0x0

    goto :goto_3

    .line 185
    :cond_7
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getStartTimeUs(I)J

    move-result-wide v10

    .line 186
    .local v10, "chunkStartTimeUs":J
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getChunkDurationUs(I)J

    move-result-wide v14

    add-long v12, v10, v14

    .line 187
    .local v12, "chunkEndTimeUs":J
    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->currentManifestChunkOffset:I

    add-int v9, v4, v5

    .line 189
    .local v9, "currentAbsoluteChunkIndex":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v5}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getSelectedIndex()I

    move-result v21

    .line 190
    .local v21, "trackSelectionIndex":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->extractorWrappers:[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

    aget-object v16, v5, v21

    .line 192
    .local v16, "extractorWrapper":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    move/from16 v0, v21

    invoke-interface {v5, v0}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v17

    .line 193
    .local v17, "manifestTrackIndex":I
    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->buildRequestUri(II)Landroid/net/Uri;

    move-result-object v7

    .line 195
    .local v7, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v5}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getSelectedFormat()Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    .line 197
    invoke-interface {v14}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getSelectionReason()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v15}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v15

    .line 195
    invoke-static/range {v5 .. v16}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->newMediaChunk(Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Landroid/net/Uri;Ljava/lang/String;IJJILjava/lang/Object;Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;)Lorg/telegram/messenger/exoplayer2/source/chunk/MediaChunk;

    move-result-object v5

    move-object/from16 v0, p4

    iput-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkHolder;->chunk:Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;

    goto/16 :goto_0
.end method

.method public getPreferredQueueSize(JLjava/util/List;)I
    .locals 3
    .param p1, "playbackPositionUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<+",
            "Lorg/telegram/messenger/exoplayer2/source/chunk/MediaChunk;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 145
    .local p3, "queue":Ljava/util/List;, "Ljava/util/List<+Lorg/telegram/messenger/exoplayer2/source/chunk/MediaChunk;>;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->fatalError:Ljava/io/IOException;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 146
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    .line 148
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->evaluateQueueSize(JLjava/util/List;)I

    move-result v0

    goto :goto_0
.end method

.method public maybeThrowError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->fatalError:Ljava/io/IOException;

    throw v0

    .line 139
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->manifestLoaderErrorThrower:Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;->maybeThrowError()V

    .line 141
    return-void
.end method

.method public onChunkLoadCompleted(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;)V
    .locals 0
    .param p1, "chunk"    # Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;

    .prologue
    .line 203
    return-void
.end method

.method public onChunkLoadError(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;ZLjava/lang/Exception;)Z
    .locals 3
    .param p1, "chunk"    # Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;
    .param p2, "cancelable"    # Z
    .param p3, "e"    # Ljava/lang/Exception;

    .prologue
    .line 207
    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    iget-object v2, p1, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->trackFormat:Lorg/telegram/messenger/exoplayer2/Format;

    .line 208
    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->indexOf(Lorg/telegram/messenger/exoplayer2/Format;)I

    move-result v1

    .line 207
    invoke-static {v0, v1, p3}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkedTrackBlacklistUtil;->maybeBlacklistTrack(Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;ILjava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateManifest(Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;)V
    .locals 12
    .param p1, "newManifest"    # Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    .prologue
    .line 111
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-object v5, v5, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;->streamElements:[Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    iget v8, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->elementIndex:I

    aget-object v0, v5, v8

    .line 112
    .local v0, "currentElement":Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;
    iget v1, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkCount:I

    .line 113
    .local v1, "currentElementChunkCount":I
    iget-object v5, p1, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;->streamElements:[Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    iget v8, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->elementIndex:I

    aget-object v4, v5, v8

    .line 114
    .local v4, "newElement":Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;
    if-eqz v1, :cond_0

    iget v5, v4, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkCount:I

    if-nez v5, :cond_1

    .line 116
    :cond_0
    iget v5, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->currentManifestChunkOffset:I

    add-int/2addr v5, v1

    iput v5, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->currentManifestChunkOffset:I

    .line 129
    :goto_0
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    .line 130
    return-void

    .line 118
    :cond_1
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getStartTimeUs(I)J

    move-result-wide v8

    add-int/lit8 v5, v1, -0x1

    .line 119
    invoke-virtual {v0, v5}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getChunkDurationUs(I)J

    move-result-wide v10

    add-long v2, v8, v10

    .line 120
    .local v2, "currentElementEndTimeUs":J
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getStartTimeUs(I)J

    move-result-wide v6

    .line 121
    .local v6, "newElementStartTimeUs":J
    cmp-long v5, v2, v6

    if-gtz v5, :cond_2

    .line 123
    iget v5, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->currentManifestChunkOffset:I

    add-int/2addr v5, v1

    iput v5, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->currentManifestChunkOffset:I

    goto :goto_0

    .line 126
    :cond_2
    iget v5, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->currentManifestChunkOffset:I

    invoke-virtual {v0, v6, v7}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getChunkIndex(J)I

    move-result v8

    add-int/2addr v5, v8

    iput v5, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->currentManifestChunkOffset:I

    goto :goto_0
.end method
