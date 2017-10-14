.class public Lorg/telegram/messenger/audioinfo/mp3/MP3Input;
.super Lorg/telegram/messenger/audioinfo/util/PositionInputStream;
.source "MP3Input.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "delegate"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;-><init>(Ljava/io/InputStream;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 0
    .param p1, "delegate"    # Ljava/io/InputStream;
    .param p2, "position"    # J

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;-><init>(Ljava/io/InputStream;J)V

    .line 31
    return-void
.end method


# virtual methods
.method public final readFully([BII)V
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
    .line 34
    const/4 v1, 0x0

    .line 35
    .local v1, "total":I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 36
    add-int v2, p2, v1

    sub-int v3, p3, v1

    invoke-virtual {p0, p1, v2, v3}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->read([BII)I

    move-result v0

    .line 37
    .local v0, "current":I
    if-lez v0, :cond_0

    .line 38
    add-int/2addr v1, v0

    goto :goto_0

    .line 40
    :cond_0
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 43
    .end local v0    # "current":I
    :cond_1
    return-void
.end method

.method public skipFully(J)V
    .locals 7
    .param p1, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    const-wide/16 v2, 0x0

    .line 47
    .local v2, "total":J
    :goto_0
    cmp-long v4, v2, p1

    if-gez v4, :cond_1

    .line 48
    sub-long v4, p1, v2

    invoke-virtual {p0, v4, v5}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->skip(J)J

    move-result-wide v0

    .line 49
    .local v0, "current":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 50
    add-long/2addr v2, v0

    goto :goto_0

    .line 52
    :cond_0
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4

    .line 55
    .end local v0    # "current":J
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mp3[pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->getPosition()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
