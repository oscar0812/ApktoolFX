.class Lorg/telegram/messenger/camera/CameraController$10$1;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/camera/CameraController$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/camera/CameraController$10;

.field final synthetic val$camera:Landroid/hardware/Camera;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/camera/CameraController$10;Landroid/hardware/Camera;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/camera/CameraController$10;

    .prologue
    .line 649
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraController$10$1;->this$1:Lorg/telegram/messenger/camera/CameraController$10;

    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraController$10$1;->val$camera:Landroid/hardware/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 653
    :try_start_0
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraController$10$1;->val$camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 654
    .local v1, "params":Landroid/hardware/Camera$Parameters;
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraController$10$1;->this$1:Lorg/telegram/messenger/camera/CameraController$10;

    iget-object v2, v2, Lorg/telegram/messenger/camera/CameraController$10;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v2}, Lorg/telegram/messenger/camera/CameraSession;->getCurrentFlashMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 655
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraController$10$1;->val$camera:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    .end local v1    # "params":Landroid/hardware/Camera$Parameters;
    :goto_0
    return-void

    .line 656
    :catch_0
    move-exception v0

    .line 657
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
