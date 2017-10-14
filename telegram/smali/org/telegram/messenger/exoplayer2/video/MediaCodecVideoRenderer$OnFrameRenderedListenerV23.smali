.class final Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;
.super Ljava/lang/Object;
.source "MediaCodecVideoRenderer.java"

# interfaces
.implements Landroid/media/MediaCodec$OnFrameRenderedListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnFrameRenderedListenerV23"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;


# direct methods
.method private constructor <init>(Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;Landroid/media/MediaCodec;)V
    .locals 1
    .param p2, "codec"    # Landroid/media/MediaCodec;

    .prologue
    .line 858
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->this$0:Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 859
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p2, p0, v0}, Landroid/media/MediaCodec;->setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V

    .line 860
    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;Landroid/media/MediaCodec;Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;
    .param p2, "x1"    # Landroid/media/MediaCodec;
    .param p3, "x2"    # Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer$1;

    .prologue
    .line 856
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;-><init>(Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;Landroid/media/MediaCodec;)V

    return-void
.end method


# virtual methods
.method public onFrameRendered(Landroid/media/MediaCodec;JJ)V
    .locals 1
    .param p1, "codec"    # Landroid/media/MediaCodec;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "presentationTimeUs"    # J
    .param p4, "nanoTime"    # J

    .prologue
    .line 864
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->this$0:Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->tunnelingOnFrameRenderedListener:Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    if-eq p0, v0, :cond_0

    .line 869
    :goto_0
    return-void

    .line 868
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->this$0:Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    goto :goto_0
.end method
