.class public Lorg/telegram/messenger/LocationSharingService;
.super Landroid/app/Service;
.source "LocationSharingService.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# instance fields
.field private builder:Landroid/support/v4/app/NotificationCompat$Builder;

.field private handler:Landroid/os/Handler;

.field private runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 32
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->liveLocationsChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 33
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/LocationSharingService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/LocationSharingService;

    .prologue
    .line 24
    iget-object v0, p0, Lorg/telegram/messenger/LocationSharingService;->runnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/LocationSharingService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/LocationSharingService;

    .prologue
    .line 24
    iget-object v0, p0, Lorg/telegram/messenger/LocationSharingService;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private updateNotification()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 77
    iget-object v7, p0, Lorg/telegram/messenger/LocationSharingService;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    if-nez v7, :cond_0

    .line 103
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocationController;->getInstance()Lorg/telegram/messenger/LocationController;

    move-result-object v7

    iget-object v2, v7, Lorg/telegram/messenger/LocationController;->sharingLocationsUI:Ljava/util/ArrayList;

    .line 82
    .local v2, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/LocationController$SharingLocationInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v12, :cond_3

    .line 83
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    .line 84
    .local v1, "info":Lorg/telegram/messenger/LocationController$SharingLocationInfo;
    iget-object v7, v1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v8

    long-to-int v3, v8

    .line 85
    .local v3, "lower_id":I
    if-lez v3, :cond_1

    .line 86
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    .line 87
    .local v6, "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    .line 99
    .end local v1    # "info":Lorg/telegram/messenger/LocationController$SharingLocationInfo;
    .end local v3    # "lower_id":I
    .end local v6    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .local v4, "param":Ljava/lang/String;
    :goto_1
    const-string/jumbo v7, "AttachLiveLocationIsSharing"

    const v8, 0x7f0700aa

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "AttachLiveLocation"

    const v10, 0x7f0700a9

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    aput-object v4, v8, v12

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 100
    .local v5, "str":Ljava/lang/String;
    iget-object v7, p0, Lorg/telegram/messenger/LocationSharingService;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v7, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 101
    iget-object v7, p0, Lorg/telegram/messenger/LocationSharingService;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v7, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 102
    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v7

    const/4 v8, 0x6

    iget-object v9, p0, Lorg/telegram/messenger/LocationSharingService;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v9}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/support/v4/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 89
    .end local v4    # "param":Ljava/lang/String;
    .end local v5    # "str":Ljava/lang/String;
    .restart local v1    # "info":Lorg/telegram/messenger/LocationController$SharingLocationInfo;
    .restart local v3    # "lower_id":I
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    neg-int v8, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 90
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v0, :cond_2

    .line 91
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .restart local v4    # "param":Ljava/lang/String;
    goto :goto_1

    .line 93
    .end local v4    # "param":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, ""

    .restart local v4    # "param":Ljava/lang/String;
    goto :goto_1

    .line 97
    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v1    # "info":Lorg/telegram/messenger/LocationController$SharingLocationInfo;
    .end local v3    # "lower_id":I
    .end local v4    # "param":Ljava/lang/String;
    :cond_3
    const-string/jumbo v7, "Chats"

    invoke-static {}, Lorg/telegram/messenger/LocationController;->getInstance()Lorg/telegram/messenger/LocationController;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/messenger/LocationController;->sharingLocationsUI:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "param":Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 67
    sget v0, Lorg/telegram/messenger/NotificationCenter;->liveLocationsChanged:I

    if-ne p1, v0, :cond_0

    .line 68
    invoke-static {}, Lorg/telegram/messenger/LocationController;->getInstance()Lorg/telegram/messenger/LocationController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/LocationController;->sharingLocationsUI:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {p0}, Lorg/telegram/messenger/LocationSharingService;->stopSelf()V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    invoke-direct {p0}, Lorg/telegram/messenger/LocationSharingService;->updateNotification()V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg2"    # Landroid/content/Intent;

    .prologue
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 37
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/LocationSharingService;->handler:Landroid/os/Handler;

    .line 39
    new-instance v0, Lorg/telegram/messenger/LocationSharingService$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/LocationSharingService$1;-><init>(Lorg/telegram/messenger/LocationSharingService;)V

    iput-object v0, p0, Lorg/telegram/messenger/LocationSharingService;->runnable:Ljava/lang/Runnable;

    .line 50
    iget-object v0, p0, Lorg/telegram/messenger/LocationSharingService;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/telegram/messenger/LocationSharingService;->runnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 51
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lorg/telegram/messenger/LocationSharingService;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lorg/telegram/messenger/LocationSharingService;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/telegram/messenger/LocationSharingService;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 61
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/LocationSharingService;->stopForeground(Z)V

    .line 62
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->liveLocationsChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 63
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 106
    invoke-static {}, Lorg/telegram/messenger/LocationController;->getInstance()Lorg/telegram/messenger/LocationController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/LocationController;->sharingLocationsUI:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 107
    invoke-virtual {p0}, Lorg/telegram/messenger/LocationSharingService;->stopSelf()V

    .line 109
    :cond_0
    iget-object v3, p0, Lorg/telegram/messenger/LocationSharingService;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    if-nez v3, :cond_1

    .line 110
    new-instance v1, Landroid/content/Intent;

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v4, Lorg/telegram/ui/LaunchActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    .local v1, "intent2":Landroid/content/Intent;
    const-string/jumbo v3, "org.tmessages.openlocations"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const v3, 0x8000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 113
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v3, v7, v1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 115
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/messenger/LocationSharingService;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 116
    iget-object v3, p0, Lorg/telegram/messenger/LocationSharingService;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 117
    iget-object v3, p0, Lorg/telegram/messenger/LocationSharingService;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    const v4, 0x7f020150

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 118
    iget-object v3, p0, Lorg/telegram/messenger/LocationSharingService;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 119
    iget-object v3, p0, Lorg/telegram/messenger/LocationSharingService;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    const-string/jumbo v4, "AppName"

    const v5, 0x7f07007a

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 120
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v4, Lorg/telegram/messenger/StopLiveLocationReceiver;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    .local v2, "stopIntent":Landroid/content/Intent;
    iget-object v3, p0, Lorg/telegram/messenger/LocationSharingService;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    const-string/jumbo v4, "StopLiveLocation"

    const v5, 0x7f0705bc

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/high16 v6, 0x8000000

    invoke-static {v5, v8, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v3, v7, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 124
    .end local v0    # "contentIntent":Landroid/app/PendingIntent;
    .end local v1    # "intent2":Landroid/content/Intent;
    .end local v2    # "stopIntent":Landroid/content/Intent;
    :cond_1
    const/4 v3, 0x6

    iget-object v4, p0, Lorg/telegram/messenger/LocationSharingService;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v4}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/telegram/messenger/LocationSharingService;->startForeground(ILandroid/app/Notification;)V

    .line 125
    invoke-direct {p0}, Lorg/telegram/messenger/LocationSharingService;->updateNotification()V

    .line 126
    return v8
.end method
