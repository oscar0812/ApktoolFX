.class Lorg/telegram/messenger/MediaController$6$1;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MediaController$6;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MediaController$6;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/MediaController$6;

    .prologue
    .line 958
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$6$1;->this$1:Lorg/telegram/messenger/MediaController$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 961
    iget-object v4, p0, Lorg/telegram/messenger/MediaController$6$1;->this$1:Lorg/telegram/messenger/MediaController$6;

    iget-object v4, v4, Lorg/telegram/messenger/MediaController$6;->val$currentPlayingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/telegram/messenger/MediaController$6$1;->this$1:Lorg/telegram/messenger/MediaController$6;

    iget-object v4, v4, Lorg/telegram/messenger/MediaController$6;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v4}, Lorg/telegram/messenger/MediaController;->access$2500(Lorg/telegram/messenger/MediaController;)Landroid/media/MediaPlayer;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/MediaController$6$1;->this$1:Lorg/telegram/messenger/MediaController$6;

    iget-object v4, v4, Lorg/telegram/messenger/MediaController$6;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v4}, Lorg/telegram/messenger/MediaController;->access$2600(Lorg/telegram/messenger/MediaController;)Landroid/media/AudioTrack;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/MediaController$6$1;->this$1:Lorg/telegram/messenger/MediaController$6;

    iget-object v4, v4, Lorg/telegram/messenger/MediaController$6;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v4}, Lorg/telegram/messenger/MediaController;->access$2700(Lorg/telegram/messenger/MediaController;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v4

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Lorg/telegram/messenger/MediaController$6$1;->this$1:Lorg/telegram/messenger/MediaController$6;

    iget-object v4, v4, Lorg/telegram/messenger/MediaController$6;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v4}, Lorg/telegram/messenger/MediaController;->access$2800(Lorg/telegram/messenger/MediaController;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 963
    :try_start_0
    iget-object v4, p0, Lorg/telegram/messenger/MediaController$6$1;->this$1:Lorg/telegram/messenger/MediaController$6;

    iget-object v4, v4, Lorg/telegram/messenger/MediaController$6;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v4}, Lorg/telegram/messenger/MediaController;->access$2900(Lorg/telegram/messenger/MediaController;)I

    move-result v4

    if-eqz v4, :cond_2

    .line 964
    iget-object v4, p0, Lorg/telegram/messenger/MediaController$6$1;->this$1:Lorg/telegram/messenger/MediaController$6;

    iget-object v4, v4, Lorg/telegram/messenger/MediaController$6;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v4}, Lorg/telegram/messenger/MediaController;->access$2910(Lorg/telegram/messenger/MediaController;)I

    .line 999
    :cond_1
    :goto_0
    return-void

    .line 969
    :cond_2
    iget-object v4, p0, Lorg/telegram/messenger/MediaController$6$1;->this$1:Lorg/telegram/messenger/MediaController$6;

    iget-object v4, v4, Lorg/telegram/messenger/MediaController$6;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v4}, Lorg/telegram/messenger/MediaController;->access$2700(Lorg/telegram/messenger/MediaController;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 970
    iget-object v4, p0, Lorg/telegram/messenger/MediaController$6$1;->this$1:Lorg/telegram/messenger/MediaController$6;

    iget-object v4, v4, Lorg/telegram/messenger/MediaController$6;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v4}, Lorg/telegram/messenger/MediaController;->access$2700(Lorg/telegram/messenger/MediaController;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v2

    .line 971
    .local v2, "progress":J
    iget-object v4, p0, Lorg/telegram/messenger/MediaController$6$1;->this$1:Lorg/telegram/messenger/MediaController$6;

    iget-object v4, v4, Lorg/telegram/messenger/MediaController$6;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v4}, Lorg/telegram/messenger/MediaController;->access$3000(Lorg/telegram/messenger/MediaController;)J

    move-result-wide v4

    long-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/messenger/MediaController$6$1;->this$1:Lorg/telegram/messenger/MediaController$6;

    iget-object v5, v5, Lorg/telegram/messenger/MediaController$6;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v5}, Lorg/telegram/messenger/MediaController;->access$2700(Lorg/telegram/messenger/MediaController;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v6

    long-to-float v5, v6

    div-float v1, v4, v5

    .line 972
    .local v1, "value":F
    iget-object v4, p0, Lorg/telegram/messenger/MediaController$6$1;->this$1:Lorg/telegram/messenger/MediaController$6;

    iget-object v4, v4, Lorg/telegram/messenger/MediaController$6;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v4}, Lorg/telegram/messenger/MediaController;->access$3000(Lorg/telegram/messenger/MediaController;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 975
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v1, v4

    if-gez v4, :cond_1

    .line 991
    :cond_3
    iget-object v4, p0, Lorg/telegram/messenger/MediaController$6$1;->this$1:Lorg/telegram/messenger/MediaController$6;

    iget-object v4, v4, Lorg/telegram/messenger/MediaController$6;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v4, v2, v3}, Lorg/telegram/messenger/MediaController;->access$3002(Lorg/telegram/messenger/MediaController;J)J

    .line 992
    iget-object v4, p0, Lorg/telegram/messenger/MediaController$6$1;->this$1:Lorg/telegram/messenger/MediaController$6;

    iget-object v4, v4, Lorg/telegram/messenger/MediaController$6;->val$currentPlayingMessageObject:Lorg/telegram/messenger/MessageObject;

    iput v1, v4, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 993
    iget-object v4, p0, Lorg/telegram/messenger/MediaController$6$1;->this$1:Lorg/telegram/messenger/MediaController$6;

    iget-object v4, v4, Lorg/telegram/messenger/MediaController$6;->val$currentPlayingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v5, p0, Lorg/telegram/messenger/MediaController$6$1;->this$1:Lorg/telegram/messenger/MediaController$6;

    iget-object v5, v5, Lorg/telegram/messenger/MediaController$6;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v5}, Lorg/telegram/messenger/MediaController;->access$3000(Lorg/telegram/messenger/MediaController;)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v5, v6

    iput v5, v4, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    .line 994
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/telegram/messenger/MediaController$6$1;->this$1:Lorg/telegram/messenger/MediaController$6;

    iget-object v8, v8, Lorg/telegram/messenger/MediaController$6;->val$currentPlayingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 995
    .end local v1    # "value":F
    .end local v2    # "progress":J
    :catch_0
    move-exception v0

    .line 996
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 978
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_1
    iget-object v4, p0, Lorg/telegram/messenger/MediaController$6$1;->this$1:Lorg/telegram/messenger/MediaController$6;

    iget-object v4, v4, Lorg/telegram/messenger/MediaController$6;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v4}, Lorg/telegram/messenger/MediaController;->access$2500(Lorg/telegram/messenger/MediaController;)Landroid/media/MediaPlayer;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 979
    iget-object v4, p0, Lorg/telegram/messenger/MediaController$6$1;->this$1:Lorg/telegram/messenger/MediaController$6;

    iget-object v4, v4, Lorg/telegram/messenger/MediaController$6;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v4}, Lorg/telegram/messenger/MediaController;->access$2500(Lorg/telegram/messenger/MediaController;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v4

    int-to-long v2, v4

    .line 980
    .restart local v2    # "progress":J
    iget-object v4, p0, Lorg/telegram/messenger/MediaController$6$1;->this$1:Lorg/telegram/messenger/MediaController$6;

    iget-object v4, v4, Lorg/telegram/messenger/MediaController$6;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v4}, Lorg/telegram/messenger/MediaController;->access$3000(Lorg/telegram/messenger/MediaController;)J

    move-result-wide v4

    long-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/messenger/MediaController$6$1;->this$1:Lorg/telegram/messenger/MediaController$6;

    iget-object v5, v5, Lorg/telegram/messenger/MediaController$6;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v5}, Lorg/telegram/messenger/MediaController;->access$2500(Lorg/telegram/messenger/MediaController;)Landroid/media/MediaPlayer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v5

    int-to-float v5, v5

    div-float v1, v4, v5

    .line 981
    .restart local v1    # "value":F
    iget-object v4, p0, Lorg/telegram/messenger/MediaController$6$1;->this$1:Lorg/telegram/messenger/MediaController$6;

    iget-object v4, v4, Lorg/telegram/messenger/MediaController$6;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v4}, Lorg/telegram/messenger/MediaController;->access$3000(Lorg/telegram/messenger/MediaController;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gtz v4, :cond_3

    goto/16 :goto_0

    .line 985
    .end local v1    # "value":F
    .end local v2    # "progress":J
    :cond_5
    iget-object v4, p0, Lorg/telegram/messenger/MediaController$6$1;->this$1:Lorg/telegram/messenger/MediaController$6;

    iget-object v4, v4, Lorg/telegram/messenger/MediaController$6;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v4}, Lorg/telegram/messenger/MediaController;->access$3100(Lorg/telegram/messenger/MediaController;)J

    move-result-wide v4

    long-to-float v4, v4

    const/high16 v5, 0x42400000    # 48.0f

    div-float/2addr v4, v5

    float-to-int v4, v4

    int-to-long v2, v4

    .line 986
    .restart local v2    # "progress":J
    iget-object v4, p0, Lorg/telegram/messenger/MediaController$6$1;->this$1:Lorg/telegram/messenger/MediaController$6;

    iget-object v4, v4, Lorg/telegram/messenger/MediaController$6;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v4}, Lorg/telegram/messenger/MediaController;->access$3100(Lorg/telegram/messenger/MediaController;)J

    move-result-wide v4

    long-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/messenger/MediaController$6$1;->this$1:Lorg/telegram/messenger/MediaController$6;

    iget-object v5, v5, Lorg/telegram/messenger/MediaController$6;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v5}, Lorg/telegram/messenger/MediaController;->access$3200(Lorg/telegram/messenger/MediaController;)J

    move-result-wide v6

    long-to-float v5, v6

    div-float v1, v4, v5

    .line 987
    .restart local v1    # "value":F
    iget-object v4, p0, Lorg/telegram/messenger/MediaController$6$1;->this$1:Lorg/telegram/messenger/MediaController$6;

    iget-object v4, v4, Lorg/telegram/messenger/MediaController$6;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v4}, Lorg/telegram/messenger/MediaController;->access$3000(Lorg/telegram/messenger/MediaController;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v4

    cmp-long v4, v2, v4

    if-nez v4, :cond_3

    goto/16 :goto_0
.end method
