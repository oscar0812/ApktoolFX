.class Lorg/telegram/messenger/camera/CameraController$2;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/camera/CameraController;->cleanup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/camera/CameraController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/camera/CameraController;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/camera/CameraController;

    .prologue
    .line 177
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraController$2;->this$0:Lorg/telegram/messenger/camera/CameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 180
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraController$2;->this$0:Lorg/telegram/messenger/camera/CameraController;

    iget-object v2, v2, Lorg/telegram/messenger/camera/CameraController;->cameraInfos:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraController$2;->this$0:Lorg/telegram/messenger/camera/CameraController;

    iget-object v2, v2, Lorg/telegram/messenger/camera/CameraController;->cameraInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraController$2;->this$0:Lorg/telegram/messenger/camera/CameraController;

    iget-object v2, v2, Lorg/telegram/messenger/camera/CameraController;->cameraInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 184
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraController$2;->this$0:Lorg/telegram/messenger/camera/CameraController;

    iget-object v2, v2, Lorg/telegram/messenger/camera/CameraController;->cameraInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/camera/CameraInfo;

    .line 185
    .local v1, "info":Lorg/telegram/messenger/camera/CameraInfo;
    iget-object v2, v1, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    if-eqz v2, :cond_2

    .line 186
    iget-object v2, v1, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    .line 187
    iget-object v2, v1, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 188
    iget-object v2, v1, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 189
    iput-object v3, v1, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    .line 183
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 192
    .end local v1    # "info":Lorg/telegram/messenger/camera/CameraInfo;
    :cond_3
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraController$2;->this$0:Lorg/telegram/messenger/camera/CameraController;

    iput-object v3, v2, Lorg/telegram/messenger/camera/CameraController;->cameraInfos:Ljava/util/ArrayList;

    goto :goto_0
.end method
