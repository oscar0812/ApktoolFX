.class final Lorg/telegram/messenger/exoplayer2/extractor/mp3/ConstantBitrateSeeker;
.super Ljava/lang/Object;
.source "ConstantBitrateSeeker.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;


# static fields
.field private static final BITS_PER_BYTE:I = 0x8


# instance fields
.field private final bitrate:I

.field private final durationUs:J

.field private final firstFramePosition:J


# direct methods
.method public constructor <init>(JIJ)V
    .locals 2
    .param p1, "firstFramePosition"    # J
    .param p3, "bitrate"    # I
    .param p4, "inputLength"    # J

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->firstFramePosition:J

    .line 33
    iput p3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->bitrate:I

    .line 34
    const-wide/16 v0, -0x1

    cmp-long v0, p4, v0

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->durationUs:J

    .line 35
    return-void

    .line 34
    :cond_0
    invoke-virtual {p0, p4, p5}, Lorg/telegram/messenger/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->getTimeUs(J)J

    move-result-wide v0

    goto :goto_0
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->durationUs:J

    return-wide v0
.end method

.method public getPosition(J)J
    .locals 7
    .param p1, "timeUs"    # J

    .prologue
    .line 44
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->durationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->firstFramePosition:J

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->bitrate:I

    int-to-long v2, v2

    mul-long/2addr v2, p1

    const-wide/32 v4, 0x7a1200

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public getTimeUs(J)J
    .locals 5
    .param p1, "position"    # J

    .prologue
    .line 50
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->firstFramePosition:J

    sub-long v2, p1, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x8

    mul-long/2addr v0, v2

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->bitrate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public isSeekable()Z
    .locals 4

    .prologue
    .line 39
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->durationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
