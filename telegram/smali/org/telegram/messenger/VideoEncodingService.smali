.class public Lorg/telegram/messenger/VideoEncodingService;
.super Landroid/app/Service;
.source "VideoEncodingService.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# instance fields
.field private builder:Landroid/support/v4/app/NotificationCompat$Builder;

.field private currentProgress:I

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 25
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileUploadProgressChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 26
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stopEncodingService:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 27
    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 11
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 42
    sget v7, Lorg/telegram/messenger/NotificationCenter;->FileUploadProgressChanged:I

    if-ne p1, v7, :cond_2

    .line 43
    aget-object v2, p2, v6

    check-cast v2, Ljava/lang/String;

    .line 44
    .local v2, "fileName":Ljava/lang/String;
    iget-object v7, p0, Lorg/telegram/messenger/VideoEncodingService;->path:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lorg/telegram/messenger/VideoEncodingService;->path:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 45
    aget-object v4, p2, v5

    check-cast v4, Ljava/lang/Float;

    .line 46
    .local v4, "progress":Ljava/lang/Float;
    const/4 v7, 0x2

    aget-object v1, p2, v7

    check-cast v1, Ljava/lang/Boolean;

    .line 47
    .local v1, "enc":Ljava/lang/Boolean;
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v7

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lorg/telegram/messenger/VideoEncodingService;->currentProgress:I

    .line 48
    iget-object v7, p0, Lorg/telegram/messenger/VideoEncodingService;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    const/16 v8, 0x64

    iget v9, p0, Lorg/telegram/messenger/VideoEncodingService;->currentProgress:I

    iget v10, p0, Lorg/telegram/messenger/VideoEncodingService;->currentProgress:I

    if-nez v10, :cond_1

    :goto_0
    invoke-virtual {v7, v8, v9, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 50
    :try_start_0
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v5

    const/4 v6, 0x4

    iget-object v7, p0, Lorg/telegram/messenger/VideoEncodingService;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v7}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v1    # "enc":Ljava/lang/Boolean;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v4    # "progress":Ljava/lang/Float;
    :cond_0
    :goto_1
    return-void

    .restart local v1    # "enc":Ljava/lang/Boolean;
    .restart local v2    # "fileName":Ljava/lang/String;
    .restart local v4    # "progress":Ljava/lang/Float;
    :cond_1
    move v5, v6

    .line 48
    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 55
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "enc":Ljava/lang/Boolean;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v4    # "progress":Ljava/lang/Float;
    :cond_2
    sget v5, Lorg/telegram/messenger/NotificationCenter;->stopEncodingService:I

    if-ne p1, v5, :cond_0

    .line 56
    aget-object v3, p2, v6

    check-cast v3, Ljava/lang/String;

    .line 57
    .local v3, "filepath":Ljava/lang/String;
    if-eqz v3, :cond_3

    iget-object v5, p0, Lorg/telegram/messenger/VideoEncodingService;->path:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 58
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/messenger/VideoEncodingService;->stopSelf()V

    goto :goto_1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg2"    # Landroid/content/Intent;

    .prologue
    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 34
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/VideoEncodingService;->stopForeground(Z)V

    .line 35
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileUploadProgressChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 36
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stopEncodingService:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 37
    const-string/jumbo v0, "destroy video service"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const v9, 0x7f070570

    const v8, 0x7f07056e

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v1, 0x0

    .line 64
    const-string/jumbo v2, "path"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/VideoEncodingService;->path:Ljava/lang/String;

    .line 65
    const-string/jumbo v2, "gif"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 66
    .local v0, "isGif":Z
    iget-object v2, p0, Lorg/telegram/messenger/VideoEncodingService;->path:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 67
    invoke-virtual {p0}, Lorg/telegram/messenger/VideoEncodingService;->stopSelf()V

    .line 88
    :goto_0
    return v6

    .line 70
    :cond_0
    const-string/jumbo v2, "start video service"

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 71
    iget-object v2, p0, Lorg/telegram/messenger/VideoEncodingService;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    if-nez v2, :cond_1

    .line 72
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/messenger/VideoEncodingService;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 73
    iget-object v2, p0, Lorg/telegram/messenger/VideoEncodingService;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    const v3, 0x1080088

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 74
    iget-object v2, p0, Lorg/telegram/messenger/VideoEncodingService;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 75
    iget-object v2, p0, Lorg/telegram/messenger/VideoEncodingService;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    const-string/jumbo v3, "AppName"

    const v4, 0x7f07007a

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 76
    if-eqz v0, :cond_3

    .line 77
    iget-object v2, p0, Lorg/telegram/messenger/VideoEncodingService;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    const-string/jumbo v3, "SendingGif"

    invoke-static {v3, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 78
    iget-object v2, p0, Lorg/telegram/messenger/VideoEncodingService;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    const-string/jumbo v3, "SendingGif"

    invoke-static {v3, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 84
    :cond_1
    :goto_1
    iput v1, p0, Lorg/telegram/messenger/VideoEncodingService;->currentProgress:I

    .line 85
    iget-object v2, p0, Lorg/telegram/messenger/VideoEncodingService;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    const/16 v3, 0x64

    iget v4, p0, Lorg/telegram/messenger/VideoEncodingService;->currentProgress:I

    iget v5, p0, Lorg/telegram/messenger/VideoEncodingService;->currentProgress:I

    if-nez v5, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {v2, v3, v4, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 86
    iget-object v1, p0, Lorg/telegram/messenger/VideoEncodingService;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v7, v1}, Lorg/telegram/messenger/VideoEncodingService;->startForeground(ILandroid/app/Notification;)V

    .line 87
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/VideoEncodingService;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Landroid/support/v4/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 80
    :cond_3
    iget-object v2, p0, Lorg/telegram/messenger/VideoEncodingService;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    const-string/jumbo v3, "SendingVideo"

    invoke-static {v3, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 81
    iget-object v2, p0, Lorg/telegram/messenger/VideoEncodingService;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    const-string/jumbo v3, "SendingVideo"

    invoke-static {v3, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_1
.end method
