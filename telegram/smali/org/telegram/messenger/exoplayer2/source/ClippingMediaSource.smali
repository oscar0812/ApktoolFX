.class public final Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource;
.super Ljava/lang/Object;
.source "ClippingMediaSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/source/MediaSource;
.implements Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource$ClippingTimeline;
    }
.end annotation


# instance fields
.field private clippingTimeline:Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource$ClippingTimeline;

.field private final endUs:J

.field private final mediaPeriods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSource:Lorg/telegram/messenger/exoplayer2/source/MediaSource;

.field private sourceListener:Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

.field private final startUs:J


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/source/MediaSource;JJ)V
    .locals 2
    .param p1, "mediaSource"    # Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    .param p2, "startPositionUs"    # J
    .param p4, "endPositionUs"    # J

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 53
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource;->mediaSource:Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    .line 54
    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource;->startUs:J

    .line 55
    iput-wide p4, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource;->endUs:J

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    .line 57
    return-void

    .line 52
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createPeriod(ILorg/telegram/messenger/exoplayer2/upstream/Allocator;J)Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
    .locals 7
    .param p1, "index"    # I
    .param p2, "allocator"    # Lorg/telegram/messenger/exoplayer2/upstream/Allocator;
    .param p3, "positionUs"    # J

    .prologue
    .line 72
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource;->mediaSource:Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource;->startUs:J

    add-long/2addr v2, p3

    .line 73
    invoke-interface {v1, p1, p2, v2, v3}, Lorg/telegram/messenger/exoplayer2/source/MediaSource;->createPeriod(ILorg/telegram/messenger/exoplayer2/upstream/Allocator;J)Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;-><init>(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V

    .line 74
    .local v0, "mediaPeriod":Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource;->clippingTimeline:Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource$ClippingTimeline;

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->access$000(Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource$ClippingTimeline;)J

    move-result-wide v2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource;->clippingTimeline:Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource$ClippingTimeline;

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->access$100(Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource$ClippingTimeline;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->setClipping(JJ)V

    .line 76
    return-object v0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource;->mediaSource:Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    .line 68
    return-void
.end method

.method public onSourceInfoRefreshed(Lorg/telegram/messenger/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 12
    .param p1, "timeline"    # Lorg/telegram/messenger/exoplayer2/Timeline;
    .param p2, "manifest"    # Ljava/lang/Object;

    .prologue
    .line 94
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource$ClippingTimeline;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource;->startUs:J

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource;->endUs:J

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource$ClippingTimeline;-><init>(Lorg/telegram/messenger/exoplayer2/Timeline;JJ)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource;->clippingTimeline:Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource$ClippingTimeline;

    .line 95
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource;->sourceListener:Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource;->clippingTimeline:Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource$ClippingTimeline;

    invoke-interface {v0, v1, p2}, Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;->onSourceInfoRefreshed(Lorg/telegram/messenger/exoplayer2/Timeline;Ljava/lang/Object;)V

    .line 96
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource;->clippingTimeline:Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource$ClippingTimeline;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->access$000(Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource$ClippingTimeline;)J

    move-result-wide v10

    .line 97
    .local v10, "startUs":J
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource;->clippingTimeline:Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource$ClippingTimeline;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->access$100(Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource$ClippingTimeline;)J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/high16 v8, -0x8000000000000000L

    .line 99
    .local v8, "endUs":J
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 100
    .local v6, "count":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v6, :cond_1

    .line 101
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;

    invoke-virtual {v0, v10, v11, v8, v9}, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->setClipping(JJ)V

    .line 100
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 97
    .end local v6    # "count":I
    .end local v7    # "i":I
    .end local v8    # "endUs":J
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource;->clippingTimeline:Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource$ClippingTimeline;

    .line 98
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->access$100(Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource$ClippingTimeline;)J

    move-result-wide v8

    goto :goto_0

    .line 103
    .restart local v6    # "count":I
    .restart local v7    # "i":I
    .restart local v8    # "endUs":J
    :cond_1
    return-void
.end method

.method public prepareSource(Lorg/telegram/messenger/exoplayer2/ExoPlayer;ZLorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;)V
    .locals 2
    .param p1, "player"    # Lorg/telegram/messenger/exoplayer2/ExoPlayer;
    .param p2, "isTopLevelSource"    # Z
    .param p3, "listener"    # Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

    .prologue
    .line 61
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource;->sourceListener:Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

    .line 62
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource;->mediaSource:Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p0}, Lorg/telegram/messenger/exoplayer2/source/MediaSource;->prepareSource(Lorg/telegram/messenger/exoplayer2/ExoPlayer;ZLorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;)V

    .line 63
    return-void
.end method

.method public releasePeriod(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V
    .locals 2
    .param p1, "mediaPeriod"    # Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 82
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource;->mediaSource:Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    check-cast p1, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;

    .end local p1    # "mediaPeriod":Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/source/MediaSource;->releasePeriod(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V

    .line 83
    return-void
.end method

.method public releaseSource()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource;->mediaSource:Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/source/MediaSource;->releaseSource()V

    .line 88
    return-void
.end method
