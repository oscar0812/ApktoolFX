.class public final Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;
.super Ljava/lang/Object;
.source "ChunkSampleStream.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/source/SampleStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EmbeddedSampleStream"
.end annotation


# instance fields
.field private final index:I

.field public final parent:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final sampleQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;
    .param p3, "sampleQueue"    # Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream",
            "<TT;>;",
            "Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 443
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<TT;>.EmbeddedSampleStream;"
    .local p2, "parent":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->parent:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    .line 445
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->sampleQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    .line 446
    iput p4, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->index:I

    .line 447
    return-void
.end method


# virtual methods
.method public isReady()Z
    .locals 1

    .prologue
    .line 451
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<TT;>.EmbeddedSampleStream;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    iget-boolean v0, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->sampleQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public maybeThrowError()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 466
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<TT;>.EmbeddedSampleStream;"
    return-void
.end method

.method public readData(Lorg/telegram/messenger/exoplayer2/FormatHolder;Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;Z)I
    .locals 8
    .param p1, "formatHolder"    # Lorg/telegram/messenger/exoplayer2/FormatHolder;
    .param p2, "buffer"    # Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;
    .param p3, "formatRequired"    # Z

    .prologue
    .line 471
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<TT;>.EmbeddedSampleStream;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    const/4 v0, -0x3

    .line 474
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->sampleQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    iget-boolean v5, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->readData(Lorg/telegram/messenger/exoplayer2/FormatHolder;Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;ZZJ)I

    move-result v0

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 479
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<TT;>.EmbeddedSampleStream;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->access$000(Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;)[Z

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->index:I

    aget-boolean v0, v0, v1

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 480
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->access$000(Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;)[Z

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->index:I

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 481
    return-void
.end method

.method public skipData(J)V
    .locals 3
    .param p1, "positionUs"    # J

    .prologue
    .line 456
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<TT;>.EmbeddedSampleStream;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    iget-boolean v0, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->sampleQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->getLargestQueuedTimestampUs()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 457
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->sampleQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->skipAll()V

    .line 461
    :goto_0
    return-void

    .line 459
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->sampleQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->skipToKeyframeBefore(JZ)Z

    goto :goto_0
.end method
