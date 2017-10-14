.class Lorg/telegram/messenger/camera/CameraController$1$3;
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
    .line 159
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraController$1$3;->this$1:Lorg/telegram/messenger/camera/CameraController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 162
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$1$3;->this$1:Lorg/telegram/messenger/camera/CameraController$1;

    iget-object v0, v0, Lorg/telegram/messenger/camera/CameraController$1;->this$0:Lorg/telegram/messenger/camera/CameraController;

    invoke-static {v0, v1}, Lorg/telegram/messenger/camera/CameraController;->access$002(Lorg/telegram/messenger/camera/CameraController;Z)Z

    .line 163
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$1$3;->this$1:Lorg/telegram/messenger/camera/CameraController$1;

    iget-object v0, v0, Lorg/telegram/messenger/camera/CameraController$1;->this$0:Lorg/telegram/messenger/camera/CameraController;

    invoke-static {v0, v1}, Lorg/telegram/messenger/camera/CameraController;->access$102(Lorg/telegram/messenger/camera/CameraController;Z)Z

    .line 164
    return-void
.end method
