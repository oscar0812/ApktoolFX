.class public final Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;
.super Ljava/lang/Object;
.source "MergingMediaSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/source/MediaSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource$IllegalMergeException;
    }
.end annotation


# static fields
.field private static final PERIOD_COUNT_UNSET:I = -0x1


# instance fields
.field private listener:Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

.field private final mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

.field private mergeError:Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource$IllegalMergeException;

.field private final pendingTimelineSources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/MediaSource;",
            ">;"
        }
    .end annotation
.end field

.field private periodCount:I

.field private primaryManifest:Ljava/lang/Object;

.field private primaryTimeline:Lorg/telegram/messenger/exoplayer2/Timeline;

.field private final window:Lorg/telegram/messenger/exoplayer2/Timeline$Window;


# direct methods
.method public varargs constructor <init>([Lorg/telegram/messenger/exoplayer2/source/MediaSource;)V
    .locals 2
    .param p1, "mediaSources"    # [Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->pendingTimelineSources:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/Timeline$Window;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->window:Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->periodCount:I

    .line 92
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;ILorg/telegram/messenger/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lorg/telegram/messenger/exoplayer2/Timeline;
    .param p3, "x3"    # Ljava/lang/Object;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->handleSourceInfoRefreshed(ILorg/telegram/messenger/exoplayer2/Timeline;Ljava/lang/Object;)V

    return-void
.end method

.method private checkTimelineMerges(Lorg/telegram/messenger/exoplayer2/Timeline;)Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource$IllegalMergeException;
    .locals 4
    .param p1, "timeline"    # Lorg/telegram/messenger/exoplayer2/Timeline;

    .prologue
    const/4 v3, 0x0

    .line 160
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/Timeline;->getWindowCount()I

    move-result v1

    .line 161
    .local v1, "windowCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 162
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->window:Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    invoke-virtual {p1, v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/Timeline;->getWindow(ILorg/telegram/messenger/exoplayer2/Timeline$Window;Z)Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->isDynamic:Z

    if-eqz v2, :cond_0

    .line 163
    new-instance v2, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    invoke-direct {v2, v3}, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource$IllegalMergeException;-><init>(I)V

    .line 171
    :goto_1
    return-object v2

    .line 161
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_1
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->periodCount:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 167
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriodCount()I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->periodCount:I

    .line 171
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 168
    :cond_3
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriodCount()I

    move-result v2

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->periodCount:I

    if-eq v2, v3, :cond_2

    .line 169
    new-instance v2, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource$IllegalMergeException;-><init>(I)V

    goto :goto_1
.end method

.method private handleSourceInfoRefreshed(ILorg/telegram/messenger/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 3
    .param p1, "sourceIndex"    # I
    .param p2, "timeline"    # Lorg/telegram/messenger/exoplayer2/Timeline;
    .param p3, "manifest"    # Ljava/lang/Object;

    .prologue
    .line 143
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->mergeError:Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    if-nez v0, :cond_0

    .line 144
    invoke-direct {p0, p2}, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->checkTimelineMerges(Lorg/telegram/messenger/exoplayer2/Timeline;)Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->mergeError:Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    .line 146
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->mergeError:Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    if-eqz v0, :cond_2

    .line 157
    :cond_1
    :goto_0
    return-void

    .line 149
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->pendingTimelineSources:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 150
    if-nez p1, :cond_3

    .line 151
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->primaryTimeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    .line 152
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->primaryManifest:Ljava/lang/Object;

    .line 154
    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->pendingTimelineSources:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->listener:Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->primaryTimeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->primaryManifest:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;->onSourceInfoRefreshed(Lorg/telegram/messenger/exoplayer2/Timeline;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public createPeriod(ILorg/telegram/messenger/exoplayer2/upstream/Allocator;J)Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
    .locals 3
    .param p1, "index"    # I
    .param p2, "allocator"    # Lorg/telegram/messenger/exoplayer2/upstream/Allocator;
    .param p3, "positionUs"    # J

    .prologue
    .line 120
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    array-length v2, v2

    new-array v1, v2, [Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    .line 121
    .local v1, "periods":[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 122
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    aget-object v2, v2, v0

    invoke-interface {v2, p1, p2, p3, p4}, Lorg/telegram/messenger/exoplayer2/source/MediaSource;->createPeriod(ILorg/telegram/messenger/exoplayer2/upstream/Allocator;J)Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    move-result-object v2

    aput-object v2, v1, v0

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_0
    new-instance v2, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;

    invoke-direct {v2, v1}, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;-><init>([Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V

    return-object v2
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->mergeError:Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->mergeError:Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    throw v1

    .line 113
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 114
    .local v0, "mediaSource":Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    .end local v0    # "mediaSource":Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    :cond_1
    return-void
.end method

.method public prepareSource(Lorg/telegram/messenger/exoplayer2/ExoPlayer;ZLorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;)V
    .locals 5
    .param p1, "player"    # Lorg/telegram/messenger/exoplayer2/ExoPlayer;
    .param p2, "isTopLevelSource"    # Z
    .param p3, "listener"    # Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

    .prologue
    .line 96
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->listener:Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

    .line 97
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 98
    move v1, v0

    .line 99
    .local v1, "sourceIndex":I
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    new-instance v4, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource$1;

    invoke-direct {v4, p0, v1}, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource$1;-><init>(Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;I)V

    invoke-interface {v2, p1, v3, v4}, Lorg/telegram/messenger/exoplayer2/source/MediaSource;->prepareSource(Lorg/telegram/messenger/exoplayer2/ExoPlayer;ZLorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;)V

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    .end local v1    # "sourceIndex":I
    :cond_0
    return-void
.end method

.method public releasePeriod(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V
    .locals 4
    .param p1, "mediaPeriod"    # Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    .prologue
    .line 129
    move-object v1, p1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;

    .line 130
    .local v1, "mergingPeriod":Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 131
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    aget-object v2, v2, v0

    iget-object v3, v1, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->periods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    aget-object v3, v3, v0

    invoke-interface {v2, v3}, Lorg/telegram/messenger/exoplayer2/source/MediaSource;->releasePeriod(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_0
    return-void
.end method

.method public releaseSource()V
    .locals 4

    .prologue
    .line 137
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 138
    .local v0, "mediaSource":Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/source/MediaSource;->releaseSource()V

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    .end local v0    # "mediaSource":Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    :cond_0
    return-void
.end method
