.class final Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;
.super Ljava/lang/Object;
.source "ExoPlayerImpl.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/ExoPlayer;


# static fields
.field private static final TAG:Ljava/lang/String; = "ExoPlayerImpl"


# instance fields
.field private final emptyTrackSelections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

.field private final eventHandler:Landroid/os/Handler;

.field private final internalPlayer:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;

.field private isLoading:Z

.field private final listeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;",
            ">;"
        }
    .end annotation
.end field

.field private manifest:Ljava/lang/Object;

.field private maskingPeriodIndex:I

.field private maskingWindowIndex:I

.field private maskingWindowPositionMs:J

.field private pendingPrepareAcks:I

.field private pendingSeekAcks:I

.field private final period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

.field private playWhenReady:Z

.field private playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

.field private playbackParameters:Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

.field private playbackState:I

.field private final renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

.field private timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

.field private trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

.field private trackSelections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

.field private final trackSelector:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;

.field private tracksSelected:Z

.field private final window:Lorg/telegram/messenger/exoplayer2/Timeline$Window;


# direct methods
.method public constructor <init>([Lorg/telegram/messenger/exoplayer2/Renderer;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;Lorg/telegram/messenger/exoplayer2/LoadControl;)V
    .locals 8
    .param p1, "renderers"    # [Lorg/telegram/messenger/exoplayer2/Renderer;
    .param p2, "trackSelector"    # Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;
    .param p3, "loadControl"    # Lorg/telegram/messenger/exoplayer2/LoadControl;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-string/jumbo v0, "ExoPlayerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Init ExoPlayerLib/2.4.0 ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lorg/telegram/messenger/exoplayer2/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    array-length v0, p1

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 83
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/messenger/exoplayer2/Renderer;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    .line 84
    invoke-static {p2}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->trackSelector:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;

    .line 85
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playWhenReady:Z

    .line 86
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playbackState:I

    .line 87
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 88
    new-instance v0, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    array-length v1, p1

    new-array v1, v1, [Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;-><init>([Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->emptyTrackSelections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    .line 89
    sget-object v0, Lorg/telegram/messenger/exoplayer2/Timeline;->EMPTY:Lorg/telegram/messenger/exoplayer2/Timeline;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    .line 90
    new-instance v0, Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/Timeline$Window;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->window:Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    .line 91
    new-instance v0, Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/Timeline$Period;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    .line 92
    sget-object v0, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->EMPTY:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    .line 93
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->emptyTrackSelections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->trackSelections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    .line 94
    sget-object v0, Lorg/telegram/messenger/exoplayer2/PlaybackParameters;->DEFAULT:Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playbackParameters:Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    .line 95
    new-instance v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl$1;-><init>(Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->eventHandler:Landroid/os/Handler;

    .line 101
    new-instance v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    const-wide/16 v4, 0x0

    invoke-direct {v0, v2, v4, v5}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 102
    new-instance v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;

    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playWhenReady:Z

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->eventHandler:Landroid/os/Handler;

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;-><init>([Lorg/telegram/messenger/exoplayer2/Renderer;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;Lorg/telegram/messenger/exoplayer2/LoadControl;ZLandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;Lorg/telegram/messenger/exoplayer2/ExoPlayer;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->internalPlayer:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;

    .line 104
    return-void

    :cond_0
    move v0, v2

    .line 82
    goto :goto_0
.end method


# virtual methods
.method public addListener(Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;

    .prologue
    .line 108
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method public varargs blockingSendMessages([Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    .locals 1
    .param p1, "messages"    # [Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;

    .prologue
    .line 252
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->internalPlayer:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->blockingSendMessages([Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    .line 253
    return-void
.end method

.method public getBufferedPercentage()I
    .locals 10

    .prologue
    const-wide/16 v4, 0x64

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x0

    .line 304
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    invoke-virtual {v7}, Lorg/telegram/messenger/exoplayer2/Timeline;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 309
    :goto_0
    return v6

    .line 307
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->getBufferedPosition()J

    move-result-wide v0

    .line 308
    .local v0, "bufferedPosition":J
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->getDuration()J

    move-result-wide v2

    .line 309
    .local v2, "duration":J
    cmp-long v7, v0, v8

    if-eqz v7, :cond_1

    cmp-long v7, v2, v8

    if-nez v7, :cond_2

    :cond_1
    move v4, v6

    :goto_1
    move v6, v4

    goto :goto_0

    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-nez v6, :cond_3

    :goto_2
    long-to-int v4, v4

    goto :goto_1

    :cond_3
    mul-long/2addr v4, v0

    div-long/2addr v4, v2

    goto :goto_2
.end method

.method public getBufferedPosition()J
    .locals 4

    .prologue
    .line 294
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->pendingSeekAcks:I

    if-lez v0, :cond_1

    .line 295
    :cond_0
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->maskingWindowPositionMs:J

    .line 298
    :goto_0
    return-wide v0

    .line 297
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget v1, v1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->periodIndex:I

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    .line 298
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->getPositionInWindowMs()J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v2, v2, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->bufferedPositionUs:J

    invoke-static {v2, v3}, Lorg/telegram/messenger/exoplayer2/C;->usToMs(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public getCurrentManifest()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->manifest:Ljava/lang/Object;

    return-object v0
.end method

.method public getCurrentPeriodIndex()I
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->pendingSeekAcks:I

    if-lez v0, :cond_1

    .line 258
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->maskingPeriodIndex:I

    .line 260
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->periodIndex:I

    goto :goto_0
.end method

.method public getCurrentPosition()J
    .locals 4

    .prologue
    .line 283
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->pendingSeekAcks:I

    if-lez v0, :cond_1

    .line 284
    :cond_0
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->maskingWindowPositionMs:J

    .line 287
    :goto_0
    return-wide v0

    .line 286
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget v1, v1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->periodIndex:I

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    .line 287
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->getPositionInWindowMs()J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v2, v2, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    invoke-static {v2, v3}, Lorg/telegram/messenger/exoplayer2/C;->usToMs(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public getCurrentTimeline()Lorg/telegram/messenger/exoplayer2/Timeline;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    return-object v0
.end method

.method public getCurrentTrackGroups()Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public getCurrentTrackSelections()Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->trackSelections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    return-object v0
.end method

.method public getCurrentWindowIndex()I
    .locals 3

    .prologue
    .line 266
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->pendingSeekAcks:I

    if-lez v0, :cond_1

    .line 267
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->maskingWindowIndex:I

    .line 269
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget v1, v1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->periodIndex:I

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->windowIndex:I

    goto :goto_0
.end method

.method public getDuration()J
    .locals 3

    .prologue
    .line 275
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 278
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->getCurrentWindowIndex()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->window:Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/Timeline;->getWindow(ILorg/telegram/messenger/exoplayer2/Timeline$Window;)Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->getDurationMs()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playWhenReady:Z

    return v0
.end method

.method public getPlaybackParameters()Lorg/telegram/messenger/exoplayer2/PlaybackParameters;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playbackParameters:Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    return-object v0
.end method

.method public getPlaybackState()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playbackState:I

    return v0
.end method

.method public getRendererCount()I
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v0, v0

    return v0
.end method

.method public getRendererType(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 330
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/Renderer;->getTrackType()I

    move-result v0

    return v0
.end method

.method handleEvent(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 355
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 438
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    throw v5

    .line 357
    :pswitch_0
    iget v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->pendingPrepareAcks:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->pendingPrepareAcks:I

    .line 440
    :cond_0
    return-void

    .line 361
    :pswitch_1
    iget v5, p1, Landroid/os/Message;->arg1:I

    iput v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playbackState:I

    .line 362
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;

    .line 363
    .local v1, "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    iget-boolean v6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playWhenReady:Z

    iget v7, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playbackState:I

    invoke-interface {v1, v6, v7}, Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;->onPlayerStateChanged(ZI)V

    goto :goto_0

    .line 368
    .end local v1    # "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    :pswitch_2
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_1

    :goto_1
    iput-boolean v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->isLoading:Z

    .line 369
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;

    .line 370
    .restart local v1    # "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    iget-boolean v6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->isLoading:Z

    invoke-interface {v1, v6}, Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;->onLoadingChanged(Z)V

    goto :goto_2

    .line 368
    .end local v1    # "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 375
    :pswitch_3
    iget v6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->pendingPrepareAcks:I

    if-nez v6, :cond_0

    .line 376
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;

    .line 377
    .local v4, "trackSelectorResult":Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;
    iput-boolean v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->tracksSelected:Z

    .line 378
    iget-object v5, v4, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;->groups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    iput-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    .line 379
    iget-object v5, v4, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;->selections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    iput-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->trackSelections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    .line 380
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->trackSelector:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;

    iget-object v6, v4, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;->info:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;->onSelectionActivated(Ljava/lang/Object;)V

    .line 381
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;

    .line 382
    .restart local v1    # "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->trackSelections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    invoke-interface {v1, v6, v7}, Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;->onTracksChanged(Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;)V

    goto :goto_3

    .line 388
    .end local v1    # "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    .end local v4    # "trackSelectorResult":Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;
    :pswitch_4
    iget v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->pendingSeekAcks:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->pendingSeekAcks:I

    if-nez v5, :cond_0

    .line 389
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iput-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 390
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_0

    .line 391
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;

    .line 392
    .restart local v1    # "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;->onPositionDiscontinuity()V

    goto :goto_4

    .line 399
    .end local v1    # "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    :pswitch_5
    iget v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->pendingSeekAcks:I

    if-nez v5, :cond_0

    .line 400
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iput-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 401
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;

    .line 402
    .restart local v1    # "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;->onPositionDiscontinuity()V

    goto :goto_5

    .line 408
    .end local v1    # "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    :pswitch_6
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SourceInfo;

    .line 409
    .local v3, "sourceInfo":Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SourceInfo;
    iget v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->pendingSeekAcks:I

    iget v6, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SourceInfo;->seekAcks:I

    sub-int/2addr v5, v6

    iput v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->pendingSeekAcks:I

    .line 410
    iget v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->pendingPrepareAcks:I

    if-nez v5, :cond_0

    .line 411
    iget-object v5, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SourceInfo;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iput-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    .line 412
    iget-object v5, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SourceInfo;->manifest:Ljava/lang/Object;

    iput-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->manifest:Ljava/lang/Object;

    .line 413
    iget-object v5, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SourceInfo;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iput-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 414
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;

    .line 415
    .restart local v1    # "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->manifest:Ljava/lang/Object;

    invoke-interface {v1, v6, v7}, Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;->onTimelineChanged(Lorg/telegram/messenger/exoplayer2/Timeline;Ljava/lang/Object;)V

    goto :goto_6

    .line 421
    .end local v1    # "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    .end local v3    # "sourceInfo":Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SourceInfo;
    :pswitch_7
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    .line 422
    .local v2, "playbackParameters":Lorg/telegram/messenger/exoplayer2/PlaybackParameters;
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playbackParameters:Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    invoke-virtual {v5, v2}, Lorg/telegram/messenger/exoplayer2/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 423
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playbackParameters:Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    .line 424
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;

    .line 425
    .restart local v1    # "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;->onPlaybackParametersChanged(Lorg/telegram/messenger/exoplayer2/PlaybackParameters;)V

    goto :goto_7

    .line 431
    .end local v1    # "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    .end local v2    # "playbackParameters":Lorg/telegram/messenger/exoplayer2/PlaybackParameters;
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    .line 432
    .local v0, "exception":Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;

    .line 433
    .restart local v1    # "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    invoke-interface {v1, v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;->onPlayerError(Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;)V

    goto :goto_8

    .line 355
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
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public isCurrentWindowDynamic()Z
    .locals 3

    .prologue
    .line 315
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->getCurrentWindowIndex()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->window:Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/Timeline;->getWindow(ILorg/telegram/messenger/exoplayer2/Timeline$Window;)Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->isDynamic:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCurrentWindowSeekable()Z
    .locals 3

    .prologue
    .line 320
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->getCurrentWindowIndex()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->window:Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/Timeline;->getWindow(ILorg/telegram/messenger/exoplayer2/Timeline$Window;)Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->isSeekable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->isLoading:Z

    return v0
.end method

.method public prepare(Lorg/telegram/messenger/exoplayer2/source/MediaSource;)V
    .locals 1
    .param p1, "mediaSource"    # Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    .prologue
    const/4 v0, 0x1

    .line 123
    invoke-virtual {p0, p1, v0, v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->prepare(Lorg/telegram/messenger/exoplayer2/source/MediaSource;ZZ)V

    .line 124
    return-void
.end method

.method public prepare(Lorg/telegram/messenger/exoplayer2/source/MediaSource;ZZ)V
    .locals 5
    .param p1, "mediaSource"    # Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    .param p2, "resetPosition"    # Z
    .param p3, "resetState"    # Z

    .prologue
    const/4 v4, 0x0

    .line 128
    if-eqz p3, :cond_2

    .line 129
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->manifest:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 130
    :cond_0
    sget-object v1, Lorg/telegram/messenger/exoplayer2/Timeline;->EMPTY:Lorg/telegram/messenger/exoplayer2/Timeline;

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    .line 131
    iput-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->manifest:Ljava/lang/Object;

    .line 132
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;

    .line 133
    .local v0, "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->manifest:Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;->onTimelineChanged(Lorg/telegram/messenger/exoplayer2/Timeline;Ljava/lang/Object;)V

    goto :goto_0

    .line 136
    .end local v0    # "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    :cond_1
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->tracksSelected:Z

    if-eqz v1, :cond_2

    .line 137
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->tracksSelected:Z

    .line 138
    sget-object v1, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->EMPTY:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    .line 139
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->emptyTrackSelections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->trackSelections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    .line 140
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->trackSelector:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;->onSelectionActivated(Ljava/lang/Object;)V

    .line 141
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;

    .line 142
    .restart local v0    # "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->trackSelections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    invoke-interface {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;->onTracksChanged(Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;)V

    goto :goto_1

    .line 146
    .end local v0    # "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    :cond_2
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->pendingPrepareAcks:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->pendingPrepareAcks:I

    .line 147
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->internalPlayer:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v1, p1, p2}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->prepare(Lorg/telegram/messenger/exoplayer2/source/MediaSource;Z)V

    .line 148
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->internalPlayer:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->release()V

    .line 242
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->eventHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 243
    return-void
.end method

.method public removeListener(Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;

    .prologue
    .line 113
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method public seekTo(IJ)V
    .locals 12
    .param p1, "windowIndex"    # I
    .param p2, "positionMs"    # J

    .prologue
    .line 188
    if-ltz p1, :cond_0

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    invoke-virtual {v8}, Lorg/telegram/messenger/exoplayer2/Timeline;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    invoke-virtual {v8}, Lorg/telegram/messenger/exoplayer2/Timeline;->getWindowCount()I

    move-result v8

    if-lt p1, v8, :cond_1

    .line 189
    :cond_0
    new-instance v8, Lorg/telegram/messenger/exoplayer2/IllegalSeekPositionException;

    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    invoke-direct {v8, v9, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/IllegalSeekPositionException;-><init>(Lorg/telegram/messenger/exoplayer2/Timeline;IJ)V

    throw v8

    .line 191
    :cond_1
    iget v8, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->pendingSeekAcks:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->pendingSeekAcks:I

    .line 192
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->maskingWindowIndex:I

    .line 193
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    invoke-virtual {v8}, Lorg/telegram/messenger/exoplayer2/Timeline;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 194
    const/4 v8, 0x0

    iput v8, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->maskingPeriodIndex:I

    .line 209
    :goto_0
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, p2, v8

    if-nez v8, :cond_6

    .line 210
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->maskingWindowPositionMs:J

    .line 211
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->internalPlayer:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;

    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {v8, v9, p1, v10, v11}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->seekTo(Lorg/telegram/messenger/exoplayer2/Timeline;IJ)V

    .line 219
    :cond_2
    return-void

    .line 196
    :cond_3
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->window:Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    invoke-virtual {v8, p1, v9}, Lorg/telegram/messenger/exoplayer2/Timeline;->getWindow(ILorg/telegram/messenger/exoplayer2/Timeline$Window;)Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    .line 197
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, p2, v8

    if-nez v8, :cond_4

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->window:Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    .line 198
    invoke-virtual {v8}, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->getDefaultPositionUs()J

    move-result-wide v6

    .line 199
    .local v6, "resolvedPositionMs":J
    :goto_1
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->window:Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    iget v1, v8, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    .line 200
    .local v1, "periodIndex":I
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->window:Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    invoke-virtual {v8}, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->getPositionInFirstPeriodUs()J

    move-result-wide v8

    invoke-static {v6, v7}, Lorg/telegram/messenger/exoplayer2/C;->msToUs(J)J

    move-result-wide v10

    add-long v4, v8, v10

    .line 201
    .local v4, "periodPositionUs":J
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    invoke-virtual {v8, v1, v9}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v2

    .line 202
    .local v2, "periodDurationUs":J
    :goto_2
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v2, v8

    if-eqz v8, :cond_5

    cmp-long v8, v4, v2

    if-ltz v8, :cond_5

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->window:Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    iget v8, v8, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    if-ge v1, v8, :cond_5

    .line 204
    sub-long/2addr v4, v2

    .line 205
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    add-int/lit8 v1, v1, 0x1

    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    invoke-virtual {v8, v1, v9}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v2

    goto :goto_2

    .end local v1    # "periodIndex":I
    .end local v2    # "periodDurationUs":J
    .end local v4    # "periodPositionUs":J
    .end local v6    # "resolvedPositionMs":J
    :cond_4
    move-wide v6, p2

    .line 198
    goto :goto_1

    .line 207
    .restart local v1    # "periodIndex":I
    .restart local v2    # "periodDurationUs":J
    .restart local v4    # "periodPositionUs":J
    .restart local v6    # "resolvedPositionMs":J
    :cond_5
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->maskingPeriodIndex:I

    goto :goto_0

    .line 213
    .end local v1    # "periodIndex":I
    .end local v2    # "periodDurationUs":J
    .end local v4    # "periodPositionUs":J
    .end local v6    # "resolvedPositionMs":J
    :cond_6
    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->maskingWindowPositionMs:J

    .line 214
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->internalPlayer:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;

    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    invoke-static {p2, p3}, Lorg/telegram/messenger/exoplayer2/C;->msToUs(J)J

    move-result-wide v10

    invoke-virtual {v8, v9, p1, v10, v11}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->seekTo(Lorg/telegram/messenger/exoplayer2/Timeline;IJ)V

    .line 215
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;

    .line 216
    .local v0, "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;->onPositionDiscontinuity()V

    goto :goto_3
.end method

.method public seekTo(J)V
    .locals 1
    .param p1, "positionMs"    # J

    .prologue
    .line 183
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->getCurrentWindowIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->seekTo(IJ)V

    .line 184
    return-void
.end method

.method public seekToDefaultPosition()V
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->getCurrentWindowIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->seekToDefaultPosition(I)V

    .line 174
    return-void
.end method

.method public seekToDefaultPosition(I)V
    .locals 2
    .param p1, "windowIndex"    # I

    .prologue
    .line 178
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, p1, v0, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->seekTo(IJ)V

    .line 179
    return-void
.end method

.method public varargs sendMessages([Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    .locals 1
    .param p1, "messages"    # [Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;

    .prologue
    .line 247
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->internalPlayer:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->sendMessages([Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    .line 248
    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 3
    .param p1, "playWhenReady"    # Z

    .prologue
    .line 152
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playWhenReady:Z

    if-eq v1, p1, :cond_0

    .line 153
    iput-boolean p1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playWhenReady:Z

    .line 154
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->internalPlayer:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->setPlayWhenReady(Z)V

    .line 155
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;

    .line 156
    .local v0, "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playbackState:I

    invoke-interface {v0, p1, v2}, Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;->onPlayerStateChanged(ZI)V

    goto :goto_0

    .line 159
    .end local v0    # "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    :cond_0
    return-void
.end method

.method public setPlaybackParameters(Lorg/telegram/messenger/exoplayer2/PlaybackParameters;)V
    .locals 1
    .param p1, "playbackParameters"    # Lorg/telegram/messenger/exoplayer2/PlaybackParameters;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 223
    if-nez p1, :cond_0

    .line 224
    sget-object p1, Lorg/telegram/messenger/exoplayer2/PlaybackParameters;->DEFAULT:Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    .line 226
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->internalPlayer:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->setPlaybackParameters(Lorg/telegram/messenger/exoplayer2/PlaybackParameters;)V

    .line 227
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->internalPlayer:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->stop()V

    .line 237
    return-void
.end method
