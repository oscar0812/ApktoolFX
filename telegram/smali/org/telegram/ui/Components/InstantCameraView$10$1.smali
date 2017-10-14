.class Lorg/telegram/ui/Components/InstantCameraView$10$1;
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
    .line 774
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$10$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$10$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$10;

    iget-object v0, v0, Lorg/telegram/ui/Components/InstantCameraView$10;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$900(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 778
    const-string/jumbo v0, "camera initied"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 779
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$10$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$10;

    iget-object v0, v0, Lorg/telegram/ui/Components/InstantCameraView$10;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$900(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSession;->setInitied()V

    .line 781
    :cond_0
    return-void
.end method
