.class public abstract Lorg/telegram/messenger/exoplayer2/text/SimpleSubtitleDecoder;
.super Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;
.source "SimpleSubtitleDecoder.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder",
        "<",
        "Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;",
        "Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;",
        "Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;",
        ">;",
        "Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;"
    }
.end annotation


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x2

    .line 35
    new-array v0, v1, [Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    new-array v1, v1, [Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;-><init>([Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;[Lorg/telegram/messenger/exoplayer2/decoder/OutputBuffer;)V

    .line 36
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/text/SimpleSubtitleDecoder;->name:Ljava/lang/String;

    .line 37
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/text/SimpleSubtitleDecoder;->setInitialInputBufferSize(I)V

    .line 38
    return-void
.end method


# virtual methods
.method protected bridge synthetic createInputBuffer()Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/text/SimpleSubtitleDecoder;->createInputBuffer()Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected final createInputBuffer()Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic createOutputBuffer()Lorg/telegram/messenger/exoplayer2/decoder/OutputBuffer;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/text/SimpleSubtitleDecoder;->createOutputBuffer()Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected final createOutputBuffer()Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lorg/telegram/messenger/exoplayer2/text/SimpleSubtitleOutputBuffer;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/exoplayer2/text/SimpleSubtitleOutputBuffer;-><init>(Lorg/telegram/messenger/exoplayer2/text/SimpleSubtitleDecoder;)V

    return-object v0
.end method

.method protected bridge synthetic decode(Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;Lorg/telegram/messenger/exoplayer2/decoder/OutputBuffer;Z)Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 25
    check-cast p1, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    check-cast p2, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/text/SimpleSubtitleDecoder;->decode(Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;Z)Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;

    move-result-object v0

    return-object v0
.end method

.method protected abstract decode([BIZ)Lorg/telegram/messenger/exoplayer2/text/Subtitle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation
.end method

.method protected final decode(Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;Z)Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;
    .locals 8
    .param p1, "inputBuffer"    # Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;
    .param p2, "outputBuffer"    # Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;
    .param p3, "reset"    # Z

    .prologue
    .line 69
    :try_start_0
    iget-object v7, p1, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 70
    .local v7, "inputData":Ljava/nio/ByteBuffer;
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p0, v0, v1, p3}, Lorg/telegram/messenger/exoplayer2/text/SimpleSubtitleDecoder;->decode([BIZ)Lorg/telegram/messenger/exoplayer2/text/Subtitle;

    move-result-object v3

    .line 71
    .local v3, "subtitle":Lorg/telegram/messenger/exoplayer2/text/Subtitle;
    iget-wide v1, p1, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;->timeUs:J

    iget-wide v4, p1, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;->subsampleOffsetUs:J

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;->setContent(JLorg/telegram/messenger/exoplayer2/text/Subtitle;J)V

    .line 73
    const/high16 v0, -0x80000000

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;->clearFlag(I)V
    :try_end_0
    .catch Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    const/4 v6, 0x0

    .line 76
    .end local v3    # "subtitle":Lorg/telegram/messenger/exoplayer2/text/Subtitle;
    .end local v7    # "inputData":Ljava/nio/ByteBuffer;
    :goto_0
    return-object v6

    .line 75
    :catch_0
    move-exception v6

    .line 76
    .local v6, "e":Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;
    goto :goto_0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/SimpleSubtitleDecoder;->name:Ljava/lang/String;

    return-object v0
.end method

.method protected bridge synthetic releaseOutputBuffer(Lorg/telegram/messenger/exoplayer2/decoder/OutputBuffer;)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/text/SimpleSubtitleDecoder;->releaseOutputBuffer(Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;)V

    return-void
.end method

.method protected final releaseOutputBuffer(Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;)V
    .locals 0
    .param p1, "buffer"    # Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->releaseOutputBuffer(Lorg/telegram/messenger/exoplayer2/decoder/OutputBuffer;)V

    .line 63
    return-void
.end method

.method public setPositionUs(J)V
    .locals 0
    .param p1, "timeUs"    # J

    .prologue
    .line 48
    return-void
.end method
