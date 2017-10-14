.class Lorg/telegram/messenger/camera/CameraController$3;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/camera/CameraController;->close(Lorg/telegram/messenger/camera/CameraSession;Ljava/util/concurrent/Semaphore;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/camera/CameraController;

.field final synthetic val$beforeDestroyRunnable:Ljava/lang/Runnable;

.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;

.field final synthetic val$session:Lorg/telegram/messenger/camera/CameraSession;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/camera/CameraController;Ljava/lang/Runnable;Lorg/telegram/messenger/camera/CameraSession;Ljava/util/concurrent/Semaphore;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/camera/CameraController;

    .prologue
    .line 199
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraController$3;->this$0:Lorg/telegram/messenger/camera/CameraController;

    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraController$3;->val$beforeDestroyRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lorg/telegram/messenger/camera/CameraController$3;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    iput-object p4, p0, Lorg/telegram/messenger/camera/CameraController$3;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 202
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController$3;->val$beforeDestroyRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController$3;->val$beforeDestroyRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 205
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController$3;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    iget-object v1, v1, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object v1, v1, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    if-nez v1, :cond_2

    .line 223
    :cond_1
    :goto_0
    return-void

    .line 209
    :cond_2
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController$3;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    iget-object v1, v1, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object v1, v1, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 210
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController$3;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    iget-object v1, v1, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object v1, v1, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_1
    :try_start_1
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController$3;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    iget-object v1, v1, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object v1, v1, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 219
    :goto_2
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController$3;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    iget-object v1, v1, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iput-object v3, v1, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    .line 220
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController$3;->val$semaphore:Ljava/util/concurrent/Semaphore;

    if-eqz v1, :cond_1

    .line 221
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController$3;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 216
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 217
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2
.end method
