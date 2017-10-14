.class Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2$1;
.super Ljava/lang/Object;
.source "InstantCameraView.java"

# interfaces
.implements Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;

    .prologue
    .line 1686
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2$1;->this$2:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1699
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1700
    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 0

    .prologue
    .line 1710
    return-void
.end method

.method public onStateChanged(ZI)V
    .locals 6
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I

    .prologue
    const-wide/16 v0, 0x0

    .line 1689
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2$1;->this$2:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;

    iget-object v2, v2, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v2, v2, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$500(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1695
    :cond_0
    :goto_0
    return-void

    .line 1692
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2$1;->this$2:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;

    iget-object v2, v2, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v2, v2, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$500(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    if-ne p2, v2, :cond_0

    .line 1693
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2$1;->this$2:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;

    iget-object v2, v2, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v2, v2, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$500(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2$1;->this$2:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;

    iget-object v3, v3, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v3, v3, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$1900(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v3

    iget-wide v4, v3, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    cmp-long v3, v4, v0

    if-lez v3, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2$1;->this$2:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;

    iget-object v0, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v0, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1900(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-wide v0, v0, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    :cond_2
    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    goto :goto_0
.end method

.method public onSurfaceDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 1714
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 1720
    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "unappliedRotationDegrees"    # I
    .param p4, "pixelWidthHeightRatio"    # F

    .prologue
    .line 1705
    return-void
.end method
