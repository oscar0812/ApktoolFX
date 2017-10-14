.class final Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource$ClippingTimeline;
.super Lorg/telegram/messenger/exoplayer2/Timeline;
.source "ClippingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClippingTimeline"
.end annotation


# instance fields
.field private final endUs:J

.field private final startUs:J

.field private final timeline:Lorg/telegram/messenger/exoplayer2/Timeline;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/Timeline;JJ)V
    .locals 8
    .param p1, "timeline"    # Lorg/telegram/messenger/exoplayer2/Timeline;
    .param p2, "startUs"    # J
    .param p4, "endUs"    # J

    .prologue
    .line 122
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/Timeline;-><init>()V

    .line 123
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/Timeline;->getWindowCount()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 124
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriodCount()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    const/4 v4, 0x1

    :goto_1
    invoke-static {v4}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 125
    const/4 v4, 0x0

    new-instance v5, Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    invoke-direct {v5}, Lorg/telegram/messenger/exoplayer2/Timeline$Window;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v5, v6}, Lorg/telegram/messenger/exoplayer2/Timeline;->getWindow(ILorg/telegram/messenger/exoplayer2/Timeline$Window;Z)Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    move-result-object v1

    .line 126
    .local v1, "window":Lorg/telegram/messenger/exoplayer2/Timeline$Window;
    iget-boolean v4, v1, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->isDynamic:Z

    if-nez v4, :cond_4

    const/4 v4, 0x1

    :goto_2
    invoke-static {v4}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 127
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v4, p4, v4

    if-nez v4, :cond_5

    iget-wide v2, v1, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->durationUs:J

    .line 128
    .local v2, "resolvedEndUs":J
    :goto_3
    iget-wide v4, v1, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->durationUs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 129
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-eqz v4, :cond_0

    iget-boolean v4, v1, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->isSeekable:Z

    if-eqz v4, :cond_6

    :cond_0
    const/4 v4, 0x1

    :goto_4
    invoke-static {v4}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 130
    iget-wide v4, v1, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->durationUs:J

    cmp-long v4, v2, v4

    if-gtz v4, :cond_7

    const/4 v4, 0x1

    :goto_5
    invoke-static {v4}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 131
    cmp-long v4, p2, v2

    if-gtz v4, :cond_8

    const/4 v4, 0x1

    :goto_6
    invoke-static {v4}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 133
    :cond_1
    const/4 v4, 0x0

    new-instance v5, Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    invoke-direct {v5}, Lorg/telegram/messenger/exoplayer2/Timeline$Period;-><init>()V

    invoke-virtual {p1, v4, v5}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-result-object v0

    .line 134
    .local v0, "period":Lorg/telegram/messenger/exoplayer2/Timeline$Period;
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_9

    const/4 v4, 0x1

    :goto_7
    invoke-static {v4}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 135
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    .line 136
    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    .line 137
    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->endUs:J

    .line 138
    return-void

    .line 123
    .end local v0    # "period":Lorg/telegram/messenger/exoplayer2/Timeline$Period;
    .end local v1    # "window":Lorg/telegram/messenger/exoplayer2/Timeline$Window;
    .end local v2    # "resolvedEndUs":J
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 124
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 126
    .restart local v1    # "window":Lorg/telegram/messenger/exoplayer2/Timeline$Window;
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    move-wide v2, p4

    .line 127
    goto :goto_3

    .line 129
    .restart local v2    # "resolvedEndUs":J
    :cond_6
    const/4 v4, 0x0

    goto :goto_4

    .line 130
    :cond_7
    const/4 v4, 0x0

    goto :goto_5

    .line 131
    :cond_8
    const/4 v4, 0x0

    goto :goto_6

    .line 134
    .restart local v0    # "period":Lorg/telegram/messenger/exoplayer2/Timeline$Period;
    :cond_9
    const/4 v4, 0x0

    goto :goto_7
.end method

.method static synthetic access$000(Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource$ClippingTimeline;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource$ClippingTimeline;

    .prologue
    .line 108
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    return-wide v0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource$ClippingTimeline;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource$ClippingTimeline;

    .prologue
    .line 108
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->endUs:J

    return-wide v0
.end method


# virtual methods
.method public getIndexOfPeriod(Ljava/lang/Object;)I
    .locals 1
    .param p1, "uid"    # Ljava/lang/Object;

    .prologue
    .line 180
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;Z)Lorg/telegram/messenger/exoplayer2/Timeline$Period;
    .locals 4
    .param p1, "periodIndex"    # I
    .param p2, "period"    # Lorg/telegram/messenger/exoplayer2/Timeline$Period;
    .param p3, "setIds"    # Z

    .prologue
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 173
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p2, p3}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;Z)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-result-object p2

    .line 174
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->endUs:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->endUs:J

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    sub-long/2addr v0, v2

    :cond_0
    iput-wide v0, p2, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->durationUs:J

    .line 175
    return-object p2
.end method

.method public getPeriodCount()I
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x1

    return v0
.end method

.method public getWindow(ILorg/telegram/messenger/exoplayer2/Timeline$Window;ZJ)Lorg/telegram/messenger/exoplayer2/Timeline$Window;
    .locals 10
    .param p1, "windowIndex"    # I
    .param p2, "window"    # Lorg/telegram/messenger/exoplayer2/Timeline$Window;
    .param p3, "setIds"    # Z
    .param p4, "defaultPositionProjectionUs"    # J

    .prologue
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 148
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    const/4 v1, 0x0

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/Timeline;->getWindow(ILorg/telegram/messenger/exoplayer2/Timeline$Window;ZJ)Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    move-result-object p2

    .line 149
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->endUs:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->endUs:J

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    sub-long/2addr v0, v2

    :goto_0
    iput-wide v0, p2, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->durationUs:J

    .line 150
    iget-wide v0, p2, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->defaultPositionUs:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_0

    .line 151
    iget-wide v0, p2, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->defaultPositionUs:J

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p2, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->defaultPositionUs:J

    .line 152
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->endUs:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_4

    iget-wide v0, p2, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->defaultPositionUs:J

    .line 153
    :goto_1
    iput-wide v0, p2, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->defaultPositionUs:J

    .line 154
    iget-wide v0, p2, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->defaultPositionUs:J

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    sub-long/2addr v0, v2

    iput-wide v0, p2, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->defaultPositionUs:J

    .line 156
    :cond_0
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/C;->usToMs(J)J

    move-result-wide v6

    .line 157
    .local v6, "startMs":J
    iget-wide v0, p2, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->presentationStartTimeMs:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_1

    .line 158
    iget-wide v0, p2, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->presentationStartTimeMs:J

    add-long/2addr v0, v6

    iput-wide v0, p2, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->presentationStartTimeMs:J

    .line 160
    :cond_1
    iget-wide v0, p2, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_2

    .line 161
    iget-wide v0, p2, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    add-long/2addr v0, v6

    iput-wide v0, p2, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    .line 163
    :cond_2
    return-object p2

    .end local v6    # "startMs":J
    :cond_3
    move-wide v0, v8

    .line 149
    goto :goto_0

    .line 152
    :cond_4
    iget-wide v0, p2, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->defaultPositionUs:J

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->endUs:J

    .line 153
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_1
.end method

.method public getWindowCount()I
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x1

    return v0
.end method
