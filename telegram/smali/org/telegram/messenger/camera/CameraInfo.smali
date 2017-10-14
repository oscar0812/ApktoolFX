.class public Lorg/telegram/messenger/camera/CameraInfo;
.super Ljava/lang/Object;
.source "CameraInfo.java"


# instance fields
.field protected camera:Landroid/hardware/Camera;

.field protected cameraId:I

.field protected final frontCamera:I

.field protected pictureSizes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/camera/Size;",
            ">;"
        }
    .end annotation
.end field

.field protected previewSizes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/camera/Size;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILandroid/hardware/Camera$CameraInfo;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "info"    # Landroid/hardware/Camera$CameraInfo;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraInfo;->pictureSizes:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraInfo;->previewSizes:Ljava/util/ArrayList;

    .line 24
    iput p1, p0, Lorg/telegram/messenger/camera/CameraInfo;->cameraId:I

    .line 25
    iget v0, p2, Landroid/hardware/Camera$CameraInfo;->facing:I

    iput v0, p0, Lorg/telegram/messenger/camera/CameraInfo;->frontCamera:I

    .line 26
    return-void
.end method

.method private getCamera()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    return-object v0
.end method


# virtual methods
.method public getCameraId()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lorg/telegram/messenger/camera/CameraInfo;->cameraId:I

    return v0
.end method

.method public getPictureSizes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/camera/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraInfo;->pictureSizes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPreviewSizes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/camera/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraInfo;->previewSizes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isFrontface()Z
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lorg/telegram/messenger/camera/CameraInfo;->frontCamera:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
