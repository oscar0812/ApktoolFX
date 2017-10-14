.class public final Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;
.super Ljava/lang/Object;
.source "TimestampAdjuster.java"


# static fields
.field public static final DO_NOT_OFFSET:J = 0x7fffffffffffffffL

.field private static final MAX_PTS_PLUS_ONE:J = 0x200000000L


# instance fields
.field private firstSampleTimestampUs:J

.field private volatile lastSampleTimestamp:J

.field private timestampOffsetUs:J


# direct methods
.method public constructor <init>(J)V
    .locals 3
    .param p1, "firstSampleTimestampUs"    # J

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;->lastSampleTimestamp:J

    .line 48
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;->setFirstSampleTimestampUs(J)V

    .line 49
    return-void
.end method

.method public static ptsToUs(J)J
    .locals 4
    .param p0, "pts"    # J

    .prologue
    .line 175
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p0

    const-wide/32 v2, 0x15f90

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static usToPts(J)J
    .locals 4
    .param p0, "us"    # J

    .prologue
    .line 185
    const-wide/32 v0, 0x15f90

    mul-long/2addr v0, p0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public adjustSampleTimestamp(J)J
    .locals 5
    .param p1, "timeUs"    # J

    .prologue
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 137
    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 154
    :goto_0
    return-wide v0

    .line 141
    :cond_0
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;->lastSampleTimestamp:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_1

    .line 142
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;->lastSampleTimestamp:J

    .line 154
    :goto_1
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;->timestampOffsetUs:J

    add-long/2addr v0, p1

    goto :goto_0

    .line 144
    :cond_1
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;->firstSampleTimestampUs:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 146
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;->firstSampleTimestampUs:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;->timestampOffsetUs:J

    .line 148
    :cond_2
    monitor-enter p0

    .line 149
    :try_start_0
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;->lastSampleTimestamp:J

    .line 151
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 152
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public adjustTsTimestamp(J)J
    .locals 13
    .param p1, "pts"    # J

    .prologue
    .line 114
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, p1, v8

    if-nez v8, :cond_0

    .line 115
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 127
    :goto_0
    return-wide v8

    .line 117
    :cond_0
    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;->lastSampleTimestamp:J

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v8, v10

    if-eqz v8, :cond_1

    .line 120
    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;->lastSampleTimestamp:J

    invoke-static {v8, v9}, Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;->usToPts(J)J

    move-result-wide v2

    .line 121
    .local v2, "lastPts":J
    const-wide v8, 0x100000000L

    add-long/2addr v8, v2

    const-wide v10, 0x200000000L

    div-long v0, v8, v10

    .line 122
    .local v0, "closestWrapCount":J
    const-wide v8, 0x200000000L

    const-wide/16 v10, 0x1

    sub-long v10, v0, v10

    mul-long/2addr v8, v10

    add-long v6, p1, v8

    .line 123
    .local v6, "ptsWrapBelow":J
    const-wide v8, 0x200000000L

    mul-long/2addr v8, v0

    add-long v4, p1, v8

    .line 124
    .local v4, "ptsWrapAbove":J
    sub-long v8, v6, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    sub-long v10, v4, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_2

    move-wide p1, v6

    .line 127
    .end local v0    # "closestWrapCount":J
    .end local v2    # "lastPts":J
    .end local v4    # "ptsWrapAbove":J
    .end local v6    # "ptsWrapBelow":J
    :cond_1
    :goto_1
    invoke-static {p1, p2}, Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;->ptsToUs(J)J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    move-result-wide v8

    goto :goto_0

    .restart local v0    # "closestWrapCount":J
    .restart local v2    # "lastPts":J
    .restart local v4    # "ptsWrapAbove":J
    .restart local v6    # "ptsWrapBelow":J
    :cond_2
    move-wide p1, v4

    .line 124
    goto :goto_1
.end method

.method public getFirstSampleTimestampUs()J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;->firstSampleTimestampUs:J

    return-wide v0
.end method

.method public getLastAdjustedTimestampUs()J
    .locals 6

    .prologue
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 82
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;->lastSampleTimestamp:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_1

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;->lastSampleTimestamp:J

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;->firstSampleTimestampUs:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;->firstSampleTimestampUs:J

    goto :goto_0
.end method

.method public getTimestampOffsetUs()J
    .locals 6

    .prologue
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 96
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;->firstSampleTimestampUs:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    const-wide/16 v0, 0x0

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;->lastSampleTimestamp:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;->timestampOffsetUs:J

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 104
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;->lastSampleTimestamp:J

    .line 105
    return-void
.end method

.method public declared-synchronized setFirstSampleTimestampUs(J)V
    .locals 5
    .param p1, "firstSampleTimestampUs"    # J

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;->lastSampleTimestamp:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 60
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;->firstSampleTimestampUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    .line 59
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized waitUntilInitialized()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 163
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;->lastSampleTimestamp:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 164
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 166
    :cond_0
    monitor-exit p0

    return-void
.end method
