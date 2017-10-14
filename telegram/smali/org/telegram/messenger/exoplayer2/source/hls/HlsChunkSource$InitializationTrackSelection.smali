.class final Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;
.super Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InitializationTrackSelection"
.end annotation


# instance fields
.field private selectedIndex:I


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/source/TrackGroup;[I)V
    .locals 1
    .param p1, "group"    # Lorg/telegram/messenger/exoplayer2/source/TrackGroup;
    .param p2, "tracks"    # [I

    .prologue
    .line 388
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;-><init>(Lorg/telegram/messenger/exoplayer2/source/TrackGroup;[I)V

    .line 389
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->getFormat(I)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;->indexOf(Lorg/telegram/messenger/exoplayer2/Format;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;->selectedIndex:I

    .line 390
    return-void
.end method


# virtual methods
.method public getSelectedIndex()I
    .locals 1

    .prologue
    .line 411
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;->selectedIndex:I

    return v0
.end method

.method public getSelectionData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 421
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectionReason()I
    .locals 1

    .prologue
    .line 416
    const/4 v0, 0x0

    return v0
.end method

.method public updateSelectedTrack(J)V
    .locals 4
    .param p1, "bufferedDurationUs"    # J

    .prologue
    .line 394
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 395
    .local v2, "nowMs":J
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;->selectedIndex:I

    invoke-virtual {p0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;->isBlacklisted(IJ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 402
    :goto_0
    return-void

    .line 399
    :cond_0
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;->length:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 400
    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;->isBlacklisted(IJ)Z

    move-result v1

    if-nez v1, :cond_1

    .line 401
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;->selectedIndex:I

    goto :goto_0

    .line 399
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 406
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method
