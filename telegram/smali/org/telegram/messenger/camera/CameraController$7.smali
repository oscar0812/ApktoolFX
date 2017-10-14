.class Lorg/telegram/messenger/camera/CameraController$7;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/camera/CameraController;->open(Lorg/telegram/messenger/camera/CameraSession;Landroid/graphics/SurfaceTexture;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/camera/CameraController;

.field final synthetic val$callback:Ljava/lang/Runnable;

.field final synthetic val$prestartCallback:Ljava/lang/Runnable;

.field final synthetic val$session:Lorg/telegram/messenger/camera/CameraSession;

.field final synthetic val$texture:Landroid/graphics/SurfaceTexture;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/camera/CameraController;Lorg/telegram/messenger/camera/CameraSession;Ljava/lang/Runnable;Landroid/graphics/SurfaceTexture;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/camera/CameraController;

    .prologue
    .line 474
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraController$7;->this$0:Lorg/telegram/messenger/camera/CameraController;

    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    iput-object p3, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$prestartCallback:Ljava/lang/Runnable;

    iput-object p4, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$texture:Landroid/graphics/SurfaceTexture;

    iput-object p5, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 478
    iget-object v7, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    iget-object v7, v7, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object v1, v7, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    .line 480
    .local v1, "camera":Landroid/hardware/Camera;
    if-nez v1, :cond_0

    .line 481
    :try_start_0
    iget-object v7, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    iget-object v7, v7, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object v8, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    iget-object v8, v8, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget v8, v8, Lorg/telegram/messenger/camera/CameraInfo;->cameraId:I

    invoke-static {v8}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, v7, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    .end local v1    # "camera":Landroid/hardware/Camera;
    .local v2, "camera":Landroid/hardware/Camera;
    move-object v1, v2

    .line 483
    .end local v2    # "camera":Landroid/hardware/Camera;
    .restart local v1    # "camera":Landroid/hardware/Camera;
    :cond_0
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    .line 484
    .local v4, "params":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v6

    .line 486
    .local v6, "rawFlashModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lorg/telegram/messenger/camera/CameraController$7;->this$0:Lorg/telegram/messenger/camera/CameraController;

    iget-object v7, v7, Lorg/telegram/messenger/camera/CameraController;->availableFlashModes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 487
    if-eqz v6, :cond_4

    .line 488
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_3

    .line 489
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 490
    .local v5, "rawFlashMode":Ljava/lang/String;
    const-string/jumbo v7, "off"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "on"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "auto"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 491
    :cond_1
    iget-object v7, p0, Lorg/telegram/messenger/camera/CameraController$7;->this$0:Lorg/telegram/messenger/camera/CameraController;

    iget-object v7, v7, Lorg/telegram/messenger/camera/CameraController;->availableFlashModes:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 494
    .end local v5    # "rawFlashMode":Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    iget-object v7, p0, Lorg/telegram/messenger/camera/CameraController$7;->this$0:Lorg/telegram/messenger/camera/CameraController;

    iget-object v7, v7, Lorg/telegram/messenger/camera/CameraController;->availableFlashModes:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Lorg/telegram/messenger/camera/CameraSession;->checkFlashMode(Ljava/lang/String;)V

    .line 497
    .end local v0    # "a":I
    :cond_4
    iget-object v7, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$prestartCallback:Ljava/lang/Runnable;

    if-eqz v7, :cond_5

    .line 498
    iget-object v7, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$prestartCallback:Ljava/lang/Runnable;

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    .line 501
    :cond_5
    iget-object v7, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v7}, Lorg/telegram/messenger/camera/CameraSession;->configurePhotoCamera()V

    .line 502
    iget-object v7, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$texture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v7}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 503
    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 504
    iget-object v7, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$callback:Ljava/lang/Runnable;

    if-eqz v7, :cond_6

    .line 505
    iget-object v7, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$callback:Ljava/lang/Runnable;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    .end local v4    # "params":Landroid/hardware/Camera$Parameters;
    .end local v6    # "rawFlashModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    :goto_1
    return-void

    .line 507
    :catch_0
    move-exception v3

    .line 508
    .local v3, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    iget-object v7, v7, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    const/4 v8, 0x0

    iput-object v8, v7, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    .line 509
    if-eqz v1, :cond_7

    .line 510
    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 512
    :cond_7
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
