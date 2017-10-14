.class public abstract Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;
.super Lorg/telegram/messenger/exoplayer2/BaseRenderer;
.source "SimpleDecoderAudioRenderer.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/util/MediaClock;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer$AudioTrackListener;,
        Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer$ReinitializationState;
    }
.end annotation


# static fields
.field private static final REINITIALIZATION_STATE_NONE:I = 0x0

.field private static final REINITIALIZATION_STATE_SIGNAL_END_OF_STREAM:I = 0x1

.field private static final REINITIALIZATION_STATE_WAIT_END_OF_STREAM:I = 0x2


# instance fields
.field private allowPositionDiscontinuity:Z

.field private final audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

.field private audioTrackNeedsConfigure:Z

.field private currentPositionUs:J

.field private decoder:Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder",
            "<",
            "Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;",
            "+",
            "Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;",
            "+",
            "Lorg/telegram/messenger/exoplayer2/audio/AudioDecoderException;",
            ">;"
        }
    .end annotation
.end field

.field private decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

.field private decoderReceivedBuffers:Z

.field private decoderReinitializationState:I

.field private drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer2/drm/DrmSession",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/ExoMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private final drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/ExoMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private final eventDispatcher:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

.field private final flagsOnlyBuffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

.field private final formatHolder:Lorg/telegram/messenger/exoplayer2/FormatHolder;

.field private inputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

.field private inputFormat:Lorg/telegram/messenger/exoplayer2/Format;

.field private inputStreamEnded:Z

.field private outputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;

.field private outputStreamEnded:Z

.field private pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer2/drm/DrmSession",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/ExoMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private final playClearSamplesWithoutKeys:Z

.field private waitingForKeys:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;

    invoke-direct {p0, v1, v1, v0}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;-><init>(Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;[Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;)V
    .locals 7
    .param p1, "eventHandler"    # Landroid/os/Handler;
    .param p2, "eventListener"    # Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;
    .param p3, "audioCapabilities"    # Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;

    .prologue
    const/4 v5, 0x0

    .line 121
    const/4 v4, 0x0

    new-array v6, v5, [Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;-><init>(Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;Z[Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;)V

    .line 122
    return-void
.end method

.method public varargs constructor <init>(Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;Z[Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;)V
    .locals 4
    .param p1, "eventHandler"    # Landroid/os/Handler;
    .param p2, "eventListener"    # Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;
    .param p3, "audioCapabilities"    # Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;
    .param p5, "playClearSamplesWithoutKeys"    # Z
    .param p6, "audioProcessors"    # [Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;",
            "Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/ExoMediaCrypto;",
            ">;Z[",
            "Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p4, "drmSessionManager":Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager<Lorg/telegram/messenger/exoplayer2/drm/ExoMediaCrypto;>;"
    const/4 v3, 0x1

    .line 143
    invoke-direct {p0, v3}, Lorg/telegram/messenger/exoplayer2/BaseRenderer;-><init>(I)V

    .line 144
    iput-object p4, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;

    .line 145
    iput-boolean p5, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->playClearSamplesWithoutKeys:Z

    .line 146
    new-instance v0, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    invoke-direct {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    .line 147
    new-instance v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer$AudioTrackListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer$AudioTrackListener;-><init>(Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer$1;)V

    invoke-direct {v0, p3, p6, v1}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;-><init>(Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;[Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$Listener;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    .line 148
    new-instance v0, Lorg/telegram/messenger/exoplayer2/FormatHolder;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/FormatHolder;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->formatHolder:Lorg/telegram/messenger/exoplayer2/FormatHolder;

    .line 149
    invoke-static {}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->newFlagsOnlyInstance()Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->flagsOnlyBuffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderReinitializationState:I

    .line 151
    iput-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrackNeedsConfigure:Z

    .line 152
    return-void
.end method

.method public varargs constructor <init>(Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;[Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;)V
    .locals 7
    .param p1, "eventHandler"    # Landroid/os/Handler;
    .param p2, "eventListener"    # Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;
    .param p3, "audioProcessors"    # [Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;

    .prologue
    const/4 v3, 0x0

    .line 109
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;-><init>(Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;Z[Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;)V

    .line 110
    return-void
.end method

.method static synthetic access$100(Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;)Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    return-object v0
.end method

.method static synthetic access$202(Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->allowPositionDiscontinuity:Z

    return p1
.end method

.method private drainOutputBuffer()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;,
            Lorg/telegram/messenger/exoplayer2/audio/AudioDecoderException;,
            Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$ConfigurationException;,
            Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$InitializationException;,
            Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$WriteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 282
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;

    if-nez v0, :cond_2

    .line 283
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->dequeueOutputBuffer()Lorg/telegram/messenger/exoplayer2/decoder/OutputBuffer;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;

    .line 284
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;

    if-nez v0, :cond_1

    .line 319
    :cond_0
    :goto_0
    return v5

    .line 287
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;

    iget v2, v2, Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;->skippedOutputBufferCount:I

    add-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    .line 290
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;->isEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 291
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderReinitializationState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 293
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->releaseDecoder()V

    .line 294
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->maybeInitDecoder()V

    .line 296
    iput-boolean v7, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrackNeedsConfigure:Z

    goto :goto_0

    .line 298
    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;->release()V

    .line 299
    iput-object v8, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;

    .line 300
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->processEndOfStream()V

    goto :goto_0

    .line 305
    :cond_4
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrackNeedsConfigure:Z

    if-eqz v0, :cond_5

    .line 306
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->getOutputFormat()Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v6

    .line 307
    .local v6, "outputFormat":Lorg/telegram/messenger/exoplayer2/Format;
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    iget-object v1, v6, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget v2, v6, Lorg/telegram/messenger/exoplayer2/Format;->channelCount:I

    iget v3, v6, Lorg/telegram/messenger/exoplayer2/Format;->sampleRate:I

    iget v4, v6, Lorg/telegram/messenger/exoplayer2/Format;->pcmEncoding:I

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->configure(Ljava/lang/String;IIII)V

    .line 309
    iput-boolean v5, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrackNeedsConfigure:Z

    .line 312
    .end local v6    # "outputFormat":Lorg/telegram/messenger/exoplayer2/Format;
    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;->data:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;

    iget-wide v2, v2, Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;->timeUs:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->handleBuffer(Ljava/nio/ByteBuffer;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    .line 314
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;->release()V

    .line 315
    iput-object v8, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;

    move v5, v7

    .line 316
    goto :goto_0
.end method

.method private feedInputBuffer()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/audio/AudioDecoderException;,
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 323
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;

    if-eqz v4, :cond_0

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderReinitializationState:I

    if-eq v4, v5, :cond_0

    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputStreamEnded:Z

    if-eqz v4, :cond_1

    .line 375
    :cond_0
    :goto_0
    return v2

    .line 329
    :cond_1
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    if-nez v4, :cond_2

    .line 330
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->dequeueInputBuffer()Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    .line 331
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    if-eqz v4, :cond_0

    .line 336
    :cond_2
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderReinitializationState:I

    if-ne v4, v3, :cond_3

    .line 337
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->setFlags(I)V

    .line 338
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->queueInputBuffer(Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;)V

    .line 339
    iput-object v6, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    .line 340
    iput v5, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderReinitializationState:I

    goto :goto_0

    .line 345
    :cond_3
    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->waitingForKeys:Z

    if-eqz v4, :cond_4

    .line 347
    const/4 v1, -0x4

    .line 352
    .local v1, "result":I
    :goto_1
    const/4 v4, -0x3

    if-eq v1, v4, :cond_0

    .line 355
    const/4 v4, -0x5

    if-ne v1, v4, :cond_5

    .line 356
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->formatHolder:Lorg/telegram/messenger/exoplayer2/FormatHolder;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/FormatHolder;->format:Lorg/telegram/messenger/exoplayer2/Format;

    invoke-direct {p0, v2}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->onInputFormatChanged(Lorg/telegram/messenger/exoplayer2/Format;)V

    move v2, v3

    .line 357
    goto :goto_0

    .line 349
    .end local v1    # "result":I
    :cond_4
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->formatHolder:Lorg/telegram/messenger/exoplayer2/FormatHolder;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p0, v4, v5, v2}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->readSource(Lorg/telegram/messenger/exoplayer2/FormatHolder;Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result v1

    .restart local v1    # "result":I
    goto :goto_1

    .line 359
    :cond_5
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 360
    iput-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputStreamEnded:Z

    .line 361
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->queueInputBuffer(Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;)V

    .line 362
    iput-object v6, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    goto :goto_0

    .line 365
    :cond_6
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->isEncrypted()Z

    move-result v0

    .line 366
    .local v0, "bufferEncrypted":Z
    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->shouldWaitForKeys(Z)Z

    move-result v4

    iput-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->waitingForKeys:Z

    .line 367
    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->waitingForKeys:Z

    if-nez v4, :cond_0

    .line 370
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->flip()V

    .line 371
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->queueInputBuffer(Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;)V

    .line 372
    iput-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderReceivedBuffers:Z

    .line 373
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    iget v4, v2, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->inputBufferCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->inputBufferCount:I

    .line 374
    iput-object v6, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    move v2, v3

    .line 375
    goto/16 :goto_0
.end method

.method private flushDecoder()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 400
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->waitingForKeys:Z

    .line 401
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderReinitializationState:I

    if-eqz v0, :cond_0

    .line 402
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->releaseDecoder()V

    .line 403
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->maybeInitDecoder()V

    .line 413
    :goto_0
    return-void

    .line 405
    :cond_0
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    .line 406
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;

    if-eqz v0, :cond_1

    .line 407
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;->release()V

    .line 408
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;

    .line 410
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->flush()V

    .line 411
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderReceivedBuffers:Z

    goto :goto_0
.end method

.method private maybeInitDecoder()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 510
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;

    if-eqz v0, :cond_1

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 514
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    .line 515
    const/4 v10, 0x0

    .line 516
    .local v10, "mediaCrypto":Lorg/telegram/messenger/exoplayer2/drm/ExoMediaCrypto;
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_4

    .line 517
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/drm/DrmSession;->getState()I

    move-result v8

    .line 518
    .local v8, "drmSessionState":I
    if-nez v8, :cond_2

    .line 519
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/drm/DrmSession;->getError()Lorg/telegram/messenger/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    .line 520
    :cond_2
    const/4 v0, 0x3

    if-eq v8, v0, :cond_3

    const/4 v0, 0x4

    if-ne v8, v0, :cond_0

    .line 522
    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/drm/DrmSession;->getMediaCrypto()Lorg/telegram/messenger/exoplayer2/drm/ExoMediaCrypto;

    move-result-object v10

    .line 530
    .end local v8    # "drmSessionState":I
    :cond_4
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 531
    .local v6, "codecInitializingTimestamp":J
    const-string/jumbo v0, "createAudioDecoder"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputFormat:Lorg/telegram/messenger/exoplayer2/Format;

    invoke-virtual {p0, v0, v10}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->createDecoder(Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/drm/ExoMediaCrypto;)Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;

    .line 533
    invoke-static {}, Lorg/telegram/messenger/exoplayer2/util/TraceUtil;->endSection()V

    .line 534
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 535
    .local v2, "codecInitializedTimestamp":J
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->getName()Ljava/lang/String;

    move-result-object v1

    sub-long v4, v2, v6

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->decoderInitialized(Ljava/lang/String;JJ)V

    .line 537
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->decoderInitCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->decoderInitCount:I
    :try_end_0
    .catch Lorg/telegram/messenger/exoplayer2/audio/AudioDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 538
    .end local v2    # "codecInitializedTimestamp":J
    .end local v6    # "codecInitializingTimestamp":J
    :catch_0
    move-exception v9

    .line 539
    .local v9, "e":Lorg/telegram/messenger/exoplayer2/audio/AudioDecoderException;
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->getIndex()I

    move-result v0

    invoke-static {v9, v0}, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0
.end method

.method private onInputFormatChanged(Lorg/telegram/messenger/exoplayer2/Format;)V
    .locals 6
    .param p1, "newFormat"    # Lorg/telegram/messenger/exoplayer2/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 558
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputFormat:Lorg/telegram/messenger/exoplayer2/Format;

    .line 559
    .local v1, "oldFormat":Lorg/telegram/messenger/exoplayer2/Format;
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputFormat:Lorg/telegram/messenger/exoplayer2/Format;

    .line 561
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputFormat:Lorg/telegram/messenger/exoplayer2/Format;

    iget-object v5, v2, Lorg/telegram/messenger/exoplayer2/Format;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    if-nez v1, :cond_0

    move-object v2, v3

    :goto_0
    invoke-static {v5, v2}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v4

    .line 563
    .local v0, "drmInitDataChanged":Z
    :goto_1
    if-eqz v0, :cond_3

    .line 564
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputFormat:Lorg/telegram/messenger/exoplayer2/Format;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/Format;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    if-eqz v2, :cond_4

    .line 565
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;

    if-nez v2, :cond_2

    .line 566
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Media requires a DrmSessionManager"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 567
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->getIndex()I

    move-result v3

    .line 566
    invoke-static {v2, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    move-result-object v2

    throw v2

    .line 561
    .end local v0    # "drmInitDataChanged":Z
    :cond_0
    iget-object v2, v1, Lorg/telegram/messenger/exoplayer2/Format;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 569
    .restart local v0    # "drmInitDataChanged":Z
    :cond_2
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputFormat:Lorg/telegram/messenger/exoplayer2/Format;

    iget-object v5, v5, Lorg/telegram/messenger/exoplayer2/Format;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    invoke-interface {v2, v3, v5}, Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;->acquireSession(Landroid/os/Looper;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    .line 571
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-ne v2, v3, :cond_3

    .line 572
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v2, v3}, Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;->releaseSession(Lorg/telegram/messenger/exoplayer2/drm/DrmSession;)V

    .line 579
    :cond_3
    :goto_2
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderReceivedBuffers:Z

    if-eqz v2, :cond_5

    .line 581
    iput v4, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderReinitializationState:I

    .line 589
    :goto_3
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    invoke-virtual {v2, p1}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->inputFormatChanged(Lorg/telegram/messenger/exoplayer2/Format;)V

    .line 590
    return-void

    .line 575
    :cond_4
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    goto :goto_2

    .line 584
    :cond_5
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->releaseDecoder()V

    .line 585
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->maybeInitDecoder()V

    .line 586
    iput-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrackNeedsConfigure:Z

    goto :goto_3
.end method

.method private processEndOfStream()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 391
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputStreamEnded:Z

    .line 393
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playToEndOfStream()V
    :try_end_0
    .catch Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$WriteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    return-void

    .line 394
    :catch_0
    move-exception v0

    .line 395
    .local v0, "e":Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$WriteException;
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/drm/DrmSession;->getError()Lorg/telegram/messenger/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->getIndex()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    move-result-object v1

    throw v1
.end method

.method private releaseDecoder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 544
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;

    if-nez v0, :cond_0

    .line 555
    :goto_0
    return-void

    .line 548
    :cond_0
    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    .line 549
    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;

    .line 550
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->release()V

    .line 551
    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;

    .line 552
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->decoderReleaseCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->decoderReleaseCount:I

    .line 553
    iput v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderReinitializationState:I

    .line 554
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderReceivedBuffers:Z

    goto :goto_0
.end method

.method private shouldWaitForKeys(Z)Z
    .locals 3
    .param p1, "bufferEncrypted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 379
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-nez v2, :cond_1

    .line 386
    :cond_0
    :goto_0
    return v1

    .line 382
    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/drm/DrmSession;->getState()I

    move-result v0

    .line 383
    .local v0, "drmSessionState":I
    if-nez v0, :cond_2

    .line 384
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/drm/DrmSession;->getError()Lorg/telegram/messenger/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->getIndex()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    move-result-object v1

    throw v1

    .line 386
    :cond_2
    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    if-nez p1, :cond_3

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->playClearSamplesWithoutKeys:Z

    if-nez v2, :cond_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected abstract createDecoder(Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/drm/ExoMediaCrypto;)Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/Format;",
            "Lorg/telegram/messenger/exoplayer2/drm/ExoMediaCrypto;",
            ")",
            "Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder",
            "<",
            "Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;",
            "+",
            "Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;",
            "+",
            "Lorg/telegram/messenger/exoplayer2/audio/AudioDecoderException;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/audio/AudioDecoderException;
        }
    .end annotation
.end method

.method public getMediaClock()Lorg/telegram/messenger/exoplayer2/util/MediaClock;
    .locals 0

    .prologue
    .line 156
    return-object p0
.end method

.method protected getOutputFormat()Lorg/telegram/messenger/exoplayer2/Format;
    .locals 12

    .prologue
    const/4 v3, -0x1

    const/4 v0, 0x0

    .line 274
    const-string/jumbo v1, "audio/raw"

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputFormat:Lorg/telegram/messenger/exoplayer2/Format;

    iget v5, v2, Lorg/telegram/messenger/exoplayer2/Format;->channelCount:I

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputFormat:Lorg/telegram/messenger/exoplayer2/Format;

    iget v6, v2, Lorg/telegram/messenger/exoplayer2/Format;->sampleRate:I

    const/4 v7, 0x2

    const/4 v10, 0x0

    move-object v2, v0

    move v4, v3

    move-object v8, v0

    move-object v9, v0

    move-object v11, v0

    invoke-static/range {v0 .. v11}, Lorg/telegram/messenger/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackParameters()Lorg/telegram/messenger/exoplayer2/PlaybackParameters;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->getPlaybackParameters()Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    move-result-object v0

    return-object v0
.end method

.method public getPositionUs()J
    .locals 4

    .prologue
    .line 428
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->isEnded()Z

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->getCurrentPositionUs(Z)J

    move-result-wide v0

    .line 429
    .local v0, "newCurrentPositionUs":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 430
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->allowPositionDiscontinuity:Z

    if-eqz v2, :cond_1

    .line 431
    .end local v0    # "newCurrentPositionUs":J
    :goto_0
    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->currentPositionUs:J

    .line 432
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->allowPositionDiscontinuity:Z

    .line 434
    :cond_0
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->currentPositionUs:J

    return-wide v2

    .line 430
    .restart local v0    # "newCurrentPositionUs":J
    :cond_1
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->currentPositionUs:J

    .line 431
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 3
    .param p1, "messageType"    # I
    .param p2, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 594
    packed-switch p1, :pswitch_data_0

    .line 603
    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->handleMessage(ILjava/lang/Object;)V

    .line 606
    .end local p2    # "message":Ljava/lang/Object;
    :goto_0
    return-void

    .line 596
    .restart local p2    # "message":Ljava/lang/Object;
    :pswitch_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    check-cast p2, Ljava/lang/Float;

    .end local p2    # "message":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->setVolume(F)V

    goto :goto_0

    .line 599
    .restart local p2    # "message":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "message":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 600
    .local v0, "streamType":I
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->setStreamType(I)V

    goto :goto_0

    .line 594
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isEnded()Z
    .locals 1

    .prologue
    .line 417
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputStreamEnded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->isEnded()Z

    move-result v0

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
    .line 422
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputFormat:Lorg/telegram/messenger/exoplayer2/Format;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->waitingForKeys:Z

    if-nez v0, :cond_1

    .line 423
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->isSourceReady()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 422
    :goto_0
    return v0

    .line 423
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAudioSessionId(I)V
    .locals 0
    .param p1, "audioSessionId"    # I

    .prologue
    .line 236
    return-void
.end method

.method protected onAudioTrackPositionDiscontinuity()V
    .locals 0

    .prologue
    .line 243
    return-void
.end method

.method protected onAudioTrackUnderrun(IJJ)V
    .locals 0
    .param p1, "bufferSize"    # I
    .param p2, "bufferSizeMs"    # J
    .param p4, "elapsedSinceLastFeedMs"    # J

    .prologue
    .line 251
    return-void
.end method

.method protected onDisabled()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 483
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputFormat:Lorg/telegram/messenger/exoplayer2/Format;

    .line 484
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrackNeedsConfigure:Z

    .line 485
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->waitingForKeys:Z

    .line 487
    :try_start_0
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->releaseDecoder()V

    .line 488
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 491
    :try_start_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;->releaseSession(Lorg/telegram/messenger/exoplayer2/drm/DrmSession;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 496
    :cond_0
    :try_start_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eq v0, v1, :cond_1

    .line 497
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;->releaseSession(Lorg/telegram/messenger/exoplayer2/drm/DrmSession;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 500
    :cond_1
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    .line 501
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    .line 502
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 503
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V

    .line 507
    return-void

    .line 500
    :catchall_0
    move-exception v0

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    .line 501
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    .line 502
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 503
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V

    throw v0

    .line 495
    :catchall_1
    move-exception v0

    .line 496
    :try_start_3
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eq v1, v2, :cond_2

    .line 497
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;->releaseSession(Lorg/telegram/messenger/exoplayer2/drm/DrmSession;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 500
    :cond_2
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    .line 501
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    .line 502
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 503
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V

    throw v0

    .line 500
    :catchall_2
    move-exception v0

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    .line 501
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    .line 502
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 503
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V

    throw v0

    .line 490
    :catchall_3
    move-exception v0

    .line 491
    :try_start_4
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_3

    .line 492
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;->releaseSession(Lorg/telegram/messenger/exoplayer2/drm/DrmSession;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 496
    :cond_3
    :try_start_5
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eq v1, v2, :cond_4

    .line 497
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;->releaseSession(Lorg/telegram/messenger/exoplayer2/drm/DrmSession;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 500
    :cond_4
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    .line 501
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    .line 502
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 503
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V

    throw v0

    .line 500
    :catchall_4
    move-exception v0

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    .line 501
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    .line 502
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 503
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V

    throw v0

    .line 495
    :catchall_5
    move-exception v0

    .line 496
    :try_start_6
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eq v1, v2, :cond_5

    .line 497
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;->releaseSession(Lorg/telegram/messenger/exoplayer2/drm/DrmSession;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 500
    :cond_5
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    .line 501
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    .line 502
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 503
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V

    throw v0

    .line 500
    :catchall_6
    move-exception v0

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    .line 501
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    .line 502
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 503
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V

    throw v0
.end method

.method protected onEnabled(Z)V
    .locals 3
    .param p1, "joining"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 449
    new-instance v1, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-direct {v1}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    .line 450
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->enabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V

    .line 451
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->getConfiguration()Lorg/telegram/messenger/exoplayer2/RendererConfiguration;

    move-result-object v1

    iget v0, v1, Lorg/telegram/messenger/exoplayer2/RendererConfiguration;->tunnelingAudioSessionId:I

    .line 452
    .local v0, "tunnelingAudioSessionId":I
    if-eqz v0, :cond_0

    .line 453
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->enableTunnelingV21(I)V

    .line 457
    :goto_0
    return-void

    .line 455
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->disableTunneling()V

    goto :goto_0
.end method

.method protected onPositionReset(JZ)V
    .locals 3
    .param p1, "positionUs"    # J
    .param p3, "joining"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 461
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->reset()V

    .line 462
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->currentPositionUs:J

    .line 463
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->allowPositionDiscontinuity:Z

    .line 464
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputStreamEnded:Z

    .line 465
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputStreamEnded:Z

    .line 466
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;

    if-eqz v0, :cond_0

    .line 467
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->flushDecoder()V

    .line 469
    :cond_0
    return-void
.end method

.method protected onStarted()V
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->play()V

    .line 474
    return-void
.end method

.method protected onStopped()V
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->pause()V

    .line 479
    return-void
.end method

.method public render(JJ)V
    .locals 5
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 180
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputStreamEnded:Z

    if-eqz v2, :cond_1

    .line 182
    :try_start_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playToEndOfStream()V
    :try_end_0
    .catch Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$WriteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$WriteException;
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->getIndex()I

    move-result v2

    invoke-static {v0, v2}, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    move-result-object v2

    throw v2

    .line 190
    .end local v0    # "e":Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$WriteException;
    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputFormat:Lorg/telegram/messenger/exoplayer2/Format;

    if-nez v2, :cond_2

    .line 192
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->flagsOnlyBuffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 193
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->formatHolder:Lorg/telegram/messenger/exoplayer2/FormatHolder;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->flagsOnlyBuffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p0, v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->readSource(Lorg/telegram/messenger/exoplayer2/FormatHolder;Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result v1

    .line 194
    .local v1, "result":I
    const/4 v2, -0x5

    if-ne v1, v2, :cond_5

    .line 195
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->formatHolder:Lorg/telegram/messenger/exoplayer2/FormatHolder;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/FormatHolder;->format:Lorg/telegram/messenger/exoplayer2/Format;

    invoke-direct {p0, v2}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->onInputFormatChanged(Lorg/telegram/messenger/exoplayer2/Format;)V

    .line 209
    .end local v1    # "result":I
    :cond_2
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->maybeInitDecoder()V

    .line 211
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;

    if-eqz v2, :cond_0

    .line 214
    :try_start_1
    const-string/jumbo v2, "drainAndFeed"

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 215
    :cond_3
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drainOutputBuffer()Z

    move-result v2

    if-nez v2, :cond_3

    .line 216
    :cond_4
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->feedInputBuffer()Z

    move-result v2

    if-nez v2, :cond_4

    .line 217
    invoke-static {}, Lorg/telegram/messenger/exoplayer2/util/TraceUtil;->endSection()V
    :try_end_1
    .catch Lorg/telegram/messenger/exoplayer2/audio/AudioDecoderException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$ConfigurationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$InitializationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$WriteException; {:try_start_1 .. :try_end_1} :catch_4

    .line 222
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    goto :goto_0

    .line 196
    .restart local v1    # "result":I
    :cond_5
    const/4 v2, -0x4

    if-ne v1, v2, :cond_0

    .line 198
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->flagsOnlyBuffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 199
    iput-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputStreamEnded:Z

    .line 200
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->processEndOfStream()V

    goto :goto_0

    .line 218
    .end local v1    # "result":I
    :catch_1
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->getIndex()I

    move-result v2

    invoke-static {v0, v2}, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    move-result-object v2

    throw v2

    .line 218
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method public setPlaybackParameters(Lorg/telegram/messenger/exoplayer2/PlaybackParameters;)Lorg/telegram/messenger/exoplayer2/PlaybackParameters;
    .locals 1
    .param p1, "playbackParameters"    # Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    .prologue
    .line 439
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->setPlaybackParameters(Lorg/telegram/messenger/exoplayer2/PlaybackParameters;)Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    move-result-object v0

    return-object v0
.end method

.method public final supportsFormat(Lorg/telegram/messenger/exoplayer2/Format;)I
    .locals 4
    .param p1, "format"    # Lorg/telegram/messenger/exoplayer2/Format;

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->supportsFormatInternal(Lorg/telegram/messenger/exoplayer2/Format;)I

    move-result v0

    .line 162
    .local v0, "formatSupport":I
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 166
    .end local v0    # "formatSupport":I
    :cond_0
    :goto_0
    return v0

    .line 165
    .restart local v0    # "formatSupport":I
    :cond_1
    sget v2, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_2

    const/16 v1, 0x10

    .line 166
    .local v1, "tunnelingSupport":I
    :goto_1
    or-int/lit8 v2, v1, 0x4

    or-int/2addr v0, v2

    goto :goto_0

    .line 165
    .end local v1    # "tunnelingSupport":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected abstract supportsFormatInternal(Lorg/telegram/messenger/exoplayer2/Format;)I
.end method
