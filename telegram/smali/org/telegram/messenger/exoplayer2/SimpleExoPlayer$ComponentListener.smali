.class final Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;
.super Ljava/lang/Object;
.source "SimpleExoPlayer.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;
.implements Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;
.implements Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;
.implements Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ComponentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;


# direct methods
.method private constructor <init>(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)V
    .locals 0

    .prologue
    .line 695
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;
    .param p2, "x1"    # Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$1;

    .prologue
    .line 695
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;-><init>(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)V

    return-void
.end method


# virtual methods
.method public onAudioDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 6
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "initializedTimestampMs"    # J
    .param p4, "initializationDurationMs"    # J

    .prologue
    .line 786
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$700(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$700(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;->onAudioDecoderInitialized(Ljava/lang/String;JJ)V

    .line 790
    :cond_0
    return-void
.end method

.method public onAudioDisabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V
    .locals 2
    .param p1, "counters"    # Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    .prologue
    const/4 v1, 0x0

    .line 810
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$700(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$700(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;->onAudioDisabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V

    .line 813
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$902(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Lorg/telegram/messenger/exoplayer2/Format;)Lorg/telegram/messenger/exoplayer2/Format;

    .line 814
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$602(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    .line 815
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$802(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;I)I

    .line 816
    return-void
.end method

.method public onAudioEnabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V
    .locals 1
    .param p1, "counters"    # Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    .prologue
    .line 769
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0, p1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$602(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    .line 770
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$700(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$700(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;->onAudioEnabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V

    .line 773
    :cond_0
    return-void
.end method

.method public onAudioInputFormatChanged(Lorg/telegram/messenger/exoplayer2/Format;)V
    .locals 1
    .param p1, "format"    # Lorg/telegram/messenger/exoplayer2/Format;

    .prologue
    .line 794
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0, p1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$902(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Lorg/telegram/messenger/exoplayer2/Format;)Lorg/telegram/messenger/exoplayer2/Format;

    .line 795
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$700(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$700(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;->onAudioInputFormatChanged(Lorg/telegram/messenger/exoplayer2/Format;)V

    .line 798
    :cond_0
    return-void
.end method

.method public onAudioSessionId(I)V
    .locals 1
    .param p1, "sessionId"    # I

    .prologue
    .line 777
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0, p1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$802(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;I)I

    .line 778
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$700(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$700(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;->onAudioSessionId(I)V

    .line 781
    :cond_0
    return-void
.end method

.method public onAudioTrackUnderrun(IJJ)V
    .locals 6
    .param p1, "bufferSize"    # I
    .param p2, "bufferSizeMs"    # J
    .param p4, "elapsedSinceLastFeedMs"    # J

    .prologue
    .line 803
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$700(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$700(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;->onAudioTrackUnderrun(IJJ)V

    .line 806
    :cond_0
    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 822
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/text/Cue;>;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$1000(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 823
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$1000(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;->onCues(Ljava/util/List;)V

    .line 825
    :cond_0
    return-void
.end method

.method public onDroppedFrames(IJ)V
    .locals 2
    .param p1, "count"    # I
    .param p2, "elapsed"    # J

    .prologue
    .line 728
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$200(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$200(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;->onDroppedFrames(IJ)V

    .line 731
    :cond_0
    return-void
.end method

.method public onMetadata(Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V
    .locals 1
    .param p1, "metadata"    # Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    .prologue
    .line 831
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$1100(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 832
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$1100(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;->onMetadata(Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V

    .line 834
    :cond_0
    return-void
.end method

.method public onRenderedFirstFrame(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 748
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$400(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$500(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Landroid/view/Surface;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 749
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$400(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;->onRenderedFirstFrame()V

    .line 751
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$200(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 752
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$200(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;->onRenderedFirstFrame(Landroid/view/Surface;)V

    .line 754
    :cond_1
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 857
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$1300(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$1200(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Landroid/view/Surface;Z)V

    .line 859
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$1302(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Z)Z

    .line 861
    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v0, 0x1

    .line 870
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$400(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;->onSurfaceDestroyed(Landroid/graphics/SurfaceTexture;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 871
    const/4 v0, 0x0

    .line 875
    :goto_0
    return v0

    .line 873
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$1200(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Landroid/view/Surface;Z)V

    .line 874
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v1, v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$1302(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Z)Z

    goto :goto_0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 866
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 880
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$400(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    .line 881
    return-void
.end method

.method public onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 6
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "initializedTimestampMs"    # J
    .param p4, "initializationDurationMs"    # J

    .prologue
    .line 712
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$200(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$200(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;->onVideoDecoderInitialized(Ljava/lang/String;JJ)V

    .line 716
    :cond_0
    return-void
.end method

.method public onVideoDisabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V
    .locals 2
    .param p1, "counters"    # Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    .prologue
    const/4 v1, 0x0

    .line 758
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$200(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$200(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;->onVideoDisabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V

    .line 761
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$302(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Lorg/telegram/messenger/exoplayer2/Format;)Lorg/telegram/messenger/exoplayer2/Format;

    .line 762
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$102(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    .line 763
    return-void
.end method

.method public onVideoEnabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V
    .locals 1
    .param p1, "counters"    # Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    .prologue
    .line 703
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0, p1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$102(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    .line 704
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$200(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$200(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;->onVideoEnabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V

    .line 707
    :cond_0
    return-void
.end method

.method public onVideoInputFormatChanged(Lorg/telegram/messenger/exoplayer2/Format;)V
    .locals 1
    .param p1, "format"    # Lorg/telegram/messenger/exoplayer2/Format;

    .prologue
    .line 720
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0, p1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$302(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Lorg/telegram/messenger/exoplayer2/Format;)Lorg/telegram/messenger/exoplayer2/Format;

    .line 721
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$200(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$200(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;->onVideoInputFormatChanged(Lorg/telegram/messenger/exoplayer2/Format;)V

    .line 724
    :cond_0
    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "unappliedRotationDegrees"    # I
    .param p4, "pixelWidthHeightRatio"    # F

    .prologue
    .line 736
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$400(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$400(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;->onVideoSizeChanged(IIIF)V

    .line 740
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$200(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 741
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$200(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;->onVideoSizeChanged(IIIF)V

    .line 744
    :cond_1
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 846
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 840
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$1200(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Landroid/view/Surface;Z)V

    .line 841
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 850
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$1200(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Landroid/view/Surface;Z)V

    .line 851
    return-void
.end method
