.class Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher$2;
.super Ljava/lang/Object;
.source "VideoRendererEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->decoderInitialized(Ljava/lang/String;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

.field final synthetic val$decoderName:Ljava/lang/String;

.field final synthetic val$initializationDurationMs:J

.field final synthetic val$initializedTimestampMs:J


# direct methods
.method constructor <init>(Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/String;JJ)V
    .locals 1
    .param p1, "this$0"    # Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    .prologue
    .line 145
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher$2;->this$0:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher$2;->val$decoderName:Ljava/lang/String;

    iput-wide p3, p0, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher$2;->val$initializedTimestampMs:J

    iput-wide p5, p0, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher$2;->val$initializationDurationMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 148
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher$2;->this$0:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->access$000(Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;)Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher$2;->val$decoderName:Ljava/lang/String;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher$2;->val$initializedTimestampMs:J

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher$2;->val$initializationDurationMs:J

    invoke-interface/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;->onVideoDecoderInitialized(Ljava/lang/String;JJ)V

    .line 150
    return-void
.end method
