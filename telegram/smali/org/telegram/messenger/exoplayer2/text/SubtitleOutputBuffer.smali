.class public abstract Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;
.super Lorg/telegram/messenger/exoplayer2/decoder/OutputBuffer;
.source "SubtitleOutputBuffer.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/text/Subtitle;


# instance fields
.field private subsampleOffsetUs:J

.field private subtitle:Lorg/telegram/messenger/exoplayer2/text/Subtitle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/decoder/OutputBuffer;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Lorg/telegram/messenger/exoplayer2/decoder/OutputBuffer;->clear()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;->subtitle:Lorg/telegram/messenger/exoplayer2/text/Subtitle;

    .line 73
    return-void
.end method

.method public getCues(J)Ljava/util/List;
    .locals 5
    .param p1, "timeUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;->subtitle:Lorg/telegram/messenger/exoplayer2/text/Subtitle;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;->subsampleOffsetUs:J

    sub-long v2, p1, v2

    invoke-interface {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/text/Subtitle;->getCues(J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEventTime(I)J
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;->subtitle:Lorg/telegram/messenger/exoplayer2/text/Subtitle;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/text/Subtitle;->getEventTime(I)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;->subsampleOffsetUs:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getEventTimeCount()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;->subtitle:Lorg/telegram/messenger/exoplayer2/text/Subtitle;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/text/Subtitle;->getEventTimeCount()I

    move-result v0

    return v0
.end method

.method public getNextEventTimeIndex(J)I
    .locals 5
    .param p1, "timeUs"    # J

    .prologue
    .line 58
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;->subtitle:Lorg/telegram/messenger/exoplayer2/text/Subtitle;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;->subsampleOffsetUs:J

    sub-long v2, p1, v2

    invoke-interface {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/text/Subtitle;->getNextEventTimeIndex(J)I

    move-result v0

    return v0
.end method

.method public abstract release()V
.end method

.method public setContent(JLorg/telegram/messenger/exoplayer2/text/Subtitle;J)V
    .locals 2
    .param p1, "timeUs"    # J
    .param p3, "subtitle"    # Lorg/telegram/messenger/exoplayer2/text/Subtitle;
    .param p4, "subsampleOffsetUs"    # J

    .prologue
    .line 40
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;->timeUs:J

    .line 41
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;->subtitle:Lorg/telegram/messenger/exoplayer2/text/Subtitle;

    .line 42
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p4, v0

    if-nez v0, :cond_0

    iget-wide p4, p0, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;->timeUs:J

    .end local p4    # "subsampleOffsetUs":J
    :cond_0
    iput-wide p4, p0, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;->subsampleOffsetUs:J

    .line 44
    return-void
.end method
