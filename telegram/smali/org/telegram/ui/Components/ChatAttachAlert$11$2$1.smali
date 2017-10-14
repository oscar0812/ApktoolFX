.class Lorg/telegram/ui/Components/ChatAttachAlert$11$2$1;
.super Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;
.source "ChatAttachAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlert$11$2;->onFinishVideoRecording(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/Components/ChatAttachAlert$11$2;

.field final synthetic val$thumb:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert$11$2;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/Components/ChatAttachAlert$11$2;

    .prologue
    .line 779
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$2$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlert$11$2;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$2$1;->val$thumb:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelButtonPressed()Z
    .locals 4

    .prologue
    .line 787
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$2$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlert$11$2;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1100(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$2$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlert$11$2;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/messenger/camera/CameraView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$2$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlert$11$2;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5200(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$2$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlert$11$2;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5200(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 789
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$11$2$1$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$11$2$1$1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert$11$2$1;)V

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 797
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$2$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlert$11$2;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert$11$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/messenger/camera/CameraView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/camera/CameraController;->startPreview(Lorg/telegram/messenger/camera/CameraSession;)V

    .line 798
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$2$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlert$11$2;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5202(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/io/File;)Ljava/io/File;

    .line 800
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getThumbForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    .line 782
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$2$1;->val$thumb:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public sendButtonPressed(ILorg/telegram/messenger/VideoEditedInfo;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "videoEditedInfo"    # Lorg/telegram/messenger/VideoEditedInfo;

    .prologue
    const/4 v2, 0x0

    .line 805
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$2$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlert$11$2;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5200(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$2$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlert$11$2;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$400(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 813
    :cond_0
    :goto_0
    return-void

    .line 808
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$2$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlert$11$2;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5200(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->addMediaToGallery(Ljava/lang/String;)V

    .line 809
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$2$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlert$11$2;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$400(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$2$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlert$11$2;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5600(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    invoke-virtual {v1, v0, p2}, Lorg/telegram/ui/ChatActivity;->sendMedia(Lorg/telegram/messenger/MediaController$PhotoEntry;Lorg/telegram/messenger/VideoEditedInfo;)V

    .line 810
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$2$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlert$11$2;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->closeCamera(Z)V

    .line 811
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$2$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlert$11$2;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    .line 812
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$2$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlert$11$2;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5202(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/io/File;)Ljava/io/File;

    goto :goto_0
.end method

.method public willHidePhotoViewer()V
    .locals 2

    .prologue
    .line 817
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$2$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlert$11$2;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4802(Lorg/telegram/ui/Components/ChatAttachAlert;Z)Z

    .line 818
    return-void
.end method
