.class Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$3;
.super Ljava/lang/Object;
.source "InstantCameraView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->prepareEncoder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    .prologue
    .line 1815
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$3;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1818
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$3;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v2, v2, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1400(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1832
    :goto_0
    return-void

    .line 1822
    :cond_0
    :try_start_0
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 1823
    .local v1, "v":Landroid/os/Vibrator;
    const-wide/16 v2, 0x32

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1827
    .end local v1    # "v":Landroid/os/Vibrator;
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$3;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v2, v2, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$400(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->lockOrientation(Landroid/app/Activity;)V

    .line 1828
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$3;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v2, v2, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$002(Lorg/telegram/ui/Components/InstantCameraView;Z)Z

    .line 1829
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$3;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v2, v2, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lorg/telegram/ui/Components/InstantCameraView;->access$202(Lorg/telegram/ui/Components/InstantCameraView;J)J

    .line 1830
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$3;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v2, v2, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$300(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1831
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->recordStarted:I

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 1824
    :catch_0
    move-exception v0

    .line 1825
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
