.class final Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SingleSegmentIndex;
.super Ljava/lang/Object;
.source "SingleSegmentIndex.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;


# instance fields
.field private final uri:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;)V
    .locals 0
    .param p1, "uri"    # Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SingleSegmentIndex;->uri:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;

    .line 32
    return-void
.end method


# virtual methods
.method public getDurationUs(IJ)J
    .locals 0
    .param p1, "segmentNum"    # I
    .param p2, "periodDurationUs"    # J

    .prologue
    .line 46
    return-wide p2
.end method

.method public getFirstSegmentNum()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public getSegmentCount(J)I
    .locals 1
    .param p1, "periodDurationUs"    # J

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public getSegmentNum(JJ)I
    .locals 1
    .param p1, "timeUs"    # J
    .param p3, "periodDurationUs"    # J

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public getSegmentUrl(I)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;
    .locals 1
    .param p1, "segmentNum"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SingleSegmentIndex;->uri:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;

    return-object v0
.end method

.method public getTimeUs(I)J
    .locals 2
    .param p1, "segmentNum"    # I

    .prologue
    .line 41
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isExplicit()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method
