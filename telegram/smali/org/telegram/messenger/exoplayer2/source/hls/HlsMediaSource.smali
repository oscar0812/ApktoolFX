.class public final Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;
.super Ljava/lang/Object;
.source "HlsMediaSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/source/MediaSource;
.implements Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;


# static fields
.field public static final DEFAULT_MIN_LOADABLE_RETRY_COUNT:I = 0x3


# instance fields
.field private final dataSourceFactory:Lorg/telegram/messenger/exoplayer2/source/hls/HlsDataSourceFactory;

.field private final eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

.field private final manifestUri:Landroid/net/Uri;

.field private final minLoadableRetryCount:I

.field private playlistTracker:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

.field private sourceListener:Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/source/hls/HlsDataSourceFactory;ILandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V
    .locals 1
    .param p1, "manifestUri"    # Landroid/net/Uri;
    .param p2, "dataSourceFactory"    # Lorg/telegram/messenger/exoplayer2/source/hls/HlsDataSourceFactory;
    .param p3, "minLoadableRetryCount"    # I
    .param p4, "eventHandler"    # Landroid/os/Handler;
    .param p5, "eventListener"    # Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;->manifestUri:Landroid/net/Uri;

    .line 71
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;->dataSourceFactory:Lorg/telegram/messenger/exoplayer2/source/hls/HlsDataSourceFactory;

    .line 72
    iput p3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;->minLoadableRetryCount:I

    .line 73
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    invoke-direct {v0, p4, p5}, Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;ILandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V
    .locals 6
    .param p1, "manifestUri"    # Landroid/net/Uri;
    .param p2, "dataSourceFactory"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;
    .param p3, "minLoadableRetryCount"    # I
    .param p4, "eventHandler"    # Landroid/os/Handler;
    .param p5, "eventListener"    # Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;

    .prologue
    .line 63
    new-instance v2, Lorg/telegram/messenger/exoplayer2/source/hls/DefaultHlsDataSourceFactory;

    invoke-direct {v2, p2}, Lorg/telegram/messenger/exoplayer2/source/hls/DefaultHlsDataSourceFactory;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;)V

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;-><init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/source/hls/HlsDataSourceFactory;ILandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V
    .locals 6
    .param p1, "manifestUri"    # Landroid/net/Uri;
    .param p2, "dataSourceFactory"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;
    .param p3, "eventHandler"    # Landroid/os/Handler;
    .param p4, "eventListener"    # Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;

    .prologue
    .line 56
    const/4 v3, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;-><init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;ILandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    .line 58
    return-void
.end method


# virtual methods
.method public createPeriod(ILorg/telegram/messenger/exoplayer2/upstream/Allocator;J)Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
    .locals 9
    .param p1, "index"    # I
    .param p2, "allocator"    # Lorg/telegram/messenger/exoplayer2/upstream/Allocator;
    .param p3, "positionUs"    # J

    .prologue
    .line 92
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 93
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;->dataSourceFactory:Lorg/telegram/messenger/exoplayer2/source/hls/HlsDataSourceFactory;

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;->minLoadableRetryCount:I

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    move-object v5, p2

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;-><init>(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;Lorg/telegram/messenger/exoplayer2/source/hls/HlsDataSourceFactory;ILorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;Lorg/telegram/messenger/exoplayer2/upstream/Allocator;J)V

    return-object v0

    .line 92
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->maybeThrowPlaylistRefreshError()V

    .line 88
    return-void
.end method

.method public onPrimaryPlaylistRefreshed(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V
    .locals 24
    .param p1, "playlist"    # Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .prologue
    .line 114
    move-object/from16 v0, p1

    iget-wide v10, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startOffsetUs:J

    .line 115
    .local v10, "windowDefaultStartPositionUs":J
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-virtual {v6}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->isLive()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 116
    move-object/from16 v0, p1

    iget-boolean v6, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-eqz v6, :cond_1

    move-object/from16 v0, p1

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    move-object/from16 v0, p1

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    add-long v4, v6, v8

    .line 118
    .local v4, "periodDurationUs":J
    :goto_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 119
    .local v2, "segments":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v10, v6

    if-nez v6, :cond_0

    .line 120
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    const-wide/16 v10, 0x0

    .line 123
    :cond_0
    :goto_1
    new-instance v3, Lorg/telegram/messenger/exoplayer2/source/SinglePeriodTimeline;

    move-object/from16 v0, p1

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    move-object/from16 v0, p1

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    const/4 v12, 0x1

    move-object/from16 v0, p1

    iget-boolean v13, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-nez v13, :cond_3

    const/4 v13, 0x1

    :goto_2
    invoke-direct/range {v3 .. v13}, Lorg/telegram/messenger/exoplayer2/source/SinglePeriodTimeline;-><init>(JJJJZZ)V

    .line 132
    .end local v2    # "segments":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .end local v4    # "periodDurationUs":J
    .local v3, "timeline":Lorg/telegram/messenger/exoplayer2/source/SinglePeriodTimeline;
    :goto_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;->sourceListener:Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

    new-instance v7, Lorg/telegram/messenger/exoplayer2/source/hls/HlsManifest;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 133
    invoke-virtual {v8}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->getMasterPlaylist()Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-direct {v7, v8, v0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsManifest;-><init>(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V

    .line 132
    invoke-interface {v6, v3, v7}, Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;->onSourceInfoRefreshed(Lorg/telegram/messenger/exoplayer2/Timeline;Ljava/lang/Object;)V

    .line 134
    return-void

    .line 116
    .end local v3    # "timeline":Lorg/telegram/messenger/exoplayer2/source/SinglePeriodTimeline;
    :cond_1
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    .line 120
    .restart local v2    # "segments":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .restart local v4    # "periodDurationUs":J
    :cond_2
    const/4 v6, 0x0

    .line 121
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x3

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    iget-wide v10, v6, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->relativeStartTimeUs:J

    goto :goto_1

    .line 123
    :cond_3
    const/4 v13, 0x0

    goto :goto_2

    .line 126
    .end local v2    # "segments":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .end local v4    # "periodDurationUs":J
    :cond_4
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v10, v6

    if-nez v6, :cond_5

    .line 127
    const-wide/16 v10, 0x0

    .line 129
    :cond_5
    new-instance v3, Lorg/telegram/messenger/exoplayer2/source/SinglePeriodTimeline;

    move-object/from16 v0, p1

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    move-object/from16 v0, p1

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    add-long v14, v6, v8

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    move-wide/from16 v18, v0

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object v13, v3

    move-wide/from16 v20, v10

    invoke-direct/range {v13 .. v23}, Lorg/telegram/messenger/exoplayer2/source/SinglePeriodTimeline;-><init>(JJJJZZ)V

    .restart local v3    # "timeline":Lorg/telegram/messenger/exoplayer2/source/SinglePeriodTimeline;
    goto :goto_3
.end method

.method public prepareSource(Lorg/telegram/messenger/exoplayer2/ExoPlayer;ZLorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;)V
    .locals 6
    .param p1, "player"    # Lorg/telegram/messenger/exoplayer2/ExoPlayer;
    .param p2, "isTopLevelSource"    # Z
    .param p3, "listener"    # Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

    .prologue
    .line 78
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 79
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;->manifestUri:Landroid/net/Uri;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;->dataSourceFactory:Lorg/telegram/messenger/exoplayer2/source/hls/HlsDataSourceFactory;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;->minLoadableRetryCount:I

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;-><init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/source/hls/HlsDataSourceFactory;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;ILorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 81
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;->sourceListener:Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

    .line 82
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->start()V

    .line 83
    return-void

    .line 78
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public releasePeriod(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V
    .locals 0
    .param p1, "mediaPeriod"    # Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    .prologue
    .line 99
    check-cast p1, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;

    .end local p1    # "mediaPeriod":Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->release()V

    .line 100
    return-void
.end method

.method public releaseSource()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 104
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->release()V

    .line 106
    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 108
    :cond_0
    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;->sourceListener:Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

    .line 109
    return-void
.end method
