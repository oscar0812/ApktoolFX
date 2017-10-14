.class Lorg/telegram/messenger/GcmPushListenerService$1;
.super Ljava/lang/Object;
.source "GcmPushListenerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/GcmPushListenerService;->onMessageReceived(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/GcmPushListenerService;

.field final synthetic val$bundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/GcmPushListenerService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/GcmPushListenerService;

    .prologue
    .line 32
    iput-object p1, p0, Lorg/telegram/messenger/GcmPushListenerService$1;->this$0:Lorg/telegram/messenger/GcmPushListenerService;

    iput-object p2, p0, Lorg/telegram/messenger/GcmPushListenerService$1;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 35
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->postInitApplication()V

    .line 38
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/GcmPushListenerService$1;->val$bundle:Landroid/os/Bundle;

    move-object/from16 v22, v0

    const-string/jumbo v23, "loc_key"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 39
    .local v11, "key":Ljava/lang/String;
    const-string/jumbo v22, "DC_UPDATE"

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 40
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/GcmPushListenerService$1;->val$bundle:Landroid/os/Bundle;

    move-object/from16 v22, v0

    const-string/jumbo v23, "custom"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 41
    .local v6, "data":Ljava/lang/String;
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 42
    .local v14, "object":Lorg/json/JSONObject;
    const-string/jumbo v22, "dc"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 43
    .local v7, "dc":I
    const-string/jumbo v22, "addr"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 44
    .local v4, "addr":Ljava/lang/String;
    const-string/jumbo v22, ":"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 45
    .local v15, "parts":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_0

    .line 107
    .end local v4    # "addr":Ljava/lang/String;
    .end local v6    # "data":Ljava/lang/String;
    .end local v7    # "dc":I
    .end local v11    # "key":Ljava/lang/String;
    .end local v14    # "object":Lorg/json/JSONObject;
    .end local v15    # "parts":[Ljava/lang/String;
    :goto_0
    return-void

    .line 48
    .restart local v4    # "addr":Ljava/lang/String;
    .restart local v6    # "data":Ljava/lang/String;
    .restart local v7    # "dc":I
    .restart local v11    # "key":Ljava/lang/String;
    .restart local v14    # "object":Lorg/json/JSONObject;
    .restart local v15    # "parts":[Ljava/lang/String;
    :cond_0
    const/16 v22, 0x0

    aget-object v10, v15, v22

    .line 49
    .local v10, "ip":Ljava/lang/String;
    const/16 v22, 0x1

    aget-object v22, v15, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 50
    .local v16, "port":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v7, v10, v1}, Lorg/telegram/tgnet/ConnectionsManager;->applyDatacenterAddress(ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v4    # "addr":Ljava/lang/String;
    .end local v6    # "data":Ljava/lang/String;
    .end local v7    # "dc":I
    .end local v10    # "ip":Ljava/lang/String;
    .end local v11    # "key":Ljava/lang/String;
    .end local v14    # "object":Lorg/json/JSONObject;
    .end local v15    # "parts":[Ljava/lang/String;
    .end local v16    # "port":I
    :cond_1
    :goto_1
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->onInternalPushReceived()V

    .line 106
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lorg/telegram/tgnet/ConnectionsManager;->resumeNetworkMaybe()V

    goto :goto_0

    .line 51
    .restart local v11    # "key":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string/jumbo v22, "MESSAGE_ANNOUNCEMENT"

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 52
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/GcmPushListenerService$1;->val$bundle:Landroid/os/Bundle;

    move-object/from16 v22, v0

    const-string/jumbo v23, "google.sent_time"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v13

    .line 55
    .local v13, "obj":Ljava/lang/Object;
    :try_start_2
    instance-of v0, v13, Ljava/lang/String;

    move/from16 v22, v0

    if-eqz v22, :cond_3

    .line 56
    check-cast v13, Ljava/lang/String;

    .end local v13    # "obj":Ljava/lang/Object;
    invoke-static {v13}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v18

    .line 66
    .local v18, "time":J
    :goto_2
    :try_start_3
    new-instance v17, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;

    invoke-direct/range {v17 .. v17}, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;-><init>()V

    .line 67
    .local v17, "update":Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->popup:Z

    .line 68
    const/16 v22, 0x2

    move/from16 v0, v22

    move-object/from16 v1, v17

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->flags:I

    .line 69
    const-wide/16 v22, 0x3e8

    div-long v22, v18, v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v17

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->inbox_date:I

    .line 70
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/GcmPushListenerService$1;->val$bundle:Landroid/os/Bundle;

    move-object/from16 v22, v0

    const-string/jumbo v23, "message"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->message:Ljava/lang/String;

    .line 71
    const-string/jumbo v22, "announcement"

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->type:Ljava/lang/String;

    .line 72
    new-instance v22, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct/range {v22 .. v22}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 73
    new-instance v20, Lorg/telegram/tgnet/TLRPC$TL_updates;

    invoke-direct/range {v20 .. v20}, Lorg/telegram/tgnet/TLRPC$TL_updates;-><init>()V

    .line 74
    .local v20, "updates":Lorg/telegram/tgnet/TLRPC$TL_updates;
    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->updates:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v22, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v23, Lorg/telegram/messenger/GcmPushListenerService$1$1;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/GcmPushListenerService$1$1;-><init>(Lorg/telegram/messenger/GcmPushListenerService$1;Lorg/telegram/tgnet/TLRPC$TL_updates;)V

    invoke-virtual/range {v22 .. v23}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 102
    .end local v11    # "key":Ljava/lang/String;
    .end local v17    # "update":Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;
    .end local v18    # "time":J
    .end local v20    # "updates":Lorg/telegram/tgnet/TLRPC$TL_updates;
    :catch_0
    move-exception v8

    .line 103
    .local v8, "e":Ljava/lang/Exception;
    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 57
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v11    # "key":Ljava/lang/String;
    .restart local v13    # "obj":Ljava/lang/Object;
    :cond_3
    :try_start_4
    instance-of v0, v13, Ljava/lang/Long;

    move/from16 v22, v0

    if-eqz v22, :cond_4

    .line 58
    check-cast v13, Ljava/lang/Long;

    .end local v13    # "obj":Ljava/lang/Object;
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .restart local v18    # "time":J
    goto/16 :goto_2

    .line 60
    .end local v18    # "time":J
    .restart local v13    # "obj":Ljava/lang/Object;
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-wide v18

    .restart local v18    # "time":J
    goto/16 :goto_2

    .line 62
    .end local v13    # "obj":Ljava/lang/Object;
    .end local v18    # "time":J
    :catch_1
    move-exception v9

    .line 63
    .local v9, "ignore":Ljava/lang/Exception;
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .restart local v18    # "time":J
    goto/16 :goto_2

    .line 81
    .end local v9    # "ignore":Ljava/lang/Exception;
    .end local v18    # "time":J
    :cond_5
    sget v22, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v23, 0x18

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_1

    sget-boolean v22, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePaused:Z

    if-eqz v22, :cond_1

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/GcmPushListenerService$1;->val$bundle:Landroid/os/Bundle;

    move-object/from16 v22, v0

    const-string/jumbo v23, "badge"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    .line 83
    .local v21, "value":Ljava/lang/Object;
    if-nez v21, :cond_1

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/GcmPushListenerService$1;->val$bundle:Landroid/os/Bundle;

    move-object/from16 v22, v0

    const-string/jumbo v23, "google.sent_time"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 86
    .restart local v13    # "obj":Ljava/lang/Object;
    instance-of v0, v13, Ljava/lang/String;

    move/from16 v22, v0

    if-eqz v22, :cond_7

    .line 87
    check-cast v13, Ljava/lang/String;

    .end local v13    # "obj":Ljava/lang/Object;
    invoke-static {v13}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 93
    .restart local v18    # "time":J
    :goto_3
    const-wide/16 v22, -0x1

    cmp-long v22, v18, v22

    if-eqz v22, :cond_6

    sget-wide v22, Lorg/telegram/messenger/UserConfig;->lastAppPauseTime:J

    cmp-long v22, v22, v18

    if-gez v22, :cond_1

    .line 94
    :cond_6
    sget-object v22, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v23, "connectivity"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 95
    .local v5, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v12

    .line 96
    .local v12, "netInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getRestrictBackgroundStatus()I

    move-result v22

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getType()I

    move-result v22

    if-nez v22, :cond_1

    .line 97
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lorg/telegram/messenger/NotificationsController;->showSingleBackgroundNotification()V

    goto/16 :goto_1

    .line 88
    .end local v5    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v12    # "netInfo":Landroid/net/NetworkInfo;
    .end local v18    # "time":J
    .restart local v13    # "obj":Ljava/lang/Object;
    :cond_7
    instance-of v0, v13, Ljava/lang/Long;

    move/from16 v22, v0

    if-eqz v22, :cond_8

    .line 89
    check-cast v13, Ljava/lang/Long;

    .end local v13    # "obj":Ljava/lang/Object;
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result-wide v18

    .restart local v18    # "time":J
    goto :goto_3

    .line 91
    .end local v18    # "time":J
    .restart local v13    # "obj":Ljava/lang/Object;
    :cond_8
    const-wide/16 v18, -0x1

    .restart local v18    # "time":J
    goto :goto_3
.end method
