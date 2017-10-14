.class Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher$5;
.super Ljava/lang/Object;
.source "VideoRendererEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(IIIF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

.field final synthetic val$height:I

.field final synthetic val$pixelWidthHeightRatio:F

.field final synthetic val$unappliedRotationDegrees:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;IIIF)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    .prologue
    .line 189
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher$5;->this$0:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iput p2, p0, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher$5;->val$width:I

    iput p3, p0, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher$5;->val$height:I

    iput p4, p0, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher$5;->val$unappliedRotationDegrees:I

    iput p5, p0, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher$5;->val$pixelWidthHeightRatio:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 192
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher$5;->this$0:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->access$000(Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;)Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher$5;->val$width:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher$5;->val$height:I

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher$5;->val$unappliedRotationDegrees:I

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher$5;->val$pixelWidthHeightRatio:F

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;->onVideoSizeChanged(IIIF)V

    .line 194
    return-void
.end method
