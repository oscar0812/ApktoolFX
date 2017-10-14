.class final Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunkOutput;
.super Ljava/lang/Object;
.source "BaseMediaChunkOutput.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseMediaChunkOutput"


# instance fields
.field private final trackOutputs:[Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

.field private final trackTypes:[I


# direct methods
.method public constructor <init>([I[Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;)V
    .locals 0
    .param p1, "trackTypes"    # [I
    .param p2, "trackOutputs"    # [Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunkOutput;->trackTypes:[I

    .line 40
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunkOutput;->trackOutputs:[Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    .line 41
    return-void
.end method


# virtual methods
.method public getWriteIndices()[I
    .locals 3

    .prologue
    .line 58
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunkOutput;->trackOutputs:[Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    array-length v2, v2

    new-array v1, v2, [I

    .line 59
    .local v1, "writeIndices":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunkOutput;->trackOutputs:[Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 60
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunkOutput;->trackOutputs:[Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 61
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunkOutput;->trackOutputs:[Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->getWriteIndex()I

    move-result v2

    aput v2, v1, v0

    .line 59
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_1
    return-object v1
.end method

.method public setSampleOffsetUs(J)V
    .locals 5
    .param p1, "sampleOffsetUs"    # J

    .prologue
    .line 72
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunkOutput;->trackOutputs:[Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 73
    .local v0, "trackOutput":Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;
    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->setSampleOffsetUs(J)V

    .line 72
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    .end local v0    # "trackOutput":Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;
    :cond_1
    return-void
.end method

.method public track(II)Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;
    .locals 4
    .param p1, "id"    # I
    .param p2, "type"    # I

    .prologue
    .line 45
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunkOutput;->trackTypes:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 46
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunkOutput;->trackTypes:[I

    aget v1, v1, v0

    if-ne p2, v1, :cond_0

    .line 47
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunkOutput;->trackOutputs:[Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    aget-object v1, v1, v0

    .line 51
    :goto_1
    return-object v1

    .line 45
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_1
    const-string/jumbo v1, "BaseMediaChunkOutput"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unmatched track of type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance v1, Lorg/telegram/messenger/exoplayer2/extractor/DummyTrackOutput;

    invoke-direct {v1}, Lorg/telegram/messenger/exoplayer2/extractor/DummyTrackOutput;-><init>()V

    goto :goto_1
.end method
