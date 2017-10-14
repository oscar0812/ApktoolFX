.class public final Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;
.super Ljava/lang/Object;
.source "HlsMediaPeriod.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
.implements Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;
.implements Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;


# instance fields
.field private final allocator:Lorg/telegram/messenger/exoplayer2/upstream/Allocator;

.field private callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

.field private final continueLoadingHandler:Landroid/os/Handler;

.field private final dataSourceFactory:Lorg/telegram/messenger/exoplayer2/source/hls/HlsDataSourceFactory;

.field private enabledSampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

.field private final eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

.field private final minLoadableRetryCount:I

.field private pendingPrepareCount:I

.field private final playlistTracker:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

.field private final preparePositionUs:J

.field private sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

.field private seenFirstTrackSelection:Z

.field private sequenceableLoader:Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;

.field private final streamWrapperIndices:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/SampleStream;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final timestampAdjusterProvider:Lorg/telegram/messenger/exoplayer2/source/hls/TimestampAdjusterProvider;

.field private trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;Lorg/telegram/messenger/exoplayer2/source/hls/HlsDataSourceFactory;ILorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;Lorg/telegram/messenger/exoplayer2/upstream/Allocator;J)V
    .locals 2
    .param p1, "playlistTracker"    # Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;
    .param p2, "dataSourceFactory"    # Lorg/telegram/messenger/exoplayer2/source/hls/HlsDataSourceFactory;
    .param p3, "minLoadableRetryCount"    # I
    .param p4, "eventDispatcher"    # Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;
    .param p5, "allocator"    # Lorg/telegram/messenger/exoplayer2/upstream/Allocator;
    .param p6, "positionUs"    # J

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->playlistTracker:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 68
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->dataSourceFactory:Lorg/telegram/messenger/exoplayer2/source/hls/HlsDataSourceFactory;

    .line 69
    iput p3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->minLoadableRetryCount:I

    .line 70
    iput-object p4, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    .line 71
    iput-object p5, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->allocator:Lorg/telegram/messenger/exoplayer2/upstream/Allocator;

    .line 72
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->streamWrapperIndices:Ljava/util/IdentityHashMap;

    .line 73
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/hls/TimestampAdjusterProvider;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/source/hls/TimestampAdjusterProvider;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->timestampAdjusterProvider:Lorg/telegram/messenger/exoplayer2/source/hls/TimestampAdjusterProvider;

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->continueLoadingHandler:Landroid/os/Handler;

    .line 75
    iput-wide p6, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->preparePositionUs:J

    .line 76
    return-void
.end method

.method private buildAndPrepareSampleStreamWrappers()V
    .locals 22

    .prologue
    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->playlistTracker:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->getMasterPlaylist()Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    move-result-object v11

    .line 291
    .local v11, "masterPlaylist":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;
    new-instance v13, Ljava/util/ArrayList;

    iget-object v0, v11, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->variants:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 292
    .local v13, "selectedVariants":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 293
    .local v9, "definiteVideoVariants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .local v8, "definiteAudioOnlyVariants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v10, v0, :cond_3

    .line 295
    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 296
    .local v16, "variant":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lorg/telegram/messenger/exoplayer2/Format;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    move/from16 v18, v0

    if-gtz v18, :cond_0

    const-string/jumbo v18, "avc"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->variantHasExplicitCodecWithPrefix(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 297
    :cond_0
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_1
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 298
    :cond_2
    const-string/jumbo v18, "mp4a"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->variantHasExplicitCodecWithPrefix(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 299
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 302
    .end local v16    # "variant":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    :cond_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_5

    .line 306
    move-object v13, v9

    .line 314
    :cond_4
    :goto_2
    iget-object v5, v11, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->audios:Ljava/util/List;

    .line 315
    .local v5, "audioRenditions":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    iget-object v14, v11, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->subtitles:Ljava/util/List;

    .line 316
    .local v14, "subtitleRenditions":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    .line 317
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v19

    add-int v18, v18, v19

    move/from16 v0, v18

    new-array v0, v0, [Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .line 318
    const/4 v6, 0x0

    .line 319
    .local v6, "currentWrapperIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->pendingPrepareCount:I

    .line 321
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_6

    const/16 v18, 0x1

    :goto_3
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 322
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    move-object/from16 v17, v0

    .line 323
    .local v17, "variants":[Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    move-object/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 324
    const/16 v18, 0x0

    iget-object v0, v11, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->muxedAudioFormat:Lorg/telegram/messenger/exoplayer2/Format;

    move-object/from16 v19, v0

    iget-object v0, v11, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->muxedCaptionFormats:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v17

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->buildSampleStreamWrapper(I[Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lorg/telegram/messenger/exoplayer2/Format;Ljava/util/List;)Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    move-result-object v12

    .line 326
    .local v12, "sampleStreamWrapper":Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    move-object/from16 v18, v0

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "currentWrapperIndex":I
    .local v7, "currentWrapperIndex":I
    aput-object v12, v18, v6

    .line 327
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->setIsTimestampMaster(Z)V

    .line 328
    invoke-virtual {v12}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->continuePreparing()V

    .line 333
    const/4 v10, 0x0

    move v6, v7

    .end local v7    # "currentWrapperIndex":I
    .restart local v6    # "currentWrapperIndex":I
    :goto_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v10, v0, :cond_7

    .line 334
    const/16 v19, 0x1

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 335
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    aput-object v18, v20, v21

    const/16 v18, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v21

    .line 334
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v18

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->buildSampleStreamWrapper(I[Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lorg/telegram/messenger/exoplayer2/Format;Ljava/util/List;)Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    move-result-object v12

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    move-object/from16 v18, v0

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "currentWrapperIndex":I
    .restart local v7    # "currentWrapperIndex":I
    aput-object v12, v18, v6

    .line 337
    invoke-virtual {v12}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->continuePreparing()V

    .line 333
    add-int/lit8 v10, v10, 0x1

    move v6, v7

    .end local v7    # "currentWrapperIndex":I
    .restart local v6    # "currentWrapperIndex":I
    goto :goto_4

    .line 307
    .end local v5    # "audioRenditions":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    .end local v6    # "currentWrapperIndex":I
    .end local v12    # "sampleStreamWrapper":Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .end local v14    # "subtitleRenditions":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    .end local v17    # "variants":[Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    :cond_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v18

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    .line 310
    invoke-interface {v13, v8}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 321
    .restart local v5    # "audioRenditions":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    .restart local v6    # "currentWrapperIndex":I
    .restart local v14    # "subtitleRenditions":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    :cond_6
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 341
    .restart local v12    # "sampleStreamWrapper":Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .restart local v17    # "variants":[Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    :cond_7
    const/4 v10, 0x0

    :goto_5
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v10, v0, :cond_8

    .line 342
    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 343
    .local v15, "url":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    const/16 v18, 0x3

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v15, v19, v20

    const/16 v20, 0x0

    .line 344
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v21

    .line 343
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->buildSampleStreamWrapper(I[Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lorg/telegram/messenger/exoplayer2/Format;Ljava/util/List;)Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    move-result-object v12

    .line 345
    iget-object v0, v15, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lorg/telegram/messenger/exoplayer2/Format;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->prepareSingleTrack(Lorg/telegram/messenger/exoplayer2/Format;)V

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    move-object/from16 v18, v0

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "currentWrapperIndex":I
    .restart local v7    # "currentWrapperIndex":I
    aput-object v12, v18, v6

    .line 341
    add-int/lit8 v10, v10, 0x1

    move v6, v7

    .end local v7    # "currentWrapperIndex":I
    .restart local v6    # "currentWrapperIndex":I
    goto :goto_5

    .line 348
    .end local v15    # "url":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    :cond_8
    return-void
.end method

.method private buildSampleStreamWrapper(I[Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lorg/telegram/messenger/exoplayer2/Format;Ljava/util/List;)Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .locals 11
    .param p1, "trackType"    # I
    .param p2, "variants"    # [Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .param p3, "muxedAudioFormat"    # Lorg/telegram/messenger/exoplayer2/Format;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;",
            "Lorg/telegram/messenger/exoplayer2/Format;",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/Format;",
            ">;)",
            "Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;"
        }
    .end annotation

    .prologue
    .line 352
    .local p4, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/Format;>;"
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->playlistTracker:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->dataSourceFactory:Lorg/telegram/messenger/exoplayer2/source/hls/HlsDataSourceFactory;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->timestampAdjusterProvider:Lorg/telegram/messenger/exoplayer2/source/hls/TimestampAdjusterProvider;

    move-object v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;-><init>(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;[Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lorg/telegram/messenger/exoplayer2/source/hls/HlsDataSourceFactory;Lorg/telegram/messenger/exoplayer2/source/hls/TimestampAdjusterProvider;Ljava/util/List;)V

    .line 354
    .local v0, "defaultChunkSource":Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;
    new-instance v1, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->allocator:Lorg/telegram/messenger/exoplayer2/upstream/Allocator;

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->preparePositionUs:J

    iget v9, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->minLoadableRetryCount:I

    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    move v2, p1

    move-object v3, p0

    move-object v4, v0

    move-object v8, p3

    invoke-direct/range {v1 .. v10}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;-><init>(ILorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;Lorg/telegram/messenger/exoplayer2/upstream/Allocator;JLorg/telegram/messenger/exoplayer2/Format;ILorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;)V

    return-object v1
.end method

.method private continuePreparingOrLoading()V
    .locals 4

    .prologue
    .line 359
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    if-eqz v1, :cond_1

    .line 360
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v1, p0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V

    .line 367
    :cond_0
    return-void

    .line 363
    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 364
    .local v0, "wrapper":Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->continuePreparing()V

    .line 363
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static variantHasExplicitCodecWithPrefix(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Ljava/lang/String;)Z
    .locals 7
    .param p0, "variant"    # Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 370
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iget-object v2, v4, Lorg/telegram/messenger/exoplayer2/Format;->codecs:Ljava/lang/String;

    .line 371
    .local v2, "codecs":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 380
    :cond_0
    :goto_0
    return v3

    .line 374
    :cond_1
    const-string/jumbo v4, "(\\s*,\\s*)|(\\s*$)"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 375
    .local v1, "codecArray":[Ljava/lang/String;
    array-length v5, v1

    move v4, v3

    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v0, v1, v4

    .line 376
    .local v0, "codec":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 377
    const/4 v3, 0x1

    goto :goto_0

    .line 375
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 1
    .param p1, "positionUs"    # J

    .prologue
    .line 199
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sequenceableLoader:Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;->continueLoading(J)Z

    move-result v0

    return v0
.end method

.method public discardBuffer(J)V
    .locals 0
    .param p1, "positionUs"    # J

    .prologue
    .line 195
    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 11

    .prologue
    const-wide/high16 v6, -0x8000000000000000L

    .line 214
    const-wide v0, 0x7fffffffffffffffL

    .line 215
    .local v0, "bufferedPositionUs":J
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v9, v8

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v9, :cond_1

    aget-object v4, v8, v5

    .line 216
    .local v4, "sampleStreamWrapper":Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->getBufferedPositionUs()J

    move-result-wide v2

    .line 217
    .local v2, "rendererBufferedPositionUs":J
    cmp-long v10, v2, v6

    if-eqz v10, :cond_0

    .line 218
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 215
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 221
    .end local v2    # "rendererBufferedPositionUs":J
    .end local v4    # "sampleStreamWrapper":Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;
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
    .line 204
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sequenceableLoader:Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackGroups()Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public maybeThrowPrepareError()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    if-eqz v1, :cond_0

    .line 98
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 99
    .local v0, "sampleStreamWrapper":Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->maybeThrowPrepareError()V

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    .end local v0    # "sampleStreamWrapper":Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;
    :cond_0
    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V
    .locals 0

    .prologue
    .line 43
    check-cast p1, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;)V

    return-void
.end method

.method public onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;)V
    .locals 1
    .param p1, "sampleStreamWrapper"    # Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .prologue
    .line 264
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    if-nez v0, :cond_0

    .line 269
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V

    goto :goto_0
.end method

.method public onPlaylistBlacklisted(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;J)V
    .locals 4
    .param p1, "url"    # Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .param p2, "blacklistMs"    # J

    .prologue
    .line 280
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 281
    .local v0, "streamWrapper":Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->onPlaylistBlacklisted(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;J)V

    .line 280
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 283
    .end local v0    # "streamWrapper":Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;
    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->continuePreparingOrLoading()V

    .line 284
    return-void
.end method

.method public onPlaylistChanged()V
    .locals 0

    .prologue
    .line 275
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->continuePreparingOrLoading()V

    .line 276
    return-void
.end method

.method public onPlaylistRefreshRequired(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)V
    .locals 1
    .param p1, "url"    # Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .prologue
    .line 259
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->playlistTracker:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->refreshPlaylist(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)V

    .line 260
    return-void
.end method

.method public onPrepared()V
    .locals 12

    .prologue
    const/4 v7, 0x0

    .line 237
    iget v8, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->pendingPrepareCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->pendingPrepareCount:I

    if-lez v8, :cond_0

    .line 255
    :goto_0
    return-void

    .line 241
    :cond_0
    const/4 v2, 0x0

    .line 242
    .local v2, "totalTrackGroupCount":I
    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v10, v9

    move v8, v7

    :goto_1
    if-ge v8, v10, :cond_1

    aget-object v1, v9, v8

    .line 243
    .local v1, "sampleStreamWrapper":Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->getTrackGroups()Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    move-result-object v11

    iget v11, v11, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->length:I

    add-int/2addr v2, v11

    .line 242
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 245
    .end local v1    # "sampleStreamWrapper":Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;
    :cond_1
    new-array v3, v2, [Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    .line 246
    .local v3, "trackGroupArray":[Lorg/telegram/messenger/exoplayer2/source/TrackGroup;
    const/4 v4, 0x0

    .line 247
    .local v4, "trackGroupIndex":I
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v9, v8

    :goto_2
    if-ge v7, v9, :cond_3

    aget-object v1, v8, v7

    .line 248
    .restart local v1    # "sampleStreamWrapper":Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->getTrackGroups()Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    move-result-object v10

    iget v6, v10, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->length:I

    .line 249
    .local v6, "wrapperTrackGroupCount":I
    const/4 v0, 0x0

    .local v0, "j":I
    move v5, v4

    .end local v4    # "trackGroupIndex":I
    .local v5, "trackGroupIndex":I
    :goto_3
    if-ge v0, v6, :cond_2

    .line 250
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "trackGroupIndex":I
    .restart local v4    # "trackGroupIndex":I
    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->getTrackGroups()Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    move-result-object v10

    invoke-virtual {v10, v0}, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->get(I)Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    move-result-object v10

    aput-object v10, v3, v5

    .line 249
    add-int/lit8 v0, v0, 0x1

    move v5, v4

    .end local v4    # "trackGroupIndex":I
    .restart local v5    # "trackGroupIndex":I
    goto :goto_3

    .line 247
    :cond_2
    add-int/lit8 v7, v7, 0x1

    move v4, v5

    .end local v5    # "trackGroupIndex":I
    .restart local v4    # "trackGroupIndex":I
    goto :goto_2

    .line 253
    .end local v0    # "j":I
    .end local v1    # "sampleStreamWrapper":Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .end local v6    # "wrapperTrackGroupCount":I
    :cond_3
    new-instance v7, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    invoke-direct {v7, v3}, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;-><init>([Lorg/telegram/messenger/exoplayer2/source/TrackGroup;)V

    iput-object v7, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    .line 254
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v7, p0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V

    goto :goto_0
.end method

.method public prepare(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;)V
    .locals 1
    .param p1, "callback"    # Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    .prologue
    .line 90
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->playlistTracker:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->addListener(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;)V

    .line 91
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    .line 92
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->buildAndPrepareSampleStreamWrappers()V

    .line 93
    return-void
.end method

.method public readDiscontinuity()J
    .locals 2

    .prologue
    .line 209
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public release()V
    .locals 4

    .prologue
    .line 79
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->playlistTracker:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-virtual {v1, p0}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->removeListener(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;)V

    .line 80
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->continueLoadingHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 81
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    if-eqz v1, :cond_0

    .line 82
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 83
    .local v0, "sampleStreamWrapper":Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->release()V

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    .end local v0    # "sampleStreamWrapper":Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;
    :cond_0
    return-void
.end method

.method public seekToUs(J)J
    .locals 5
    .param p1, "positionUs"    # J

    .prologue
    .line 226
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->timestampAdjusterProvider:Lorg/telegram/messenger/exoplayer2/source/hls/TimestampAdjusterProvider;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/source/hls/TimestampAdjusterProvider;->reset()V

    .line 227
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 228
    .local v0, "sampleStreamWrapper":Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->seekTo(J)V

    .line 227
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 230
    .end local v0    # "sampleStreamWrapper":Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;
    :cond_0
    return-wide p1
.end method

.method public selectTracks([Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;[Z[Lorg/telegram/messenger/exoplayer2/source/SampleStream;[ZJ)J
    .locals 19
    .param p1, "selections"    # [Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    .param p2, "mayRetainStreamFlags"    # [Z
    .param p3, "streams"    # [Lorg/telegram/messenger/exoplayer2/source/SampleStream;
    .param p4, "streamResetFlags"    # [Z
    .param p5, "positionUs"    # J

    .prologue
    .line 113
    move-object/from16 v0, p1

    array-length v3, v0

    new-array v15, v3, [I

    .line 114
    .local v15, "streamChildIndices":[I
    move-object/from16 v0, p1

    array-length v3, v0

    new-array v14, v3, [I

    .line 115
    .local v14, "selectionChildIndices":[I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v3, v0

    if-ge v10, v3, :cond_3

    .line 116
    aget-object v3, p3, v10

    if-nez v3, :cond_1

    const/4 v3, -0x1

    .line 117
    :goto_1
    aput v3, v15, v10

    .line 118
    const/4 v3, -0x1

    aput v3, v14, v10

    .line 119
    aget-object v3, p1, v10

    if-eqz v3, :cond_0

    .line 120
    aget-object v3, p1, v10

    invoke-interface {v3}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    move-result-object v16

    .line 121
    .local v16, "trackGroup":Lorg/telegram/messenger/exoplayer2/source/TrackGroup;
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v3, v3

    if-ge v11, v3, :cond_0

    .line 122
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    aget-object v3, v3, v11

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->getTrackGroups()Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->indexOf(Lorg/telegram/messenger/exoplayer2/source/TrackGroup;)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    .line 123
    aput v11, v14, v10

    .line 115
    .end local v11    # "j":I
    .end local v16    # "trackGroup":Lorg/telegram/messenger/exoplayer2/source/TrackGroup;
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 116
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->streamWrapperIndices:Ljava/util/IdentityHashMap;

    aget-object v5, p3, v10

    .line 117
    invoke-virtual {v3, v5}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    .line 121
    .restart local v11    # "j":I
    .restart local v16    # "trackGroup":Lorg/telegram/messenger/exoplayer2/source/TrackGroup;
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 129
    .end local v11    # "j":I
    .end local v16    # "trackGroup":Lorg/telegram/messenger/exoplayer2/source/TrackGroup;
    :cond_3
    const/4 v13, 0x0

    .line 130
    .local v13, "selectedNewTracks":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->streamWrapperIndices:Ljava/util/IdentityHashMap;

    invoke-virtual {v3}, Ljava/util/IdentityHashMap;->clear()V

    .line 132
    move-object/from16 v0, p1

    array-length v3, v0

    new-array v12, v3, [Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    .line 133
    .local v12, "newStreams":[Lorg/telegram/messenger/exoplayer2/source/SampleStream;
    move-object/from16 v0, p1

    array-length v3, v0

    new-array v6, v3, [Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    .line 134
    .local v6, "childStreams":[Lorg/telegram/messenger/exoplayer2/source/SampleStream;
    move-object/from16 v0, p1

    array-length v3, v0

    new-array v4, v3, [Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    .line 135
    .local v4, "childSelections":[Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    new-instance v9, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v3, v3

    invoke-direct {v9, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 137
    .local v9, "enabledSampleStreamWrapperList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;>;"
    const/4 v10, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v3, v3

    if-ge v10, v3, :cond_e

    .line 138
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_4
    move-object/from16 v0, p1

    array-length v3, v0

    if-ge v11, v3, :cond_6

    .line 139
    aget v3, v15, v11

    if-ne v3, v10, :cond_4

    aget-object v3, p3, v11

    :goto_5
    aput-object v3, v6, v11

    .line 140
    aget v3, v14, v11

    if-ne v3, v10, :cond_5

    aget-object v3, p1, v11

    :goto_6
    aput-object v3, v4, v11

    .line 138
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 139
    :cond_4
    const/4 v3, 0x0

    goto :goto_5

    .line 140
    :cond_5
    const/4 v3, 0x0

    goto :goto_6

    .line 142
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    aget-object v3, v3, v10

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->seenFirstTrackSelection:Z

    if-nez v5, :cond_8

    const/4 v8, 0x1

    :goto_7
    move-object/from16 v5, p2

    move-object/from16 v7, p4

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->selectTracks([Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;[Z[Lorg/telegram/messenger/exoplayer2/source/SampleStream;[ZZ)Z

    move-result v3

    or-int/2addr v13, v3

    .line 144
    const/16 v17, 0x0

    .line 145
    .local v17, "wrapperEnabled":Z
    const/4 v11, 0x0

    :goto_8
    move-object/from16 v0, p1

    array-length v3, v0

    if-ge v11, v3, :cond_c

    .line 146
    aget v3, v14, v11

    if-ne v3, v10, :cond_a

    .line 148
    aget-object v3, v6, v11

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    :goto_9
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 149
    aget-object v3, v6, v11

    aput-object v3, v12, v11

    .line 150
    const/16 v17, 0x1

    .line 151
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->streamWrapperIndices:Ljava/util/IdentityHashMap;

    aget-object v5, v6, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_7
    :goto_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 142
    .end local v17    # "wrapperEnabled":Z
    :cond_8
    const/4 v8, 0x0

    goto :goto_7

    .line 148
    .restart local v17    # "wrapperEnabled":Z
    :cond_9
    const/4 v3, 0x0

    goto :goto_9

    .line 152
    :cond_a
    aget v3, v15, v11

    if-ne v3, v10, :cond_7

    .line 154
    aget-object v3, v6, v11

    if-nez v3, :cond_b

    const/4 v3, 0x1

    :goto_b
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    goto :goto_a

    :cond_b
    const/4 v3, 0x0

    goto :goto_b

    .line 157
    :cond_c
    if-eqz v17, :cond_d

    .line 158
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    aget-object v3, v3, v10

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 162
    .end local v11    # "j":I
    .end local v17    # "wrapperEnabled":Z
    :cond_e
    const/4 v3, 0x0

    const/4 v5, 0x0

    array-length v7, v12

    move-object/from16 v0, p3

    invoke-static {v12, v3, v0, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .line 165
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 171
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v3, v3

    if-lez v3, :cond_f

    .line 172
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->setIsTimestampMaster(Z)V

    .line 173
    const/4 v10, 0x1

    :goto_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v3, v3

    if-ge v10, v3, :cond_f

    .line 174
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    aget-object v3, v3, v10

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->setIsTimestampMaster(Z)V

    .line 173
    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    .line 178
    :cond_f
    new-instance v3, Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    invoke-direct {v3, v5}, Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;-><init>([Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sequenceableLoader:Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;

    .line 179
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->seenFirstTrackSelection:Z

    if-eqz v3, :cond_11

    if-eqz v13, :cond_11

    .line 180
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->seekToUs(J)J

    .line 182
    const/4 v10, 0x0

    :goto_d
    move-object/from16 v0, p1

    array-length v3, v0

    if-ge v10, v3, :cond_11

    .line 183
    aget-object v3, p3, v10

    if-eqz v3, :cond_10

    .line 184
    const/4 v3, 0x1

    aput-boolean v3, p4, v10

    .line 182
    :cond_10
    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    .line 188
    :cond_11
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->seenFirstTrackSelection:Z

    .line 189
    return-wide p5
.end method
