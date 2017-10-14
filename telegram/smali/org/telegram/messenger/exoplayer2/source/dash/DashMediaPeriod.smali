.class final Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;
.super Ljava/lang/Object;
.source "DashMediaPeriod.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
.implements Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod$EmbeddedTrackInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;",
        "Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader$Callback",
        "<",
        "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream",
        "<",
        "Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;",
        ">;>;"
    }
.end annotation


# instance fields
.field private adaptationSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;"
        }
    .end annotation
.end field

.field private final allocator:Lorg/telegram/messenger/exoplayer2/upstream/Allocator;

.field private callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

.field private final chunkSourceFactory:Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource$Factory;

.field private final elapsedRealtimeOffset:J

.field private final embeddedTrackInfos:[Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod$EmbeddedTrackInfo;

.field private final eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

.field final id:I

.field private manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

.field private final manifestLoaderErrorThrower:Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;

.field private final minLoadableRetryCount:I

.field private periodIndex:I

.field private sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;",
            ">;"
        }
    .end annotation
.end field

.field private sequenceableLoader:Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;

.field private final trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;


# direct methods
.method public constructor <init>(ILorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;ILorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource$Factory;ILorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;JLorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;Lorg/telegram/messenger/exoplayer2/upstream/Allocator;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "manifest"    # Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;
    .param p3, "periodIndex"    # I
    .param p4, "chunkSourceFactory"    # Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource$Factory;
    .param p5, "minLoadableRetryCount"    # I
    .param p6, "eventDispatcher"    # Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;
    .param p7, "elapsedRealtimeOffset"    # J
    .param p9, "manifestLoaderErrorThrower"    # Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;
    .param p10, "allocator"    # Lorg/telegram/messenger/exoplayer2/upstream/Allocator;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->id:I

    .line 72
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    .line 73
    iput p3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->periodIndex:I

    .line 74
    iput-object p4, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->chunkSourceFactory:Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource$Factory;

    .line 75
    iput p5, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->minLoadableRetryCount:I

    .line 76
    iput-object p6, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    .line 77
    iput-wide p7, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->elapsedRealtimeOffset:J

    .line 78
    iput-object p9, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->manifestLoaderErrorThrower:Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;

    .line 79
    iput-object p10, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->allocator:Lorg/telegram/messenger/exoplayer2/upstream/Allocator;

    .line 80
    const/4 v1, 0x0

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->newSampleStreamArray(I)[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    .line 81
    new-instance v1, Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-direct {v1, v2}, Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;-><init>([Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->sequenceableLoader:Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;

    .line 82
    invoke-virtual {p2, p3}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->adaptationSets:Ljava/util/List;

    .line 83
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->adaptationSets:Ljava/util/List;

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->buildTrackGroups(Ljava/util/List;)Landroid/util/Pair;

    move-result-object v0

    .line 84
    .local v0, "result":Landroid/util/Pair;, "Landroid/util/Pair<Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;[Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod$EmbeddedTrackInfo;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    .line 85
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod$EmbeddedTrackInfo;

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->embeddedTrackInfos:[Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod$EmbeddedTrackInfo;

    .line 86
    return-void
.end method

.method private buildSampleStream(ILorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;J)Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;
    .locals 25
    .param p1, "adaptationSetIndex"    # I
    .param p2, "selection"    # Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    .param p3, "positionUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;",
            "J)",
            "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->adaptationSets:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;

    .line 274
    .local v22, "adaptationSet":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;
    const/16 v23, 0x0

    .line 275
    .local v23, "embeddedTrackCount":I
    const/4 v2, 0x2

    new-array v14, v2, [I

    .line 276
    .local v14, "embeddedTrackTypes":[I
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->hasEventMessageTrack(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;)Z

    move-result v10

    .line 277
    .local v10, "enableEventMessageTrack":Z
    if-eqz v10, :cond_0

    .line 278
    add-int/lit8 v24, v23, 0x1

    .end local v23    # "embeddedTrackCount":I
    .local v24, "embeddedTrackCount":I
    const/4 v2, 0x4

    aput v2, v14, v23

    move/from16 v23, v24

    .line 280
    .end local v24    # "embeddedTrackCount":I
    .restart local v23    # "embeddedTrackCount":I
    :cond_0
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->hasCea608Track(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;)Z

    move-result v11

    .line 281
    .local v11, "enableCea608Track":Z
    if-eqz v11, :cond_1

    .line 282
    add-int/lit8 v24, v23, 0x1

    .end local v23    # "embeddedTrackCount":I
    .restart local v24    # "embeddedTrackCount":I
    const/4 v2, 0x3

    aput v2, v14, v23

    move/from16 v23, v24

    .line 284
    .end local v24    # "embeddedTrackCount":I
    .restart local v23    # "embeddedTrackCount":I
    :cond_1
    array-length v2, v14

    move/from16 v0, v23

    if-ge v0, v2, :cond_2

    .line 285
    move/from16 v0, v23

    invoke-static {v14, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v14

    .line 287
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->chunkSourceFactory:Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource$Factory;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->manifestLoaderErrorThrower:Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->periodIndex:I

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->elapsedRealtimeOffset:J

    move/from16 v6, p1

    move-object/from16 v7, p2

    invoke-interface/range {v2 .. v11}, Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource$Factory;->createDashChunkSource(Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;IILorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;JZZ)Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;

    move-result-object v15

    .line 290
    .local v15, "chunkSource":Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;
    new-instance v12, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    move-object/from16 v0, v22

    iget v13, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;->type:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->allocator:Lorg/telegram/messenger/exoplayer2/upstream/Allocator;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->minLoadableRetryCount:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    move-object/from16 v21, v0

    move-object/from16 v16, p0

    move-wide/from16 v18, p3

    invoke-direct/range {v12 .. v21}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;-><init>(I[ILorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader$Callback;Lorg/telegram/messenger/exoplayer2/upstream/Allocator;JILorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;)V

    .line 293
    .local v12, "stream":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;>;"
    return-object v12
.end method

.method private static buildTrackGroups(Ljava/util/List;)Landroid/util/Pair;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;)",
            "Landroid/util/Pair",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;",
            "[",
            "Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod$EmbeddedTrackInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    .local p0, "adaptationSets":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v10

    .line 241
    .local v10, "adaptationSetCount":I
    invoke-static/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->getEmbeddedTrackCount(Ljava/util/List;)I

    move-result v11

    .line 242
    .local v11, "embeddedTrackCount":I
    add-int v2, v10, v11

    new-array v0, v2, [Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    move-object/from16 v20, v0

    .line 243
    .local v20, "trackGroupArray":[Lorg/telegram/messenger/exoplayer2/source/TrackGroup;
    new-array v14, v11, [Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod$EmbeddedTrackInfo;

    .line 245
    .local v14, "embeddedTrackInfos":[Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod$EmbeddedTrackInfo;
    const/4 v12, 0x0

    .line 246
    .local v12, "embeddedTrackIndex":I
    const/16 v17, 0x0

    .local v17, "i":I
    move v13, v12

    .end local v12    # "embeddedTrackIndex":I
    .local v13, "embeddedTrackIndex":I
    :goto_0
    move/from16 v0, v17

    if-ge v0, v10, :cond_2

    .line 247
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;

    .line 248
    .local v9, "adaptationSet":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;
    iget-object v0, v9, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    move-object/from16 v19, v0

    .line 249
    .local v19, "representations":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [Lorg/telegram/messenger/exoplayer2/Format;

    move-object/from16 v16, v0

    .line 250
    .local v16, "formats":[Lorg/telegram/messenger/exoplayer2/Format;
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_1
    move-object/from16 v0, v16

    array-length v2, v0

    move/from16 v0, v18

    if-ge v0, v2, :cond_0

    .line 251
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->format:Lorg/telegram/messenger/exoplayer2/Format;

    aput-object v2, v16, v18

    .line 250
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 253
    :cond_0
    new-instance v2, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;-><init>([Lorg/telegram/messenger/exoplayer2/Format;)V

    aput-object v2, v20, v17

    .line 254
    invoke-static {v9}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->hasEventMessageTrack(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v9, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":emsg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "application/x-emsg"

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lorg/telegram/messenger/exoplayer2/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v15

    .line 257
    .local v15, "format":Lorg/telegram/messenger/exoplayer2/Format;
    add-int v2, v10, v13

    new-instance v3, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    const/4 v4, 0x1

    new-array v4, v4, [Lorg/telegram/messenger/exoplayer2/Format;

    const/4 v5, 0x0

    aput-object v15, v4, v5

    invoke-direct {v3, v4}, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;-><init>([Lorg/telegram/messenger/exoplayer2/Format;)V

    aput-object v3, v20, v2

    .line 258
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "embeddedTrackIndex":I
    .restart local v12    # "embeddedTrackIndex":I
    new-instance v2, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod$EmbeddedTrackInfo;

    const/4 v3, 0x4

    move/from16 v0, v17

    invoke-direct {v2, v0, v3}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod$EmbeddedTrackInfo;-><init>(II)V

    aput-object v2, v14, v13

    .line 260
    .end local v15    # "format":Lorg/telegram/messenger/exoplayer2/Format;
    :goto_2
    invoke-static {v9}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->hasCea608Track(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v9, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":cea608"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "application/cea-608"

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/messenger/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v15

    .line 263
    .restart local v15    # "format":Lorg/telegram/messenger/exoplayer2/Format;
    add-int v2, v10, v12

    new-instance v3, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    const/4 v4, 0x1

    new-array v4, v4, [Lorg/telegram/messenger/exoplayer2/Format;

    const/4 v5, 0x0

    aput-object v15, v4, v5

    invoke-direct {v3, v4}, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;-><init>([Lorg/telegram/messenger/exoplayer2/Format;)V

    aput-object v3, v20, v2

    .line 264
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "embeddedTrackIndex":I
    .restart local v13    # "embeddedTrackIndex":I
    new-instance v2, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod$EmbeddedTrackInfo;

    const/4 v3, 0x3

    move/from16 v0, v17

    invoke-direct {v2, v0, v3}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod$EmbeddedTrackInfo;-><init>(II)V

    aput-object v2, v14, v12

    move v12, v13

    .line 246
    .end local v13    # "embeddedTrackIndex":I
    .end local v15    # "format":Lorg/telegram/messenger/exoplayer2/Format;
    .restart local v12    # "embeddedTrackIndex":I
    :cond_1
    add-int/lit8 v17, v17, 0x1

    move v13, v12

    .end local v12    # "embeddedTrackIndex":I
    .restart local v13    # "embeddedTrackIndex":I
    goto/16 :goto_0

    .line 268
    .end local v9    # "adaptationSet":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;
    .end local v16    # "formats":[Lorg/telegram/messenger/exoplayer2/Format;
    .end local v18    # "j":I
    .end local v19    # "representations":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;>;"
    :cond_2
    new-instance v2, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    move-object/from16 v0, v20

    invoke-direct {v2, v0}, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;-><init>([Lorg/telegram/messenger/exoplayer2/source/TrackGroup;)V

    invoke-static {v2, v14}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2

    .restart local v9    # "adaptationSet":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;
    .restart local v16    # "formats":[Lorg/telegram/messenger/exoplayer2/Format;
    .restart local v18    # "j":I
    .restart local v19    # "representations":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;>;"
    :cond_3
    move v12, v13

    .end local v13    # "embeddedTrackIndex":I
    .restart local v12    # "embeddedTrackIndex":I
    goto :goto_2
.end method

.method private static getEmbeddedTrackCount(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 297
    .local p0, "adaptationSets":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    const/4 v1, 0x0

    .line 298
    .local v1, "embeddedTrackCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 299
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;

    .line 300
    .local v0, "adaptationSet":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->hasEventMessageTrack(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 301
    add-int/lit8 v1, v1, 0x1

    .line 303
    :cond_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->hasCea608Track(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 304
    add-int/lit8 v1, v1, 0x1

    .line 298
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 307
    .end local v0    # "adaptationSet":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;
    :cond_2
    return v1
.end method

.method private static hasCea608Track(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;)Z
    .locals 5
    .param p0, "adaptationSet"    # Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;

    .prologue
    .line 322
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;->accessibilityDescriptors:Ljava/util/List;

    .line 323
    .local v1, "descriptors":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SchemeValuePair;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 324
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SchemeValuePair;

    .line 325
    .local v0, "descriptor":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SchemeValuePair;
    const-string/jumbo v3, "urn:scte:dash:cc:cea-608:2015"

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SchemeValuePair;->schemeIdUri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 326
    const/4 v3, 0x1

    .line 329
    .end local v0    # "descriptor":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SchemeValuePair;
    :goto_1
    return v3

    .line 323
    .restart local v0    # "descriptor":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SchemeValuePair;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 329
    .end local v0    # "descriptor":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SchemeValuePair;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static hasEventMessageTrack(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;)Z
    .locals 4
    .param p0, "adaptationSet"    # Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;

    .prologue
    .line 311
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    .line 312
    .local v2, "representations":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 313
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;

    .line 314
    .local v1, "representation":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;
    iget-object v3, v1, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->inbandEventStreams:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 315
    const/4 v3, 0x1

    .line 318
    .end local v1    # "representation":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;
    :goto_1
    return v3

    .line 312
    .restart local v1    # "representation":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 318
    .end local v1    # "representation":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static newSampleStreamArray(I)[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;
    .locals 1
    .param p0, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 334
    new-array v0, p0, [Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    return-object v0
.end method

.method private static releaseIfEmbeddedSampleStream(Lorg/telegram/messenger/exoplayer2/source/SampleStream;)V
    .locals 1
    .param p0, "sampleStream"    # Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    .prologue
    .line 338
    instance-of v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    if-eqz v0, :cond_0

    .line 339
    check-cast p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    .end local p0    # "sampleStream":Lorg/telegram/messenger/exoplayer2/source/SampleStream;
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->release()V

    .line 341
    :cond_0
    return-void
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 1
    .param p1, "positionUs"    # J

    .prologue
    .line 196
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->sequenceableLoader:Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;->continueLoading(J)Z

    move-result v0

    return v0
.end method

.method public discardBuffer(J)V
    .locals 5
    .param p1, "positionUs"    # J

    .prologue
    .line 189
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 190
    .local v0, "sampleStream":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;>;"
    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->discardUnselectedEmbeddedTracksTo(J)V

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 192
    .end local v0    # "sampleStream":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;>;"
    :cond_0
    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 11

    .prologue
    const-wide/high16 v6, -0x8000000000000000L

    .line 211
    const-wide v0, 0x7fffffffffffffffL

    .line 212
    .local v0, "bufferedPositionUs":J
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v9, v8

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v9, :cond_1

    aget-object v4, v8, v5

    .line 213
    .local v4, "sampleStream":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;>;"
    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->getBufferedPositionUs()J

    move-result-wide v2

    .line 214
    .local v2, "rendererBufferedPositionUs":J
    cmp-long v10, v2, v6

    if-eqz v10, :cond_0

    .line 215
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 212
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 218
    .end local v2    # "rendererBufferedPositionUs":J
    .end local v4    # "sampleStream":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;>;"
    :cond_1
    const-wide v8, 0x7fffffffffffffffL

    cmp-long v5, v0, v8

    if-nez v5, :cond_2

    move-wide v0, v6

    .end local v0    # "bufferedPositionUs":J
    :cond_2
    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->sequenceableLoader:Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackGroups()Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public maybeThrowPrepareError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->manifestLoaderErrorThrower:Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;->maybeThrowError()V

    .line 115
    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V
    .locals 0

    .prologue
    .line 47
    check-cast p1, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;)V

    return-void
.end method

.method public onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 233
    .local p1, "sampleStream":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;>;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V

    .line 234
    return-void
.end method

.method public prepare(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;)V
    .locals 0
    .param p1, "callback"    # Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    .prologue
    .line 108
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    .line 109
    invoke-interface {p1, p0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V

    .line 110
    return-void
.end method

.method public readDiscontinuity()J
    .locals 2

    .prologue
    .line 206
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public release()V
    .locals 4

    .prologue
    .line 101
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 102
    .local v0, "sampleStream":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;>;"
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->release()V

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    .end local v0    # "sampleStream":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;>;"
    :cond_0
    return-void
.end method

.method public seekToUs(J)J
    .locals 5
    .param p1, "positionUs"    # J

    .prologue
    .line 223
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 224
    .local v0, "sampleStream":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;>;"
    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->seekToUs(J)V

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 226
    .end local v0    # "sampleStream":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;>;"
    :cond_0
    return-wide p1
.end method

.method public selectTracks([Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;[Z[Lorg/telegram/messenger/exoplayer2/source/SampleStream;[ZJ)J
    .locals 15
    .param p1, "selections"    # [Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    .param p2, "mayRetainStreamFlags"    # [Z
    .param p3, "streams"    # [Lorg/telegram/messenger/exoplayer2/source/SampleStream;
    .param p4, "streamResetFlags"    # [Z
    .param p5, "positionUs"    # J

    .prologue
    .line 125
    iget-object v13, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->adaptationSets:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    .line 126
    .local v2, "adaptationSetCount":I
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 128
    .local v8, "primarySampleStreams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;>;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v13, v0

    if-ge v6, v13, :cond_4

    .line 129
    aget-object v13, p3, v6

    instance-of v13, v13, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    if-eqz v13, :cond_1

    .line 131
    aget-object v11, p3, v6

    check-cast v11, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    .line 132
    .local v11, "stream":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;>;"
    aget-object v13, p1, v6

    if-eqz v13, :cond_0

    aget-boolean v13, p2, v6

    if-nez v13, :cond_3

    .line 133
    :cond_0
    invoke-virtual {v11}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->release()V

    .line 134
    const/4 v13, 0x0

    aput-object v13, p3, v6

    .line 140
    .end local v11    # "stream":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;>;"
    :cond_1
    :goto_1
    aget-object v13, p3, v6

    if-nez v13, :cond_2

    aget-object v13, p1, v6

    if-eqz v13, :cond_2

    .line 141
    iget-object v13, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    aget-object v14, p1, v6

    invoke-interface {v14}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->indexOf(Lorg/telegram/messenger/exoplayer2/source/TrackGroup;)I

    move-result v12

    .line 142
    .local v12, "trackGroupIndex":I
    if-ge v12, v2, :cond_2

    .line 143
    aget-object v13, p1, v6

    move-wide/from16 v0, p5

    invoke-direct {p0, v12, v13, v0, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->buildSampleStream(ILorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;J)Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    move-result-object v11

    .line 145
    .restart local v11    # "stream":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;>;"
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    aput-object v11, p3, v6

    .line 147
    const/4 v13, 0x1

    aput-boolean v13, p4, v6

    .line 128
    .end local v11    # "stream":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;>;"
    .end local v12    # "trackGroupIndex":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 136
    .restart local v11    # "stream":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;>;"
    :cond_3
    iget-object v13, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    aget-object v14, p1, v6

    invoke-interface {v14}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->indexOf(Lorg/telegram/messenger/exoplayer2/source/TrackGroup;)I

    move-result v3

    .line 137
    .local v3, "adaptationSetIndex":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 152
    .end local v3    # "adaptationSetIndex":I
    .end local v11    # "stream":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;>;"
    :cond_4
    const/4 v6, 0x0

    :goto_2
    move-object/from16 v0, p1

    array-length v13, v0

    if-ge v6, v13, :cond_c

    .line 153
    aget-object v13, p3, v6

    instance-of v13, v13, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    if-nez v13, :cond_5

    aget-object v13, p3, v6

    instance-of v13, v13, Lorg/telegram/messenger/exoplayer2/source/EmptySampleStream;

    if-eqz v13, :cond_7

    :cond_5
    aget-object v13, p1, v6

    if-eqz v13, :cond_6

    aget-boolean v13, p2, v6

    if-nez v13, :cond_7

    .line 156
    :cond_6
    aget-object v13, p3, v6

    invoke-static {v13}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->releaseIfEmbeddedSampleStream(Lorg/telegram/messenger/exoplayer2/source/SampleStream;)V

    .line 157
    const/4 v13, 0x0

    aput-object v13, p3, v6

    .line 161
    :cond_7
    aget-object v13, p1, v6

    if-eqz v13, :cond_8

    .line 162
    iget-object v13, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    aget-object v14, p1, v6

    invoke-interface {v14}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->indexOf(Lorg/telegram/messenger/exoplayer2/source/TrackGroup;)I

    move-result v12

    .line 163
    .restart local v12    # "trackGroupIndex":I
    if-lt v12, v2, :cond_8

    .line 164
    sub-int v4, v12, v2

    .line 165
    .local v4, "embeddedTrackIndex":I
    iget-object v13, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->embeddedTrackInfos:[Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod$EmbeddedTrackInfo;

    aget-object v5, v13, v4

    .line 166
    .local v5, "embeddedTrackInfo":Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod$EmbeddedTrackInfo;
    iget v3, v5, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod$EmbeddedTrackInfo;->adaptationSetIndex:I

    .line 167
    .restart local v3    # "adaptationSetIndex":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    .line 168
    .local v9, "primaryStream":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<*>;"
    aget-object v10, p3, v6

    .line 169
    .local v10, "stream":Lorg/telegram/messenger/exoplayer2/source/SampleStream;
    if-nez v9, :cond_9

    instance-of v7, v10, Lorg/telegram/messenger/exoplayer2/source/EmptySampleStream;

    .line 172
    .local v7, "mayRetainStream":Z
    :goto_3
    if-nez v7, :cond_8

    .line 173
    invoke-static {v10}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->releaseIfEmbeddedSampleStream(Lorg/telegram/messenger/exoplayer2/source/SampleStream;)V

    .line 174
    if-nez v9, :cond_b

    new-instance v13, Lorg/telegram/messenger/exoplayer2/source/EmptySampleStream;

    invoke-direct {v13}, Lorg/telegram/messenger/exoplayer2/source/EmptySampleStream;-><init>()V

    .line 175
    :goto_4
    aput-object v13, p3, v6

    .line 176
    const/4 v13, 0x1

    aput-boolean v13, p4, v6

    .line 152
    .end local v3    # "adaptationSetIndex":I
    .end local v4    # "embeddedTrackIndex":I
    .end local v5    # "embeddedTrackInfo":Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod$EmbeddedTrackInfo;
    .end local v7    # "mayRetainStream":Z
    .end local v9    # "primaryStream":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<*>;"
    .end local v10    # "stream":Lorg/telegram/messenger/exoplayer2/source/SampleStream;
    .end local v12    # "trackGroupIndex":I
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 169
    .restart local v3    # "adaptationSetIndex":I
    .restart local v4    # "embeddedTrackIndex":I
    .restart local v5    # "embeddedTrackInfo":Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod$EmbeddedTrackInfo;
    .restart local v9    # "primaryStream":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<*>;"
    .restart local v10    # "stream":Lorg/telegram/messenger/exoplayer2/source/SampleStream;
    .restart local v12    # "trackGroupIndex":I
    :cond_9
    instance-of v13, v10, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    if-eqz v13, :cond_a

    move-object v13, v10

    check-cast v13, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    iget-object v13, v13, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->parent:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    if-ne v13, v9, :cond_a

    const/4 v7, 0x1

    goto :goto_3

    :cond_a
    const/4 v7, 0x0

    goto :goto_3

    .line 174
    .restart local v7    # "mayRetainStream":Z
    :cond_b
    iget v13, v5, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod$EmbeddedTrackInfo;->trackType:I

    .line 175
    move-wide/from16 v0, p5

    invoke-virtual {v9, v0, v1, v13}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->selectEmbeddedTrack(JI)Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    move-result-object v13

    goto :goto_4

    .line 181
    .end local v3    # "adaptationSetIndex":I
    .end local v4    # "embeddedTrackIndex":I
    .end local v5    # "embeddedTrackInfo":Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod$EmbeddedTrackInfo;
    .end local v7    # "mayRetainStream":Z
    .end local v9    # "primaryStream":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<*>;"
    .end local v10    # "stream":Lorg/telegram/messenger/exoplayer2/source/SampleStream;
    .end local v12    # "trackGroupIndex":I
    :cond_c
    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v13

    invoke-static {v13}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->newSampleStreamArray(I)[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    move-result-object v13

    iput-object v13, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    .line 182
    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v13

    iget-object v14, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-interface {v13, v14}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 183
    new-instance v13, Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;

    iget-object v14, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-direct {v13, v14}, Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;-><init>([Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V

    iput-object v13, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->sequenceableLoader:Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;

    .line 184
    return-wide p5
.end method

.method public updateManifest(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;I)V
    .locals 5
    .param p1, "manifest"    # Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;
    .param p2, "periodIndex"    # I

    .prologue
    .line 89
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    .line 90
    iput p2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->periodIndex:I

    .line 91
    invoke-virtual {p1, p2}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->adaptationSets:Ljava/util/List;

    .line 92
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    if-eqz v1, :cond_1

    .line 93
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 94
    .local v0, "sampleStream":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;>;"
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->getChunkSource()Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;

    invoke-interface {v1, p1, p2}, Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;->updateManifest(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;I)V

    .line 93
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 96
    .end local v0    # "sampleStream":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;>;"
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v1, p0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V

    .line 98
    :cond_1
    return-void
.end method
