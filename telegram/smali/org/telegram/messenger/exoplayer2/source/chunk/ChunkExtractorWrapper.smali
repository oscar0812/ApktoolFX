.class public final Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;
.super Ljava/lang/Object;
.source "ChunkExtractorWrapper.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;,
        Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;
    }
.end annotation


# instance fields
.field private final bindingTrackOutputs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;",
            ">;"
        }
    .end annotation
.end field

.field public final extractor:Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

.field private extractorInitialized:Z

.field private final manifestFormat:Lorg/telegram/messenger/exoplayer2/Format;

.field private sampleFormats:[Lorg/telegram/messenger/exoplayer2/Format;

.field private seekMap:Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;

.field private trackOutputProvider:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/extractor/Extractor;Lorg/telegram/messenger/exoplayer2/Format;)V
    .locals 1
    .param p1, "extractor"    # Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    .param p2, "manifestFormat"    # Lorg/telegram/messenger/exoplayer2/Format;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;->extractor:Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    .line 74
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;->manifestFormat:Lorg/telegram/messenger/exoplayer2/Format;

    .line 75
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;->bindingTrackOutputs:Landroid/util/SparseArray;

    .line 76
    return-void
.end method


# virtual methods
.method public endTracks()V
    .locals 3

    .prologue
    .line 128
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;->bindingTrackOutputs:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    new-array v1, v2, [Lorg/telegram/messenger/exoplayer2/Format;

    .line 129
    .local v1, "sampleFormats":[Lorg/telegram/messenger/exoplayer2/Format;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;->bindingTrackOutputs:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 130
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;->bindingTrackOutputs:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->sampleFormat:Lorg/telegram/messenger/exoplayer2/Format;

    aput-object v2, v1, v0

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_0
    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;->sampleFormats:[Lorg/telegram/messenger/exoplayer2/Format;

    .line 133
    return-void
.end method

.method public getSampleFormats()[Lorg/telegram/messenger/exoplayer2/Format;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;->sampleFormats:[Lorg/telegram/messenger/exoplayer2/Format;

    return-object v0
.end method

.method public getSeekMap()Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;->seekMap:Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;

    return-object v0
.end method

.method public init(Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;)V
    .locals 4
    .param p1, "trackOutputProvider"    # Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;

    .prologue
    const-wide/16 v2, 0x0

    .line 99
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;->trackOutputProvider:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;

    .line 100
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;->extractorInitialized:Z

    if-nez v1, :cond_1

    .line 101
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;->extractor:Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    invoke-interface {v1, p0}, Lorg/telegram/messenger/exoplayer2/extractor/Extractor;->init(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;)V

    .line 102
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;->extractorInitialized:Z

    .line 109
    :cond_0
    return-void

    .line 104
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;->extractor:Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    invoke-interface {v1, v2, v3, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/Extractor;->seek(JJ)V

    .line 105
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;->bindingTrackOutputs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 106
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;->bindingTrackOutputs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->bind(Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;)V

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public seekMap(Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;)V
    .locals 0
    .param p1, "seekMap"    # Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;

    .prologue
    .line 137
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;->seekMap:Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;

    .line 138
    return-void
.end method

.method public track(II)Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;
    .locals 2
    .param p1, "id"    # I
    .param p2, "type"    # I

    .prologue
    .line 115
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;->bindingTrackOutputs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;

    .line 116
    .local v0, "bindingTrackOutput":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;
    if-nez v0, :cond_0

    .line 118
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;->sampleFormats:[Lorg/telegram/messenger/exoplayer2/Format;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 119
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;

    .end local v0    # "bindingTrackOutput":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;->manifestFormat:Lorg/telegram/messenger/exoplayer2/Format;

    invoke-direct {v0, p1, p2, v1}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;-><init>(IILorg/telegram/messenger/exoplayer2/Format;)V

    .line 120
    .restart local v0    # "bindingTrackOutput":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;->trackOutputProvider:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->bind(Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;)V

    .line 121
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;->bindingTrackOutputs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 123
    :cond_0
    return-object v0

    .line 118
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
