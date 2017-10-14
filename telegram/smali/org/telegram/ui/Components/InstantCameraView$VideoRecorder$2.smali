.class Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;
.super Ljava/lang/Object;
.source "InstantCameraView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handleStopRecording(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

.field final synthetic val$send:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;I)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    .prologue
    .line 1667
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iput p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->val$send:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-wide/16 v4, -0x1

    const/16 v6, 0xf0

    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v8, 0x1

    .line 1670
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v1, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    new-instance v3, Lorg/telegram/messenger/VideoEditedInfo;

    invoke-direct {v3}, Lorg/telegram/messenger/VideoEditedInfo;-><init>()V

    invoke-static {v1, v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$1902(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/messenger/VideoEditedInfo;)Lorg/telegram/messenger/VideoEditedInfo;

    .line 1671
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v1, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1900(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v1

    iput-boolean v8, v1, Lorg/telegram/messenger/VideoEditedInfo;->roundVideo:Z

    .line 1672
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v1, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1900(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v1

    iput-wide v4, v1, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    .line 1673
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v1, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1900(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v1

    iput-wide v4, v1, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    .line 1674
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v1, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1900(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v3, v3, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$4400(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/tgnet/TLRPC$InputFile;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/messenger/VideoEditedInfo;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 1675
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v1, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1900(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v3, v3, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$4500(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/messenger/VideoEditedInfo;->encryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    .line 1676
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v1, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1900(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v3, v3, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$4600(Lorg/telegram/ui/Components/InstantCameraView;)[B

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/messenger/VideoEditedInfo;->key:[B

    .line 1677
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v1, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1900(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v3, v3, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$4700(Lorg/telegram/ui/Components/InstantCameraView;)[B

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/messenger/VideoEditedInfo;->iv:[B

    .line 1678
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v1, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1900(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v3, v3, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$4800(Lorg/telegram/ui/Components/InstantCameraView;)J

    move-result-wide v4

    iput-wide v4, v1, Lorg/telegram/messenger/VideoEditedInfo;->estimatedSize:J

    .line 1679
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v1, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1900(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v3, v3, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$1900(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v3

    iput v6, v3, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    iput v6, v1, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    .line 1680
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v1, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1900(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v3, v3, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$1900(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v3

    iput v6, v3, Lorg/telegram/messenger/VideoEditedInfo;->originalHeight:I

    iput v6, v1, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    .line 1681
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v1, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1900(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$4900(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    .line 1682
    iget v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->val$send:I

    if-ne v1, v8, :cond_0

    .line 1683
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v1, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$400(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v9

    new-instance v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    const-wide/16 v4, 0x0

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$4900(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    move v3, v2

    move v7, v2

    invoke-direct/range {v1 .. v8}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZ)V

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v2, v2, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1900(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Lorg/telegram/ui/ChatActivity;->sendMedia(Lorg/telegram/messenger/MediaController$PhotoEntry;Lorg/telegram/messenger/VideoEditedInfo;)V

    .line 1739
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$4900(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2, v8}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$5300(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Ljava/io/File;Z)V

    .line 1740
    return-void

    .line 1685
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v1, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    new-instance v3, Lorg/telegram/ui/Components/VideoPlayer;

    invoke-direct {v3}, Lorg/telegram/ui/Components/VideoPlayer;-><init>()V

    invoke-static {v1, v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$502(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/ui/Components/VideoPlayer;)Lorg/telegram/ui/Components/VideoPlayer;

    .line 1686
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v1, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$500(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2$1;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/VideoPlayer;->setDelegate(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;)V

    .line 1722
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v1, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$500(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v3, v3, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$5000(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/view/TextureView;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    .line 1723
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v1, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$500(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$4900(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v4, "other"

    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V

    .line 1724
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v1, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$500(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    .line 1725
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v1, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$500(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v1

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/VideoPlayer;->setMute(Z)V

    .line 1726
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v1, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$5100(Lorg/telegram/ui/Components/InstantCameraView;)V

    .line 1728
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1729
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v3, v3, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    .line 1730
    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$1200(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/widget/ImageView;

    move-result-object v3

    const-string/jumbo v4, "alpha"

    new-array v5, v8, [F

    const/4 v6, 0x0

    aput v6, v5, v2

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v3, v3, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    .line 1731
    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$5200(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/graphics/Paint;

    move-result-object v3

    const-string/jumbo v4, "alpha"

    new-array v5, v8, [I

    aput v2, v5, v2

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v8

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v3, v3, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    .line 1732
    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$700(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/widget/ImageView;

    move-result-object v3

    const-string/jumbo v4, "alpha"

    new-array v5, v8, [F

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v5, v2

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v7

    .line 1729
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1733
    const-wide/16 v4, 0xb4

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1734
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1735
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1736
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v1, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1900(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v3, v3, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$100(Lorg/telegram/ui/Components/InstantCameraView;)J

    move-result-wide v4

    iput-wide v4, v1, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    .line 1737
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->audioDidSent:I

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v5, v5, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v5}, Lorg/telegram/ui/Components/InstantCameraView;->access$1900(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$4900(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v8

    invoke-virtual {v1, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
