.class final Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;
.super Ljava/lang/Object;
.source "SsMediaPeriod.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
.implements Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;",
        "Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader$Callback",
        "<",
        "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream",
        "<",
        "Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final INITIALIZATION_VECTOR_SIZE:I = 0x8


# instance fields
.field private final allocator:Lorg/telegram/messenger/exoplayer2/upstream/Allocator;

.field private callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

.field private final chunkSourceFactory:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;

.field private final eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

.field private manifest:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

.field private final manifestLoaderErrorThrower:Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;

.field private final minLoadableRetryCount:I

.field private sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource;",
            ">;"
        }
    .end annotation
.end field

.field private sequenceableLoader:Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;

.field private final trackEncryptionBoxes:[Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;

.field private final trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;ILorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;Lorg/telegram/messenger/exoplayer2/upstream/Allocator;)V
    .locals 7
    .param p1, "manifest"    # Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;
    .param p2, "chunkSourceFactory"    # Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;
    .param p3, "minLoadableRetryCount"    # I
    .param p4, "eventDispatcher"    # Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;
    .param p5, "manifestLoaderErrorThrower"    # Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;
    .param p6, "allocator"    # Lorg/telegram/messenger/exoplayer2/upstream/Allocator;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;->chunkSourceFactory:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;

    .line 62
    iput-object p5, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;->manifestLoaderErrorThrower:Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;

    .line 63
    iput p3, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;->minLoadableRetryCount:I

    .line 64
    iput-object p4, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    .line 65
    iput-object p6, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;->allocator:Lorg/telegram/messenger/exoplayer2/upstream/Allocator;

    .line 67
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;->buildTrackGroups(Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;)Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    .line 68
    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;->protectionElement:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$ProtectionElement;

    .line 69
    .local v1, "protectionElement":Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$ProtectionElement;
    if-eqz v1, :cond_0

    .line 70
    iget-object v2, v1, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$ProtectionElement;->data:[B

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;->getProtectionElementKeyId([B)[B

    move-result-object v0

    .line 71
    .local v0, "keyId":[B
    new-array v2, v6, [Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;

    new-instance v3, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;

    const/16 v4, 0x8

    invoke-direct {v3, v6, v4, v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;-><init>(ZI[B)V

    aput-object v3, v2, v5

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;->trackEncryptionBoxes:[Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;

    .line 76
    .end local v0    # "keyId":[B
    :goto_0
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;->manifest:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    .line 77
    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;->newSampleStreamArray(I)[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    .line 78
    new-instance v2, Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-direct {v2, v3}, Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;-><init>([Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;->sequenceableLoader:Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;

    .line 79
    return-void

    .line 74
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;->trackEncryptionBoxes:[Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;

    goto :goto_0
.end method

.method private buildSampleStream(Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;J)Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;
    .locals 14
    .param p1, "selection"    # Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    .param p2, "positionUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;",
            "J)",
            "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->indexOf(Lorg/telegram/messenger/exoplayer2/source/TrackGroup;)I

    move-result v3

    .line 191
    .local v3, "streamElementIndex":I
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;->chunkSourceFactory:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;->manifestLoaderErrorThrower:Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;->manifest:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;->trackEncryptionBoxes:[Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-object v4, p1

    invoke-interface/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;->createChunkSource(Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;ILorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;[Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;)Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource;

    move-result-object v7

    .line 193
    .local v7, "chunkSource":Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource;
    new-instance v4, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;->manifest:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;->streamElements:[Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    aget-object v0, v0, v3

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->type:I

    const/4 v6, 0x0

    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;->allocator:Lorg/telegram/messenger/exoplayer2/upstream/Allocator;

    iget v12, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;->minLoadableRetryCount:I

    iget-object v13, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    move-object v8, p0

    move-wide/from16 v10, p2

    invoke-direct/range {v4 .. v13}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;-><init>(I[ILorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader$Callback;Lorg/telegram/messenger/exoplayer2/upstream/Allocator;JILorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;)V

    return-object v4
.end method

.method private static buildTrackGroups(Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;)Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    .locals 4
    .param p0, "manifest"    # Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    .prologue
    .line 198
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;->streamElements:[Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    array-length v2, v2

    new-array v1, v2, [Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    .line 199
    .local v1, "trackGroups":[Lorg/telegram/messenger/exoplayer2/source/TrackGroup;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;->streamElements:[Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 200
    new-instance v2, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;->streamElements:[Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    aget-object v3, v3, v0

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->formats:[Lorg/telegram/messenger/exoplayer2/Format;

    invoke-direct {v2, v3}, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;-><init>([Lorg/telegram/messenger/exoplayer2/Format;)V

    aput-object v2, v1, v0

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_0
    new-instance v2, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    invoke-direct {v2, v1}, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;-><init>([Lorg/telegram/messenger/exoplayer2/source/TrackGroup;)V

    return-object v2
.end method

.method private static getProtectionElementKeyId([B)[B
    .locals 8
    .param p0, "initData"    # [B

    .prologue
    const/4 v7, 0x0

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .local v2, "initDataStringBuilder":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, p0

    if-ge v0, v5, :cond_0

    .line 213
    aget-byte v5, p0, v0

    int-to-char v5, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "initDataString":Ljava/lang/String;
    const-string/jumbo v5, "<KID>"

    .line 217
    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x5

    const-string/jumbo v6, "</KID>"

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 216
    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 218
    .local v4, "keyIdString":Ljava/lang/String;
    invoke-static {v4, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 219
    .local v3, "keyId":[B
    const/4 v5, 0x3

    invoke-static {v3, v7, v5}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;->swap([BII)V

    .line 220
    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-static {v3, v5, v6}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;->swap([BII)V

    .line 221
    const/4 v5, 0x4

    const/4 v6, 0x5

    invoke-static {v3, v5, v6}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;->swap([BII)V

    .line 222
    const/4 v5, 0x6

    const/4 v6, 0x7

    invoke-static {v3, v5, v6}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;->swap([BII)V

    .line 223
    return-object v3
.end method

.method private static newSampleStreamArray(I)[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;
    .locals 1
    .param p0, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    new-array v0, p0, [Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    return-object v0
.end method

.method private static swap([BII)V
    .locals 2
    .param p0, "data"    # [B
    .param p1, "firstPosition"    # I
    .param p2, "secondPosition"    # I

    .prologue
    .line 227
    aget-byte v0, p0, p1

    .line 228
    .local v0, "temp":B
    aget-byte v1, p0, p2

    aput-byte v1, p0, p1

    .line 229
    aput-byte v0, p0, p2

    .line 230
    return-void
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 1
    .param p1, "positionUs"    # J

    .prologue
    .line 146
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;->sequenceableLoader:Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;->continueLoading(J)Z

    move-result v0

    return v0
.end method

.method public discardBuffer(J)V
    .locals 0
    .param p1, "positionUs"    # J

    .prologue
    .line 142
    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 11

    .prologue
    const-wide/high16 v6, -0x8000000000000000L

    .line 161
    const-wide v0, 0x7fffffffffffffffL

    .line 162
    .local v0, "bufferedPositionUs":J
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v9, v8

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v9, :cond_1

    aget-object v4, v8, v5

    .line 163
    .local v4, "sampleStream":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource;>;"
    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->getBufferedPositionUs()J

    move-result-wide v2

    .line 164
    .local v2, "rendererBufferedPositionUs":J
    cmp-long v10, v2, v6

    if-eqz v10, :cond_0

    .line 165
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 162
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 168
    .end local v2    # "rendererBufferedPositionUs":J
    .end local v4    # "sampleStream":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource;>;"
    :cond_1
    const-wide v8, 0x7fffffffffffffffL

    cmp-long v5, v0, v8

    if-nez v5, :cond_2

    move-wide v0, v6

    .end local v0    # "bufferedPositionUs":J
    :cond_2
    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;->sequenceableLoader:Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackGroups()Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public maybeThrowPrepareError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;->manifestLoaderErrorThrower:Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;->maybeThrowError()V

    .line 104
    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V
    .locals 0

    .prologue
    .line 40
    check-cast p1, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;->onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;)V

    return-void
.end method

.method public onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, "sampleStream":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource;>;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;->callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V

    .line 184
    return-void
.end method

.method public prepare(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;)V
    .locals 0
    .param p1, "callback"    # Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    .prologue
    .line 97
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;->callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    .line 98
    invoke-interface {p1, p0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V

    .line 99
    return-void
.end method

.method public readDiscontinuity()J
    .locals 2

    .prologue
    .line 156
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public release()V
    .locals 4

    .prologue
    .line 90
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 91
    .local v0, "sampleStream":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource;>;"
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->release()V

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    .end local v0    # "sampleStream":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource;>;"
    :cond_0
    return-void
.end method

.method public seekToUs(J)J
    .locals 5
    .param p1, "positionUs"    # J

    .prologue
    .line 173
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 174
    .local v0, "sampleStream":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource;>;"
    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->seekToUs(J)V

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 176
    .end local v0    # "sampleStream":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource;>;"
    :cond_0
    return-wide p1
.end method

.method public selectTracks([Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;[Z[Lorg/telegram/messenger/exoplayer2/source/SampleStream;[ZJ)J
    .locals 5
    .param p1, "selections"    # [Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    .param p2, "mayRetainStreamFlags"    # [Z
    .param p3, "streams"    # [Lorg/telegram/messenger/exoplayer2/source/SampleStream;
    .param p4, "streamResetFlags"    # [Z
    .param p5, "positionUs"    # J

    .prologue
    .line 114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v1, "sampleStreamsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_4

    .line 116
    aget-object v3, p3, v0

    if-eqz v3, :cond_1

    .line 118
    aget-object v2, p3, v0

    check-cast v2, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    .line 119
    .local v2, "stream":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource;>;"
    aget-object v3, p1, v0

    if-eqz v3, :cond_0

    aget-boolean v3, p2, v0

    if-nez v3, :cond_3

    .line 120
    :cond_0
    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->release()V

    .line 121
    const/4 v3, 0x0

    aput-object v3, p3, v0

    .line 126
    .end local v2    # "stream":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource;>;"
    :cond_1
    :goto_1
    aget-object v3, p3, v0

    if-nez v3, :cond_2

    aget-object v3, p1, v0

    if-eqz v3, :cond_2

    .line 127
    aget-object v3, p1, v0

    invoke-direct {p0, v3, p5, p6}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;->buildSampleStream(Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;J)Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    move-result-object v2

    .line 128
    .restart local v2    # "stream":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource;>;"
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    aput-object v2, p3, v0

    .line 130
    const/4 v3, 0x1

    aput-boolean v3, p4, v0

    .line 115
    .end local v2    # "stream":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource;>;"
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    .restart local v2    # "stream":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource;>;"
    :cond_3
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 133
    .end local v2    # "stream":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource;>;"
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;->newSampleStreamArray(I)[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    .line 134
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 135
    new-instance v3, Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-direct {v3, v4}, Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;-><init>([Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;->sequenceableLoader:Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;

    .line 136
    return-wide p5
.end method

.method public updateManifest(Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;)V
    .locals 5
    .param p1, "manifest"    # Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    .prologue
    .line 82
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;->manifest:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    .line 83
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 84
    .local v0, "sampleStream":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource;>;"
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->getChunkSource()Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource;

    invoke-interface {v1, p1}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource;->updateManifest(Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;)V

    .line 83
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 86
    .end local v0    # "sampleStream":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource;>;"
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;->callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v1, p0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V

    .line 87
    return-void
.end method
