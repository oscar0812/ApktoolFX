.class final Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;
.implements Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector$InvalidationListener;
.implements Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;,
        Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;,
        Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SourceInfo;,
        Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;
    }
.end annotation


# static fields
.field private static final IDLE_INTERVAL_MS:I = 0x3e8

.field private static final MAXIMUM_BUFFER_AHEAD_PERIODS:I = 0x64

.field private static final MSG_CUSTOM:I = 0xb

.field private static final MSG_DO_SOME_WORK:I = 0x2

.field public static final MSG_ERROR:I = 0x8

.field public static final MSG_LOADING_CHANGED:I = 0x2

.field private static final MSG_PERIOD_PREPARED:I = 0x8

.field public static final MSG_PLAYBACK_PARAMETERS_CHANGED:I = 0x7

.field public static final MSG_POSITION_DISCONTINUITY:I = 0x5

.field private static final MSG_PREPARE:I = 0x0

.field public static final MSG_PREPARE_ACK:I = 0x0

.field private static final MSG_REFRESH_SOURCE_INFO:I = 0x7

.field private static final MSG_RELEASE:I = 0x6

.field public static final MSG_SEEK_ACK:I = 0x4

.field private static final MSG_SEEK_TO:I = 0x3

.field private static final MSG_SET_PLAYBACK_PARAMETERS:I = 0x4

.field private static final MSG_SET_PLAY_WHEN_READY:I = 0x1

.field private static final MSG_SOURCE_CONTINUE_LOADING_REQUESTED:I = 0x9

.field public static final MSG_SOURCE_INFO_REFRESHED:I = 0x6

.field public static final MSG_STATE_CHANGED:I = 0x1

.field private static final MSG_STOP:I = 0x5

.field public static final MSG_TRACKS_CHANGED:I = 0x3

.field private static final MSG_TRACK_SELECTION_INVALIDATED:I = 0xa

.field private static final PREPARING_SOURCE_INTERVAL_MS:I = 0xa

.field private static final RENDERER_TIMESTAMP_OFFSET_US:I = 0x3938700

.field private static final RENDERING_INTERVAL_MS:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ExoPlayerImplInternal"


# instance fields
.field private customMessagesProcessed:I

.field private customMessagesSent:I

.field private elapsedRealtimeUs:J

.field private enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

.field private final eventHandler:Landroid/os/Handler;

.field private final handler:Landroid/os/Handler;

.field private final internalPlaybackThread:Landroid/os/HandlerThread;

.field private isLoading:Z

.field private final loadControl:Lorg/telegram/messenger/exoplayer2/LoadControl;

.field private loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

.field private mediaSource:Lorg/telegram/messenger/exoplayer2/source/MediaSource;

.field private pendingInitialSeekCount:I

.field private pendingSeekPosition:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;

.field private final period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

.field private playWhenReady:Z

.field private playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

.field private playbackParameters:Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

.field private final player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

.field private playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

.field private readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

.field private rebuffering:Z

.field private released:Z

.field private final rendererCapabilities:[Lorg/telegram/messenger/exoplayer2/RendererCapabilities;

.field private rendererMediaClock:Lorg/telegram/messenger/exoplayer2/util/MediaClock;

.field private rendererMediaClockSource:Lorg/telegram/messenger/exoplayer2/Renderer;

.field private rendererPositionUs:J

.field private final renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

.field private final standaloneMediaClock:Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;

.field private state:I

.field private timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

.field private final trackSelector:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;

.field private final window:Lorg/telegram/messenger/exoplayer2/Timeline$Window;


# direct methods
.method public constructor <init>([Lorg/telegram/messenger/exoplayer2/Renderer;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;Lorg/telegram/messenger/exoplayer2/LoadControl;ZLandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;Lorg/telegram/messenger/exoplayer2/ExoPlayer;)V
    .locals 4
    .param p1, "renderers"    # [Lorg/telegram/messenger/exoplayer2/Renderer;
    .param p2, "trackSelector"    # Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;
    .param p3, "loadControl"    # Lorg/telegram/messenger/exoplayer2/LoadControl;
    .param p4, "playWhenReady"    # Z
    .param p5, "eventHandler"    # Landroid/os/Handler;
    .param p6, "playbackInfo"    # Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;
    .param p7, "player"    # Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    .line 176
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->trackSelector:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;

    .line 177
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadControl:Lorg/telegram/messenger/exoplayer2/LoadControl;

    .line 178
    iput-boolean p4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playWhenReady:Z

    .line 179
    iput-object p5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    .line 180
    const/4 v1, 0x1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->state:I

    .line 181
    iput-object p6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 182
    iput-object p7, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    .line 184
    array-length v1, p1

    new-array v1, v1, [Lorg/telegram/messenger/exoplayer2/RendererCapabilities;

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererCapabilities:[Lorg/telegram/messenger/exoplayer2/RendererCapabilities;

    .line 185
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 186
    aget-object v1, p1, v0

    invoke-interface {v1, v0}, Lorg/telegram/messenger/exoplayer2/Renderer;->setIndex(I)V

    .line 187
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererCapabilities:[Lorg/telegram/messenger/exoplayer2/RendererCapabilities;

    aget-object v2, p1, v0

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/Renderer;->getCapabilities()Lorg/telegram/messenger/exoplayer2/RendererCapabilities;

    move-result-object v2

    aput-object v2, v1, v0

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    :cond_0
    new-instance v1, Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;

    invoke-direct {v1}, Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;

    .line 190
    const/4 v1, 0x0

    new-array v1, v1, [Lorg/telegram/messenger/exoplayer2/Renderer;

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    .line 191
    new-instance v1, Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    invoke-direct {v1}, Lorg/telegram/messenger/exoplayer2/Timeline$Window;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->window:Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    .line 192
    new-instance v1, Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    invoke-direct {v1}, Lorg/telegram/messenger/exoplayer2/Timeline$Period;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    .line 193
    invoke-virtual {p2, p0}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;->init(Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector$InvalidationListener;)V

    .line 194
    sget-object v1, Lorg/telegram/messenger/exoplayer2/PlaybackParameters;->DEFAULT:Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackParameters:Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    .line 198
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "ExoPlayerImplInternal:Handler"

    const/16 v3, -0x10

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    .line 200
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 201
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    .line 202
    return-void
.end method

.method private doSomeWork()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 459
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 460
    .local v8, "operationStartTimeMs":J
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->updatePeriods()V

    .line 461
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v15, :cond_0

    .line 463
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->maybeThrowPeriodPrepareError()V

    .line 464
    const-wide/16 v16, 0xa

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v8, v9, v1, v2}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->scheduleNextWork(JJ)V

    .line 550
    :goto_0
    return-void

    .line 468
    :cond_0
    const-string/jumbo v15, "doSomeWork"

    invoke-static {v15}, Lorg/telegram/messenger/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 470
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->updatePlaybackPositions()V

    .line 471
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v15, v15, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    move-wide/from16 v16, v0

    invoke-interface/range {v15 .. v17}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->discardBuffer(J)V

    .line 473
    const/4 v4, 0x1

    .line 474
    .local v4, "allRenderersEnded":Z
    const/4 v5, 0x1

    .line 475
    .local v5, "allRenderersReadyOrEnded":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/4 v15, 0x0

    :goto_1
    move/from16 v0, v17

    if-ge v15, v0, :cond_6

    aget-object v11, v16, v15

    .line 479
    .local v11, "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->elapsedRealtimeUs:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v18

    move-wide/from16 v2, v20

    invoke-interface {v11, v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/Renderer;->render(JJ)V

    .line 480
    if-eqz v4, :cond_3

    invoke-interface {v11}, Lorg/telegram/messenger/exoplayer2/Renderer;->isEnded()Z

    move-result v18

    if-eqz v18, :cond_3

    const/4 v4, 0x1

    .line 483
    :goto_2
    invoke-interface {v11}, Lorg/telegram/messenger/exoplayer2/Renderer;->isReady()Z

    move-result v18

    if-nez v18, :cond_1

    invoke-interface {v11}, Lorg/telegram/messenger/exoplayer2/Renderer;->isEnded()Z

    move-result v18

    if-eqz v18, :cond_4

    :cond_1
    const/4 v14, 0x1

    .line 484
    .local v14, "rendererReadyOrEnded":Z
    :goto_3
    if-nez v14, :cond_2

    .line 485
    invoke-interface {v11}, Lorg/telegram/messenger/exoplayer2/Renderer;->maybeThrowStreamError()V

    .line 487
    :cond_2
    if-eqz v5, :cond_5

    if-eqz v14, :cond_5

    const/4 v5, 0x1

    .line 475
    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 480
    .end local v14    # "rendererReadyOrEnded":Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 483
    :cond_4
    const/4 v14, 0x0

    goto :goto_3

    .line 487
    .restart local v14    # "rendererReadyOrEnded":Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_4

    .line 490
    .end local v11    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    .end local v14    # "rendererReadyOrEnded":Z
    :cond_6
    if-nez v5, :cond_7

    .line 491
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->maybeThrowPeriodPrepareError()V

    .line 495
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lorg/telegram/messenger/exoplayer2/util/MediaClock;

    if-eqz v15, :cond_8

    .line 496
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lorg/telegram/messenger/exoplayer2/util/MediaClock;

    invoke-interface {v15}, Lorg/telegram/messenger/exoplayer2/util/MediaClock;->getPlaybackParameters()Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    move-result-object v10

    .line 497
    .local v10, "playbackParameters":Lorg/telegram/messenger/exoplayer2/PlaybackParameters;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackParameters:Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    invoke-virtual {v10, v15}, Lorg/telegram/messenger/exoplayer2/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    .line 500
    move-object/from16 v0, p0

    iput-object v10, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackParameters:Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    .line 501
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lorg/telegram/messenger/exoplayer2/util/MediaClock;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;->synchronize(Lorg/telegram/messenger/exoplayer2/util/MediaClock;)V

    .line 502
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/16 v16, 0x7

    move/from16 v0, v16

    invoke-virtual {v15, v0, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    .line 503
    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V

    .line 507
    .end local v10    # "playbackParameters":Lorg/telegram/messenger/exoplayer2/PlaybackParameters;
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-result-object v15

    .line 508
    invoke-virtual {v15}, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v12

    .line 509
    .local v12, "playingPeriodDurationUs":J
    if-eqz v4, :cond_b

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v15, v12, v16

    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v0, v15, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    move-wide/from16 v16, v0

    cmp-long v15, v12, v16

    if-gtz v15, :cond_b

    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v15, v15, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->isLast:Z

    if-eqz v15, :cond_b

    .line 513
    const/4 v15, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 514
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->stopRenderers()V

    .line 535
    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->state:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_10

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/4 v15, 0x0

    :goto_6
    move/from16 v0, v17

    if-ge v15, v0, :cond_10

    aget-object v11, v16, v15

    .line 537
    .restart local v11    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    invoke-interface {v11}, Lorg/telegram/messenger/exoplayer2/Renderer;->maybeThrowStreamError()V

    .line 536
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 515
    .end local v11    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    :cond_b
    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->state:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_e

    .line 516
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v15, v15

    if-lez v15, :cond_d

    if-eqz v5, :cond_c

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rebuffering:Z

    .line 517
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->haveSufficientBuffer(Z)Z

    move-result v15

    if-eqz v15, :cond_c

    const/4 v6, 0x1

    .line 519
    .local v6, "isNewlyReady":Z
    :goto_7
    if-eqz v6, :cond_a

    .line 520
    const/4 v15, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 521
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playWhenReady:Z

    if-eqz v15, :cond_a

    .line 522
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->startRenderers()V

    goto :goto_5

    .line 517
    .end local v6    # "isNewlyReady":Z
    :cond_c
    const/4 v6, 0x0

    goto :goto_7

    .line 518
    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->isTimelineReady(J)Z

    move-result v6

    goto :goto_7

    .line 525
    :cond_e
    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->state:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    .line 526
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v15, v15

    if-lez v15, :cond_f

    move v7, v5

    .line 528
    .local v7, "isStillReady":Z
    :goto_8
    if-nez v7, :cond_a

    .line 529
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playWhenReady:Z

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rebuffering:Z

    .line 530
    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 531
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->stopRenderers()V

    goto/16 :goto_5

    .line 527
    .end local v7    # "isStillReady":Z
    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->isTimelineReady(J)Z

    move-result v7

    goto :goto_8

    .line 541
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playWhenReady:Z

    if-eqz v15, :cond_11

    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->state:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-eq v15, v0, :cond_12

    :cond_11
    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->state:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_13

    .line 542
    :cond_12
    const-wide/16 v16, 0xa

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v8, v9, v1, v2}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->scheduleNextWork(JJ)V

    .line 549
    :goto_9
    invoke-static {}, Lorg/telegram/messenger/exoplayer2/util/TraceUtil;->endSection()V

    goto/16 :goto_0

    .line 543
    :cond_13
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v15, v15

    if-eqz v15, :cond_14

    .line 544
    const-wide/16 v16, 0x3e8

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v8, v9, v1, v2}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->scheduleNextWork(JJ)V

    goto :goto_9

    .line 546
    :cond_14
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_9
.end method

.method private enableRenderers([ZI)V
    .locals 16
    .param p1, "rendererWasEnabledFlags"    # [Z
    .param p2, "enabledRendererCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 1387
    move/from16 v0, p2

    new-array v4, v0, [Lorg/telegram/messenger/exoplayer2/Renderer;

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    .line 1388
    const/16 p2, 0x0

    .line 1389
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v4, v4

    if-ge v11, v4, :cond_7

    .line 1390
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    aget-object v1, v4, v11

    .line 1391
    .local v1, "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelectorResult:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;->selections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    invoke-virtual {v4, v11}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    move-result-object v14

    .line 1392
    .local v14, "newSelection":Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    if-eqz v14, :cond_6

    .line 1393
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    add-int/lit8 v10, p2, 0x1

    .end local p2    # "enabledRendererCount":I
    .local v10, "enabledRendererCount":I
    aput-object v1, v4, p2

    .line 1394
    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/Renderer;->getState()I

    move-result v4

    if-nez v4, :cond_5

    .line 1395
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelectorResult:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;->rendererConfigurations:[Lorg/telegram/messenger/exoplayer2/RendererConfiguration;

    aget-object v2, v4, v11

    .line 1398
    .local v2, "rendererConfiguration":Lorg/telegram/messenger/exoplayer2/RendererConfiguration;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playWhenReady:Z

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->state:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    const/4 v15, 0x1

    .line 1400
    .local v15, "playing":Z
    :goto_1
    aget-boolean v4, p1, v11

    if-nez v4, :cond_1

    if-eqz v15, :cond_1

    const/4 v7, 0x1

    .line 1402
    .local v7, "joining":Z
    :goto_2
    invoke-interface {v14}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v4

    new-array v3, v4, [Lorg/telegram/messenger/exoplayer2/Format;

    .line 1403
    .local v3, "formats":[Lorg/telegram/messenger/exoplayer2/Format;
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_3
    array-length v4, v3

    if-ge v12, v4, :cond_2

    .line 1404
    invoke-interface {v14, v12}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getFormat(I)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v4

    aput-object v4, v3, v12

    .line 1403
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 1398
    .end local v3    # "formats":[Lorg/telegram/messenger/exoplayer2/Format;
    .end local v7    # "joining":Z
    .end local v12    # "j":I
    .end local v15    # "playing":Z
    :cond_0
    const/4 v15, 0x0

    goto :goto_1

    .line 1400
    .restart local v15    # "playing":Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_2

    .line 1407
    .restart local v3    # "formats":[Lorg/telegram/messenger/exoplayer2/Format;
    .restart local v7    # "joining":Z
    .restart local v12    # "j":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    aget-object v4, v4, v11

    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1408
    invoke-virtual {v8}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v8

    .line 1407
    invoke-interface/range {v1 .. v9}, Lorg/telegram/messenger/exoplayer2/Renderer;->enable(Lorg/telegram/messenger/exoplayer2/RendererConfiguration;[Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/source/SampleStream;JZJ)V

    .line 1409
    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/Renderer;->getMediaClock()Lorg/telegram/messenger/exoplayer2/util/MediaClock;

    move-result-object v13

    .line 1410
    .local v13, "mediaClock":Lorg/telegram/messenger/exoplayer2/util/MediaClock;
    if-eqz v13, :cond_4

    .line 1411
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lorg/telegram/messenger/exoplayer2/util/MediaClock;

    if-eqz v4, :cond_3

    .line 1412
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Multiple renderer media clocks enabled."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;)Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    move-result-object v4

    throw v4

    .line 1415
    :cond_3
    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lorg/telegram/messenger/exoplayer2/util/MediaClock;

    .line 1416
    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lorg/telegram/messenger/exoplayer2/Renderer;

    .line 1417
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lorg/telegram/messenger/exoplayer2/util/MediaClock;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackParameters:Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    invoke-interface {v4, v5}, Lorg/telegram/messenger/exoplayer2/util/MediaClock;->setPlaybackParameters(Lorg/telegram/messenger/exoplayer2/PlaybackParameters;)Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    .line 1420
    :cond_4
    if-eqz v15, :cond_5

    .line 1421
    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/Renderer;->start()V

    .end local v2    # "rendererConfiguration":Lorg/telegram/messenger/exoplayer2/RendererConfiguration;
    .end local v3    # "formats":[Lorg/telegram/messenger/exoplayer2/Format;
    .end local v7    # "joining":Z
    .end local v12    # "j":I
    .end local v13    # "mediaClock":Lorg/telegram/messenger/exoplayer2/util/MediaClock;
    .end local v15    # "playing":Z
    :cond_5
    move/from16 p2, v10

    .line 1389
    .end local v10    # "enabledRendererCount":I
    .restart local p2    # "enabledRendererCount":I
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 1426
    .end local v1    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    .end local v14    # "newSelection":Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    :cond_7
    return-void
.end method

.method private ensureStopped(Lorg/telegram/messenger/exoplayer2/Renderer;)V
    .locals 2
    .param p1, "renderer"    # Lorg/telegram/messenger/exoplayer2/Renderer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 749
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/Renderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 750
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/Renderer;->stop()V

    .line 752
    :cond_0
    return-void
.end method

.method private getPeriodPosition(IJ)Landroid/util/Pair;
    .locals 2
    .param p1, "windowIndex"    # I
    .param p2, "windowPositionUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1084
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->getPeriodPosition(Lorg/telegram/messenger/exoplayer2/Timeline;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private getPeriodPosition(Lorg/telegram/messenger/exoplayer2/Timeline;IJ)Landroid/util/Pair;
    .locals 9
    .param p1, "timeline"    # Lorg/telegram/messenger/exoplayer2/Timeline;
    .param p2, "windowIndex"    # I
    .param p3, "windowPositionUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/Timeline;",
            "IJ)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1093
    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->getPeriodPosition(Lorg/telegram/messenger/exoplayer2/Timeline;IJJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private getPeriodPosition(Lorg/telegram/messenger/exoplayer2/Timeline;IJJ)Landroid/util/Pair;
    .locals 13
    .param p1, "timeline"    # Lorg/telegram/messenger/exoplayer2/Timeline;
    .param p2, "windowIndex"    # I
    .param p3, "windowPositionUs"    # J
    .param p5, "defaultPositionProjectionUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/Timeline;",
            "IJJ)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1111
    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/Timeline;->getWindowCount()I

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkIndex(III)I

    .line 1112
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->window:Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    const/4 v3, 0x0

    move-object v0, p1

    move v1, p2

    move-wide/from16 v4, p5

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/Timeline;->getWindow(ILorg/telegram/messenger/exoplayer2/Timeline$Window;ZJ)Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    .line 1113
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    .line 1114
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->window:Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->getDefaultPositionUs()J

    move-result-wide p3

    .line 1115
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    .line 1116
    const/4 v0, 0x0

    .line 1127
    :goto_0
    return-object v0

    .line 1119
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->window:Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    iget v8, v0, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    .line 1120
    .local v8, "periodIndex":I
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->window:Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->getPositionInFirstPeriodUs()J

    move-result-wide v0

    add-long v10, v0, p3

    .line 1121
    .local v10, "periodPositionUs":J
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    invoke-virtual {p1, v8, v0}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v6

    .line 1122
    .local v6, "periodDurationUs":J
    :goto_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v6, v0

    if-eqz v0, :cond_1

    cmp-long v0, v10, v6

    if-ltz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->window:Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    if-ge v8, v0, :cond_1

    .line 1124
    sub-long/2addr v10, v6

    .line 1125
    add-int/lit8 v8, v8, 0x1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    invoke-virtual {p1, v8, v0}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v6

    goto :goto_1

    .line 1127
    :cond_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0
.end method

.method private handleContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V
    .locals 1
    .param p1, "period"    # Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    .prologue
    .line 1316
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    if-eq v0, p1, :cond_1

    .line 1321
    :cond_0
    :goto_0
    return-void

    .line 1320
    :cond_1
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    goto :goto_0
.end method

.method private handlePeriodPrepared(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V
    .locals 2
    .param p1, "period"    # Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 1301
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    if-eq v0, p1, :cond_1

    .line 1313
    :cond_0
    :goto_0
    return-void

    .line 1305
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->handlePrepared()V

    .line 1306
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v0, :cond_2

    .line 1308
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1309
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->startPositionUs:J

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 1310
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->setPlayingPeriodHolder(Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V

    .line 1312
    :cond_2
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    goto :goto_0
.end method

.method private handleSourceInfoRefreshEndedPlayback(Ljava/lang/Object;I)V
    .locals 4
    .param p1, "manifest"    # Ljava/lang/Object;
    .param p2, "processedInitialSeekCount"    # I

    .prologue
    const/4 v1, 0x0

    .line 999
    new-instance v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 1000
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->notifySourceInfoRefresh(Ljava/lang/Object;I)V

    .line 1002
    new-instance v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 1003
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 1005
    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->resetInternal(Z)V

    .line 1006
    return-void
.end method

.method private handleSourceInfoRefreshed(Landroid/util/Pair;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Lorg/telegram/messenger/exoplayer2/Timeline;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 883
    .local p1, "timelineAndManifest":Landroid/util/Pair;, "Landroid/util/Pair<Lorg/telegram/messenger/exoplayer2/Timeline;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    .line 884
    .local v9, "oldTimeline":Lorg/telegram/messenger/exoplayer2/Timeline;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lorg/telegram/messenger/exoplayer2/Timeline;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    .line 885
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 887
    .local v6, "manifest":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 888
    .local v16, "processedInitialSeekCount":I
    if-nez v9, :cond_1

    .line 889
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekCount:I

    move/from16 v18, v0

    if-lez v18, :cond_2

    .line 890
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->pendingSeekPosition:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->resolveSeekPosition(Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;)Landroid/util/Pair;

    move-result-object v14

    .line 891
    .local v14, "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekCount:I

    move/from16 v16, v0

    .line 892
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekCount:I

    .line 893
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->pendingSeekPosition:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    .line 894
    if-nez v14, :cond_0

    .line 897
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v6, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handleSourceInfoRefreshEndedPlayback(Ljava/lang/Object;I)V

    .line 994
    .end local v14    # "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :goto_0
    return-void

    .line 900
    .restart local v14    # "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :cond_0
    new-instance v19, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-object v0, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v20

    iget-object v0, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/Long;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 911
    .end local v14    # "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 913
    .local v12, "periodHolder":Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    :goto_2
    if-nez v12, :cond_5

    .line 915
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v6, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->notifySourceInfoRefresh(Ljava/lang/Object;I)V

    goto :goto_0

    .line 901
    .end local v12    # "periodHolder":Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->startPositionUs:J

    move-wide/from16 v18, v0

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v18, v18, v20

    if-nez v18, :cond_1

    .line 902
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/exoplayer2/Timeline;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 903
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v6, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handleSourceInfoRefreshEndedPlayback(Ljava/lang/Object;I)V

    goto :goto_0

    .line 906
    :cond_3
    const/16 v18, 0x0

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->getPeriodPosition(IJ)Landroid/util/Pair;

    move-result-object v4

    .line 907
    .local v4, "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    new-instance v19, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v20

    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/Long;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    goto :goto_1

    .line 911
    .end local v4    # "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    goto :goto_2

    .line 919
    .restart local v12    # "periodHolder":Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    move-object/from16 v18, v0

    iget-object v0, v12, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->uid:Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lorg/telegram/messenger/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v13

    .line 920
    .local v13, "periodIndex":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v13, v0, :cond_9

    .line 923
    iget v0, v12, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v9, v2}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->resolveSubsequentPeriod(ILorg/telegram/messenger/exoplayer2/Timeline;Lorg/telegram/messenger/exoplayer2/Timeline;)I

    move-result v7

    .line 924
    .local v7, "newPeriodIndex":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v7, v0, :cond_6

    .line 926
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v6, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handleSourceInfoRefreshEndedPlayback(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 930
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-object/from16 v19, v0

    .line 931
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v7, v1}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->windowIndex:I

    move/from16 v18, v0

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    .line 930
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->getPeriodPosition(IJ)Landroid/util/Pair;

    move-result-object v4

    .line 932
    .restart local v4    # "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 933
    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/Long;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 934
    .local v10, "newPositionUs":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v7, v1, v2}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;Z)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    .line 937
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    .line 938
    .local v8, "newPeriodUid":Ljava/lang/Object;
    const/16 v18, -0x1

    move/from16 v0, v18

    iput v0, v12, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    .line 939
    :goto_3
    iget-object v0, v12, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    .line 940
    iget-object v12, v12, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 941
    iget-object v0, v12, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->uid:Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    move/from16 v18, v7

    :goto_4
    move/from16 v0, v18

    iput v0, v12, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    goto :goto_3

    :cond_7
    const/16 v18, -0x1

    goto :goto_4

    .line 944
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v10, v11}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->seekToPeriodPosition(IJ)J

    move-result-wide v10

    .line 945
    new-instance v18, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    move-object/from16 v0, v18

    invoke-direct {v0, v7, v10, v11}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 946
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v6, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->notifySourceInfoRefresh(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 951
    .end local v4    # "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .end local v7    # "newPeriodIndex":I
    .end local v8    # "newPeriodUid":Ljava/lang/Object;
    .end local v10    # "newPositionUs":J
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v13, v1}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    .line 952
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriodCount()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ne v13, v0, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->windowIndex:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->window:Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    move-object/from16 v20, v0

    .line 953
    invoke-virtual/range {v18 .. v20}, Lorg/telegram/messenger/exoplayer2/Timeline;->getWindow(ILorg/telegram/messenger/exoplayer2/Timeline$Window;)Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    move-result-object v18

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->isDynamic:Z

    move/from16 v18, v0

    if-nez v18, :cond_b

    const/4 v5, 0x1

    .line 954
    .local v5, "isLastPeriod":Z
    :goto_5
    invoke-virtual {v12, v13, v5}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->setIndex(IZ)V

    .line 955
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    if-ne v12, v0, :cond_c

    const/16 v17, 0x1

    .line 956
    .local v17, "seenReadingPeriod":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->periodIndex:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v13, v0, :cond_a

    .line 957
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->copyWithPeriodIndex(I)Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 962
    :cond_a
    :goto_7
    iget-object v0, v12, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v18, v0

    if-eqz v18, :cond_10

    .line 963
    move-object v15, v12

    .line 964
    .local v15, "previousPeriodHolder":Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    iget-object v12, v12, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 965
    add-int/lit8 v13, v13, 0x1

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v13, v1, v2}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;Z)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriodCount()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ne v13, v0, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->windowIndex:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->window:Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    move-object/from16 v20, v0

    .line 968
    invoke-virtual/range {v18 .. v20}, Lorg/telegram/messenger/exoplayer2/Timeline;->getWindow(ILorg/telegram/messenger/exoplayer2/Timeline$Window;)Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    move-result-object v18

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->isDynamic:Z

    move/from16 v18, v0

    if-nez v18, :cond_d

    const/4 v5, 0x1

    .line 969
    :goto_8
    iget-object v0, v12, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->uid:Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 971
    invoke-virtual {v12, v13, v5}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->setIndex(IZ)V

    .line 972
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    if-ne v12, v0, :cond_e

    const/16 v18, 0x1

    :goto_9
    or-int v17, v17, v18

    goto :goto_7

    .line 953
    .end local v5    # "isLastPeriod":Z
    .end local v15    # "previousPeriodHolder":Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    .end local v17    # "seenReadingPeriod":Z
    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_5

    .line 955
    .restart local v5    # "isLastPeriod":Z
    :cond_c
    const/16 v17, 0x0

    goto/16 :goto_6

    .line 968
    .restart local v15    # "previousPeriodHolder":Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    .restart local v17    # "seenReadingPeriod":Z
    :cond_d
    const/4 v5, 0x0

    goto :goto_8

    .line 972
    :cond_e
    const/16 v18, 0x0

    goto :goto_9

    .line 975
    :cond_f
    if-nez v17, :cond_11

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v13, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    .line 979
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v13, v1, v2}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->seekToPeriodPosition(IJ)J

    move-result-wide v10

    .line 980
    .restart local v10    # "newPositionUs":J
    new-instance v18, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    move-object/from16 v0, v18

    invoke-direct {v0, v13, v10, v11}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 993
    .end local v10    # "newPositionUs":J
    .end local v15    # "previousPeriodHolder":Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    :cond_10
    :goto_a
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v6, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->notifySourceInfoRefresh(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 984
    .restart local v15    # "previousPeriodHolder":Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    :cond_11
    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 987
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->releasePeriodHoldersFrom(Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V

    goto :goto_a
.end method

.method private haveSufficientBuffer(Z)Z
    .locals 6
    .param p1, "rebuffering"    # Z

    .prologue
    .line 854
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v2, v2, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v0, v2, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->startPositionUs:J

    .line 857
    .local v0, "loadingPeriodBufferedPositionUs":J
    :goto_0
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 858
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v2, v2, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->isLast:Z

    if-eqz v2, :cond_1

    .line 859
    const/4 v2, 0x1

    .line 864
    :goto_1
    return v2

    .line 854
    .end local v0    # "loadingPeriodBufferedPositionUs":J
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    .line 856
    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    goto :goto_0

    .line 861
    .restart local v0    # "loadingPeriodBufferedPositionUs":J
    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v3, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-result-object v2

    .line 862
    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v0

    .line 864
    :cond_2
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadControl:Lorg/telegram/messenger/exoplayer2/LoadControl;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 865
    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v4

    sub-long v4, v0, v4

    .line 864
    invoke-interface {v2, v4, v5, p1}, Lorg/telegram/messenger/exoplayer2/LoadControl;->shouldStartPlayback(JZ)Z

    move-result v2

    goto :goto_1
.end method

.method private isTimelineReady(J)Z
    .locals 3
    .param p1, "playingPeriodDurationUs"    # J

    .prologue
    .line 848
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeContinueLoading()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1324
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v3, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-nez v3, :cond_0

    const-wide/16 v6, 0x0

    .line 1326
    .local v6, "nextLoadPositionUs":J
    :goto_0
    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v3, v6, v8

    if-nez v3, :cond_1

    .line 1327
    invoke-direct {p0, v10}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->setIsLoading(Z)V

    .line 1340
    :goto_1
    return-void

    .line 1324
    .end local v6    # "nextLoadPositionUs":J
    :cond_0
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    .line 1325
    invoke-interface {v3}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->getNextLoadPositionUs()J

    move-result-wide v6

    goto :goto_0

    .line 1329
    .restart local v6    # "nextLoadPositionUs":J
    :cond_1
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v3, v8, v9}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v4

    .line 1330
    .local v4, "loadingPeriodPositionUs":J
    sub-long v0, v6, v4

    .line 1331
    .local v0, "bufferedDurationUs":J
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadControl:Lorg/telegram/messenger/exoplayer2/LoadControl;

    invoke-interface {v3, v0, v1}, Lorg/telegram/messenger/exoplayer2/LoadControl;->shouldContinueLoading(J)Z

    move-result v2

    .line 1332
    .local v2, "continueLoading":Z
    invoke-direct {p0, v2}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->setIsLoading(Z)V

    .line 1333
    if-eqz v2, :cond_2

    .line 1334
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iput-boolean v10, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->needsContinueLoading:Z

    .line 1335
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    invoke-interface {v3, v4, v5}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->continueLoading(J)Z

    goto :goto_1

    .line 1337
    :cond_2
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    const/4 v8, 0x1

    iput-boolean v8, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->needsContinueLoading:Z

    goto :goto_1
.end method

.method private maybeThrowPeriodPrepareError()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 870
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v1, v1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-ne v1, v2, :cond_1

    .line 872
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v0, v2, v1

    .line 873
    .local v0, "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/Renderer;->hasReadStreamToEnd()Z

    move-result v4

    if-nez v4, :cond_2

    .line 879
    .end local v0    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    :cond_1
    :goto_1
    return-void

    .line 872
    .restart local v0    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 877
    .end local v0    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->maybeThrowPrepareError()V

    goto :goto_1
.end method

.method private maybeUpdateLoadingPeriod()V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1228
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v3, :cond_1

    .line 1229
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget v0, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->periodIndex:I

    move/from16 v16, v0

    .line 1246
    .local v16, "newLoadingPeriodIndex":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriodCount()I

    move-result v3

    move/from16 v0, v16

    if-lt v0, v3, :cond_3

    .line 1248
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    invoke-interface {v3}, Lorg/telegram/messenger/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    .line 1298
    .end local v16    # "newLoadingPeriodIndex":I
    :cond_0
    :goto_1
    return-void

    .line 1231
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v0, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    move/from16 v22, v0

    .line 1232
    .local v22, "loadingPeriodIndex":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v3, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->isLast:Z

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->isFullyBuffered()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    .line 1233
    move/from16 v0, v22

    invoke-virtual {v3, v0, v4}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v8

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v8, v12

    if-eqz v3, :cond_0

    .line 1238
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v3, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    sub-int v3, v22, v3

    const/16 v4, 0x64

    if-eq v3, v4, :cond_0

    .line 1243
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v3, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    add-int/lit8 v16, v3, 0x1

    .restart local v16    # "newLoadingPeriodIndex":I
    goto :goto_0

    .line 1253
    .end local v22    # "loadingPeriodIndex":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v3, :cond_5

    .line 1254
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v0, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    move-wide/from16 v18, v0

    .line 1282
    .local v18, "newLoadingPeriodStartPositionUs":J
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v3, :cond_7

    const-wide/32 v8, 0x3938700

    add-long v10, v18, v8

    .line 1286
    .local v10, "rendererPositionOffsetUs":J
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    const/4 v6, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0, v4, v6}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;Z)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    .line 1287
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriodCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    iget v4, v4, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->windowIndex:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->window:Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    .line 1288
    invoke-virtual {v3, v4, v6}, Lorg/telegram/messenger/exoplayer2/Timeline;->getWindow(ILorg/telegram/messenger/exoplayer2/Timeline$Window;)Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->isDynamic:Z

    if-nez v3, :cond_8

    const/16 v17, 0x1

    .line 1289
    .local v17, "isLastPeriod":Z
    :goto_4
    new-instance v7, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererCapabilities:[Lorg/telegram/messenger/exoplayer2/RendererCapabilities;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->trackSelector:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadControl:Lorg/telegram/messenger/exoplayer2/LoadControl;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    iget-object v15, v3, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-direct/range {v7 .. v19}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;-><init>([Lorg/telegram/messenger/exoplayer2/Renderer;[Lorg/telegram/messenger/exoplayer2/RendererCapabilities;JLorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;Lorg/telegram/messenger/exoplayer2/LoadControl;Lorg/telegram/messenger/exoplayer2/source/MediaSource;Ljava/lang/Object;IZJ)V

    .line 1292
    .local v7, "newPeriodHolder":Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v3, :cond_4

    .line 1293
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iput-object v7, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1295
    :cond_4
    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1296
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    move-object/from16 v0, p0

    invoke-interface {v3, v0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->prepare(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;)V

    .line 1297
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->setIsLoading(Z)V

    goto/16 :goto_1

    .line 1256
    .end local v7    # "newPeriodHolder":Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    .end local v10    # "rendererPositionOffsetUs":J
    .end local v17    # "isLastPeriod":Z
    .end local v18    # "newLoadingPeriodStartPositionUs":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move/from16 v0, v16

    invoke-virtual {v3, v0, v4}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-result-object v3

    iget v5, v3, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->windowIndex:I

    .line 1257
    .local v5, "newLoadingWindowIndex":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->window:Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    .line 1258
    invoke-virtual {v3, v5, v4}, Lorg/telegram/messenger/exoplayer2/Timeline;->getWindow(ILorg/telegram/messenger/exoplayer2/Timeline$Window;)Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    move/from16 v0, v16

    if-eq v0, v3, :cond_6

    .line 1261
    const-wide/16 v18, 0x0

    .restart local v18    # "newLoadingPeriodStartPositionUs":J
    goto/16 :goto_2

    .line 1268
    .end local v18    # "newLoadingPeriodStartPositionUs":J
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v4, v4, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    .line 1269
    invoke-virtual {v3, v4, v6}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v12

    add-long/2addr v8, v12

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    sub-long v20, v8, v12

    .line 1271
    .local v20, "defaultPositionProjectionUs":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v8, 0x0

    .line 1272
    move-wide/from16 v0, v20

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    move-object/from16 v3, p0

    .line 1271
    invoke-direct/range {v3 .. v9}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->getPeriodPosition(Lorg/telegram/messenger/exoplayer2/Timeline;IJJ)Landroid/util/Pair;

    move-result-object v2

    .line 1273
    .local v2, "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    if-eqz v2, :cond_0

    .line 1277
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 1278
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .restart local v18    # "newLoadingPeriodStartPositionUs":J
    goto/16 :goto_2

    .line 1282
    .end local v2    # "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .end local v5    # "newLoadingWindowIndex":I
    .end local v20    # "defaultPositionProjectionUs":J
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1284
    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v4, v4, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    .line 1285
    invoke-virtual {v3, v4, v6}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v12

    add-long v10, v8, v12

    goto/16 :goto_3

    .line 1288
    .restart local v10    # "rendererPositionOffsetUs":J
    :cond_8
    const/16 v17, 0x0

    goto/16 :goto_4
.end method

.method private notifySourceInfoRefresh(Ljava/lang/Object;I)V
    .locals 5
    .param p1, "manifest"    # Ljava/lang/Object;
    .param p2, "processedInitialSeekCount"    # I

    .prologue
    .line 1009
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    new-instance v2, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SourceInfo;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-direct {v2, v3, p1, v4, p2}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SourceInfo;-><init>(Lorg/telegram/messenger/exoplayer2/Timeline;Ljava/lang/Object;Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;I)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1010
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1011
    return-void
.end method

.method private prepareInternal(Lorg/telegram/messenger/exoplayer2/source/MediaSource;Z)V
    .locals 6
    .param p1, "mediaSource"    # Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    .param p2, "resetPosition"    # Z

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 386
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 387
    invoke-direct {p0, v4}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->resetInternal(Z)V

    .line 388
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadControl:Lorg/telegram/messenger/exoplayer2/LoadControl;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/LoadControl;->onPrepared()V

    .line 389
    if-eqz p2, :cond_0

    .line 390
    new-instance v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 392
    :cond_0
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    .line 393
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {p1, v0, v4, p0}, Lorg/telegram/messenger/exoplayer2/source/MediaSource;->prepareSource(Lorg/telegram/messenger/exoplayer2/ExoPlayer;ZLorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;)V

    .line 394
    invoke-direct {p0, v5}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 395
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 396
    return-void
.end method

.method private releaseInternal()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 690
    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->resetInternal(Z)V

    .line 691
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadControl:Lorg/telegram/messenger/exoplayer2/LoadControl;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/LoadControl;->onReleased()V

    .line 692
    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 693
    monitor-enter p0

    .line 694
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->released:Z

    .line 695
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 696
    monitor-exit p0

    .line 697
    return-void

    .line 696
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private releasePeriodHoldersFrom(Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V
    .locals 0
    .param p1, "periodHolder"    # Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .prologue
    .line 1343
    :goto_0
    if-eqz p1, :cond_0

    .line 1344
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->release()V

    .line 1345
    iget-object p1, p1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    goto :goto_0

    .line 1347
    :cond_0
    return-void
.end method

.method private reselectTracksInternal()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 755
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v15, :cond_1

    .line 845
    :cond_0
    :goto_0
    return-void

    .line 760
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 761
    .local v6, "periodHolder":Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    const/4 v13, 0x1

    .line 763
    .local v13, "selectionsChangedForReadPeriod":Z
    :goto_1
    if-eqz v6, :cond_0

    iget-boolean v15, v6, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-eqz v15, :cond_0

    .line 767
    invoke-virtual {v6}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->selectTracks()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 778
    if-eqz v13, :cond_e

    .line 780
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_9

    const/4 v7, 0x1

    .line 781
    .local v7, "recreateStreams":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v15, v15, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->releasePeriodHoldersFrom(Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V

    .line 782
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 783
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 784
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 786
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v15, v15

    new-array v14, v15, [Z

    .line 787
    .local v14, "streamResetFlags":[Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v15, v0, v1, v7, v14}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->updatePeriodTrackSelection(JZ[Z)J

    move-result-wide v8

    .line 789
    .local v8, "periodPositionUs":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v0, v15, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    move-wide/from16 v16, v0

    cmp-long v15, v8, v16

    if-eqz v15, :cond_2

    .line 790
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iput-wide v8, v15, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    .line 791
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 794
    :cond_2
    const/4 v2, 0x0

    .line 795
    .local v2, "enabledRendererCount":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v15, v15

    new-array v11, v15, [Z

    .line 796
    .local v11, "rendererWasEnabledFlags":[Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v15, v15

    if-ge v3, v15, :cond_c

    .line 797
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    aget-object v10, v15, v3

    .line 798
    .local v10, "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    invoke-interface {v10}, Lorg/telegram/messenger/exoplayer2/Renderer;->getState()I

    move-result v15

    if-eqz v15, :cond_a

    const/4 v15, 0x1

    :goto_4
    aput-boolean v15, v11, v3

    .line 799
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v15, v15, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    aget-object v12, v15, v3

    .line 800
    .local v12, "sampleStream":Lorg/telegram/messenger/exoplayer2/source/SampleStream;
    if-eqz v12, :cond_3

    .line 801
    add-int/lit8 v2, v2, 0x1

    .line 803
    :cond_3
    aget-boolean v15, v11, v3

    if-eqz v15, :cond_6

    .line 804
    invoke-interface {v10}, Lorg/telegram/messenger/exoplayer2/Renderer;->getStream()Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    move-result-object v15

    if-eq v12, v15, :cond_b

    .line 806
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lorg/telegram/messenger/exoplayer2/Renderer;

    if-ne v10, v15, :cond_5

    .line 808
    if-nez v12, :cond_4

    .line 811
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lorg/telegram/messenger/exoplayer2/util/MediaClock;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;->synchronize(Lorg/telegram/messenger/exoplayer2/util/MediaClock;)V

    .line 813
    :cond_4
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lorg/telegram/messenger/exoplayer2/util/MediaClock;

    .line 814
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lorg/telegram/messenger/exoplayer2/Renderer;

    .line 816
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->ensureStopped(Lorg/telegram/messenger/exoplayer2/Renderer;)V

    .line 817
    invoke-interface {v10}, Lorg/telegram/messenger/exoplayer2/Renderer;->disable()V

    .line 796
    :cond_6
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 771
    .end local v2    # "enabledRendererCount":I
    .end local v3    # "i":I
    .end local v7    # "recreateStreams":Z
    .end local v8    # "periodPositionUs":J
    .end local v10    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    .end local v11    # "rendererWasEnabledFlags":[Z
    .end local v12    # "sampleStream":Lorg/telegram/messenger/exoplayer2/source/SampleStream;
    .end local v14    # "streamResetFlags":[Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-ne v6, v15, :cond_8

    .line 773
    const/4 v13, 0x0

    .line 775
    :cond_8
    iget-object v6, v6, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    goto/16 :goto_1

    .line 780
    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 798
    .restart local v2    # "enabledRendererCount":I
    .restart local v3    # "i":I
    .restart local v7    # "recreateStreams":Z
    .restart local v8    # "periodPositionUs":J
    .restart local v10    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    .restart local v11    # "rendererWasEnabledFlags":[Z
    .restart local v14    # "streamResetFlags":[Z
    :cond_a
    const/4 v15, 0x0

    goto :goto_4

    .line 818
    .restart local v12    # "sampleStream":Lorg/telegram/messenger/exoplayer2/source/SampleStream;
    :cond_b
    aget-boolean v15, v14, v3

    if-eqz v15, :cond_6

    .line 820
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-interface {v10, v0, v1}, Lorg/telegram/messenger/exoplayer2/Renderer;->resetPosition(J)V

    goto :goto_5

    .line 824
    .end local v10    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    .end local v12    # "sampleStream":Lorg/telegram/messenger/exoplayer2/source/SampleStream;
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/16 v16, 0x3

    iget-object v0, v6, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelectorResult:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    .line 825
    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V

    .line 826
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enableRenderers([ZI)V

    .line 842
    .end local v2    # "enabledRendererCount":I
    .end local v3    # "i":I
    .end local v7    # "recreateStreams":Z
    .end local v8    # "periodPositionUs":J
    .end local v11    # "rendererWasEnabledFlags":[Z
    .end local v14    # "streamResetFlags":[Z
    :cond_d
    :goto_6
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    .line 843
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->updatePlaybackPositions()V

    .line 844
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 829
    :cond_e
    move-object/from16 v0, p0

    iput-object v6, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 830
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v6, v15, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 831
    :goto_7
    if-eqz v6, :cond_f

    .line 832
    invoke-virtual {v6}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->release()V

    .line 833
    iget-object v6, v6, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    goto :goto_7

    .line 835
    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 836
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v15, v15, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-eqz v15, :cond_d

    .line 837
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v0, v15, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->startPositionUs:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    move-wide/from16 v18, v0

    .line 838
    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v18

    .line 837
    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 839
    .local v4, "loadingPeriodPositionUs":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v4, v5, v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->updatePeriodTrackSelection(JZ)J

    goto :goto_6
.end method

.method private resetInternal(Z)V
    .locals 9
    .param p1, "releaseMediaSource"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 700
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 701
    iput-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rebuffering:Z

    .line 702
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;->stop()V

    .line 703
    iput-object v8, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lorg/telegram/messenger/exoplayer2/util/MediaClock;

    .line 704
    iput-object v8, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lorg/telegram/messenger/exoplayer2/Renderer;

    .line 705
    const-wide/32 v4, 0x3938700

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 706
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v1, v4, v2

    .line 708
    .local v1, "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    :try_start_0
    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->ensureStopped(Lorg/telegram/messenger/exoplayer2/Renderer;)V

    .line 709
    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/Renderer;->disable()V
    :try_end_0
    .catch Lorg/telegram/messenger/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 710
    :catch_0
    move-exception v0

    .line 712
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    const-string/jumbo v6, "ExoPlayerImplInternal"

    const-string/jumbo v7, "Stop failed."

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 715
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    :cond_0
    new-array v2, v3, [Lorg/telegram/messenger/exoplayer2/Renderer;

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    .line 716
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    :goto_3
    invoke-direct {p0, v2}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->releasePeriodHoldersFrom(Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V

    .line 718
    iput-object v8, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 719
    iput-object v8, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 720
    iput-object v8, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 721
    invoke-direct {p0, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->setIsLoading(Z)V

    .line 722
    if-eqz p1, :cond_2

    .line 723
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    if-eqz v2, :cond_1

    .line 724
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/source/MediaSource;->releaseSource()V

    .line 725
    iput-object v8, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    .line 727
    :cond_1
    iput-object v8, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    .line 729
    :cond_2
    return-void

    .line 716
    :cond_3
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    goto :goto_3

    .line 710
    .restart local v1    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private resetRendererPosition(J)V
    .locals 7
    .param p1, "periodPositionUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 666
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v1, :cond_0

    const-wide/32 v2, 0x3938700

    add-long/2addr v2, p1

    .line 668
    :goto_0
    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 669
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;->setPositionUs(J)V

    .line 670
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 671
    .local v0, "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-interface {v0, v4, v5}, Lorg/telegram/messenger/exoplayer2/Renderer;->resetPosition(J)V

    .line 670
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 666
    .end local v0    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 668
    invoke-virtual {v1, p1, p2}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->toRendererTime(J)J

    move-result-wide v2

    goto :goto_0

    .line 673
    :cond_1
    return-void
.end method

.method private resolveSeekPosition(Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;)Landroid/util/Pair;
    .locals 10
    .param p1, "seekPosition"    # Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 1043
    iget-object v3, p1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    .line 1044
    .local v3, "seekTimeline":Lorg/telegram/messenger/exoplayer2/Timeline;
    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/Timeline;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1047
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    .line 1052
    :cond_0
    :try_start_0
    iget v4, p1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowIndex:I

    iget-wide v6, p1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    invoke-direct {p0, v3, v4, v6, v7}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->getPeriodPosition(Lorg/telegram/messenger/exoplayer2/Timeline;IJ)Landroid/util/Pair;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1059
    .local v2, "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    if-ne v4, v3, :cond_1

    .line 1077
    .end local v2    # "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :goto_0
    return-object v2

    .line 1054
    :catch_0
    move-exception v0

    .line 1056
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lorg/telegram/messenger/exoplayer2/IllegalSeekPositionException;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iget v6, p1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowIndex:I

    iget-wide v8, p1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    invoke-direct {v4, v5, v6, v8, v9}, Lorg/telegram/messenger/exoplayer2/IllegalSeekPositionException;-><init>(Lorg/telegram/messenger/exoplayer2/Timeline;IJ)V

    throw v4

    .line 1064
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v2    # "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :cond_1
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 1065
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v6, v7}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;Z)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    .line 1064
    invoke-virtual {v5, v4}, Lorg/telegram/messenger/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    .line 1066
    .local v1, "periodIndex":I
    if-eq v1, v8, :cond_2

    .line 1068
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    goto :goto_0

    .line 1071
    :cond_2
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    invoke-direct {p0, v4, v3, v5}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->resolveSubsequentPeriod(ILorg/telegram/messenger/exoplayer2/Timeline;Lorg/telegram/messenger/exoplayer2/Timeline;)I

    move-result v1

    .line 1072
    if-eq v1, v8, :cond_3

    .line 1074
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    invoke-virtual {v4, v1, v5}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-result-object v4

    iget v4, v4, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->windowIndex:I

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, v4, v6, v7}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->getPeriodPosition(IJ)Landroid/util/Pair;

    move-result-object v2

    goto :goto_0

    .line 1077
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private resolveSubsequentPeriod(ILorg/telegram/messenger/exoplayer2/Timeline;Lorg/telegram/messenger/exoplayer2/Timeline;)I
    .locals 3
    .param p1, "oldPeriodIndex"    # I
    .param p2, "oldTimeline"    # Lorg/telegram/messenger/exoplayer2/Timeline;
    .param p3, "newTimeline"    # Lorg/telegram/messenger/exoplayer2/Timeline;

    .prologue
    .line 1025
    const/4 v0, -0x1

    .line 1026
    .local v0, "newPeriodIndex":I
    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriodCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_0

    .line 1027
    add-int/lit8 p1, p1, 0x1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    const/4 v2, 0x1

    .line 1028
    invoke-virtual {p2, p1, v1, v2}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;Z)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    .line 1027
    invoke-virtual {p3, v1}, Lorg/telegram/messenger/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    .line 1030
    :cond_0
    return v0
.end method

.method private scheduleNextWork(JJ)V
    .locals 7
    .param p1, "thisOperationStartTimeMs"    # J
    .param p3, "intervalMs"    # J

    .prologue
    const/4 v6, 0x2

    .line 553
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 554
    add-long v2, p1, p3

    .line 555
    .local v2, "nextOperationStartTimeMs":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 556
    .local v0, "nextOperationDelayMs":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_0

    .line 557
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 561
    :goto_0
    return-void

    .line 559
    :cond_0
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v6, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private seekToInternal(Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;)V
    .locals 14
    .param p1, "seekPosition"    # Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 564
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    if-nez v7, :cond_0

    .line 565
    iget v7, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekCount:I

    .line 566
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->pendingSeekPosition:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    .line 603
    :goto_0
    return-void

    .line 570
    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->resolveSeekPosition(Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;)Landroid/util/Pair;

    move-result-object v3

    .line 571
    .local v3, "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    if-nez v3, :cond_1

    .line 574
    new-instance v7, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    const/4 v8, 0x0

    const-wide/16 v10, 0x0

    invoke-direct {v7, v8, v10, v11}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object v7, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 575
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v8, 0x4

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget-object v11, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 578
    new-instance v7, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    const/4 v8, 0x0

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v7, v8, v10, v11}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object v7, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 579
    const/4 v7, 0x4

    invoke-direct {p0, v7}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 581
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->resetInternal(Z)V

    goto :goto_0

    .line 585
    :cond_1
    iget-wide v8, p1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v8, v10

    if-nez v7, :cond_2

    const/4 v6, 0x1

    .line 586
    .local v6, "seekPositionAdjusted":Z
    :goto_1
    iget-object v7, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 587
    .local v2, "periodIndex":I
    iget-object v7, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 590
    .local v4, "periodPositionUs":J
    :try_start_0
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget v7, v7, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->periodIndex:I

    if-ne v2, v7, :cond_4

    const-wide/16 v8, 0x3e8

    div-long v8, v4, v8

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v10, v7, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v7, v8, v10

    if-nez v7, :cond_4

    .line 599
    new-instance v7, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-direct {v7, v2, v4, v5}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object v7, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 600
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v9, 0x4

    if-eqz v6, :cond_3

    const/4 v7, 0x1

    :goto_2
    const/4 v10, 0x0

    iget-object v11, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-virtual {v8, v9, v7, v10, v11}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 601
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 585
    .end local v2    # "periodIndex":I
    .end local v4    # "periodPositionUs":J
    .end local v6    # "seekPositionAdjusted":Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 600
    .restart local v2    # "periodIndex":I
    .restart local v4    # "periodPositionUs":J
    .restart local v6    # "seekPositionAdjusted":Z
    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 595
    :cond_4
    :try_start_1
    invoke-direct {p0, v2, v4, v5}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->seekToPeriodPosition(IJ)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 596
    .local v0, "newPeriodPositionUs":J
    cmp-long v7, v4, v0

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    :goto_3
    or-int/2addr v6, v7

    .line 597
    move-wide v4, v0

    .line 599
    new-instance v7, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-direct {v7, v2, v4, v5}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object v7, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 600
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v9, 0x4

    if-eqz v6, :cond_6

    const/4 v7, 0x1

    :goto_4
    const/4 v10, 0x0

    iget-object v11, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-virtual {v8, v9, v7, v10, v11}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 601
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 596
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .line 600
    :cond_6
    const/4 v7, 0x0

    goto :goto_4

    .line 599
    .end local v0    # "newPeriodPositionUs":J
    :catchall_0
    move-exception v7

    move-object v8, v7

    new-instance v7, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-direct {v7, v2, v4, v5}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object v7, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 600
    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v10, 0x4

    if-eqz v6, :cond_7

    const/4 v7, 0x1

    :goto_5
    const/4 v11, 0x0

    iget-object v12, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-virtual {v9, v10, v7, v11, v12}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 601
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    throw v8

    .line 600
    :cond_7
    const/4 v7, 0x0

    goto :goto_5
.end method

.method private seekToPeriodPosition(IJ)J
    .locals 10
    .param p1, "periodIndex"    # I
    .param p2, "periodPositionUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 607
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->stopRenderers()V

    .line 608
    iput-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rebuffering:Z

    .line 609
    invoke-direct {p0, v8}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 611
    const/4 v0, 0x0

    .line 612
    .local v0, "newPlayingPeriodHolder":Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v3, :cond_2

    .line 614
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v3, :cond_0

    .line 615
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->release()V

    .line 632
    :cond_0
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-ne v3, v0, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eq v3, v5, :cond_5

    .line 634
    :cond_1
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_4

    aget-object v2, v5, v3

    .line 635
    .local v2, "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/Renderer;->disable()V

    .line 634
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 619
    .end local v2    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 620
    .local v1, "periodHolder":Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    :goto_1
    if-eqz v1, :cond_0

    .line 621
    iget v3, v1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    if-ne v3, p1, :cond_3

    iget-boolean v3, v1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-eqz v3, :cond_3

    .line 622
    move-object v0, v1

    .line 626
    :goto_2
    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    goto :goto_1

    .line 624
    :cond_3
    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->release()V

    goto :goto_2

    .line 637
    .end local v1    # "periodHolder":Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    :cond_4
    new-array v3, v4, [Lorg/telegram/messenger/exoplayer2/Renderer;

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    .line 638
    iput-object v7, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lorg/telegram/messenger/exoplayer2/util/MediaClock;

    .line 639
    iput-object v7, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lorg/telegram/messenger/exoplayer2/Renderer;

    .line 640
    iput-object v7, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 644
    :cond_5
    if-eqz v0, :cond_7

    .line 645
    iput-object v7, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 646
    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 647
    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 648
    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->setPlayingPeriodHolder(Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V

    .line 649
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v3, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->hasEnabledTracks:Z

    if-eqz v3, :cond_6

    .line 650
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    invoke-interface {v3, p2, p3}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->seekToUs(J)J

    move-result-wide p2

    .line 652
    :cond_6
    invoke-direct {p0, p2, p3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 653
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    .line 661
    :goto_3
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 662
    return-wide p2

    .line 655
    :cond_7
    iput-object v7, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 656
    iput-object v7, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 657
    iput-object v7, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 658
    invoke-direct {p0, p2, p3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    goto :goto_3
.end method

.method private sendMessagesInternal([Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    .locals 6
    .param p1, "messages"    # [Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 733
    :try_start_0
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 734
    .local v0, "message":Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;
    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;->target:Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerComponent;

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;->messageType:I

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;->message:Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerComponent;->handleMessage(ILjava/lang/Object;)V

    .line 733
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 736
    .end local v0    # "message":Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    if-eqz v1, :cond_1

    .line 738
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 741
    :cond_1
    monitor-enter p0

    .line 742
    :try_start_1
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->customMessagesProcessed:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->customMessagesProcessed:I

    .line 743
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 744
    monitor-exit p0

    .line 746
    return-void

    .line 744
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 741
    :catchall_1
    move-exception v1

    monitor-enter p0

    .line 742
    :try_start_2
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->customMessagesProcessed:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->customMessagesProcessed:I

    .line 743
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 744
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    :catchall_2
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1
.end method

.method private setIsLoading(Z)V
    .locals 4
    .param p1, "isLoading"    # Z

    .prologue
    const/4 v1, 0x0

    .line 379
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->isLoading:Z

    if-eq v0, p1, :cond_0

    .line 380
    iput-boolean p1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->isLoading:Z

    .line 381
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 383
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 381
    goto :goto_0
.end method

.method private setPlayWhenReadyInternal(Z)V
    .locals 3
    .param p1, "playWhenReady"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 399
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rebuffering:Z

    .line 400
    iput-boolean p1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playWhenReady:Z

    .line 401
    if-nez p1, :cond_1

    .line 402
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->stopRenderers()V

    .line 403
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->updatePlaybackPositions()V

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 406
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->startRenderers()V

    .line 407
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 408
    :cond_2
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->state:I

    if-ne v0, v2, :cond_0

    .line 409
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private setPlaybackParametersInternal(Lorg/telegram/messenger/exoplayer2/PlaybackParameters;)V
    .locals 2
    .param p1, "playbackParameters"    # Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    .prologue
    .line 676
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lorg/telegram/messenger/exoplayer2/util/MediaClock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lorg/telegram/messenger/exoplayer2/util/MediaClock;

    .line 677
    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/util/MediaClock;->setPlaybackParameters(Lorg/telegram/messenger/exoplayer2/PlaybackParameters;)Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    move-result-object p1

    .line 679
    :goto_0
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackParameters:Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    .line 680
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 681
    return-void

    .line 677
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;

    .line 678
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;->setPlaybackParameters(Lorg/telegram/messenger/exoplayer2/PlaybackParameters;)Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    move-result-object p1

    goto :goto_0
.end method

.method private setPlayingPeriodHolder(Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V
    .locals 8
    .param p1, "periodHolder"    # Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1350
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-ne v5, p1, :cond_0

    .line 1383
    :goto_0
    return-void

    .line 1354
    :cond_0
    const/4 v0, 0x0

    .line 1355
    .local v0, "enabledRendererCount":I
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v5, v5

    new-array v4, v5, [Z

    .line 1356
    .local v4, "rendererWasEnabledFlags":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v5, v5

    if-ge v1, v5, :cond_6

    .line 1357
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    aget-object v3, v5, v1

    .line 1358
    .local v3, "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    invoke-interface {v3}, Lorg/telegram/messenger/exoplayer2/Renderer;->getState()I

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    :goto_2
    aput-boolean v5, v4, v1

    .line 1359
    iget-object v5, p1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelectorResult:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v5, v5, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;->selections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    invoke-virtual {v5, v1}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    move-result-object v2

    .line 1360
    .local v2, "newSelection":Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    if-eqz v2, :cond_1

    .line 1361
    add-int/lit8 v0, v0, 0x1

    .line 1363
    :cond_1
    aget-boolean v5, v4, v1

    if-eqz v5, :cond_4

    if-eqz v2, :cond_2

    .line 1364
    invoke-interface {v3}, Lorg/telegram/messenger/exoplayer2/Renderer;->isCurrentStreamFinal()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1365
    invoke-interface {v3}, Lorg/telegram/messenger/exoplayer2/Renderer;->getStream()Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v6, v6, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    aget-object v6, v6, v1

    if-ne v5, v6, :cond_4

    .line 1369
    :cond_2
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lorg/telegram/messenger/exoplayer2/Renderer;

    if-ne v3, v5, :cond_3

    .line 1371
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lorg/telegram/messenger/exoplayer2/util/MediaClock;

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;->synchronize(Lorg/telegram/messenger/exoplayer2/util/MediaClock;)V

    .line 1372
    iput-object v7, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lorg/telegram/messenger/exoplayer2/util/MediaClock;

    .line 1373
    iput-object v7, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lorg/telegram/messenger/exoplayer2/Renderer;

    .line 1375
    :cond_3
    invoke-direct {p0, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->ensureStopped(Lorg/telegram/messenger/exoplayer2/Renderer;)V

    .line 1376
    invoke-interface {v3}, Lorg/telegram/messenger/exoplayer2/Renderer;->disable()V

    .line 1356
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1358
    .end local v2    # "newSelection":Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    .line 1380
    .end local v3    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    :cond_6
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1381
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v6, 0x3

    iget-object v7, p1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelectorResult:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 1382
    invoke-direct {p0, v4, v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enableRenderers([ZI)V

    goto :goto_0
.end method

.method private setState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 372
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->state:I

    if-eq v0, p1, :cond_0

    .line 373
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->state:I

    .line 374
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 376
    :cond_0
    return-void
.end method

.method private startRenderers()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 415
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rebuffering:Z

    .line 416
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;->start()V

    .line 417
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 418
    .local v0, "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/Renderer;->start()V

    .line 417
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 420
    .end local v0    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    :cond_0
    return-void
.end method

.method private stopInternal()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 684
    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->resetInternal(Z)V

    .line 685
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadControl:Lorg/telegram/messenger/exoplayer2/LoadControl;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/LoadControl;->onStopped()V

    .line 686
    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 687
    return-void
.end method

.method private stopRenderers()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 423
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;->stop()V

    .line 424
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 425
    .local v0, "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->ensureStopped(Lorg/telegram/messenger/exoplayer2/Renderer;)V

    .line 424
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 427
    .end local v0    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    :cond_0
    return-void
.end method

.method private updatePeriods()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1131
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    if-nez v14, :cond_1

    .line 1133
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    invoke-interface {v14}, Lorg/telegram/messenger/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    .line 1224
    :cond_0
    return-void

    .line 1138
    :cond_1
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->maybeUpdateLoadingPeriod()V

    .line 1139
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-virtual {v14}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->isFullyBuffered()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1140
    :cond_2
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->setIsLoading(Z)V

    .line 1145
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v14, :cond_0

    .line 1151
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eq v14, v15, :cond_5

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->rendererPositionOffsetUs:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-ltz v14, :cond_5

    .line 1155
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-virtual {v14}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->release()V

    .line 1156
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v14, v14, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->setPlayingPeriodHolder(Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V

    .line 1157
    new-instance v14, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v15, v15, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->startPositionUs:J

    move-wide/from16 v16, v0

    invoke-direct/range {v14 .. v17}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 1159
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->updatePlaybackPositions()V

    .line 1160
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v15, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 1141
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v14, v14, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->needsContinueLoading:Z

    if-eqz v14, :cond_3

    .line 1142
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    goto :goto_0

    .line 1163
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v14, v14, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->isLast:Z

    if-eqz v14, :cond_7

    .line 1164
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v14, v14

    if-ge v3, v14, :cond_0

    .line 1165
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    aget-object v12, v14, v3

    .line 1166
    .local v12, "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v14, v14, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    aget-object v13, v14, v3

    .line 1169
    .local v13, "sampleStream":Lorg/telegram/messenger/exoplayer2/source/SampleStream;
    if-eqz v13, :cond_6

    invoke-interface {v12}, Lorg/telegram/messenger/exoplayer2/Renderer;->getStream()Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    move-result-object v14

    if-ne v14, v13, :cond_6

    .line 1170
    invoke-interface {v12}, Lorg/telegram/messenger/exoplayer2/Renderer;->hasReadStreamToEnd()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 1171
    invoke-interface {v12}, Lorg/telegram/messenger/exoplayer2/Renderer;->setCurrentStreamFinal()V

    .line 1164
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1177
    .end local v3    # "i":I
    .end local v12    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    .end local v13    # "sampleStream":Lorg/telegram/messenger/exoplayer2/source/SampleStream;
    :cond_7
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v14, v14

    if-ge v3, v14, :cond_9

    .line 1178
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    aget-object v12, v14, v3

    .line 1179
    .restart local v12    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v14, v14, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    aget-object v13, v14, v3

    .line 1180
    .restart local v13    # "sampleStream":Lorg/telegram/messenger/exoplayer2/source/SampleStream;
    invoke-interface {v12}, Lorg/telegram/messenger/exoplayer2/Renderer;->getStream()Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    move-result-object v14

    if-ne v14, v13, :cond_0

    if-eqz v13, :cond_8

    .line 1181
    invoke-interface {v12}, Lorg/telegram/messenger/exoplayer2/Renderer;->hasReadStreamToEnd()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1177
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1186
    .end local v12    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    .end local v13    # "sampleStream":Lorg/telegram/messenger/exoplayer2/source/SampleStream;
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v14, v14, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v14, v14, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v14, v14, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-eqz v14, :cond_0

    .line 1187
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v11, v14, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelectorResult:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;

    .line 1188
    .local v11, "oldTrackSelectorResult":Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v14, v14, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1189
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v8, v14, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelectorResult:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;

    .line 1191
    .local v8, "newTrackSelectorResult":Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v14, v14, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    .line 1192
    invoke-interface {v14}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v14

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v14, v14, v16

    if-eqz v14, :cond_b

    const/4 v4, 0x1

    .line 1193
    .local v4, "initialDiscontinuity":Z
    :goto_4
    const/4 v3, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v14, v14

    if-ge v3, v14, :cond_0

    .line 1194
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    aget-object v12, v14, v3

    .line 1195
    .restart local v12    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    iget-object v14, v11, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;->selections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    invoke-virtual {v14, v3}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    move-result-object v10

    .line 1196
    .local v10, "oldSelection":Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    if-nez v10, :cond_c

    .line 1193
    :cond_a
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1192
    .end local v4    # "initialDiscontinuity":Z
    .end local v10    # "oldSelection":Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    .end local v12    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    :cond_b
    const/4 v4, 0x0

    goto :goto_4

    .line 1198
    .restart local v4    # "initialDiscontinuity":Z
    .restart local v10    # "oldSelection":Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    .restart local v12    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    :cond_c
    if-eqz v4, :cond_d

    .line 1201
    invoke-interface {v12}, Lorg/telegram/messenger/exoplayer2/Renderer;->setCurrentStreamFinal()V

    goto :goto_6

    .line 1202
    :cond_d
    invoke-interface {v12}, Lorg/telegram/messenger/exoplayer2/Renderer;->isCurrentStreamFinal()Z

    move-result v14

    if-nez v14, :cond_a

    .line 1203
    iget-object v14, v8, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;->selections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    invoke-virtual {v14, v3}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    move-result-object v7

    .line 1204
    .local v7, "newSelection":Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    iget-object v14, v11, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;->rendererConfigurations:[Lorg/telegram/messenger/exoplayer2/RendererConfiguration;

    aget-object v9, v14, v3

    .line 1205
    .local v9, "oldConfig":Lorg/telegram/messenger/exoplayer2/RendererConfiguration;
    iget-object v14, v8, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;->rendererConfigurations:[Lorg/telegram/messenger/exoplayer2/RendererConfiguration;

    aget-object v6, v14, v3

    .line 1206
    .local v6, "newConfig":Lorg/telegram/messenger/exoplayer2/RendererConfiguration;
    if-eqz v7, :cond_f

    invoke-virtual {v6, v9}, Lorg/telegram/messenger/exoplayer2/RendererConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 1209
    invoke-interface {v7}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v14

    new-array v2, v14, [Lorg/telegram/messenger/exoplayer2/Format;

    .line 1210
    .local v2, "formats":[Lorg/telegram/messenger/exoplayer2/Format;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_7
    array-length v14, v2

    if-ge v5, v14, :cond_e

    .line 1211
    invoke-interface {v7, v5}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getFormat(I)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v14

    aput-object v14, v2, v5

    .line 1210
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 1213
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v14, v14, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    aget-object v14, v14, v3

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1214
    invoke-virtual {v15}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v16

    .line 1213
    move-wide/from16 v0, v16

    invoke-interface {v12, v2, v14, v0, v1}, Lorg/telegram/messenger/exoplayer2/Renderer;->replaceStream([Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/source/SampleStream;J)V

    goto :goto_6

    .line 1219
    .end local v2    # "formats":[Lorg/telegram/messenger/exoplayer2/Format;
    .end local v5    # "j":I
    :cond_f
    invoke-interface {v12}, Lorg/telegram/messenger/exoplayer2/Renderer;->setCurrentStreamFinal()V

    goto :goto_6
.end method

.method private updatePlaybackPositions()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const-wide/high16 v4, -0x8000000000000000L

    .line 430
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v6, :cond_0

    .line 456
    :goto_0
    return-void

    .line 435
    :cond_0
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v6, v6, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    invoke-interface {v6}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v2

    .line 436
    .local v2, "periodPositionUs":J
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v6

    if-eqz v6, :cond_2

    .line 437
    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 447
    :goto_1
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iput-wide v2, v6, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    .line 448
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->elapsedRealtimeUs:J

    .line 451
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v6, v6

    if-nez v6, :cond_4

    move-wide v0, v4

    .line 453
    .local v0, "bufferedPositionUs":J
    :goto_2
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    cmp-long v4, v0, v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v5, v5, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    .line 454
    invoke-virtual {v4, v5, v7}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v0

    .end local v0    # "bufferedPositionUs":J
    :cond_1
    iput-wide v0, v6, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->bufferedPositionUs:J

    goto :goto_0

    .line 439
    :cond_2
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lorg/telegram/messenger/exoplayer2/Renderer;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lorg/telegram/messenger/exoplayer2/Renderer;

    invoke-interface {v6}, Lorg/telegram/messenger/exoplayer2/Renderer;->isEnded()Z

    move-result v6

    if-nez v6, :cond_3

    .line 440
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lorg/telegram/messenger/exoplayer2/util/MediaClock;

    invoke-interface {v6}, Lorg/telegram/messenger/exoplayer2/util/MediaClock;->getPositionUs()J

    move-result-wide v6

    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 441
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;

    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v6, v8, v9}, Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;->setPositionUs(J)V

    .line 445
    :goto_3
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v6, v8, v9}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v2

    goto :goto_1

    .line 443
    :cond_3
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v6}, Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;->getPositionUs()J

    move-result-wide v6

    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    goto :goto_3

    .line 451
    :cond_4
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v6, v6, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    .line 452
    invoke-interface {v6}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    goto :goto_2
.end method


# virtual methods
.method public varargs declared-synchronized blockingSendMessages([Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    .locals 4
    .param p1, "messages"    # [Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;

    .prologue
    .line 236
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->released:Z

    if-eqz v2, :cond_1

    .line 237
    const-string/jumbo v2, "ExoPlayerImplInternal"

    const-string/jumbo v3, "Ignoring messages sent after release."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    :cond_0
    monitor-exit p0

    return-void

    .line 240
    :cond_1
    :try_start_1
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->customMessagesSent:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->customMessagesSent:I

    .line 241
    .local v1, "messageNumber":I
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/16 v3, 0xb

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 242
    :goto_0
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->customMessagesProcessed:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v2, v1, :cond_0

    .line 244
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 236
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "messageNumber":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 298
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    move v1, v3

    .line 365
    :goto_0
    return v1

    .line 300
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_0

    move v3, v2

    :cond_0
    invoke-direct {p0, v1, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->prepareInternal(Lorg/telegram/messenger/exoplayer2/source/MediaSource;Z)V

    move v1, v2

    .line 301
    goto :goto_0

    .line 304
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_1

    move v3, v2

    :cond_1
    invoke-direct {p0, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->setPlayWhenReadyInternal(Z)V

    move v1, v2

    .line 305
    goto :goto_0

    .line 308
    :pswitch_2
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->doSomeWork()V

    move v1, v2

    .line 309
    goto :goto_0

    .line 312
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->seekToInternal(Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;)V

    move v1, v2

    .line 313
    goto :goto_0

    .line 316
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->setPlaybackParametersInternal(Lorg/telegram/messenger/exoplayer2/PlaybackParameters;)V

    move v1, v2

    .line 317
    goto :goto_0

    .line 320
    :pswitch_5
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->stopInternal()V

    move v1, v2

    .line 321
    goto :goto_0

    .line 324
    :pswitch_6
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->releaseInternal()V

    move v1, v2

    .line 325
    goto :goto_0

    .line 328
    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handlePeriodPrepared(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V

    move v1, v2

    .line 329
    goto :goto_0

    .line 332
    :pswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handleSourceInfoRefreshed(Landroid/util/Pair;)V

    move v1, v2

    .line 333
    goto :goto_0

    .line 336
    :pswitch_9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handleContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V

    move v1, v2

    .line 337
    goto :goto_0

    .line 340
    :pswitch_a
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->reselectTracksInternal()V

    move v1, v2

    .line 341
    goto :goto_0

    .line 344
    :pswitch_b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;

    check-cast v1, [Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;

    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->sendMessagesInternal([Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    :try_end_0
    .catch Lorg/telegram/messenger/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move v1, v2

    .line 345
    goto :goto_0

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
    const-string/jumbo v1, "ExoPlayerImplInternal"

    const-string/jumbo v3, "Renderer error."

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 352
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 353
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->stopInternal()V

    move v1, v2

    .line 354
    goto :goto_0

    .line 355
    .end local v0    # "e":Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
    :catch_1
    move-exception v0

    .line 356
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "ExoPlayerImplInternal"

    const-string/jumbo v3, "Source error."

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 357
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;->createForSource(Ljava/io/IOException;)Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 358
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->stopInternal()V

    move v1, v2

    .line 359
    goto/16 :goto_0

    .line 360
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 361
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "ExoPlayerImplInternal"

    const-string/jumbo v3, "Internal runtime error."

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 362
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;)Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 363
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 364
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->stopInternal()V

    move v1, v2

    .line 365
    goto/16 :goto_0

    .line 298
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V
    .locals 2
    .param p1, "source"    # Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    .prologue
    .line 282
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 283
    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V
    .locals 0

    .prologue
    .line 42
    check-cast p1, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public onPrepared(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V
    .locals 2
    .param p1, "source"    # Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    .prologue
    .line 277
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 278
    return-void
.end method

.method public onSourceInfoRefreshed(Lorg/telegram/messenger/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 3
    .param p1, "timeline"    # Lorg/telegram/messenger/exoplayer2/Timeline;
    .param p2, "manifest"    # Ljava/lang/Object;

    .prologue
    .line 270
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 271
    return-void
.end method

.method public onTrackSelectionsInvalidated()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 290
    return-void
.end method

.method public prepare(Lorg/telegram/messenger/exoplayer2/source/MediaSource;Z)V
    .locals 3
    .param p1, "mediaSource"    # Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    .param p2, "resetPosition"    # Z

    .prologue
    const/4 v1, 0x0

    .line 205
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v1, v0, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 207
    return-void

    :cond_0
    move v0, v1

    .line 205
    goto :goto_0
.end method

.method public declared-synchronized release()V
    .locals 3

    .prologue
    .line 252
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->released:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 264
    :goto_0
    monitor-exit p0

    return-void

    .line 255
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 256
    :goto_1
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->released:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 258
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 252
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 263
    :cond_1
    :try_start_4
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public seekTo(Lorg/telegram/messenger/exoplayer2/Timeline;IJ)V
    .locals 3
    .param p1, "timeline"    # Lorg/telegram/messenger/exoplayer2/Timeline;
    .param p2, "windowIndex"    # I
    .param p3, "positionUs"    # J

    .prologue
    .line 214
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x3

    new-instance v2, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    invoke-direct {v2, p1, p2, p3, p4}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;-><init>(Lorg/telegram/messenger/exoplayer2/Timeline;IJ)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 216
    return-void
.end method

.method public varargs sendMessages([Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    .locals 2
    .param p1, "messages"    # [Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;

    .prologue
    .line 227
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->released:Z

    if-eqz v0, :cond_0

    .line 228
    const-string/jumbo v0, "ExoPlayerImplInternal"

    const-string/jumbo v1, "Ignoring messages sent after release."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :goto_0
    return-void

    .line 231
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->customMessagesSent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->customMessagesSent:I

    .line 232
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setPlayWhenReady(Z)V
    .locals 4
    .param p1, "playWhenReady"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 210
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 211
    return-void

    :cond_0
    move v0, v2

    .line 210
    goto :goto_0
.end method

.method public setPlaybackParameters(Lorg/telegram/messenger/exoplayer2/PlaybackParameters;)V
    .locals 2
    .param p1, "playbackParameters"    # Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    .prologue
    .line 219
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 220
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 224
    return-void
.end method
