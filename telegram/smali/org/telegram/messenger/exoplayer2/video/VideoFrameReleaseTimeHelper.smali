.class public final Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;
.super Ljava/lang/Object;
.source "VideoFrameReleaseTimeHelper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;
    }
.end annotation


# static fields
.field private static final CHOREOGRAPHER_SAMPLE_DELAY_MILLIS:J = 0x1f4L

.field private static final MAX_ALLOWED_DRIFT_NS:J = 0x1312d00L

.field private static final MIN_FRAMES_FOR_ADJUSTMENT:I = 0x6

.field private static final VSYNC_OFFSET_PERCENTAGE:J = 0x50L


# instance fields
.field private adjustedLastFrameTimeNs:J

.field private frameCount:J

.field private haveSync:Z

.field private lastFramePresentationTimeUs:J

.field private pendingAdjustedFrameTimeNs:J

.field private syncFramePresentationTimeNs:J

.field private syncUnadjustedReleaseTimeNs:J

.field private final useDefaultDisplayVsync:Z

.field private final vsyncDurationNs:J

.field private final vsyncOffsetNs:J

.field private final vsyncSampler:Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 59
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;-><init>(DZ)V

    .line 60
    return-void
.end method

.method private constructor <init>(DZ)V
    .locals 5
    .param p1, "defaultDisplayRefreshRate"    # D
    .param p3, "useDefaultDisplayVsync"    # Z

    .prologue
    const-wide/16 v2, -0x1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-boolean p3, p0, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;->useDefaultDisplayVsync:Z

    .line 75
    if-eqz p3, :cond_0

    .line 76
    invoke-static {}, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;->getInstance()Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;->vsyncSampler:Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;

    .line 77
    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v0, p1

    double-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;->vsyncDurationNs:J

    .line 78
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;->vsyncDurationNs:J

    const-wide/16 v2, 0x50

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;->vsyncOffsetNs:J

    .line 84
    :goto_0
    return-void

    .line 80
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;->vsyncSampler:Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;

    .line 81
    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;->vsyncDurationNs:J

    .line 82
    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;->vsyncOffsetNs:J

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;->getDefaultDisplayRefreshRate(Landroid/content/Context;)F

    move-result v0

    float-to-double v0, v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;-><init>(DZ)V

    .line 70
    return-void
.end method

.method private static closestVsync(JJJ)J
    .locals 14
    .param p0, "releaseTime"    # J
    .param p2, "sampledVsyncTime"    # J
    .param p4, "vsyncDuration"    # J

    .prologue
    .line 187
    sub-long v12, p0, p2

    div-long v10, v12, p4

    .line 188
    .local v10, "vsyncCount":J
    mul-long v12, p4, v10

    add-long v8, p2, v12

    .line 191
    .local v8, "snappedTimeNs":J
    cmp-long v12, p0, v8

    if-gtz v12, :cond_0

    .line 192
    sub-long v6, v8, p4

    .line 193
    .local v6, "snappedBeforeNs":J
    move-wide v2, v8

    .line 198
    .local v2, "snappedAfterNs":J
    :goto_0
    sub-long v0, v2, p0

    .line 199
    .local v0, "snappedAfterDiff":J
    sub-long v4, p0, v6

    .line 200
    .local v4, "snappedBeforeDiff":J
    cmp-long v12, v0, v4

    if-gez v12, :cond_1

    .end local v2    # "snappedAfterNs":J
    :goto_1
    return-wide v2

    .line 195
    .end local v0    # "snappedAfterDiff":J
    .end local v4    # "snappedBeforeDiff":J
    .end local v6    # "snappedBeforeNs":J
    :cond_0
    move-wide v6, v8

    .line 196
    .restart local v6    # "snappedBeforeNs":J
    add-long v2, v8, p4

    .restart local v2    # "snappedAfterNs":J
    goto :goto_0

    .restart local v0    # "snappedAfterDiff":J
    .restart local v4    # "snappedBeforeDiff":J
    :cond_1
    move-wide v2, v6

    .line 200
    goto :goto_1
.end method

.method private static getDefaultDisplayRefreshRate(Landroid/content/Context;)F
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 204
    const-string/jumbo v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 205
    .local v0, "manager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRefreshRate()F

    move-result v1

    return v1
.end method

.method private isDriftTooLarge(JJ)Z
    .locals 9
    .param p1, "frameTimeNs"    # J
    .param p3, "releaseTimeNs"    # J

    .prologue
    .line 181
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;->syncFramePresentationTimeNs:J

    sub-long v0, p1, v4

    .line 182
    .local v0, "elapsedFrameTimeNs":J
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;->syncUnadjustedReleaseTimeNs:J

    sub-long v2, p3, v4

    .line 183
    .local v2, "elapsedReleaseTimeNs":J
    sub-long v4, v2, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v6, 0x1312d00

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public adjustReleaseTime(JJ)J
    .locals 23
    .param p1, "framePresentationTimeUs"    # J
    .param p3, "unadjustedReleaseTimeNs"    # J

    .prologue
    .line 115
    const-wide/16 v8, 0x3e8

    mul-long v18, p1, v8

    .line 118
    .local v18, "framePresentationTimeNs":J
    move-wide/from16 v12, v18

    .line 119
    .local v12, "adjustedFrameTimeNs":J
    move-wide/from16 v6, p3

    .line 121
    .local v6, "adjustedReleaseTimeNs":J
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;->haveSync:Z

    if-eqz v8, :cond_1

    .line 123
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;->lastFramePresentationTimeUs:J

    cmp-long v8, p1, v8

    if-eqz v8, :cond_0

    .line 124
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;->frameCount:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    move-object/from16 v0, p0

    iput-wide v8, v0, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;->frameCount:J

    .line 125
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;->pendingAdjustedFrameTimeNs:J

    move-object/from16 v0, p0

    iput-wide v8, v0, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;->adjustedLastFrameTimeNs:J

    .line 127
    :cond_0
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;->frameCount:J

    const-wide/16 v10, 0x6

    cmp-long v8, v8, v10

    if-ltz v8, :cond_5

    .line 132
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;->syncFramePresentationTimeNs:J

    sub-long v8, v18, v8

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;->frameCount:J

    div-long v14, v8, v10

    .line 135
    .local v14, "averageFrameDurationNs":J
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;->adjustedLastFrameTimeNs:J

    add-long v16, v8, v14

    .line 137
    .local v16, "candidateAdjustedFrameTimeNs":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move-wide/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;->isDriftTooLarge(JJ)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 138
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;->haveSync:Z

    .line 154
    .end local v14    # "averageFrameDurationNs":J
    .end local v16    # "candidateAdjustedFrameTimeNs":J
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;->haveSync:Z

    if-nez v8, :cond_2

    .line 155
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;->syncFramePresentationTimeNs:J

    .line 156
    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;->syncUnadjustedReleaseTimeNs:J

    .line 157
    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    iput-wide v8, v0, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;->frameCount:J

    .line 158
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;->haveSync:Z

    .line 159
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;->onSynced()V

    .line 162
    :cond_2
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;->lastFramePresentationTimeUs:J

    .line 163
    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;->pendingAdjustedFrameTimeNs:J

    .line 165
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;->vsyncSampler:Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;

    if-eqz v8, :cond_3

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;->vsyncSampler:Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;

    iget-wide v8, v8, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;->sampledVsyncTimeNs:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_6

    .line 173
    .end local v6    # "adjustedReleaseTimeNs":J
    :cond_3
    :goto_1
    return-wide v6

    .line 140
    .restart local v6    # "adjustedReleaseTimeNs":J
    .restart local v14    # "averageFrameDurationNs":J
    .restart local v16    # "candidateAdjustedFrameTimeNs":J
    :cond_4
    move-wide/from16 v12, v16

    .line 141
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;->syncUnadjustedReleaseTimeNs:J

    add-long/2addr v8, v12

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;->syncFramePresentationTimeNs:J

    sub-long v6, v8, v10

    goto :goto_0

    .line 147
    .end local v14    # "averageFrameDurationNs":J
    .end local v16    # "candidateAdjustedFrameTimeNs":J
    :cond_5
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;->isDriftTooLarge(JJ)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 148
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;->haveSync:Z

    goto :goto_0

    .line 170
    :cond_6
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;->vsyncSampler:Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;

    iget-wide v8, v8, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;->sampledVsyncTimeNs:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;->vsyncDurationNs:J

    invoke-static/range {v6 .. v11}, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;->closestVsync(JJJ)J

    move-result-wide v20

    .line 173
    .local v20, "snappedTimeNs":J
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;->vsyncOffsetNs:J

    sub-long v6, v20, v8

    goto :goto_1
.end method

.method public disable()V
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;->useDefaultDisplayVsync:Z

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;->vsyncSampler:Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;->removeObserver()V

    .line 103
    :cond_0
    return-void
.end method

.method public enable()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;->haveSync:Z

    .line 91
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;->useDefaultDisplayVsync:Z

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;->vsyncSampler:Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;->addObserver()V

    .line 94
    :cond_0
    return-void
.end method

.method protected onSynced()V
    .locals 0

    .prologue
    .line 178
    return-void
.end method
