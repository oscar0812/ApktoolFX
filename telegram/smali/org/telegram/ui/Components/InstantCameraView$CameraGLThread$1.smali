.class Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread$1;
.super Ljava/lang/Object;
.source "InstantCameraView.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->initGL()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    .prologue
    .line 1034
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 1037
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->requestRender()V

    .line 1038
    return-void
.end method
