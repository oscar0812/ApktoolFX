.class public abstract Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;
.super Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase;
.source "SegmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MultiSegmentBase"
.end annotation


# instance fields
.field final duration:J

.field final segmentTimeline:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;",
            ">;"
        }
    .end annotation
.end field

.field final startNumber:I


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;JJIJLjava/util/List;)V
    .locals 0
    .param p1, "initialization"    # Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;
    .param p2, "timescale"    # J
    .param p4, "presentationTimeOffset"    # J
    .param p6, "startNumber"    # I
    .param p7, "duration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;",
            "JJIJ",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p9, "segmentTimeline":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;>;"
    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase;-><init>(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;JJ)V

    .line 123
    iput p6, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->startNumber:I

    .line 124
    iput-wide p7, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->duration:J

    .line 125
    iput-object p9, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    .line 126
    return-void
.end method


# virtual methods
.method public getFirstSegmentNum()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->startNumber:I

    return v0
.end method

.method public abstract getSegmentCount(J)I
.end method

.method public final getSegmentDurationUs(IJ)J
    .locals 8
    .param p1, "sequenceNumber"    # I
    .param p2, "periodDurationUs"    # J

    .prologue
    const-wide/32 v6, 0xf4240

    .line 168
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 169
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->startNumber:I

    sub-int v4, p1, v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;

    iget-wide v0, v3, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;->duration:J

    .line 170
    .local v0, "duration":J
    mul-long v4, v0, v6

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->timescale:J

    div-long/2addr v4, v6

    .line 173
    .end local v0    # "duration":J
    :goto_0
    return-wide v4

    .line 172
    :cond_0
    invoke-virtual {p0, p2, p3}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentCount(J)I

    move-result v2

    .line 173
    .local v2, "segmentCount":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 174
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getFirstSegmentNum()I

    move-result v3

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_1

    .line 175
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentTimeUs(I)J

    move-result-wide v4

    sub-long v4, p2, v4

    goto :goto_0

    :cond_1
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->duration:J

    mul-long/2addr v4, v6

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->timescale:J

    div-long/2addr v4, v6

    goto :goto_0
.end method

.method public getSegmentNum(JJ)I
    .locals 19
    .param p1, "timeUs"    # J
    .param p3, "periodDurationUs"    # J

    .prologue
    .line 132
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getFirstSegmentNum()I

    move-result v6

    .line 133
    .local v6, "firstSegmentNum":I
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentCount(J)I

    move-result v12

    .line 134
    .local v12, "segmentCount":I
    if-nez v12, :cond_1

    .line 160
    .end local v6    # "firstSegmentNum":I
    :cond_0
    :goto_0
    return v6

    .line 137
    .restart local v6    # "firstSegmentNum":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    if-nez v14, :cond_3

    .line 139
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->duration:J

    const-wide/32 v16, 0xf4240

    mul-long v14, v14, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->timescale:J

    move-wide/from16 v16, v0

    div-long v4, v14, v16

    .line 140
    .local v4, "durationUs":J
    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->startNumber:I

    div-long v16, p1, v4

    move-wide/from16 v0, v16

    long-to-int v15, v0

    add-int v13, v14, v15

    .line 142
    .local v13, "segmentNum":I
    if-lt v13, v6, :cond_0

    const/4 v14, -0x1

    if-ne v12, v14, :cond_2

    move v6, v13

    goto :goto_0

    :cond_2
    add-int v14, v6, v12

    add-int/lit8 v14, v14, -0x1

    .line 144
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_0

    .line 147
    .end local v4    # "durationUs":J
    .end local v13    # "segmentNum":I
    :cond_3
    move v8, v6

    .line 148
    .local v8, "lowIndex":I
    add-int v14, v6, v12

    add-int/lit8 v7, v14, -0x1

    .line 149
    .local v7, "highIndex":I
    :goto_1
    if-gt v8, v7, :cond_6

    .line 150
    sub-int v14, v7, v8

    div-int/lit8 v14, v14, 0x2

    add-int v9, v8, v14

    .line 151
    .local v9, "midIndex":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentTimeUs(I)J

    move-result-wide v10

    .line 152
    .local v10, "midTimeUs":J
    cmp-long v14, v10, p1

    if-gez v14, :cond_4

    .line 153
    add-int/lit8 v8, v9, 0x1

    goto :goto_1

    .line 154
    :cond_4
    cmp-long v14, v10, p1

    if-lez v14, :cond_5

    .line 155
    add-int/lit8 v7, v9, -0x1

    goto :goto_1

    :cond_5
    move v6, v9

    .line 157
    goto :goto_0

    .line 160
    .end local v9    # "midIndex":I
    .end local v10    # "midTimeUs":J
    :cond_6
    if-ne v8, v6, :cond_7

    .end local v8    # "lowIndex":I
    :goto_2
    move v6, v8

    goto :goto_0

    .restart local v8    # "lowIndex":I
    :cond_7
    move v8, v7

    goto :goto_2
.end method

.method public final getSegmentTimeUs(I)J
    .locals 6
    .param p1, "sequenceNumber"    # I

    .prologue
    .line 185
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 186
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->startNumber:I

    sub-int v3, p1, v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;

    iget-wide v2, v2, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;->startTime:J

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->presentationTimeOffset:J

    sub-long v0, v2, v4

    .line 191
    .local v0, "unscaledSegmentTime":J
    :goto_0
    const-wide/32 v2, 0xf4240

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->timescale:J

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v2

    return-wide v2

    .line 189
    .end local v0    # "unscaledSegmentTime":J
    :cond_0
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->startNumber:I

    sub-int v2, p1, v2

    int-to-long v2, v2

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->duration:J

    mul-long v0, v2, v4

    .restart local v0    # "unscaledSegmentTime":J
    goto :goto_0
.end method

.method public abstract getSegmentUrl(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;I)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;
.end method

.method public isExplicit()Z
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
