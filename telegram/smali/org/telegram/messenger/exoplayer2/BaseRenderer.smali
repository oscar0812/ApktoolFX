.class public abstract Lorg/telegram/messenger/exoplayer2/BaseRenderer;
.super Ljava/lang/Object;
.source "BaseRenderer.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/Renderer;
.implements Lorg/telegram/messenger/exoplayer2/RendererCapabilities;


# instance fields
.field private configuration:Lorg/telegram/messenger/exoplayer2/RendererConfiguration;

.field private index:I

.field private readEndOfStream:Z

.field private state:I

.field private stream:Lorg/telegram/messenger/exoplayer2/source/SampleStream;

.field private streamIsFinal:Z

.field private streamOffsetUs:J

.field private final trackType:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "trackType"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->trackType:I

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->readEndOfStream:Z

    .line 46
    return-void
.end method


# virtual methods
.method public final disable()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 143
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->state:I

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 144
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->state:I

    .line 145
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->onDisabled()V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->stream:Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    .line 147
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->streamIsFinal:Z

    .line 148
    return-void

    :cond_0
    move v0, v1

    .line 143
    goto :goto_0
.end method

.method public final enable(Lorg/telegram/messenger/exoplayer2/RendererConfiguration;[Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/source/SampleStream;JZJ)V
    .locals 2
    .param p1, "configuration"    # Lorg/telegram/messenger/exoplayer2/RendererConfiguration;
    .param p2, "formats"    # [Lorg/telegram/messenger/exoplayer2/Format;
    .param p3, "stream"    # Lorg/telegram/messenger/exoplayer2/source/SampleStream;
    .param p4, "positionUs"    # J
    .param p6, "joining"    # Z
    .param p7, "offsetUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 77
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->state:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 78
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->configuration:Lorg/telegram/messenger/exoplayer2/RendererConfiguration;

    .line 79
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->state:I

    .line 80
    invoke-virtual {p0, p6}, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->onEnabled(Z)V

    .line 81
    invoke-virtual {p0, p2, p3, p7, p8}, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->replaceStream([Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/source/SampleStream;J)V

    .line 82
    invoke-virtual {p0, p4, p5, p6}, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->onPositionReset(JZ)V

    .line 83
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getCapabilities()Lorg/telegram/messenger/exoplayer2/RendererCapabilities;
    .locals 0

    .prologue
    .line 55
    return-object p0
.end method

.method protected final getConfiguration()Lorg/telegram/messenger/exoplayer2/RendererConfiguration;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->configuration:Lorg/telegram/messenger/exoplayer2/RendererConfiguration;

    return-object v0
.end method

.method protected final getIndex()I
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->index:I

    return v0
.end method

.method public getMediaClock()Lorg/telegram/messenger/exoplayer2/util/MediaClock;
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getState()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->state:I

    return v0
.end method

.method public final getStream()Lorg/telegram/messenger/exoplayer2/source/SampleStream;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->stream:Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    return-object v0
.end method

.method public final getTrackType()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->trackType:I

    return v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 0
    .param p1, "what"    # I
    .param p2, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 162
    return-void
.end method

.method public final hasReadStreamToEnd()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->readEndOfStream:Z

    return v0
.end method

.method public final isCurrentStreamFinal()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->streamIsFinal:Z

    return v0
.end method

.method protected final isSourceReady()Z
    .locals 1

    .prologue
    .line 307
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->readEndOfStream:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->streamIsFinal:Z

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->stream:Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/source/SampleStream;->isReady()Z

    move-result v0

    goto :goto_0
.end method

.method public final maybeThrowStreamError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->stream:Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/source/SampleStream;->maybeThrowError()V

    .line 125
    return-void
.end method

.method protected onDisabled()V
    .locals 0

    .prologue
    .line 239
    return-void
.end method

.method protected onEnabled(Z)V
    .locals 0
    .param p1, "joining"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 176
    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 0
    .param p1, "positionUs"    # J
    .param p3, "joining"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 208
    return-void
.end method

.method protected onStarted()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 219
    return-void
.end method

.method protected onStopped()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 230
    return-void
.end method

.method protected onStreamChanged([Lorg/telegram/messenger/exoplayer2/Format;)V
    .locals 0
    .param p1, "formats"    # [Lorg/telegram/messenger/exoplayer2/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 190
    return-void
.end method

.method protected final readSource(Lorg/telegram/messenger/exoplayer2/FormatHolder;Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;Z)I
    .locals 6
    .param p1, "formatHolder"    # Lorg/telegram/messenger/exoplayer2/FormatHolder;
    .param p2, "buffer"    # Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;
    .param p3, "formatRequired"    # Z

    .prologue
    const/4 v2, -0x4

    .line 274
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->stream:Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    invoke-interface {v3, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/source/SampleStream;->readData(Lorg/telegram/messenger/exoplayer2/FormatHolder;Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result v1

    .line 275
    .local v1, "result":I
    if-ne v1, v2, :cond_3

    .line 276
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 277
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->readEndOfStream:Z

    .line 278
    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->streamIsFinal:Z

    if-eqz v3, :cond_0

    .line 288
    :goto_0
    return v2

    .line 278
    :cond_0
    const/4 v2, -0x3

    goto :goto_0

    .line 280
    :cond_1
    iget-wide v2, p2, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->streamOffsetUs:J

    add-long/2addr v2, v4

    iput-wide v2, p2, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    :cond_2
    :goto_1
    move v2, v1

    .line 288
    goto :goto_0

    .line 281
    :cond_3
    const/4 v2, -0x5

    if-ne v1, v2, :cond_2

    .line 282
    iget-object v0, p1, Lorg/telegram/messenger/exoplayer2/FormatHolder;->format:Lorg/telegram/messenger/exoplayer2/Format;

    .line 283
    .local v0, "format":Lorg/telegram/messenger/exoplayer2/Format;
    iget-wide v2, v0, Lorg/telegram/messenger/exoplayer2/Format;->subsampleOffsetUs:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 284
    iget-wide v2, v0, Lorg/telegram/messenger/exoplayer2/Format;->subsampleOffsetUs:J

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->streamOffsetUs:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/Format;->copyWithSubsampleOffsetUs(J)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v0

    .line 285
    iput-object v0, p1, Lorg/telegram/messenger/exoplayer2/FormatHolder;->format:Lorg/telegram/messenger/exoplayer2/Format;

    goto :goto_1
.end method

.method public final replaceStream([Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/source/SampleStream;J)V
    .locals 3
    .param p1, "formats"    # [Lorg/telegram/messenger/exoplayer2/Format;
    .param p2, "stream"    # Lorg/telegram/messenger/exoplayer2/source/SampleStream;
    .param p3, "offsetUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 95
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->streamIsFinal:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 96
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->stream:Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    .line 97
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->readEndOfStream:Z

    .line 98
    iput-wide p3, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->streamOffsetUs:J

    .line 99
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->onStreamChanged([Lorg/telegram/messenger/exoplayer2/Format;)V

    .line 100
    return-void

    :cond_0
    move v0, v1

    .line 95
    goto :goto_0
.end method

.method public final resetPosition(J)V
    .locals 1
    .param p1, "positionUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 129
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->streamIsFinal:Z

    .line 130
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->readEndOfStream:Z

    .line 131
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->onPositionReset(JZ)V

    .line 132
    return-void
.end method

.method public final setCurrentStreamFinal()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->streamIsFinal:Z

    .line 115
    return-void
.end method

.method public final setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 60
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->index:I

    .line 61
    return-void
.end method

.method protected skipSource(J)V
    .locals 5
    .param p1, "positionUs"    # J

    .prologue
    .line 298
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->stream:Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->streamOffsetUs:J

    sub-long v2, p1, v2

    invoke-interface {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/source/SampleStream;->skipData(J)V

    .line 299
    return-void
.end method

.method public final start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 87
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->state:I

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 88
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->state:I

    .line 89
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->onStarted()V

    .line 90
    return-void

    .line 87
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final stop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 136
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->state:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 137
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->state:I

    .line 138
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->onStopped()V

    .line 139
    return-void

    .line 136
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supportsMixedMimeTypeAdaptation()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method
