.class final Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;
.super Ljava/lang/Object;
.source "WavHeader.java"


# instance fields
.field private final averageBytesPerSecond:I

.field private final bitsPerSample:I

.field private final blockAlignment:I

.field private dataSize:J

.field private dataStartPosition:J

.field private final encoding:I

.field private final numChannels:I

.field private final sampleRateHz:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0
    .param p1, "numChannels"    # I
    .param p2, "sampleRateHz"    # I
    .param p3, "averageBytesPerSecond"    # I
    .param p4, "blockAlignment"    # I
    .param p5, "bitsPerSample"    # I
    .param p6, "encoding"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;->numChannels:I

    .line 45
    iput p2, p0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;->sampleRateHz:I

    .line 46
    iput p3, p0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;->averageBytesPerSecond:I

    .line 47
    iput p4, p0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;->blockAlignment:I

    .line 48
    iput p5, p0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;->bitsPerSample:I

    .line 49
    iput p6, p0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;->encoding:I

    .line 50
    return-void
.end method


# virtual methods
.method public getBitrate()I
    .locals 2

    .prologue
    .line 65
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;->sampleRateHz:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;->bitsPerSample:I

    mul-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;->numChannels:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public getBytesPerFrame()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;->blockAlignment:I

    return v0
.end method

.method public getDurationUs()J
    .locals 6

    .prologue
    .line 54
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;->dataSize:J

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;->blockAlignment:I

    int-to-long v4, v4

    div-long v0, v2, v4

    .line 55
    .local v0, "numFrames":J
    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, v0

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;->sampleRateHz:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    return-wide v2
.end method

.method public getEncoding()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;->encoding:I

    return v0
.end method

.method public getNumChannels()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;->numChannels:I

    return v0
.end method

.method public getPosition(J)J
    .locals 9
    .param p1, "timeUs"    # J

    .prologue
    .line 80
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;->averageBytesPerSecond:I

    int-to-long v4, v4

    mul-long/2addr v4, p1

    const-wide/32 v6, 0xf4240

    div-long v2, v4, v6

    .line 82
    .local v2, "unroundedPosition":J
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;->blockAlignment:I

    int-to-long v4, v4

    div-long v4, v2, v4

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;->blockAlignment:I

    int-to-long v6, v6

    mul-long v0, v4, v6

    .line 83
    .local v0, "position":J
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;->dataSize:J

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;->blockAlignment:I

    int-to-long v6, v6

    sub-long/2addr v4, v6

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;->dataStartPosition:J

    add-long/2addr v4, v6

    return-wide v4
.end method

.method public getSampleRateHz()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;->sampleRateHz:I

    return v0
.end method

.method public getTimeUs(J)J
    .locals 5
    .param p1, "position"    # J

    .prologue
    .line 88
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p1

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;->averageBytesPerSecond:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public hasDataBounds()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 93
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;->dataStartPosition:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;->dataSize:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDataBounds(JJ)V
    .locals 1
    .param p1, "dataStartPosition"    # J
    .param p3, "dataSize"    # J

    .prologue
    .line 98
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;->dataStartPosition:J

    .line 99
    iput-wide p3, p0, Lorg/telegram/messenger/exoplayer2/extractor/wav/WavHeader;->dataSize:J

    .line 100
    return-void
.end method
