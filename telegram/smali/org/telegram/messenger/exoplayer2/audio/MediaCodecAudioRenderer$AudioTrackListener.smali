.class final Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer$AudioTrackListener;
.super Ljava/lang/Object;
.source "MediaCodecAudioRenderer.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AudioTrackListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;


# direct methods
.method private constructor <init>(Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer$AudioTrackListener;->this$0:Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;
    .param p2, "x1"    # Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer$1;

    .prologue
    .line 426
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer$AudioTrackListener;-><init>(Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;)V

    return-void
.end method


# virtual methods
.method public onAudioSessionId(I)V
    .locals 1
    .param p1, "audioSessionId"    # I

    .prologue
    .line 430
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer$AudioTrackListener;->this$0:Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->access$100(Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;)Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->audioSessionId(I)V

    .line 431
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer$AudioTrackListener;->this$0:Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->onAudioSessionId(I)V

    .line 432
    return-void
.end method

.method public onPositionDiscontinuity()V
    .locals 2

    .prologue
    .line 436
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer$AudioTrackListener;->this$0:Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->onAudioTrackPositionDiscontinuity()V

    .line 438
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer$AudioTrackListener;->this$0:Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->access$202(Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;Z)Z

    .line 439
    return-void
.end method

.method public onUnderrun(IJJ)V
    .locals 6
    .param p1, "bufferSize"    # I
    .param p2, "bufferSizeMs"    # J
    .param p4, "elapsedSinceLastFeedMs"    # J

    .prologue
    .line 443
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer$AudioTrackListener;->this$0:Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->access$100(Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;)Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->audioTrackUnderrun(IJJ)V

    .line 444
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer$AudioTrackListener;->this$0:Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->onAudioTrackUnderrun(IJJ)V

    .line 445
    return-void
.end method
