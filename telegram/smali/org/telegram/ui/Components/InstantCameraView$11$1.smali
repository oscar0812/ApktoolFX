.class Lorg/telegram/ui/Components/InstantCameraView$11$1;
.super Ljava/lang/Object;
.source "InstantCameraView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/InstantCameraView$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/InstantCameraView$11;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/InstantCameraView$11;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/Components/InstantCameraView$11;

    .prologue
    .line 821
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$11$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 825
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$11$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$11;

    iget-object v1, v1, Lorg/telegram/ui/Components/InstantCameraView$11;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$500(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$11$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$11;

    iget-object v1, v1, Lorg/telegram/ui/Components/InstantCameraView$11;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1900(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$11$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$11;

    iget-object v1, v1, Lorg/telegram/ui/Components/InstantCameraView$11;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1900(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v1

    iget-wide v4, v1, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$11$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$11;

    iget-object v1, v1, Lorg/telegram/ui/Components/InstantCameraView$11;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$500(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v4

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$11$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$11;

    iget-object v1, v1, Lorg/telegram/ui/Components/InstantCameraView$11;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1900(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v1

    iget-wide v6, v1, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    cmp-long v1, v4, v6

    if-ltz v1, :cond_1

    .line 826
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$11$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$11;

    iget-object v1, v1, Lorg/telegram/ui/Components/InstantCameraView$11;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$500(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v1

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView$11$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$11;

    iget-object v4, v4, Lorg/telegram/ui/Components/InstantCameraView$11;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$1900(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v4

    iget-wide v4, v4, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$11$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$11;

    iget-object v2, v2, Lorg/telegram/ui/Components/InstantCameraView$11;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1900(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    iget-wide v2, v2, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    :cond_0
    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 831
    :cond_1
    :goto_0
    return-void

    .line 828
    :catch_0
    move-exception v0

    .line 829
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
