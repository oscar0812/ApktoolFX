.class public abstract Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;
.super Lorg/telegram/messenger/exoplayer2/source/chunk/MediaChunk;
.source "BaseMediaChunk.java"


# instance fields
.field private firstSampleIndices:[I

.field private output:Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunkOutput;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;Lorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;JJI)V
    .locals 0
    .param p1, "dataSource"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    .param p2, "dataSpec"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    .param p3, "trackFormat"    # Lorg/telegram/messenger/exoplayer2/Format;
    .param p4, "trackSelectionReason"    # I
    .param p5, "trackSelectionData"    # Ljava/lang/Object;
    .param p6, "startTimeUs"    # J
    .param p8, "endTimeUs"    # J
    .param p10, "chunkIndex"    # I

    .prologue
    .line 43
    invoke-direct/range {p0 .. p10}, Lorg/telegram/messenger/exoplayer2/source/chunk/MediaChunk;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;Lorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;JJI)V

    .line 45
    return-void
.end method


# virtual methods
.method public final getFirstSampleIndex(I)I
    .locals 1
    .param p1, "trackIndex"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;->firstSampleIndices:[I

    aget v0, v0, p1

    return v0
.end method

.method protected final getOutput()Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunkOutput;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;->output:Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunkOutput;

    return-object v0
.end method

.method public init(Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunkOutput;)V
    .locals 1
    .param p1, "output"    # Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunkOutput;

    .prologue
    .line 54
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;->output:Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunkOutput;

    .line 55
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunkOutput;->getWriteIndices()[I

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;->firstSampleIndices:[I

    .line 56
    return-void
.end method
