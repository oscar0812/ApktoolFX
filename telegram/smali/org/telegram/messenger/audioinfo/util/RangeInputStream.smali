.class public Lorg/telegram/messenger/audioinfo/util/RangeInputStream;
.super Lorg/telegram/messenger/audioinfo/util/PositionInputStream;
.source "RangeInputStream.java"


# instance fields
.field private final endPosition:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JJ)V
    .locals 2
    .param p1, "delegate"    # Ljava/io/InputStream;
    .param p2, "position"    # J
    .param p4, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;-><init>(Ljava/io/InputStream;J)V

    .line 30
    add-long v0, p2, p4

    iput-wide v0, p0, Lorg/telegram/messenger/audioinfo/util/RangeInputStream;->endPosition:J

    .line 31
    return-void
.end method


# virtual methods
.method public getRemainingLength()J
    .locals 4

    .prologue
    .line 34
    iget-wide v0, p0, Lorg/telegram/messenger/audioinfo/util/RangeInputStream;->endPosition:J

    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/util/RangeInputStream;->getPosition()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/util/RangeInputStream;->getPosition()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/audioinfo/util/RangeInputStream;->endPosition:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 40
    const/4 v0, -0x1

    .line 42
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->read()I

    move-result v0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/util/RangeInputStream;->getPosition()J

    move-result-wide v0

    int-to-long v2, p3

    add-long/2addr v0, v2

    iget-wide v2, p0, Lorg/telegram/messenger/audioinfo/util/RangeInputStream;->endPosition:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 48
    iget-wide v0, p0, Lorg/telegram/messenger/audioinfo/util/RangeInputStream;->endPosition:J

    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/util/RangeInputStream;->getPosition()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int p3, v0

    .line 49
    if-nez p3, :cond_0

    .line 50
    const/4 v0, -0x1

    .line 53
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->read([BII)I

    move-result v0

    goto :goto_0
.end method

.method public skip(J)J
    .locals 5
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/util/RangeInputStream;->getPosition()J

    move-result-wide v0

    add-long/2addr v0, p1

    iget-wide v2, p0, Lorg/telegram/messenger/audioinfo/util/RangeInputStream;->endPosition:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 59
    iget-wide v0, p0, Lorg/telegram/messenger/audioinfo/util/RangeInputStream;->endPosition:J

    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/util/RangeInputStream;->getPosition()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    int-to-long p1, v0

    .line 61
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
