.class final Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaPeriodHolder"
.end annotation


# instance fields
.field public hasEnabledTracks:Z

.field public index:I

.field public isLast:Z

.field private final loadControl:Lorg/telegram/messenger/exoplayer2/LoadControl;

.field public final mayRetainStreamFlags:[Z

.field public final mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

.field private final mediaSource:Lorg/telegram/messenger/exoplayer2/source/MediaSource;

.field public needsContinueLoading:Z

.field public next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

.field private periodTrackSelectorResult:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;

.field public prepared:Z

.field private final rendererCapabilities:[Lorg/telegram/messenger/exoplayer2/RendererCapabilities;

.field public final rendererPositionOffsetUs:J

.field private final renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

.field public final sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/SampleStream;

.field public startPositionUs:J

.field private final trackSelector:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;

.field public trackSelectorResult:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;

.field public final uid:Ljava/lang/Object;


# direct methods
.method public constructor <init>([Lorg/telegram/messenger/exoplayer2/Renderer;[Lorg/telegram/messenger/exoplayer2/RendererCapabilities;JLorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;Lorg/telegram/messenger/exoplayer2/LoadControl;Lorg/telegram/messenger/exoplayer2/source/MediaSource;Ljava/lang/Object;IZJ)V
    .locals 1
    .param p1, "renderers"    # [Lorg/telegram/messenger/exoplayer2/Renderer;
    .param p2, "rendererCapabilities"    # [Lorg/telegram/messenger/exoplayer2/RendererCapabilities;
    .param p3, "rendererPositionOffsetUs"    # J
    .param p5, "trackSelector"    # Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;
    .param p6, "loadControl"    # Lorg/telegram/messenger/exoplayer2/LoadControl;
    .param p7, "mediaSource"    # Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    .param p8, "periodUid"    # Ljava/lang/Object;
    .param p9, "periodIndex"    # I
    .param p10, "isLastPeriod"    # Z
    .param p11, "startPositionUs"    # J

    .prologue
    .line 1459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1460
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    .line 1461
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->rendererCapabilities:[Lorg/telegram/messenger/exoplayer2/RendererCapabilities;

    .line 1462
    iput-wide p3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->rendererPositionOffsetUs:J

    .line 1463
    iput-object p5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelector:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;

    .line 1464
    iput-object p6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->loadControl:Lorg/telegram/messenger/exoplayer2/LoadControl;

    .line 1465
    iput-object p7, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaSource:Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    .line 1466
    invoke-static {p8}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->uid:Ljava/lang/Object;

    .line 1467
    iput p9, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    .line 1468
    iput-boolean p10, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->isLast:Z

    .line 1469
    iput-wide p11, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->startPositionUs:J

    .line 1470
    array-length v0, p1

    new-array v0, v0, [Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    .line 1471
    array-length v0, p1

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mayRetainStreamFlags:[Z

    .line 1472
    invoke-interface {p6}, Lorg/telegram/messenger/exoplayer2/LoadControl;->getAllocator()Lorg/telegram/messenger/exoplayer2/upstream/Allocator;

    move-result-object v0

    invoke-interface {p7, p9, v0, p11, p12}, Lorg/telegram/messenger/exoplayer2/source/MediaSource;->createPeriod(ILorg/telegram/messenger/exoplayer2/upstream/Allocator;J)Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    .line 1474
    return-void
.end method


# virtual methods
.method public getRendererOffset()J
    .locals 4

    .prologue
    .line 1485
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->rendererPositionOffsetUs:J

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->startPositionUs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public handlePrepared()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 1499
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    .line 1500
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->selectTracks()Z

    .line 1501
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->startPositionUs:J

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->updatePeriodTrackSelection(JZ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->startPositionUs:J

    .line 1502
    return-void
.end method

.method public isFullyBuffered()Z
    .locals 4

    .prologue
    .line 1494
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->hasEnabledTracks:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    .line 1495
    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1494
    :goto_0
    return v0

    .line 1495
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 1550
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaSource:Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer2/source/MediaSource;->releasePeriod(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1555
    :goto_0
    return-void

    .line 1551
    :catch_0
    move-exception v0

    .line 1553
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "ExoPlayerImplInternal"

    const-string/jumbo v2, "Period release failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public selectTracks()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 1505
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelector:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->rendererCapabilities:[Lorg/telegram/messenger/exoplayer2/RendererCapabilities;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    .line 1506
    invoke-interface {v3}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->getTrackGroups()Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    move-result-object v3

    .line 1505
    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;->selectTracks([Lorg/telegram/messenger/exoplayer2/RendererCapabilities;Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;)Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v0

    .line 1507
    .local v0, "selectorResult":Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->periodTrackSelectorResult:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;->isEquivalent(Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1508
    const/4 v1, 0x0

    .line 1511
    :goto_0
    return v1

    .line 1510
    :cond_0
    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelectorResult:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;

    .line 1511
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setIndex(IZ)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "isLast"    # Z

    .prologue
    .line 1489
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    .line 1490
    iput-boolean p2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->isLast:Z

    .line 1491
    return-void
.end method

.method public toPeriodTime(J)J
    .locals 3
    .param p1, "rendererTimeUs"    # J

    .prologue
    .line 1481
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v0

    sub-long v0, p1, v0

    return-wide v0
.end method

.method public toRendererTime(J)J
    .locals 3
    .param p1, "periodTimeUs"    # J

    .prologue
    .line 1477
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v0

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public updatePeriodTrackSelection(JZ)J
    .locals 3
    .param p1, "positionUs"    # J
    .param p3, "forceRecreateStreams"    # Z

    .prologue
    .line 1515
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v0, v0

    new-array v0, v0, [Z

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->updatePeriodTrackSelection(JZ[Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public updatePeriodTrackSelection(JZ[Z)J
    .locals 11
    .param p1, "positionUs"    # J
    .param p3, "forceRecreateStreams"    # Z
    .param p4, "streamResetFlags"    # [Z

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1521
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelectorResult:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v8, v1, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;->selections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    .line 1522
    .local v8, "trackSelections":Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, v8, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;->length:I

    if-ge v0, v1, :cond_1

    .line 1523
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mayRetainStreamFlags:[Z

    if-nez p3, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelectorResult:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->periodTrackSelectorResult:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;

    .line 1524
    invoke-virtual {v1, v3, v0}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;->isEquivalent(Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v9

    :goto_1
    aput-boolean v1, v2, v0

    .line 1522
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v10

    .line 1524
    goto :goto_1

    .line 1528
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    invoke-virtual {v8}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;->getAll()[Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mayRetainStreamFlags:[Z

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    move-object v5, p4

    move-wide v6, p1

    invoke-interface/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->selectTracks([Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;[Z[Lorg/telegram/messenger/exoplayer2/source/SampleStream;[ZJ)J

    move-result-wide p1

    .line 1530
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelectorResult:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->periodTrackSelectorResult:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;

    .line 1533
    iput-boolean v10, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->hasEnabledTracks:Z

    .line 1534
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 1535
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    .line 1536
    invoke-virtual {v8, v0}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    move-result-object v1

    if-eqz v1, :cond_2

    move v1, v9

    :goto_3
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1537
    iput-boolean v9, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->hasEnabledTracks:Z

    .line 1534
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v1, v10

    .line 1536
    goto :goto_3

    .line 1539
    :cond_3
    invoke-virtual {v8, v0}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v9

    :goto_5
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    goto :goto_4

    :cond_4
    move v1, v10

    goto :goto_5

    .line 1544
    :cond_5
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->loadControl:Lorg/telegram/messenger/exoplayer2/LoadControl;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelectorResult:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;->groups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    invoke-interface {v1, v2, v3, v8}, Lorg/telegram/messenger/exoplayer2/LoadControl;->onTracksSelected([Lorg/telegram/messenger/exoplayer2/Renderer;Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;)V

    .line 1545
    return-wide p1
.end method
