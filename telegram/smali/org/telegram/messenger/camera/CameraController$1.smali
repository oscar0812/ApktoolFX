.class Lorg/telegram/messenger/camera/CameraController$1;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/camera/CameraController;->initCamera()V
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
    .line 86
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraController$1;->this$0:Lorg/telegram/messenger/camera/CameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 90
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/camera/CameraController$1;->this$0:Lorg/telegram/messenger/camera/CameraController;

    iget-object v13, v13, Lorg/telegram/messenger/camera/CameraController;->cameraInfos:Ljava/util/ArrayList;

    if-nez v13, :cond_8

    .line 91
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v6

    .line 92
    .local v6, "count":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v11, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/camera/CameraInfo;>;"
    new-instance v8, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v8}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 95
    .local v8, "info":Landroid/hardware/Camera$CameraInfo;
    const/4 v3, 0x0

    .local v3, "cameraId":I
    :goto_0
    if-ge v3, v6, :cond_7

    .line 96
    invoke-static {v3, v8}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 97
    new-instance v4, Lorg/telegram/messenger/camera/CameraInfo;

    invoke-direct {v4, v3, v8}, Lorg/telegram/messenger/camera/CameraInfo;-><init>(ILandroid/hardware/Camera$CameraInfo;)V

    .line 99
    .local v4, "cameraInfo":Lorg/telegram/messenger/camera/CameraInfo;
    invoke-virtual {v4}, Lorg/telegram/messenger/camera/CameraInfo;->getCameraId()I

    move-result v13

    invoke-static {v13}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    .line 100
    .local v2, "camera":Landroid/hardware/Camera;
    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v10

    .line 102
    .local v10, "params":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v10}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v9

    .line 103
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v1, 0x0

    .local v1, "a":I
    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13

    if-ge v1, v13, :cond_2

    .line 104
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/Camera$Size;

    .line 105
    .local v12, "size":Landroid/hardware/Camera$Size;
    iget v13, v12, Landroid/hardware/Camera$Size;->width:I

    const/16 v14, 0x500

    if-ne v13, v14, :cond_1

    iget v13, v12, Landroid/hardware/Camera$Size;->height:I

    const/16 v14, 0x2d0

    if-eq v13, v14, :cond_1

    .line 103
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 108
    :cond_1
    iget v13, v12, Landroid/hardware/Camera$Size;->height:I

    const/16 v14, 0x870

    if-ge v13, v14, :cond_0

    iget v13, v12, Landroid/hardware/Camera$Size;->width:I

    const/16 v14, 0x870

    if-ge v13, v14, :cond_0

    .line 109
    iget-object v13, v4, Lorg/telegram/messenger/camera/CameraInfo;->previewSizes:Ljava/util/ArrayList;

    new-instance v14, Lorg/telegram/messenger/camera/Size;

    iget v15, v12, Landroid/hardware/Camera$Size;->width:I

    iget v0, v12, Landroid/hardware/Camera$Size;->height:I

    move/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "preview size = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v12, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v12, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 158
    .end local v1    # "a":I
    .end local v2    # "camera":Landroid/hardware/Camera;
    .end local v3    # "cameraId":I
    .end local v4    # "cameraInfo":Lorg/telegram/messenger/camera/CameraInfo;
    .end local v6    # "count":I
    .end local v8    # "info":Landroid/hardware/Camera$CameraInfo;
    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v10    # "params":Landroid/hardware/Camera$Parameters;
    .end local v11    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/camera/CameraInfo;>;"
    .end local v12    # "size":Landroid/hardware/Camera$Size;
    :catch_0
    move-exception v7

    .line 159
    .local v7, "e":Ljava/lang/Exception;
    new-instance v13, Lorg/telegram/messenger/camera/CameraController$1$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lorg/telegram/messenger/camera/CameraController$1$3;-><init>(Lorg/telegram/messenger/camera/CameraController$1;)V

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 166
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 168
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_3
    return-void

    .line 114
    .restart local v1    # "a":I
    .restart local v2    # "camera":Landroid/hardware/Camera;
    .restart local v3    # "cameraId":I
    .restart local v4    # "cameraInfo":Lorg/telegram/messenger/camera/CameraInfo;
    .restart local v6    # "count":I
    .restart local v8    # "info":Landroid/hardware/Camera$CameraInfo;
    .restart local v9    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .restart local v10    # "params":Landroid/hardware/Camera$Parameters;
    .restart local v11    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/camera/CameraInfo;>;"
    :cond_2
    :try_start_1
    invoke-virtual {v10}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v9

    .line 115
    const/4 v1, 0x0

    :goto_4
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13

    if-ge v1, v13, :cond_6

    .line 116
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/Camera$Size;

    .line 117
    .restart local v12    # "size":Landroid/hardware/Camera$Size;
    iget v13, v12, Landroid/hardware/Camera$Size;->width:I

    const/16 v14, 0x500

    if-ne v13, v14, :cond_4

    iget v13, v12, Landroid/hardware/Camera$Size;->height:I

    const/16 v14, 0x2d0

    if-eq v13, v14, :cond_4

    .line 115
    :cond_3
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 120
    :cond_4
    const-string/jumbo v13, "samsung"

    sget-object v14, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    const-string/jumbo v13, "jflteuc"

    sget-object v14, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    iget v13, v12, Landroid/hardware/Camera$Size;->width:I

    const/16 v14, 0x800

    if-ge v13, v14, :cond_3

    .line 121
    :cond_5
    iget-object v13, v4, Lorg/telegram/messenger/camera/CameraInfo;->pictureSizes:Ljava/util/ArrayList;

    new-instance v14, Lorg/telegram/messenger/camera/Size;

    iget v15, v12, Landroid/hardware/Camera$Size;->width:I

    iget v0, v12, Landroid/hardware/Camera$Size;->height:I

    move/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "picture size = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v12, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v12, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_5

    .line 126
    .end local v12    # "size":Landroid/hardware/Camera$Size;
    :cond_6
    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 127
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance v5, Lorg/telegram/messenger/camera/CameraController$1$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/messenger/camera/CameraController$1$1;-><init>(Lorg/telegram/messenger/camera/CameraController$1;)V

    .line 145
    .local v5, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lorg/telegram/messenger/camera/Size;>;"
    iget-object v13, v4, Lorg/telegram/messenger/camera/CameraInfo;->previewSizes:Ljava/util/ArrayList;

    invoke-static {v13, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 146
    iget-object v13, v4, Lorg/telegram/messenger/camera/CameraInfo;->pictureSizes:Ljava/util/ArrayList;

    invoke-static {v13, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 95
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 148
    .end local v1    # "a":I
    .end local v2    # "camera":Landroid/hardware/Camera;
    .end local v4    # "cameraInfo":Lorg/telegram/messenger/camera/CameraInfo;
    .end local v5    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lorg/telegram/messenger/camera/Size;>;"
    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v10    # "params":Landroid/hardware/Camera$Parameters;
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/camera/CameraController$1;->this$0:Lorg/telegram/messenger/camera/CameraController;

    iput-object v11, v13, Lorg/telegram/messenger/camera/CameraController;->cameraInfos:Ljava/util/ArrayList;

    .line 150
    .end local v3    # "cameraId":I
    .end local v6    # "count":I
    .end local v8    # "info":Landroid/hardware/Camera$CameraInfo;
    .end local v11    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/camera/CameraInfo;>;"
    :cond_8
    new-instance v13, Lorg/telegram/messenger/camera/CameraController$1$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lorg/telegram/messenger/camera/CameraController$1$2;-><init>(Lorg/telegram/messenger/camera/CameraController$1;)V

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method
