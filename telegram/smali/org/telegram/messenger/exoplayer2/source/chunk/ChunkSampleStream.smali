.class public Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;
.super Ljava/lang/Object;
.source "ChunkSampleStream.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/source/SampleStream;
.implements Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;
.implements Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/telegram/messenger/exoplayer2/source/SampleStream;",
        "Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;",
        "Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback",
        "<",
        "Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;",
        ">;"
    }
.end annotation


# instance fields
.field private final callback:Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader$Callback",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final chunkSource:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final embeddedSampleQueues:[Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

.field private final embeddedTrackTypes:[I

.field private final embeddedTracksSelected:[Z

.field private final eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

.field lastSeekPositionUs:J

.field private final loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

.field loadingFinished:Z

.field private final mediaChunkOutput:Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunkOutput;

.field private final mediaChunks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;",
            ">;"
        }
    .end annotation
.end field

.field private final minLoadableRetryCount:I

.field private final nextChunkHolder:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkHolder;

.field private pendingResetPositionUs:J

.field private primaryDownstreamTrackFormat:Lorg/telegram/messenger/exoplayer2/Format;

.field private final primarySampleQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

.field private final primaryTrackType:I

.field private final readOnlyMediaChunks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I[ILorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader$Callback;Lorg/telegram/messenger/exoplayer2/upstream/Allocator;JILorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;)V
    .locals 8
    .param p1, "primaryTrackType"    # I
    .param p2, "embeddedTrackTypes"    # [I
    .param p5, "allocator"    # Lorg/telegram/messenger/exoplayer2/upstream/Allocator;
    .param p6, "positionUs"    # J
    .param p8, "minLoadableRetryCount"    # I
    .param p9, "eventDispatcher"    # Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[ITT;",
            "Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader$Callback",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream",
            "<TT;>;>;",
            "Lorg/telegram/messenger/exoplayer2/upstream/Allocator;",
            "JI",
            "Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;",
            ")V"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    .local p3, "chunkSource":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;, "TT;"
    .local p4, "callback":Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader$Callback;, "Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader$Callback<Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->primaryTrackType:I

    .line 77
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->embeddedTrackTypes:[I

    .line 78
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->chunkSource:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;

    .line 79
    iput-object p4, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->callback:Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader$Callback;

    .line 80
    move-object/from16 v0, p9

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    .line 81
    move/from16 v0, p8

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->minLoadableRetryCount:I

    .line 82
    new-instance v6, Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    const-string/jumbo v7, "Loader:ChunkSampleStream"

    invoke-direct {v6, v7}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    .line 83
    new-instance v6, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkHolder;

    invoke-direct {v6}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkHolder;-><init>()V

    iput-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->nextChunkHolder:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkHolder;

    .line 84
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    .line 85
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->readOnlyMediaChunks:Ljava/util/List;

    .line 87
    if-nez p2, :cond_0

    const/4 v1, 0x0

    .line 88
    .local v1, "embeddedTrackCount":I
    :goto_0
    new-array v6, v1, [Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    iput-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    .line 89
    new-array v6, v1, [Z

    iput-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->embeddedTracksSelected:[Z

    .line 90
    add-int/lit8 v6, v1, 0x1

    new-array v5, v6, [I

    .line 91
    .local v5, "trackTypes":[I
    add-int/lit8 v6, v1, 0x1

    new-array v3, v6, [Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    .line 93
    .local v3, "sampleQueues":[Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;
    new-instance v6, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-direct {v6, p5}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/Allocator;)V

    iput-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    .line 94
    const/4 v6, 0x0

    aput p1, v5, v6

    .line 95
    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    aput-object v7, v3, v6

    .line 97
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 98
    new-instance v4, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-direct {v4, p5}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/Allocator;)V

    .line 99
    .local v4, "trackOutput":Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    aput-object v4, v6, v2

    .line 100
    add-int/lit8 v6, v2, 0x1

    aput-object v4, v3, v6

    .line 101
    add-int/lit8 v6, v2, 0x1

    aget v7, p2, v2

    aput v7, v5, v6

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 87
    .end local v1    # "embeddedTrackCount":I
    .end local v2    # "i":I
    .end local v3    # "sampleQueues":[Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;
    .end local v4    # "trackOutput":Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;
    .end local v5    # "trackTypes":[I
    :cond_0
    array-length v1, p2

    goto :goto_0

    .line 104
    .restart local v1    # "embeddedTrackCount":I
    .restart local v2    # "i":I
    .restart local v3    # "sampleQueues":[Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;
    .restart local v5    # "trackTypes":[I
    :cond_1
    new-instance v6, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunkOutput;

    invoke-direct {v6, v5, v3}, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunkOutput;-><init>([I[Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;)V

    iput-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunkOutput:Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunkOutput;

    .line 105
    iput-wide p6, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    .line 106
    iput-wide p6, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    .line 107
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;)[Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->embeddedTracksSelected:[Z

    return-object v0
.end method

.method private discardDownstreamMediaChunks(I)V
    .locals 8
    .param p1, "primaryStreamReadIndex"    # I

    .prologue
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    const/4 v4, 0x1

    .line 392
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-le v1, v4, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    .line 393
    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v1

    if-gt v1, p1, :cond_0

    .line 394
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 396
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;

    .line 397
    .local v0, "currentChunk":Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;
    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;->trackFormat:Lorg/telegram/messenger/exoplayer2/Format;

    .line 398
    .local v3, "trackFormat":Lorg/telegram/messenger/exoplayer2/Format;
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->primaryDownstreamTrackFormat:Lorg/telegram/messenger/exoplayer2/Format;

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/exoplayer2/Format;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 399
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->primaryTrackType:I

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;->trackSelectionReason:I

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;->startTimeUs:J

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(ILorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;J)V

    .line 403
    :cond_1
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->primaryDownstreamTrackFormat:Lorg/telegram/messenger/exoplayer2/Format;

    .line 404
    return-void
.end method

.method private discardUpstreamMediaChunks(I)Z
    .locals 8
    .param p1, "queueLength"    # I

    .prologue
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    const/4 v1, 0x0

    .line 413
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    move v0, v1

    .line 429
    :goto_0
    return v0

    .line 416
    :cond_0
    const-wide/16 v2, 0x0

    .line 417
    .local v2, "startTimeUs":J
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;->endTimeUs:J

    .line 418
    .local v4, "endTimeUs":J
    const/4 v7, 0x0

    .line 419
    .local v7, "removed":Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;
    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    .line 420
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "removed":Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;
    check-cast v7, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;

    .line 421
    .restart local v7    # "removed":Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;
    iget-wide v2, v7, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;->startTimeUs:J

    .line 422
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    goto :goto_1

    .line 424
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v7, v1}, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->discardUpstreamSamples(I)V

    .line 425
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    array-length v0, v0

    if-ge v6, v0, :cond_2

    .line 426
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    aget-object v0, v0, v6

    add-int/lit8 v1, v6, 0x1

    invoke-virtual {v7, v1}, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->discardUpstreamSamples(I)V

    .line 425
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 428
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->primaryTrackType:I

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->upstreamDiscarded(IJJ)V

    .line 429
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isMediaChunk(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;)Z
    .locals 1
    .param p1, "chunk"    # Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;

    .prologue
    .line 384
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    instance-of v0, p1, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;

    return v0
.end method

.method private maybeDiscardUpstream(J)V
    .locals 3
    .param p1, "positionUs"    # J

    .prologue
    .line 379
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->chunkSource:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->readOnlyMediaChunks:Ljava/util/List;

    invoke-interface {v1, p1, p2, v2}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;->getPreferredQueueSize(JLjava/util/List;)I

    move-result v0

    .line 380
    .local v0, "queueSize":I
    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->discardUpstreamMediaChunks(I)Z

    .line 381
    return-void
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 19
    .param p1, "positionUs"    # J

    .prologue
    .line 327
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 328
    :cond_0
    const/4 v3, 0x0

    .line 357
    .end local p1    # "positionUs":J
    :goto_0
    return v3

    .line 331
    .restart local p1    # "positionUs":J
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->chunkSource:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    move-wide/from16 p1, v0

    .end local p1    # "positionUs":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->nextChunkHolder:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkHolder;

    move-wide/from16 v0, p1

    invoke-interface {v4, v3, v0, v1, v5}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;->getNextChunk(Lorg/telegram/messenger/exoplayer2/source/chunk/MediaChunk;JLorg/telegram/messenger/exoplayer2/source/chunk/ChunkHolder;)V

    .line 334
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->nextChunkHolder:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkHolder;

    iget-boolean v2, v3, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkHolder;->endOfStream:Z

    .line 335
    .local v2, "endOfStream":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->nextChunkHolder:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkHolder;

    iget-object v0, v3, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkHolder;->chunk:Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;

    move-object/from16 v16, v0

    .line 336
    .local v16, "loadable":Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->nextChunkHolder:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkHolder;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkHolder;->clear()V

    .line 338
    if-eqz v2, :cond_4

    .line 339
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    .line 340
    const/4 v3, 0x1

    goto :goto_0

    .line 331
    .end local v2    # "endOfStream":Z
    .end local v16    # "loadable":Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;
    .restart local p1    # "positionUs":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;

    goto :goto_1

    .line 343
    .end local p1    # "positionUs":J
    .restart local v2    # "endOfStream":Z
    .restart local v16    # "loadable":Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;
    :cond_4
    if-nez v16, :cond_5

    .line 344
    const/4 v3, 0x0

    goto :goto_0

    .line 347
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->isMediaChunk(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 348
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    move-object/from16 v17, v16

    .line 349
    check-cast v17, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;

    .line 350
    .local v17, "mediaChunk":Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunkOutput:Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunkOutput;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;->init(Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunkOutput;)V

    .line 351
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 353
    .end local v17    # "mediaChunk":Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->minLoadableRetryCount:I

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v3, v0, v1, v4}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->startLoading(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback;I)J

    move-result-wide v14

    .line 354
    .local v14, "elapsedRealtimeMs":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    move-object/from16 v0, v16

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    move-object/from16 v0, v16

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->type:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->primaryTrackType:I

    move-object/from16 v0, v16

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->trackFormat:Lorg/telegram/messenger/exoplayer2/Format;

    move-object/from16 v0, v16

    iget v8, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    move-object/from16 v0, v16

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    move-object/from16 v0, v16

    iget-wide v10, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    move-object/from16 v0, v16

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    invoke-virtual/range {v3 .. v15}, Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadStarted(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;IILorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;JJJ)V

    .line 357
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method public discardUnselectedEmbeddedTracksTo(J)V
    .locals 3
    .param p1, "positionUs"    # J

    .prologue
    .line 116
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 117
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->embeddedTracksSelected:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    .line 118
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, v2}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->skipToKeyframeBefore(JZ)Z

    .line 116
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_1
    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 6

    .prologue
    .line 160
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    if-eqz v4, :cond_0

    .line 161
    const-wide/high16 v4, -0x8000000000000000L

    .line 172
    :goto_0
    return-wide v4

    .line 162
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 163
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    goto :goto_0

    .line 165
    :cond_1
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    .line 166
    .local v0, "bufferedPositionUs":J
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;

    .line 167
    .local v3, "lastMediaChunk":Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;
    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;->isLoadCompleted()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v2, v3

    .line 169
    .local v2, "lastCompletedMediaChunk":Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;
    :goto_1
    if-eqz v2, :cond_2

    .line 170
    iget-wide v4, v2, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;->endTimeUs:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 172
    :cond_2
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->getLargestQueuedTimestampUs()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    goto :goto_0

    .line 167
    .end local v2    # "lastCompletedMediaChunk":Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;
    :cond_3
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    .line 168
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_4

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;

    move-object v2, v4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getChunkSource()Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->chunkSource:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;

    return-object v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .prologue
    .line 362
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    .line 365
    :goto_0
    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;->endTimeUs:J

    goto :goto_0
.end method

.method isPendingReset()Z
    .locals 4

    .prologue
    .line 388
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

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

.method public isReady()Z
    .locals 1

    .prologue
    .line 231
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->maybeThrowError()V

    .line 237
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->chunkSource:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;->maybeThrowError()V

    .line 240
    :cond_0
    return-void
.end method

.method public onLoadCanceled(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;JJZ)V
    .locals 20
    .param p1, "loadable"    # Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "released"    # Z

    .prologue
    .line 277
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    move-object/from16 v0, p1

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->type:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->primaryTrackType:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->trackFormat:Lorg/telegram/messenger/exoplayer2/Format;

    move-object/from16 v0, p1

    iget v8, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    move-object/from16 v0, p1

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-wide v10, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    move-object/from16 v0, p1

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    .line 280
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v18

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    .line 277
    invoke-virtual/range {v3 .. v19}, Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadCanceled(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;IILorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    .line 281
    if-nez p6, :cond_1

    .line 282
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->reset(Z)V

    .line 283
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v2, v4, v3

    .line 284
    .local v2, "embeddedSampleQueue":Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->reset(Z)V

    .line 283
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 286
    .end local v2    # "embeddedSampleQueue":Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->callback:Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader$Callback;

    move-object/from16 v0, p0

    invoke-interface {v3, v0}, Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V

    .line 288
    :cond_1
    return-void
.end method

.method public bridge synthetic onLoadCanceled(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;JJZ)V
    .locals 8

    .prologue
    .line 38
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    move-object v1, p1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->onLoadCanceled(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;JJZ)V

    return-void
.end method

.method public onLoadCompleted(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;JJ)V
    .locals 20
    .param p1, "loadable"    # Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J

    .prologue
    .line 266
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->chunkSource:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;->onChunkLoadCompleted(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    move-object/from16 v0, p1

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->type:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->primaryTrackType:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->trackFormat:Lorg/telegram/messenger/exoplayer2/Format;

    move-object/from16 v0, p1

    iget v8, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    move-object/from16 v0, p1

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-wide v10, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    move-object/from16 v0, p1

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    .line 270
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v18

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    .line 267
    invoke-virtual/range {v3 .. v19}, Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadCompleted(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;IILorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->callback:Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader$Callback;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V

    .line 272
    return-void
.end method

.method public bridge synthetic onLoadCompleted(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;JJ)V
    .locals 6

    .prologue
    .line 38
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    move-object v1, p1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->onLoadCompleted(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;JJ)V

    return-void
.end method

.method public onLoadError(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;JJLjava/io/IOException;)I
    .locals 26
    .param p1, "loadable"    # Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "error"    # Ljava/io/IOException;

    .prologue
    .line 293
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v18

    .line 294
    .local v18, "bytesLoaded":J
    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->isMediaChunk(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;)Z

    move-result v23

    .line 295
    .local v23, "isMediaChunk":Z
    if-eqz v23, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v3, v18, v4

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 296
    .local v2, "cancelable":Z
    :goto_0
    const/16 v21, 0x0

    .line 297
    .local v21, "canceled":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->chunkSource:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;

    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-interface {v3, v0, v2, v1}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;->onChunkLoadError(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;ZLjava/lang/Exception;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 298
    const/16 v21, 0x1

    .line 299
    if-eqz v23, :cond_4

    .line 300
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;

    .line 301
    .local v24, "removed":Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 302
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->discardUpstreamSamples(I)V

    .line 303
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    array-length v3, v3

    move/from16 v0, v22

    if-ge v0, v3, :cond_3

    .line 304
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    aget-object v3, v3, v22

    add-int/lit8 v4, v22, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->discardUpstreamSamples(I)V

    .line 303
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 295
    .end local v2    # "cancelable":Z
    .end local v21    # "canceled":Z
    .end local v22    # "i":I
    .end local v24    # "removed":Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 301
    .restart local v2    # "cancelable":Z
    .restart local v21    # "canceled":Z
    .restart local v24    # "removed":Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 306
    .restart local v22    # "i":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 307
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    .line 311
    .end local v22    # "i":I
    .end local v24    # "removed":Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    move-object/from16 v0, p1

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->type:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->primaryTrackType:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->trackFormat:Lorg/telegram/messenger/exoplayer2/Format;

    move-object/from16 v0, p1

    iget v8, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    move-object/from16 v0, p1

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-wide v10, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    move-object/from16 v0, p1

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    move-object/from16 v20, p6

    invoke-virtual/range {v3 .. v21}, Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadError(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;IILorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    .line 315
    if-eqz v21, :cond_5

    .line 316
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->callback:Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader$Callback;

    move-object/from16 v0, p0

    invoke-interface {v3, v0}, Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V

    .line 317
    const/4 v3, 0x2

    .line 319
    :goto_3
    return v3

    :cond_5
    const/4 v3, 0x0

    goto :goto_3
.end method

.method public bridge synthetic onLoadError(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;)I
    .locals 8

    .prologue
    .line 38
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    move-object v1, p1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->onLoadError(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;JJLjava/io/IOException;)I

    move-result v0

    return v0
.end method

.method public readData(Lorg/telegram/messenger/exoplayer2/FormatHolder;Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;Z)I
    .locals 8
    .param p1, "formatHolder"    # Lorg/telegram/messenger/exoplayer2/FormatHolder;
    .param p2, "buffer"    # Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;
    .param p3, "formatRequired"    # Z

    .prologue
    .line 245
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    const/4 v0, -0x3

    .line 249
    :goto_0
    return v0

    .line 248
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->getReadIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->discardDownstreamMediaChunks(I)V

    .line 249
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    iget-boolean v5, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->readData(Lorg/telegram/messenger/exoplayer2/FormatHolder;Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;ZZJ)I

    move-result v0

    goto :goto_0
.end method

.method public release()V
    .locals 4

    .prologue
    .line 220
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->disable()V

    .line 221
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 222
    .local v0, "embeddedSampleQueue":Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->disable()V

    .line 221
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 224
    .end local v0    # "embeddedSampleQueue":Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->release()V

    .line 225
    return-void
.end method

.method public seekToUs(J)V
    .locals 9
    .param p1, "positionUs"    # J

    .prologue
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 182
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    .line 184
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    .line 185
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->getNextLoadPositionUs()J

    move-result-wide v6

    cmp-long v2, p1, v6

    if-gez v2, :cond_0

    move v2, v3

    .line 184
    :goto_0
    invoke-virtual {v5, p1, p2, v2}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->skipToKeyframeBefore(JZ)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v3

    .line 186
    .local v1, "seekInsideBuffer":Z
    :goto_1
    if-eqz v1, :cond_3

    .line 189
    :goto_2
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-le v2, v3, :cond_2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    .line 190
    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v2

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->getReadIndex()I

    move-result v5

    if-gt v2, v5, :cond_2

    .line 191
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_2

    .end local v1    # "seekInsideBuffer":Z
    :cond_0
    move v2, v4

    .line 185
    goto :goto_0

    :cond_1
    move v1, v4

    .line 184
    goto :goto_1

    .line 195
    .restart local v1    # "seekInsideBuffer":Z
    :cond_2
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    array-length v5, v2

    :goto_3
    if-ge v4, v5, :cond_4

    aget-object v0, v2, v4

    .line 196
    .local v0, "embeddedSampleQueue":Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;
    invoke-virtual {v0, p1, p2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->skipToKeyframeBefore(JZ)Z

    .line 195
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 200
    .end local v0    # "embeddedSampleQueue":Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;
    :cond_3
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    .line 201
    iput-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    .line 202
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 203
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 204
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->cancelLoading()V

    .line 212
    :cond_4
    return-void

    .line 206
    :cond_5
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->reset(Z)V

    .line 207
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    array-length v5, v2

    :goto_4
    if-ge v4, v5, :cond_4

    aget-object v0, v2, v4

    .line 208
    .restart local v0    # "embeddedSampleQueue":Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;
    invoke-virtual {v0, v3}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->reset(Z)V

    .line 207
    add-int/lit8 v4, v4, 0x1

    goto :goto_4
.end method

.method public selectEmbeddedTrack(JI)Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;
    .locals 3
    .param p1, "positionUs"    # J
    .param p3, "trackType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream",
            "<TT;>.EmbeddedSampleStream;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    const/4 v2, 0x1

    .line 134
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 135
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->embeddedTrackTypes:[I

    aget v1, v1, v0

    if-ne v1, p3, :cond_1

    .line 136
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->embeddedTracksSelected:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    move v1, v2

    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 137
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->embeddedTracksSelected:[Z

    aput-boolean v2, v1, v0

    .line 138
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, v2}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->skipToKeyframeBefore(JZ)Z

    .line 139
    new-instance v1, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    aget-object v2, v2, v0

    invoke-direct {v1, p0, p0, v2, v0}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;-><init>(Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;I)V

    return-object v1

    .line 136
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 134
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public skipData(J)V
    .locals 3
    .param p1, "positionUs"    # J

    .prologue
    .line 255
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->getLargestQueuedTimestampUs()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 256
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->skipAll()V

    .line 260
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->skipToKeyframeBefore(JZ)Z

    goto :goto_0
.end method
