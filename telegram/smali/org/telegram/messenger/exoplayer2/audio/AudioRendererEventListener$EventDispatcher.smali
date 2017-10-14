.class public final Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;
.super Ljava/lang/Object;
.source "AudioRendererEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventDispatcher"
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final listener:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    if-eqz p2, :cond_0

    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    :goto_0
    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    .line 97
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->listener:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    .line 98
    return-void

    .line 96
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;)Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    .prologue
    .line 85
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->listener:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    return-object v0
.end method


# virtual methods
.method public audioSessionId(I)V
    .locals 2
    .param p1, "audioSessionId"    # I

    .prologue
    .line 178
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->listener:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$6;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$6;-><init>(Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 186
    :cond_0
    return-void
.end method

.method public audioTrackUnderrun(IJJ)V
    .locals 8
    .param p1, "bufferSize"    # I
    .param p2, "bufferSizeMs"    # J
    .param p4, "elapsedSinceLastFeedMs"    # J

    .prologue
    .line 149
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->listener:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$4;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$4;-><init>(Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;IJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 157
    :cond_0
    return-void
.end method

.method public decoderInitialized(Ljava/lang/String;JJ)V
    .locals 8
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "initializedTimestampMs"    # J
    .param p4, "initializationDurationMs"    # J

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->listener:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$2;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$2;-><init>(Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 128
    :cond_0
    return-void
.end method

.method public disabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V
    .locals 2
    .param p1, "counters"    # Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    .prologue
    .line 163
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->listener:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$5;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$5;-><init>(Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 172
    :cond_0
    return-void
.end method

.method public enabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V
    .locals 2
    .param p1, "decoderCounters"    # Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->listener:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$1;-><init>(Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 112
    :cond_0
    return-void
.end method

.method public inputFormatChanged(Lorg/telegram/messenger/exoplayer2/Format;)V
    .locals 2
    .param p1, "format"    # Lorg/telegram/messenger/exoplayer2/Format;

    .prologue
    .line 134
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->listener:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$3;-><init>(Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;Lorg/telegram/messenger/exoplayer2/Format;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 142
    :cond_0
    return-void
.end method
