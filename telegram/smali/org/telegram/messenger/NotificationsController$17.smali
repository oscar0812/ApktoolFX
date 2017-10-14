.class Lorg/telegram/messenger/NotificationsController$17;
.super Ljava/lang/Object;
.source "NotificationsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/NotificationsController;->playOutChatSound()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/NotificationsController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/NotificationsController;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 2081
    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController$17;->this$0:Lorg/telegram/messenger/NotificationsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 2085
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/messenger/NotificationsController$17;->this$0:Lorg/telegram/messenger/NotificationsController;

    invoke-static {v2}, Lorg/telegram/messenger/NotificationsController;->access$2600(Lorg/telegram/messenger/NotificationsController;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 2118
    :cond_0
    :goto_0
    return-void

    .line 2088
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController$17;->this$0:Lorg/telegram/messenger/NotificationsController;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/NotificationsController;->access$2602(Lorg/telegram/messenger/NotificationsController;J)J

    .line 2089
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController$17;->this$0:Lorg/telegram/messenger/NotificationsController;

    invoke-static {v0}, Lorg/telegram/messenger/NotificationsController;->access$2200(Lorg/telegram/messenger/NotificationsController;)Landroid/media/SoundPool;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2090
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController$17;->this$0:Lorg/telegram/messenger/NotificationsController;

    new-instance v1, Landroid/media/SoundPool;

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/media/SoundPool;-><init>(III)V

    invoke-static {v0, v1}, Lorg/telegram/messenger/NotificationsController;->access$2202(Lorg/telegram/messenger/NotificationsController;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 2091
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController$17;->this$0:Lorg/telegram/messenger/NotificationsController;

    invoke-static {v0}, Lorg/telegram/messenger/NotificationsController;->access$2200(Lorg/telegram/messenger/NotificationsController;)Landroid/media/SoundPool;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/NotificationsController$17$1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/NotificationsController$17$1;-><init>(Lorg/telegram/messenger/NotificationsController$17;)V

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 2104
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController$17;->this$0:Lorg/telegram/messenger/NotificationsController;

    invoke-static {v0}, Lorg/telegram/messenger/NotificationsController;->access$2700(Lorg/telegram/messenger/NotificationsController;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController$17;->this$0:Lorg/telegram/messenger/NotificationsController;

    invoke-static {v0}, Lorg/telegram/messenger/NotificationsController;->access$2800(Lorg/telegram/messenger/NotificationsController;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2105
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController$17;->this$0:Lorg/telegram/messenger/NotificationsController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/messenger/NotificationsController;->access$2802(Lorg/telegram/messenger/NotificationsController;Z)Z

    .line 2106
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController$17;->this$0:Lorg/telegram/messenger/NotificationsController;

    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController$17;->this$0:Lorg/telegram/messenger/NotificationsController;

    invoke-static {v1}, Lorg/telegram/messenger/NotificationsController;->access$2200(Lorg/telegram/messenger/NotificationsController;)Landroid/media/SoundPool;

    move-result-object v1

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const v3, 0x7f060001

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/NotificationsController;->access$2702(Lorg/telegram/messenger/NotificationsController;I)I

    .line 2108
    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController$17;->this$0:Lorg/telegram/messenger/NotificationsController;

    invoke-static {v0}, Lorg/telegram/messenger/NotificationsController;->access$2700(Lorg/telegram/messenger/NotificationsController;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_0

    .line 2110
    :try_start_1
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController$17;->this$0:Lorg/telegram/messenger/NotificationsController;

    invoke-static {v0}, Lorg/telegram/messenger/NotificationsController;->access$2200(Lorg/telegram/messenger/NotificationsController;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController$17;->this$0:Lorg/telegram/messenger/NotificationsController;

    invoke-static {v1}, Lorg/telegram/messenger/NotificationsController;->access$2700(Lorg/telegram/messenger/NotificationsController;)I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2111
    :catch_0
    move-exception v7

    .line 2112
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 2115
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 2116
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
