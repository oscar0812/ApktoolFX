.class public abstract Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase;
.super Ljava/lang/Object;
.source "SegmentBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;,
        Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;,
        Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;,
        Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;,
        Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;
    }
.end annotation


# instance fields
.field final initialization:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;

.field final presentationTimeOffset:J

.field final timescale:J


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;JJ)V
    .locals 0
    .param p1, "initialization"    # Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;
    .param p2, "timescale"    # J
    .param p4, "presentationTimeOffset"    # J

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase;->initialization:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;

    .line 41
    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase;->timescale:J

    .line 42
    iput-wide p4, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase;->presentationTimeOffset:J

    .line 43
    return-void
.end method


# virtual methods
.method public getInitialization(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;
    .locals 1
    .param p1, "representation"    # Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase;->initialization:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;

    return-object v0
.end method

.method public getPresentationTimeOffsetUs()J
    .locals 6

    .prologue
    .line 60
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase;->presentationTimeOffset:J

    const-wide/32 v2, 0xf4240

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase;->timescale:J

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    return-wide v0
.end method
