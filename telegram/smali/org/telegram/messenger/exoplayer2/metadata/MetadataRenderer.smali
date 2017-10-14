.class public final Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;
.super Lorg/telegram/messenger/exoplayer2/BaseRenderer;
.source "MetadataRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;
    }
.end annotation


# static fields
.field private static final MAX_PENDING_METADATA_COUNT:I = 0x5

.field private static final MSG_INVOKE_RENDERER:I


# instance fields
.field private final buffer:Lorg/telegram/messenger/exoplayer2/metadata/MetadataInputBuffer;

.field private decoder:Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoder;

.field private final decoderFactory:Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoderFactory;

.field private final formatHolder:Lorg/telegram/messenger/exoplayer2/FormatHolder;

.field private inputStreamEnded:Z

.field private final output:Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;

.field private final outputHandler:Landroid/os/Handler;

.field private final pendingMetadata:[Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

.field private pendingMetadataCount:I

.field private pendingMetadataIndex:I

.field private final pendingMetadataTimestamps:[J


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;Landroid/os/Looper;)V
    .locals 1
    .param p1, "output"    # Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;
    .param p2, "outputLooper"    # Landroid/os/Looper;

    .prologue
    .line 77
    sget-object v0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoderFactory;->DEFAULT:Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoderFactory;

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;-><init>(Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;Landroid/os/Looper;Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoderFactory;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;Landroid/os/Looper;Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoderFactory;)V
    .locals 2
    .param p1, "output"    # Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;
    .param p2, "outputLooper"    # Landroid/os/Looper;
    .param p3, "decoderFactory"    # Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoderFactory;

    .prologue
    const/4 v1, 0x5

    .line 91
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/BaseRenderer;-><init>(I)V

    .line 92
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->output:Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;

    .line 93
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->outputHandler:Landroid/os/Handler;

    .line 94
    invoke-static {p3}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoderFactory;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->decoderFactory:Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoderFactory;

    .line 95
    new-instance v0, Lorg/telegram/messenger/exoplayer2/FormatHolder;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/FormatHolder;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->formatHolder:Lorg/telegram/messenger/exoplayer2/FormatHolder;

    .line 96
    new-instance v0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataInputBuffer;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/metadata/MetadataInputBuffer;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/metadata/MetadataInputBuffer;

    .line 97
    new-array v0, v1, [Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->pendingMetadata:[Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    .line 98
    new-array v0, v1, [J

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->pendingMetadataTimestamps:[J

    .line 99
    return-void

    .line 93
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    goto :goto_0
.end method

.method private flushPendingMetadata()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 178
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->pendingMetadata:[Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 179
    iput v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->pendingMetadataIndex:I

    .line 180
    iput v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->pendingMetadataCount:I

    .line 181
    return-void
.end method

.method private invokeRenderer(Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V
    .locals 2
    .param p1, "metadata"    # Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    .prologue
    .line 170
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->outputHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->outputHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->invokeRendererInternal(Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V

    goto :goto_0
.end method

.method private invokeRendererInternal(Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V
    .locals 1
    .param p1, "metadata"    # Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    .prologue
    .line 197
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->output:Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;->onMetadata(Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V

    .line 198
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 186
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 192
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 188
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->invokeRendererInternal(Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V

    .line 189
    const/4 v0, 0x1

    return v0

    .line 186
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public isEnded()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->inputStreamEnded:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x1

    return v0
.end method

.method protected onDisabled()V
    .locals 1

    .prologue
    .line 154
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->flushPendingMetadata()V

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoder;

    .line 156
    invoke-super {p0}, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->onDisabled()V

    .line 157
    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 1
    .param p1, "positionUs"    # J
    .param p3, "joining"    # Z

    .prologue
    .line 113
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->flushPendingMetadata()V

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->inputStreamEnded:Z

    .line 115
    return-void
.end method

.method protected onStreamChanged([Lorg/telegram/messenger/exoplayer2/Format;)V
    .locals 2
    .param p1, "formats"    # [Lorg/telegram/messenger/exoplayer2/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->decoderFactory:Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoderFactory;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoderFactory;->createDecoder(Lorg/telegram/messenger/exoplayer2/Format;)Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoder;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoder;

    .line 109
    return-void
.end method

.method public render(JJ)V
    .locals 7
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 119
    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->inputStreamEnded:Z

    if-nez v3, :cond_0

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->pendingMetadataCount:I

    const/4 v4, 0x5

    if-ge v3, v4, :cond_0

    .line 120
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/metadata/MetadataInputBuffer;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/metadata/MetadataInputBuffer;->clear()V

    .line 121
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->formatHolder:Lorg/telegram/messenger/exoplayer2/FormatHolder;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/metadata/MetadataInputBuffer;

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->readSource(Lorg/telegram/messenger/exoplayer2/FormatHolder;Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result v2

    .line 122
    .local v2, "result":I
    const/4 v3, -0x4

    if-ne v2, v3, :cond_0

    .line 123
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/metadata/MetadataInputBuffer;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/metadata/MetadataInputBuffer;->isEndOfStream()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 124
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->inputStreamEnded:Z

    .line 144
    .end local v2    # "result":I
    :cond_0
    :goto_0
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->pendingMetadataCount:I

    if-lez v3, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->pendingMetadataTimestamps:[J

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->pendingMetadataIndex:I

    aget-wide v4, v3, v4

    cmp-long v3, v4, p1

    if-gtz v3, :cond_1

    .line 145
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->pendingMetadata:[Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->pendingMetadataIndex:I

    aget-object v3, v3, v4

    invoke-direct {p0, v3}, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->invokeRenderer(Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V

    .line 146
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->pendingMetadata:[Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->pendingMetadataIndex:I

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 147
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->pendingMetadataIndex:I

    add-int/lit8 v3, v3, 0x1

    rem-int/lit8 v3, v3, 0x5

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->pendingMetadataIndex:I

    .line 148
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->pendingMetadataCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->pendingMetadataCount:I

    .line 150
    :cond_1
    return-void

    .line 125
    .restart local v2    # "result":I
    :cond_2
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/metadata/MetadataInputBuffer;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/metadata/MetadataInputBuffer;->isDecodeOnly()Z

    move-result v3

    if-nez v3, :cond_0

    .line 130
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/metadata/MetadataInputBuffer;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->formatHolder:Lorg/telegram/messenger/exoplayer2/FormatHolder;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer2/FormatHolder;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iget-wide v4, v4, Lorg/telegram/messenger/exoplayer2/Format;->subsampleOffsetUs:J

    iput-wide v4, v3, Lorg/telegram/messenger/exoplayer2/metadata/MetadataInputBuffer;->subsampleOffsetUs:J

    .line 131
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/metadata/MetadataInputBuffer;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/metadata/MetadataInputBuffer;->flip()V

    .line 133
    :try_start_0
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->pendingMetadataIndex:I

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->pendingMetadataCount:I

    add-int/2addr v3, v4

    rem-int/lit8 v1, v3, 0x5

    .line 134
    .local v1, "index":I
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->pendingMetadata:[Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoder;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/metadata/MetadataInputBuffer;

    invoke-interface {v4, v5}, Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoder;->decode(Lorg/telegram/messenger/exoplayer2/metadata/MetadataInputBuffer;)Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    move-result-object v4

    aput-object v4, v3, v1

    .line 135
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->pendingMetadataTimestamps:[J

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/metadata/MetadataInputBuffer;

    iget-wide v4, v4, Lorg/telegram/messenger/exoplayer2/metadata/MetadataInputBuffer;->timeUs:J

    aput-wide v4, v3, v1

    .line 136
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->pendingMetadataCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->pendingMetadataCount:I
    :try_end_0
    .catch Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    .end local v1    # "index":I
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoderException;
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->getIndex()I

    move-result v3

    invoke-static {v0, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    move-result-object v3

    throw v3
.end method

.method public supportsFormat(Lorg/telegram/messenger/exoplayer2/Format;)I
    .locals 1
    .param p1, "format"    # Lorg/telegram/messenger/exoplayer2/Format;

    .prologue
    .line 103
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->decoderFactory:Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoderFactory;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoderFactory;->supportsFormat(Lorg/telegram/messenger/exoplayer2/Format;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
