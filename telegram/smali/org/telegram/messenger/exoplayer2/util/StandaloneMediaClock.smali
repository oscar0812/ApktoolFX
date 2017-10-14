.class public final Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;
.super Ljava/lang/Object;
.source "StandaloneMediaClock.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/util/MediaClock;


# instance fields
.field private baseElapsedMs:J

.field private baseUs:J

.field private playbackParameters:Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

.field private started:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lorg/telegram/messenger/exoplayer2/PlaybackParameters;->DEFAULT:Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;->playbackParameters:Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    .line 38
    return-void
.end method


# virtual methods
.method public getPlaybackParameters()Lorg/telegram/messenger/exoplayer2/PlaybackParameters;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;->playbackParameters:Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    return-object v0
.end method

.method public getPositionUs()J
    .locals 8

    .prologue
    .line 84
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;->baseUs:J

    .line 85
    .local v2, "positionUs":J
    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;->started:Z

    if-eqz v4, :cond_0

    .line 86
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;->baseElapsedMs:J

    sub-long v0, v4, v6

    .line 87
    .local v0, "elapsedSinceBaseMs":J
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;->playbackParameters:Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    iget v4, v4, Lorg/telegram/messenger/exoplayer2/PlaybackParameters;->speed:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    .line 88
    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/C;->msToUs(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 93
    .end local v0    # "elapsedSinceBaseMs":J
    :cond_0
    :goto_0
    return-wide v2

    .line 90
    .restart local v0    # "elapsedSinceBaseMs":J
    :cond_1
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;->playbackParameters:Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    invoke-virtual {v4, v0, v1}, Lorg/telegram/messenger/exoplayer2/PlaybackParameters;->getSpeedAdjustedDurationUs(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_0
.end method

.method public setPlaybackParameters(Lorg/telegram/messenger/exoplayer2/PlaybackParameters;)Lorg/telegram/messenger/exoplayer2/PlaybackParameters;
    .locals 2
    .param p1, "playbackParameters"    # Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    .prologue
    .line 99
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;->started:Z

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;->getPositionUs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;->setPositionUs(J)V

    .line 102
    :cond_0
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;->playbackParameters:Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    .line 103
    return-object p1
.end method

.method public setPositionUs(J)V
    .locals 3
    .param p1, "positionUs"    # J

    .prologue
    .line 66
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;->baseUs:J

    .line 67
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;->started:Z

    if-eqz v0, :cond_0

    .line 68
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;->baseElapsedMs:J

    .line 70
    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 44
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;->started:Z

    if-nez v0, :cond_0

    .line 45
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;->baseElapsedMs:J

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;->started:Z

    .line 48
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 54
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;->started:Z

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;->getPositionUs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;->setPositionUs(J)V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;->started:Z

    .line 58
    :cond_0
    return-void
.end method

.method public synchronize(Lorg/telegram/messenger/exoplayer2/util/MediaClock;)V
    .locals 2
    .param p1, "clock"    # Lorg/telegram/messenger/exoplayer2/util/MediaClock;

    .prologue
    .line 78
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/util/MediaClock;->getPositionUs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;->setPositionUs(J)V

    .line 79
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/util/MediaClock;->getPlaybackParameters()Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;->playbackParameters:Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    .line 80
    return-void
.end method
