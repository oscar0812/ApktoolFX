.class Lorg/telegram/messenger/camera/CameraView$2;
.super Ljava/lang/Object;
.source "CameraView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/camera/CameraView;->initCamera(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/camera/CameraView;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/camera/CameraView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/camera/CameraView;

    .prologue
    .line 180
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView$2;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView$2;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {v0}, Lorg/telegram/messenger/camera/CameraView;->access$200(Lorg/telegram/messenger/camera/CameraView;)Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView$2;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {v0}, Lorg/telegram/messenger/camera/CameraView;->access$200(Lorg/telegram/messenger/camera/CameraView;)Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView$2;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {v1}, Lorg/telegram/messenger/camera/CameraView;->access$000(Lorg/telegram/messenger/camera/CameraView;)Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object v1, v1, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    invoke-interface {v0, v1}, Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;->onCameraCreated(Landroid/hardware/Camera;)V

    .line 186
    :cond_0
    return-void
.end method
