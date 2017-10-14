.class public Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;
.super Ljava/lang/Object;
.source "DefaultDashChunkSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;,
        Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$Factory;
    }
.end annotation


# instance fields
.field private final adaptationSetIndex:I

.field private final dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

.field private final elapsedRealtimeOffsetMs:J

.field private fatalError:Ljava/io/IOException;

.field private manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

.field private final manifestLoaderErrorThrower:Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;

.field private final maxSegmentsPerLoad:I

.field private missingLastSegment:Z

.field private periodIndex:I

.field private final representationHolders:[Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

.field private final trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;IILorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;JIZZ)V
    .locals 13
    .param p1, "manifestLoaderErrorThrower"    # Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;
    .param p2, "manifest"    # Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;
    .param p3, "periodIndex"    # I
    .param p4, "adaptationSetIndex"    # I
    .param p5, "trackSelection"    # Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    .param p6, "dataSource"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    .param p7, "elapsedRealtimeOffsetMs"    # J
    .param p9, "maxSegmentsPerLoad"    # I
    .param p10, "enableEventMessageTrack"    # Z
    .param p11, "enableCea608Track"    # Z

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->manifestLoaderErrorThrower:Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;

    .line 119
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    .line 120
    move/from16 v0, p4

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->adaptationSetIndex:I

    .line 121
    move-object/from16 v0, p5

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    .line 122
    move-object/from16 v0, p6

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    .line 123
    move/from16 v0, p3

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->periodIndex:I

    .line 124
    move-wide/from16 v0, p7

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->elapsedRealtimeOffsetMs:J

    .line 125
    move/from16 v0, p9

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->maxSegmentsPerLoad:I

    .line 127
    invoke-virtual/range {p2 .. p3}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v4

    .line 128
    .local v4, "periodDurationUs":J
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->getAdaptationSet()Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;

    move-result-object v2

    .line 129
    .local v2, "adaptationSet":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;
    iget-object v11, v2, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    .line 130
    .local v11, "representations":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;>;"
    invoke-interface/range {p5 .. p5}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v3

    new-array v3, v3, [Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    .line 131
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    array-length v3, v3

    if-ge v10, v3, :cond_0

    .line 132
    move-object/from16 v0, p5

    invoke-interface {v0, v10}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v3

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;

    .line 133
    .local v6, "representation":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;
    iget-object v12, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    new-instance v3, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    iget v9, v2, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;->type:I

    move/from16 v7, p10

    move/from16 v8, p11

    invoke-direct/range {v3 .. v9}, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;-><init>(JLorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;ZZI)V

    aput-object v3, v12, v10

    .line 131
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 136
    .end local v6    # "representation":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;
    :cond_0
    return-void
.end method

.method private getAdaptationSet()Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->periodIndex:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->adaptationSetIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;

    return-object v0
.end method

.method private getNowUnixTimeUs()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 306
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->elapsedRealtimeOffsetMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 307
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->elapsedRealtimeOffsetMs:J

    add-long/2addr v0, v2

    mul-long/2addr v0, v4

    .line 309
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    mul-long/2addr v0, v4

    goto :goto_0
.end method

.method private static newInitializationChunk(Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;)Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;
    .locals 12
    .param p0, "representationHolder"    # Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    .param p1, "dataSource"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    .param p2, "trackFormat"    # Lorg/telegram/messenger/exoplayer2/Format;
    .param p3, "trackSelectionReason"    # I
    .param p4, "trackSelectionData"    # Ljava/lang/Object;
    .param p5, "initializationUri"    # Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;
    .param p6, "indexUri"    # Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;

    .prologue
    .line 317
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;

    iget-object v10, v3, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->baseUrl:Ljava/lang/String;

    .line 318
    .local v10, "baseUrl":Ljava/lang/String;
    if-eqz p5, :cond_1

    .line 321
    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-virtual {v0, v1, v10}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->attemptMerge(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v11

    .line 322
    .local v11, "requestUri":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;
    if-nez v11, :cond_0

    .line 323
    move-object/from16 v11, p5

    .line 328
    :cond_0
    :goto_0
    new-instance v2, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    invoke-virtual {v11, v10}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->resolveUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-wide v4, v11, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->start:J

    iget-wide v6, v11, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->length:J

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;

    .line 329
    invoke-virtual {v8}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->getCacheKey()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 330
    .local v2, "dataSpec":Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    new-instance v3, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;

    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->extractorWrapper:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

    move-object v4, p1

    move-object v5, v2

    move-object v6, p2

    move v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v3 .. v9}, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;Lorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;)V

    return-object v3

    .line 326
    .end local v2    # "dataSpec":Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    .end local v11    # "requestUri":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;
    :cond_1
    move-object/from16 v11, p6

    .restart local v11    # "requestUri":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;
    goto :goto_0
.end method

.method private static newMediaChunk(Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;II)Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;
    .locals 27
    .param p0, "representationHolder"    # Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    .param p1, "dataSource"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    .param p2, "trackFormat"    # Lorg/telegram/messenger/exoplayer2/Format;
    .param p3, "trackSelectionReason"    # I
    .param p4, "trackSelectionData"    # Ljava/lang/Object;
    .param p5, "firstSegmentNum"    # I
    .param p6, "maxSegmentCount"    # I

    .prologue
    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;

    move-object/from16 v25, v0

    .line 338
    .local v25, "representation":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentStartTimeUs(I)J

    move-result-wide v12

    .line 339
    .local v12, "startTimeUs":J
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentUrl(I)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v26

    .line 340
    .local v26, "segmentUri":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;
    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->baseUrl:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 341
    .local v21, "baseUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->extractorWrapper:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

    if-nez v5, :cond_0

    .line 342
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentEndTimeUs(I)J

    move-result-wide v14

    .line 343
    .local v14, "endTimeUs":J
    new-instance v4, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->resolveUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, v26

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->start:J

    move-object/from16 v0, v26

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->length:J

    .line 344
    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->getCacheKey()Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v4 .. v10}, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 345
    .local v4, "dataSpec":Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    new-instance v6, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->trackType:I

    move/from16 v17, v0

    move-object/from16 v7, p1

    move-object v8, v4

    move-object/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v16, p5

    move-object/from16 v18, p2

    invoke-direct/range {v6 .. v18}, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;Lorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;JJIILorg/telegram/messenger/exoplayer2/Format;)V

    .line 364
    :goto_0
    return-object v6

    .line 349
    .end local v4    # "dataSpec":Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    .end local v14    # "endTimeUs":J
    :cond_0
    const/16 v17, 0x1

    .line 350
    .local v17, "segmentCount":I
    const/16 v22, 0x1

    .local v22, "i":I
    :goto_1
    move/from16 v0, v22

    move/from16 v1, p6

    if-ge v0, v1, :cond_1

    .line 351
    add-int v5, p5, v22

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentUrl(I)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v24

    .line 352
    .local v24, "nextSegmentUri":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->attemptMerge(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v23

    .line 353
    .local v23, "mergedSegmentUri":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;
    if-nez v23, :cond_2

    .line 360
    .end local v23    # "mergedSegmentUri":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;
    .end local v24    # "nextSegmentUri":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;
    :cond_1
    add-int v5, p5, v17

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentEndTimeUs(I)J

    move-result-wide v14

    .line 361
    .restart local v14    # "endTimeUs":J
    new-instance v4, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->resolveUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, v26

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->start:J

    move-object/from16 v0, v26

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->length:J

    .line 362
    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->getCacheKey()Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v4 .. v10}, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 363
    .restart local v4    # "dataSpec":Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    move-object/from16 v0, v25

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->presentationTimeOffsetUs:J

    neg-long v0, v6

    move-wide/from16 v18, v0

    .line 364
    .local v18, "sampleOffsetUs":J
    new-instance v6, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->extractorWrapper:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

    move-object/from16 v20, v0

    move-object/from16 v7, p1

    move-object v8, v4

    move-object/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v16, p5

    invoke-direct/range {v6 .. v20}, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;Lorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;JJIIJLorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;)V

    goto :goto_0

    .line 357
    .end local v4    # "dataSpec":Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    .end local v14    # "endTimeUs":J
    .end local v18    # "sampleOffsetUs":J
    .restart local v23    # "mergedSegmentUri":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;
    .restart local v24    # "nextSegmentUri":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;
    :cond_2
    move-object/from16 v26, v23

    .line 358
    add-int/lit8 v17, v17, 0x1

    .line 350
    add-int/lit8 v22, v22, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final getNextChunk(Lorg/telegram/messenger/exoplayer2/source/chunk/MediaChunk;JLorg/telegram/messenger/exoplayer2/source/chunk/ChunkHolder;)V
    .locals 32
    .param p1, "previous"    # Lorg/telegram/messenger/exoplayer2/source/chunk/MediaChunk;
    .param p2, "playbackPositionUs"    # J
    .param p4, "out"    # Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkHolder;

    .prologue
    .line 173
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v3, :cond_0

    .line 254
    :goto_0
    return-void

    .line 177
    :cond_0
    if-eqz p1, :cond_4

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/MediaChunk;->endTimeUs:J

    sub-long v20, v4, p2

    .line 178
    .local v20, "bufferedDurationUs":J
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    move-wide/from16 v0, v20

    invoke-interface {v3, v0, v1}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->updateSelectedTrack(J)V

    .line 180
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    .line 181
    invoke-interface {v4}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getSelectedIndex()I

    move-result v4

    aget-object v2, v3, v4

    .line 183
    .local v2, "representationHolder":Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    iget-object v3, v2, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->extractorWrapper:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

    if-eqz v3, :cond_5

    .line 184
    iget-object v0, v2, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;

    move-object/from16 v23, v0

    .line 185
    .local v23, "selectedRepresentation":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;
    const/4 v7, 0x0

    .line 186
    .local v7, "pendingInitializationUri":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;
    const/4 v8, 0x0

    .line 187
    .local v8, "pendingIndexUri":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;
    iget-object v3, v2, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->extractorWrapper:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;->getSampleFormats()[Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v3

    if-nez v3, :cond_1

    .line 188
    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->getInitializationUri()Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v7

    .line 190
    :cond_1
    iget-object v3, v2, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;

    if-nez v3, :cond_2

    .line 191
    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->getIndexUri()Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v8

    .line 193
    :cond_2
    if-nez v7, :cond_3

    if-eqz v8, :cond_5

    .line 195
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    .line 196
    invoke-interface {v4}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getSelectedFormat()Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v5}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getSelectionReason()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    .line 197
    invoke-interface {v6}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v6

    .line 195
    invoke-static/range {v2 .. v8}, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->newInitializationChunk(Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;)Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;

    move-result-object v3

    move-object/from16 v0, p4

    iput-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkHolder;->chunk:Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;

    goto :goto_0

    .line 177
    .end local v2    # "representationHolder":Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    .end local v7    # "pendingInitializationUri":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;
    .end local v8    # "pendingIndexUri":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;
    .end local v20    # "bufferedDurationUs":J
    .end local v23    # "selectedRepresentation":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;
    :cond_4
    const-wide/16 v20, 0x0

    goto :goto_1

    .line 202
    .restart local v2    # "representationHolder":Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    .restart local v20    # "bufferedDurationUs":J
    :cond_5
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->getNowUnixTimeUs()J

    move-result-wide v28

    .line 203
    .local v28, "nowUs":J
    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentCount()I

    move-result v16

    .line 204
    .local v16, "availableSegmentCount":I
    if-nez v16, :cond_8

    .line 206
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v3, v3, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->periodIndex:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_7

    :cond_6
    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p4

    iput-boolean v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkHolder;->endOfStream:Z

    goto/16 :goto_0

    :cond_7
    const/4 v3, 0x0

    goto :goto_2

    .line 210
    :cond_8
    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getFirstSegmentNum()I

    move-result v17

    .line 212
    .local v17, "firstAvailableSegmentNum":I
    const/4 v3, -0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_d

    .line 215
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v4, v3, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->availabilityStartTime:J

    const-wide/16 v10, 0x3e8

    mul-long/2addr v4, v10

    sub-long v26, v28, v4

    .line 216
    .local v26, "liveEdgeTimeUs":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->periodIndex:I

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;

    move-result-object v3

    iget-wide v4, v3, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;->startMs:J

    const-wide/16 v10, 0x3e8

    mul-long v30, v4, v10

    .line 217
    .local v30, "periodStartUs":J
    sub-long v24, v26, v30

    .line 218
    .local v24, "liveEdgeTimeInPeriodUs":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v4, v3, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->timeShiftBufferDepth:J

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v4, v10

    if-eqz v3, :cond_9

    .line 219
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v4, v3, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->timeShiftBufferDepth:J

    const-wide/16 v10, 0x3e8

    mul-long v18, v4, v10

    .line 220
    .local v18, "bufferDepthUs":J
    sub-long v4, v24, v18

    .line 221
    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentNum(J)I

    move-result v3

    .line 220
    move/from16 v0, v17

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 225
    .end local v18    # "bufferDepthUs":J
    :cond_9
    move-wide/from16 v0, v24

    invoke-virtual {v2, v0, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentNum(J)I

    move-result v3

    add-int/lit8 v22, v3, -0x1

    .line 231
    .end local v24    # "liveEdgeTimeInPeriodUs":J
    .end local v26    # "liveEdgeTimeUs":J
    .end local v30    # "periodStartUs":J
    .local v22, "lastAvailableSegmentNum":I
    :goto_3
    if-nez p1, :cond_e

    .line 232
    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentNum(J)I

    move-result v3

    move/from16 v0, v17

    move/from16 v1, v22

    invoke-static {v3, v0, v1}, Lorg/telegram/messenger/exoplayer2/util/Util;->constrainValue(III)I

    move-result v14

    .line 243
    .local v14, "segmentNum":I
    :cond_a
    move/from16 v0, v22

    if-gt v14, v0, :cond_b

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->missingLastSegment:Z

    if-eqz v3, :cond_10

    move/from16 v0, v22

    if-lt v14, v0, :cond_10

    .line 246
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v3, v3, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->periodIndex:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_f

    :cond_c
    const/4 v3, 0x1

    :goto_4
    move-object/from16 v0, p4

    iput-boolean v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkHolder;->endOfStream:Z

    goto/16 :goto_0

    .line 227
    .end local v14    # "segmentNum":I
    .end local v22    # "lastAvailableSegmentNum":I
    :cond_d
    add-int v3, v17, v16

    add-int/lit8 v22, v3, -0x1

    .restart local v22    # "lastAvailableSegmentNum":I
    goto :goto_3

    .line 235
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/source/chunk/MediaChunk;->getNextChunkIndex()I

    move-result v14

    .line 236
    .restart local v14    # "segmentNum":I
    move/from16 v0, v17

    if-ge v14, v0, :cond_a

    .line 238
    new-instance v3, Lorg/telegram/messenger/exoplayer2/source/BehindLiveWindowException;

    invoke-direct {v3}, Lorg/telegram/messenger/exoplayer2/source/BehindLiveWindowException;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    goto/16 :goto_0

    .line 246
    :cond_f
    const/4 v3, 0x0

    goto :goto_4

    .line 250
    :cond_10
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->maxSegmentsPerLoad:I

    sub-int v4, v22, v14

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 251
    .local v15, "maxSegmentCount":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v3}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getSelectedFormat()Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    .line 252
    invoke-interface {v3}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getSelectionReason()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v3}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v13

    move-object v9, v2

    .line 251
    invoke-static/range {v9 .. v15}, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->newMediaChunk(Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;II)Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;

    move-result-object v3

    move-object/from16 v0, p4

    iput-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkHolder;->chunk:Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;

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
    .line 165
    .local p3, "queue":Ljava/util/List;, "Ljava/util/List<+Lorg/telegram/messenger/exoplayer2/source/chunk/MediaChunk;>;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 166
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    .line 168
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

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
    .line 156
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    throw v0

    .line 159
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->manifestLoaderErrorThrower:Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;->maybeThrowError()V

    .line 161
    return-void
.end method

.method public onChunkLoadCompleted(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;)V
    .locals 6
    .param p1, "chunk"    # Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;

    .prologue
    .line 258
    instance-of v3, p1, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 259
    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;

    .line 260
    .local v0, "initializationChunk":Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;->trackFormat:Lorg/telegram/messenger/exoplayer2/Format;

    .line 261
    invoke-interface {v4, v5}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->indexOf(Lorg/telegram/messenger/exoplayer2/Format;)I

    move-result v4

    aget-object v1, v3, v4

    .line 265
    .local v1, "representationHolder":Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    iget-object v3, v1, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;

    if-nez v3, :cond_0

    .line 266
    iget-object v3, v1, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->extractorWrapper:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;->getSeekMap()Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;

    move-result-object v2

    .line 267
    .local v2, "seekMap":Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;
    if-eqz v2, :cond_0

    .line 268
    new-instance v3, Lorg/telegram/messenger/exoplayer2/source/dash/DashWrappingSegmentIndex;

    check-cast v2, Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;

    .end local v2    # "seekMap":Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;
    invoke-direct {v3, v2}, Lorg/telegram/messenger/exoplayer2/source/dash/DashWrappingSegmentIndex;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;)V

    iput-object v3, v1, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;

    .line 272
    .end local v0    # "initializationChunk":Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;
    .end local v1    # "representationHolder":Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    :cond_0
    return-void
.end method

.method public onChunkLoadError(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;ZLjava/lang/Exception;)Z
    .locals 7
    .param p1, "chunk"    # Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;
    .param p2, "cancelable"    # Z
    .param p3, "e"    # Ljava/lang/Exception;

    .prologue
    const/4 v4, 0x1

    .line 276
    if-nez p2, :cond_0

    .line 277
    const/4 v3, 0x0

    .line 295
    :goto_0
    return v3

    .line 280
    :cond_0
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v3, v3, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-nez v3, :cond_1

    instance-of v3, p1, Lorg/telegram/messenger/exoplayer2/source/chunk/MediaChunk;

    if-eqz v3, :cond_1

    instance-of v3, p3, Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    if-eqz v3, :cond_1

    move-object v3, p3

    check-cast v3, Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    iget v3, v3, Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    const/16 v5, 0x194

    if-ne v3, v5, :cond_1

    .line 283
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    iget-object v6, p1, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->trackFormat:Lorg/telegram/messenger/exoplayer2/Format;

    .line 284
    invoke-interface {v5, v6}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->indexOf(Lorg/telegram/messenger/exoplayer2/Format;)I

    move-result v5

    aget-object v1, v3, v5

    .line 285
    .local v1, "representationHolder":Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentCount()I

    move-result v2

    .line 286
    .local v2, "segmentCount":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-eqz v2, :cond_1

    .line 287
    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getFirstSegmentNum()I

    move-result v3

    add-int/2addr v3, v2

    add-int/lit8 v0, v3, -0x1

    .local v0, "lastAvailableSegmentNum":I
    move-object v3, p1

    .line 288
    check-cast v3, Lorg/telegram/messenger/exoplayer2/source/chunk/MediaChunk;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/source/chunk/MediaChunk;->getNextChunkIndex()I

    move-result v3

    if-le v3, v0, :cond_1

    .line 289
    iput-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->missingLastSegment:Z

    move v3, v4

    .line 290
    goto :goto_0

    .line 295
    .end local v0    # "lastAvailableSegmentNum":I
    .end local v1    # "representationHolder":Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    .end local v2    # "segmentCount":I
    :cond_1
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    iget-object v5, p1, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->trackFormat:Lorg/telegram/messenger/exoplayer2/Format;

    .line 296
    invoke-interface {v4, v5}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->indexOf(Lorg/telegram/messenger/exoplayer2/Format;)I

    move-result v4

    .line 295
    invoke-static {v3, v4, p3}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkedTrackBlacklistUtil;->maybeBlacklistTrack(Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;ILjava/lang/Exception;)Z

    move-result v3

    goto :goto_0
.end method

.method public updateManifest(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;I)V
    .locals 8
    .param p1, "newManifest"    # Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;
    .param p2, "newPeriodIndex"    # I

    .prologue
    .line 141
    :try_start_0
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    .line 142
    iput p2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->periodIndex:I

    .line 143
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    iget v7, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->periodIndex:I

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v2

    .line 144
    .local v2, "periodDurationUs":J
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->getAdaptationSet()Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;

    move-result-object v6

    iget-object v5, v6, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    .line 145
    .local v5, "representations":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    array-length v6, v6

    if-ge v1, v6, :cond_0

    .line 146
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v6, v1}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;

    .line 147
    .local v4, "representation":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    aget-object v6, v6, v1

    invoke-virtual {v6, v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->updateRepresentation(JLorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;)V
    :try_end_0
    .catch Lorg/telegram/messenger/exoplayer2/source/BehindLiveWindowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    .end local v1    # "i":I
    .end local v2    # "periodDurationUs":J
    .end local v4    # "representation":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;
    .end local v5    # "representations":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;>;"
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Lorg/telegram/messenger/exoplayer2/source/BehindLiveWindowException;
    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    .line 152
    .end local v0    # "e":Lorg/telegram/messenger/exoplayer2/source/BehindLiveWindowException;
    :cond_0
    return-void
.end method
