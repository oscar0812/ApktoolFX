.class Lorg/telegram/messenger/camera/CameraController$5;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/camera/CameraController;->startPreview(Lorg/telegram/messenger/camera/CameraSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/camera/CameraController;

.field final synthetic val$session:Lorg/telegram/messenger/camera/CameraSession;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/camera/CameraController;Lorg/telegram/messenger/camera/CameraSession;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/camera/CameraController;

    .prologue
    .line 411
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraController$5;->this$0:Lorg/telegram/messenger/camera/CameraController;

    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraController$5;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 415
    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraController$5;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    iget-object v3, v3, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object v0, v3, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    .line 417
    .local v0, "camera":Landroid/hardware/Camera;
    if-nez v0, :cond_0

    .line 418
    :try_start_0
    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraController$5;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    iget-object v3, v3, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraController$5;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    iget-object v4, v4, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget v4, v4, Lorg/telegram/messenger/camera/CameraInfo;->cameraId:I

    invoke-static {v4}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, v3, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    .end local v0    # "camera":Landroid/hardware/Camera;
    .local v1, "camera":Landroid/hardware/Camera;
    move-object v0, v1

    .line 420
    .end local v1    # "camera":Landroid/hardware/Camera;
    .restart local v0    # "camera":Landroid/hardware/Camera;
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    :goto_0
    return-void

    .line 421
    :catch_0
    move-exception v2

    .line 422
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraController$5;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    iget-object v3, v3, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    .line 423
    if-eqz v0, :cond_1

    .line 424
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 426
    :cond_1
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
