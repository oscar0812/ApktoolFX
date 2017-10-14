.class public abstract Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;
.super Ljava/lang/Object;
.source "SimpleDecoder.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/decoder/Decoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;",
        "O:",
        "Lorg/telegram/messenger/exoplayer2/decoder/OutputBuffer;",
        "E:",
        "Ljava/lang/Exception;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/telegram/messenger/exoplayer2/decoder/Decoder",
        "<TI;TO;TE;>;"
    }
.end annotation


# instance fields
.field private availableInputBufferCount:I

.field private final availableInputBuffers:[Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TI;"
        }
    .end annotation
.end field

.field private availableOutputBufferCount:I

.field private final availableOutputBuffers:[Lorg/telegram/messenger/exoplayer2/decoder/OutputBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TO;"
        }
    .end annotation
.end field

.field private final decodeThread:Ljava/lang/Thread;

.field private dequeuedInputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field private exception:Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private flushed:Z

.field private final lock:Ljava/lang/Object;

.field private final queuedInputBuffers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TI;>;"
        }
    .end annotation
.end field

.field private final queuedOutputBuffers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TO;>;"
        }
    .end annotation
.end field

.field private released:Z

.field private skippedOutputBufferCount:I


# direct methods
.method protected constructor <init>([Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;[Lorg/telegram/messenger/exoplayer2/decoder/OutputBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TI;[TO;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;, "Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    .local p1, "inputBuffers":[Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;, "[TI;"
    .local p2, "outputBuffers":[Lorg/telegram/messenger/exoplayer2/decoder/OutputBuffer;, "[TO;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    .line 51
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->queuedInputBuffers:Ljava/util/LinkedList;

    .line 52
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->queuedOutputBuffers:Ljava/util/LinkedList;

    .line 53
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->availableInputBuffers:[Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    .line 54
    array-length v1, p1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->availableInputBufferCount:I

    .line 55
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->availableInputBufferCount:I

    if-ge v0, v1, :cond_0

    .line 56
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->availableInputBuffers:[Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->createInputBuffer()Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->availableOutputBuffers:[Lorg/telegram/messenger/exoplayer2/decoder/OutputBuffer;

    .line 59
    array-length v1, p2

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->availableOutputBufferCount:I

    .line 60
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->availableOutputBufferCount:I

    if-ge v0, v1, :cond_1

    .line 61
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->availableOutputBuffers:[Lorg/telegram/messenger/exoplayer2/decoder/OutputBuffer;

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->createOutputBuffer()Lorg/telegram/messenger/exoplayer2/decoder/OutputBuffer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 63
    :cond_1
    new-instance v1, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder$1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder$1;-><init>(Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;)V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->decodeThread:Ljava/lang/Thread;

    .line 69
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->decodeThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->run()V

    return-void
.end method

.method private canDecodeBuffer()Z
    .locals 1

    .prologue
    .line 249
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;, "Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->queuedInputBuffers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->availableOutputBufferCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private decode()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;, "Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    const/4 v3, 0x0

    .line 203
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 204
    :goto_0
    :try_start_0
    iget-boolean v5, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->released:Z

    if-nez v5, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->canDecodeBuffer()Z

    move-result v5

    if-nez v5, :cond_0

    .line 205
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 214
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 207
    :cond_0
    :try_start_1
    iget-boolean v5, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->released:Z

    if-eqz v5, :cond_1

    .line 208
    monitor-exit v4

    .line 245
    :goto_1
    return v3

    .line 210
    :cond_1
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->queuedInputBuffers:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    .line 211
    .local v0, "inputBuffer":Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;, "TI;"
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->availableOutputBuffers:[Lorg/telegram/messenger/exoplayer2/decoder/OutputBuffer;

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->availableOutputBufferCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->availableOutputBufferCount:I

    aget-object v1, v5, v6

    .line 212
    .local v1, "outputBuffer":Lorg/telegram/messenger/exoplayer2/decoder/OutputBuffer;, "TO;"
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->flushed:Z

    .line 213
    .local v2, "resetDecoder":Z
    const/4 v5, 0x0

    iput-boolean v5, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->flushed:Z

    .line 214
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 217
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/exoplayer2/decoder/OutputBuffer;->addFlag(I)V

    .line 230
    :cond_2
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 231
    :try_start_2
    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->flushed:Z

    if-eqz v3, :cond_5

    .line 232
    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->releaseOutputBufferInternal(Lorg/telegram/messenger/exoplayer2/decoder/OutputBuffer;)V

    .line 242
    :goto_2
    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->releaseInputBufferInternal(Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;)V

    .line 243
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 245
    const/4 v3, 0x1

    goto :goto_1

    .line 219
    :cond_3
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->isDecodeOnly()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 220
    const/high16 v4, -0x80000000

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/exoplayer2/decoder/OutputBuffer;->addFlag(I)V

    .line 222
    :cond_4
    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->decode(Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;Lorg/telegram/messenger/exoplayer2/decoder/OutputBuffer;Z)Ljava/lang/Exception;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->exception:Ljava/lang/Exception;

    .line 223
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->exception:Ljava/lang/Exception;

    if-eqz v4, :cond_2

    .line 225
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    monitor-exit v4

    goto :goto_1

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 233
    :cond_5
    :try_start_4
    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/decoder/OutputBuffer;->isDecodeOnly()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 234
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->skippedOutputBufferCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->skippedOutputBufferCount:I

    .line 235
    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->releaseOutputBufferInternal(Lorg/telegram/messenger/exoplayer2/decoder/OutputBuffer;)V

    goto :goto_2

    .line 243
    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v3

    .line 237
    :cond_6
    :try_start_5
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->skippedOutputBufferCount:I

    iput v3, v1, Lorg/telegram/messenger/exoplayer2/decoder/OutputBuffer;->skippedOutputBufferCount:I

    .line 238
    const/4 v3, 0x0

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->skippedOutputBufferCount:I

    .line 239
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->queuedOutputBuffers:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2
.end method

.method private maybeNotifyDecodeLoop()V
    .locals 1

    .prologue
    .line 181
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;, "Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->canDecodeBuffer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 184
    :cond_0
    return-void
.end method

.method private maybeThrowException()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 169
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;, "Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->exception:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->exception:Ljava/lang/Exception;

    throw v0

    .line 172
    :cond_0
    return-void
.end method

.method private releaseInputBufferInternal(Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    .prologue
    .line 253
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;, "Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    .local p1, "inputBuffer":Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;, "TI;"
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 254
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->availableInputBuffers:[Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->availableInputBufferCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->availableInputBufferCount:I

    aput-object p1, v0, v1

    .line 255
    return-void
.end method

.method private releaseOutputBufferInternal(Lorg/telegram/messenger/exoplayer2/decoder/OutputBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .prologue
    .line 258
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;, "Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    .local p1, "outputBuffer":Lorg/telegram/messenger/exoplayer2/decoder/OutputBuffer;, "TO;"
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/decoder/OutputBuffer;->clear()V

    .line 259
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->availableOutputBuffers:[Lorg/telegram/messenger/exoplayer2/decoder/OutputBuffer;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->availableOutputBufferCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->availableOutputBufferCount:I

    aput-object p1, v0, v1

    .line 260
    return-void
.end method

.method private run()V
    .locals 2

    .prologue
    .line 188
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;, "Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->decode()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 195
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected abstract createInputBuffer()Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation
.end method

.method protected abstract createOutputBuffer()Lorg/telegram/messenger/exoplayer2/decoder/OutputBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation
.end method

.method protected abstract decode(Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;Lorg/telegram/messenger/exoplayer2/decoder/OutputBuffer;Z)Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;TO;Z)TE;"
        }
    .end annotation
.end method

.method public bridge synthetic dequeueInputBuffer()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;, "Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->dequeueInputBuffer()Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final dequeueInputBuffer()Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;, "Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 90
    :try_start_0
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->maybeThrowException()V

    .line 91
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->dequeuedInputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 92
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->availableInputBufferCount:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->dequeuedInputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    .line 94
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->dequeuedInputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    monitor-exit v1

    return-object v0

    .line 91
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 92
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->availableInputBuffers:[Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->availableInputBufferCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->availableInputBufferCount:I

    aget-object v0, v0, v2

    goto :goto_1

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic dequeueOutputBuffer()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;, "Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->dequeueOutputBuffer()Lorg/telegram/messenger/exoplayer2/decoder/OutputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final dequeueOutputBuffer()Lorg/telegram/messenger/exoplayer2/decoder/OutputBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;, "Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 112
    :try_start_0
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->maybeThrowException()V

    .line 113
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->queuedOutputBuffers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const/4 v0, 0x0

    monitor-exit v1

    .line 116
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->queuedOutputBuffers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/decoder/OutputBuffer;

    monitor-exit v1

    goto :goto_0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final flush()V
    .locals 2

    .prologue
    .line 134
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;, "Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 135
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->flushed:Z

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->skippedOutputBufferCount:I

    .line 137
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->dequeuedInputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->dequeuedInputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->releaseInputBufferInternal(Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;)V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->dequeuedInputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    .line 141
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->queuedInputBuffers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->queuedInputBuffers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->releaseInputBufferInternal(Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;)V

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 144
    :cond_1
    :goto_1
    :try_start_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->queuedOutputBuffers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 145
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->queuedOutputBuffers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/decoder/OutputBuffer;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->releaseOutputBufferInternal(Lorg/telegram/messenger/exoplayer2/decoder/OutputBuffer;)V

    goto :goto_1

    .line 147
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    return-void
.end method

.method public bridge synthetic queueInputBuffer(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;, "Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    check-cast p1, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->queueInputBuffer(Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;)V

    return-void
.end method

.method public final queueInputBuffer(Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;, "Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    .local p1, "inputBuffer":Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;, "TI;"
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 101
    :try_start_0
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->maybeThrowException()V

    .line 102
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->dequeuedInputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 103
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->queuedInputBuffers:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 104
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->maybeNotifyDecodeLoop()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->dequeuedInputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    .line 106
    monitor-exit v1

    .line 107
    return-void

    .line 102
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 152
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;, "Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 153
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->released:Z

    .line 154
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 155
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :try_start_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->decodeThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 161
    :goto_0
    return-void

    .line 155
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method protected releaseOutputBuffer(Lorg/telegram/messenger/exoplayer2/decoder/OutputBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;, "Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    .local p1, "outputBuffer":Lorg/telegram/messenger/exoplayer2/decoder/OutputBuffer;, "TO;"
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 127
    :try_start_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->releaseOutputBufferInternal(Lorg/telegram/messenger/exoplayer2/decoder/OutputBuffer;)V

    .line 128
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->maybeNotifyDecodeLoop()V

    .line 129
    monitor-exit v1

    .line 130
    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final setInitialInputBufferSize(I)V
    .locals 4
    .param p1, "size"    # I

    .prologue
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;, "Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder<TI;TO;TE;>;"
    const/4 v2, 0x0

    .line 81
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->availableInputBufferCount:I

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->availableInputBuffers:[Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    array-length v3, v3

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 82
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->availableInputBuffers:[Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 83
    .local v0, "inputBuffer":Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;, "TI;"
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    .line 82
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "inputBuffer":Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;, "TI;"
    :cond_0
    move v1, v2

    .line 81
    goto :goto_0

    .line 85
    :cond_1
    return-void
.end method
