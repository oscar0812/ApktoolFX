.class Lorg/telegram/messenger/MediaController$10$1;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MediaController$10;

.field final synthetic val$finalBuffersWrited:I

.field final synthetic val$marker:I

.field final synthetic val$pcm:J


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MediaController$10;JII)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/MediaController$10;

    .prologue
    .line 1769
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$10$1;->this$1:Lorg/telegram/messenger/MediaController$10;

    iput-wide p2, p0, Lorg/telegram/messenger/MediaController$10$1;->val$pcm:J

    iput p4, p0, Lorg/telegram/messenger/MediaController$10$1;->val$marker:I

    iput p5, p0, Lorg/telegram/messenger/MediaController$10$1;->val$finalBuffersWrited:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1772
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$10$1;->this$1:Lorg/telegram/messenger/MediaController$10;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$10;->this$0:Lorg/telegram/messenger/MediaController;

    iget-wide v2, p0, Lorg/telegram/messenger/MediaController$10$1;->val$pcm:J

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/MediaController;->access$3102(Lorg/telegram/messenger/MediaController;J)J

    .line 1773
    iget v0, p0, Lorg/telegram/messenger/MediaController$10$1;->val$marker:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1774
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$10$1;->this$1:Lorg/telegram/messenger/MediaController$10;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$10;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$2600(Lorg/telegram/messenger/MediaController;)Landroid/media/AudioTrack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1775
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$10$1;->this$1:Lorg/telegram/messenger/MediaController$10;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$10;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$2600(Lorg/telegram/messenger/MediaController;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/media/AudioTrack;->setNotificationMarkerPosition(I)I

    .line 1777
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/MediaController$10$1;->val$finalBuffersWrited:I

    if-ne v0, v4, :cond_1

    .line 1778
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$10$1;->this$1:Lorg/telegram/messenger/MediaController$10;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$10;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-virtual {v0, v4, v4, v4}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZZ)V

    .line 1781
    :cond_1
    return-void
.end method
