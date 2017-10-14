.class Lorg/telegram/messenger/camera/CameraController$1$2;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/camera/CameraController$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/camera/CameraController$1;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/camera/CameraController$1;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/camera/CameraController$1;

    .prologue
    .line 150
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraController$1$2;->this$1:Lorg/telegram/messenger/camera/CameraController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 153
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$1$2;->this$1:Lorg/telegram/messenger/camera/CameraController$1;

    iget-object v0, v0, Lorg/telegram/messenger/camera/CameraController$1;->this$0:Lorg/telegram/messenger/camera/CameraController;

    invoke-static {v0, v2}, Lorg/telegram/messenger/camera/CameraController;->access$002(Lorg/telegram/messenger/camera/CameraController;Z)Z

    .line 154
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$1$2;->this$1:Lorg/telegram/messenger/camera/CameraController$1;

    iget-object v0, v0, Lorg/telegram/messenger/camera/CameraController$1;->this$0:Lorg/telegram/messenger/camera/CameraController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/messenger/camera/CameraController;->access$102(Lorg/telegram/messenger/camera/CameraController;Z)Z

    .line 155
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->cameraInitied:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 156
    return-void
.end method
