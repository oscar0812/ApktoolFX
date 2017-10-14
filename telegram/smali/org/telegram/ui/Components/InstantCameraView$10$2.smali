.class Lorg/telegram/ui/Components/InstantCameraView$10$2;
.super Ljava/lang/Object;
.source "InstantCameraView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/InstantCameraView$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/InstantCameraView$10;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/InstantCameraView$10;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/Components/InstantCameraView$10;

    .prologue
    .line 782
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$10$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 785
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$10$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$10;

    iget-object v0, v0, Lorg/telegram/ui/Components/InstantCameraView$10;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1000(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$10$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$10;

    iget-object v1, v1, Lorg/telegram/ui/Components/InstantCameraView$10;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$900(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->setCurrentSession(Lorg/telegram/messenger/camera/CameraSession;)V

    .line 786
    return-void
.end method
