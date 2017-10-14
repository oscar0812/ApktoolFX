.class public final Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;
.super Ljava/lang/Object;
.source "ClippingMediaPeriod.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
.implements Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;
    }
.end annotation


# instance fields
.field private callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

.field private endUs:J

.field public final mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

.field private pendingInitialDiscontinuity:Z

.field private sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

.field private startUs:J


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V
    .locals 2
    .param p1, "mediaPeriod"    # Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    .prologue
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    .line 53
    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    .line 54
    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    .line 55
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    .line 56
    return-void
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 5
    .param p1, "positionUs"    # J

    .prologue
    .line 174
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    add-long/2addr v2, p1

    invoke-interface {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->continueLoading(J)Z

    move-result v0

    return v0
.end method

.method public discardBuffer(J)V
    .locals 5
    .param p1, "positionUs"    # J

    .prologue
    .line 114
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    add-long/2addr v2, p1

    invoke-interface {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->discardBuffer(J)V

    .line 115
    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 6

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    .line 141
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    invoke-interface {v4}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    .line 142
    .local v0, "bufferedPositionUs":J
    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    cmp-long v4, v0, v4

    if-ltz v4, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-wide v2

    :cond_1
    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    sub-long v4, v0, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_0
.end method

.method public getNextLoadPositionUs()J
    .locals 6

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    .line 164
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    invoke-interface {v4}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->getNextLoadPositionUs()J

    move-result-wide v0

    .line 165
    .local v0, "nextLoadPositionUs":J
    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    cmp-long v4, v0, v4

    if-ltz v4, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-wide v2

    :cond_1
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    sub-long v2, v0, v2

    goto :goto_0
.end method

.method public getTrackGroups()Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->getTrackGroups()Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    move-result-object v0

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
    .line 78
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->maybeThrowPrepareError()V

    .line 79
    return-void
.end method

.method public onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V
    .locals 1
    .param p1, "source"    # Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    .prologue
    .line 195
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V

    .line 196
    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V
    .locals 0

    .prologue
    .line 29
    check-cast p1, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public onPrepared(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V
    .locals 8
    .param p1, "mediaPeriod"    # Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    .prologue
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 181
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 189
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->pendingInitialDiscontinuity:Z

    .line 190
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V

    .line 191
    return-void

    :cond_0
    move v0, v2

    .line 181
    goto :goto_0

    :cond_1
    move v1, v2

    .line 189
    goto :goto_1
.end method

.method public prepare(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;)V
    .locals 1
    .param p1, "callback"    # Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    .prologue
    .line 72
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    .line 73
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->prepare(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;)V

    .line 74
    return-void
.end method

.method public readDiscontinuity()J
    .locals 10

    .prologue
    const/4 v4, 0x1

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x0

    .line 119
    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->pendingInitialDiscontinuity:Z

    if-eqz v3, :cond_3

    .line 120
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    array-length v8, v4

    move v3, v5

    :goto_0
    if-ge v3, v8, :cond_1

    aget-object v2, v4, v3

    .line 121
    .local v2, "sampleStream":Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;
    if-eqz v2, :cond_0

    .line 122
    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->clearPendingDiscontinuity()V

    .line 120
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 125
    .end local v2    # "sampleStream":Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;
    :cond_1
    iput-boolean v5, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->pendingInitialDiscontinuity:Z

    .line 127
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->readDiscontinuity()J

    move-result-wide v0

    .line 128
    .local v0, "discontinuityUs":J
    cmp-long v3, v0, v6

    if-eqz v3, :cond_2

    move-wide v4, v0

    .line 136
    :goto_1
    return-wide v4

    .line 128
    :cond_2
    const-wide/16 v4, 0x0

    goto :goto_1

    .line 130
    .end local v0    # "discontinuityUs":J
    :cond_3
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    invoke-interface {v3}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v0

    .line 131
    .restart local v0    # "discontinuityUs":J
    cmp-long v3, v0, v6

    if-nez v3, :cond_4

    move-wide v4, v6

    .line 132
    goto :goto_1

    .line 134
    :cond_4
    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    cmp-long v3, v0, v6

    if-ltz v3, :cond_7

    move v3, v4

    :goto_2
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 135
    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v3, v6, v8

    if-eqz v3, :cond_5

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    cmp-long v3, v0, v6

    if-gtz v3, :cond_6

    :cond_5
    move v5, v4

    :cond_6
    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 136
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    sub-long v4, v0, v4

    goto :goto_1

    :cond_7
    move v3, v5

    .line 134
    goto :goto_2
.end method

.method public seekToUs(J)J
    .locals 9
    .param p1, "positionUs"    # J

    .prologue
    const/4 v1, 0x0

    .line 151
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    array-length v6, v5

    move v4, v1

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v0, v5, v4

    .line 152
    .local v0, "sampleStream":Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;
    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->clearSentEos()V

    .line 151
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 156
    .end local v0    # "sampleStream":Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;
    :cond_1
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    add-long/2addr v6, p1

    invoke-interface {v4, v6, v7}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->seekToUs(J)J

    move-result-wide v2

    .line 157
    .local v2, "seekUs":J
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    add-long/2addr v4, p1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    cmp-long v4, v2, v4

    if-ltz v4, :cond_3

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    cmp-long v4, v2, v4

    if-gtz v4, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 159
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    sub-long v4, v2, v4

    return-wide v4
.end method

.method public selectTracks([Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;[Z[Lorg/telegram/messenger/exoplayer2/source/SampleStream;[ZJ)J
    .locals 19
    .param p1, "selections"    # [Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    .param p2, "mayRetainStreamFlags"    # [Z
    .param p3, "streams"    # [Lorg/telegram/messenger/exoplayer2/source/SampleStream;
    .param p4, "streamResetFlags"    # [Z
    .param p5, "positionUs"    # J

    .prologue
    .line 89
    move-object/from16 v0, p3

    array-length v3, v0

    new-array v3, v3, [Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    .line 90
    move-object/from16 v0, p3

    array-length v3, v0

    new-array v6, v3, [Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    .line 91
    .local v6, "internalStreams":[Lorg/telegram/messenger/exoplayer2/source/SampleStream;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    move-object/from16 v0, p3

    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 92
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    aget-object v3, p3, v2

    check-cast v3, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    aput-object v3, v4, v2

    .line 93
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    aget-object v3, v3, v2

    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->access$000(Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;)Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    move-result-object v3

    :goto_1
    aput-object v3, v6, v2

    .line 91
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 95
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    add-long v8, p5, v4

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    invoke-interface/range {v3 .. v9}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->selectTracks([Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;[Z[Lorg/telegram/messenger/exoplayer2/source/SampleStream;[ZJ)J

    move-result-wide v16

    .line 97
    .local v16, "enablePositionUs":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    add-long v4, v4, p5

    cmp-long v3, v16, v4

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    cmp-long v3, v16, v4

    if-ltz v3, :cond_4

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    cmp-long v3, v16, v4

    if-gtz v3, :cond_4

    :cond_2
    const/4 v3, 0x1

    :goto_2
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 100
    const/4 v2, 0x0

    :goto_3
    move-object/from16 v0, p3

    array-length v3, v0

    if-ge v2, v3, :cond_7

    .line 101
    aget-object v3, v6, v2

    if-nez v3, :cond_5

    .line 102
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    .line 107
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    aget-object v3, v3, v2

    aput-object v3, p3, v2

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 97
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 103
    :cond_5
    aget-object v3, p3, v2

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    aget-object v3, v3, v2

    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->access$000(Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;)Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    move-result-object v3

    aget-object v4, v6, v2

    if-eq v3, v4, :cond_3

    .line 104
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    new-instance v7, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    aget-object v9, v6, v2

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->pendingInitialDiscontinuity:Z

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v14}, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;-><init>(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;Lorg/telegram/messenger/exoplayer2/source/SampleStream;JJZ)V

    aput-object v7, v3, v2

    goto :goto_4

    .line 109
    :cond_7
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    sub-long v4, v16, v4

    return-wide v4
.end method

.method public setClipping(JJ)V
    .locals 1
    .param p1, "startUs"    # J
    .param p3, "endUs"    # J

    .prologue
    .line 66
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    .line 67
    iput-wide p3, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    .line 68
    return-void
.end method
