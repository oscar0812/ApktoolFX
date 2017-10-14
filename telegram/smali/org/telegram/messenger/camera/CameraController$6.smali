.class Lorg/telegram/messenger/camera/CameraController$6;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/camera/CameraController;->openRound(Lorg/telegram/messenger/camera/CameraSession;Landroid/graphics/SurfaceTexture;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/camera/CameraController;

.field final synthetic val$callback:Ljava/lang/Runnable;

.field final synthetic val$configureCallback:Ljava/lang/Runnable;

.field final synthetic val$session:Lorg/telegram/messenger/camera/CameraSession;

.field final synthetic val$texture:Landroid/graphics/SurfaceTexture;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/camera/CameraController;Lorg/telegram/messenger/camera/CameraSession;Ljava/lang/Runnable;Landroid/graphics/SurfaceTexture;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/camera/CameraController;

    .prologue
    .line 437
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraController$6;->this$0:Lorg/telegram/messenger/camera/CameraController;

    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraController$6;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    iput-object p3, p0, Lorg/telegram/messenger/camera/CameraController$6;->val$configureCallback:Ljava/lang/Runnable;

    iput-object p4, p0, Lorg/telegram/messenger/camera/CameraController$6;->val$texture:Landroid/graphics/SurfaceTexture;

    iput-object p5, p0, Lorg/telegram/messenger/camera/CameraController$6;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 441
    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraController$6;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    iget-object v4, v4, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object v0, v4, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    .line 443
    .local v0, "camera":Landroid/hardware/Camera;
    :try_start_0
    const-string/jumbo v4, "start creating round camera session"

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 444
    if-nez v0, :cond_0

    .line 445
    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraController$6;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    iget-object v4, v4, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object v5, p0, Lorg/telegram/messenger/camera/CameraController$6;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    iget-object v5, v5, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget v5, v5, Lorg/telegram/messenger/camera/CameraInfo;->cameraId:I

    invoke-static {v5}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, v4, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    .end local v0    # "camera":Landroid/hardware/Camera;
    .local v1, "camera":Landroid/hardware/Camera;
    move-object v0, v1

    .line 447
    .end local v1    # "camera":Landroid/hardware/Camera;
    .restart local v0    # "camera":Landroid/hardware/Camera;
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 449
    .local v3, "params":Landroid/hardware/Camera$Parameters;
    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraController$6;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v4}, Lorg/telegram/messenger/camera/CameraSession;->configureRoundCamera()V

    .line 450
    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraController$6;->val$configureCallback:Ljava/lang/Runnable;

    if-eqz v4, :cond_1

    .line 451
    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraController$6;->val$configureCallback:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 453
    :cond_1
    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraController$6;->val$texture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v4}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 454
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 455
    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraController$6;->val$callback:Ljava/lang/Runnable;

    if-eqz v4, :cond_2

    .line 456
    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraController$6;->val$callback:Ljava/lang/Runnable;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 458
    :cond_2
    const-string/jumbo v4, "round camera session created"

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    .end local v3    # "params":Landroid/hardware/Camera$Parameters;
    :goto_0
    return-void

    .line 459
    :catch_0
    move-exception v2

    .line 460
    .local v2, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraController$6;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    iget-object v4, v4, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    .line 461
    if-eqz v0, :cond_3

    .line 462
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 464
    :cond_3
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
