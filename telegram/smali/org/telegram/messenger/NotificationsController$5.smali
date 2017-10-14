.class Lorg/telegram/messenger/NotificationsController$5;
.super Ljava/lang/Object;
.source "NotificationsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/NotificationsController;->showSingleBackgroundNotification()V
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
    .line 219
    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController$5;->this$0:Lorg/telegram/messenger/NotificationsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 223
    :try_start_0
    sget-boolean v20, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePaused:Z

    if-nez v20, :cond_0

    .line 336
    :goto_0
    return-void

    .line 226
    :cond_0
    sget-object v20, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v21, "Notifications"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 228
    .local v16, "preferences":Landroid/content/SharedPreferences;
    const/4 v15, 0x0

    .line 229
    .local v15, "notifyDisabled":Z
    const/4 v14, 0x0

    .line 230
    .local v14, "needVibrate":I
    const/4 v4, 0x0

    .line 231
    .local v4, "choosenSoundPath":Ljava/lang/String;
    const v10, -0xffff01

    .line 232
    .local v10, "ledColor":I
    const/16 v17, 0x0

    .line 235
    .local v17, "priority":I
    const-string/jumbo v20, "EnableAll"

    const/16 v21, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    if-nez v20, :cond_1

    .line 236
    const/4 v15, 0x1

    .line 239
    :cond_1
    sget-object v20, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 240
    .local v6, "defaultPath":Ljava/lang/String;
    if-nez v15, :cond_8

    .line 241
    const/16 v19, 0x0

    .line 242
    .local v19, "vibrateOverride":I
    const/4 v4, 0x0

    .line 243
    const/16 v18, 0x0

    .line 245
    .local v18, "vibrateOnlyIfSilent":Z
    if-eqz v4, :cond_f

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_f

    .line 246
    const/4 v4, 0x0

    .line 250
    :cond_2
    :goto_1
    const-string/jumbo v20, "vibrate_messages"

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 251
    const-string/jumbo v20, "priority_group"

    const/16 v21, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 252
    const-string/jumbo v20, "MessagesLed"

    const v21, -0xffff01

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 254
    const/16 v20, 0x4

    move/from16 v0, v20

    if-ne v14, v0, :cond_3

    .line 255
    const/16 v18, 0x1

    .line 256
    const/4 v14, 0x0

    .line 258
    :cond_3
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v14, v0, :cond_4

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    :cond_4
    const/16 v20, 0x2

    move/from16 v0, v20

    if-eq v14, v0, :cond_5

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    :cond_5
    if-eqz v19, :cond_7

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    .line 259
    :cond_6
    move/from16 v14, v19

    .line 261
    :cond_7
    if-eqz v18, :cond_8

    const/16 v20, 0x2

    move/from16 v0, v20

    if-eq v14, v0, :cond_8

    .line 263
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$5;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/media/AudioManager;->getRingerMode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v12

    .line 264
    .local v12, "mode":I
    if-eqz v12, :cond_8

    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v12, v0, :cond_8

    .line 265
    const/4 v14, 0x2

    .line 273
    .end local v12    # "mode":I
    .end local v18    # "vibrateOnlyIfSilent":Z
    .end local v19    # "vibrateOverride":I
    :cond_8
    :goto_2
    :try_start_2
    new-instance v8, Landroid/content/Intent;

    sget-object v20, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v21, Lorg/telegram/ui/LaunchActivity;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 274
    .local v8, "intent":Landroid/content/Intent;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "com.tmessages.openchat"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v20

    const v21, 0x7fffffff

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    const v20, 0x8000

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 277
    sget-object v20, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/16 v21, 0x0

    const/high16 v22, 0x40000000    # 2.0f

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 279
    .local v5, "contentIntent":Landroid/app/PendingIntent;
    const-string/jumbo v20, "AppName"

    const v21, 0x7f07007a

    invoke-static/range {v20 .. v21}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 281
    .local v13, "name":Ljava/lang/String;
    new-instance v20, Landroid/support/v4/app/NotificationCompat$Builder;

    sget-object v21, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct/range {v20 .. v21}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 282
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v20

    const v21, 0x7f020150

    .line 283
    invoke-virtual/range {v20 .. v21}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v20

    const/16 v21, 0x1

    .line 284
    invoke-virtual/range {v20 .. v21}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$5;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v21, v0

    .line 285
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/NotificationsController;->access$400(Lorg/telegram/messenger/NotificationsController;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v20

    .line 286
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v20

    const-string/jumbo v21, "messages"

    .line 287
    invoke-virtual/range {v20 .. v21}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v20

    const/16 v21, 0x1

    .line 288
    invoke-virtual/range {v20 .. v21}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v20

    const v21, -0xd35a20

    .line 289
    invoke-virtual/range {v20 .. v21}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v11

    .line 291
    .local v11, "mBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    const-string/jumbo v20, "msg"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 293
    const-string/jumbo v20, "YouHaveNewMessage"

    const v21, 0x7f070677

    invoke-static/range {v20 .. v21}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 294
    .local v9, "lastMessage":Ljava/lang/String;
    invoke-virtual {v11, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 295
    new-instance v20, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct/range {v20 .. v20}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 297
    if-nez v17, :cond_10

    .line 298
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 305
    :cond_9
    :goto_3
    if-nez v15, :cond_17

    .line 306
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x64

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_a

    .line 307
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v21, 0x0

    const/16 v22, 0x64

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0xa

    const/16 v23, 0x20

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "..."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 309
    :cond_a
    invoke-virtual {v11, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 310
    if-eqz v4, :cond_b

    const-string/jumbo v20, "NoSound"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_b

    .line 311
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12

    .line 312
    sget-object v20, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    const/16 v21, 0x5

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 317
    :cond_b
    :goto_4
    if-eqz v10, :cond_c

    .line 318
    const/16 v20, 0x3e8

    const/16 v21, 0x3e8

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v10, v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 320
    :cond_c
    const/16 v20, 0x2

    move/from16 v0, v20

    if-eq v14, v0, :cond_d

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/MediaController;->isRecordingAudio()Z

    move-result v20

    if-eqz v20, :cond_13

    .line 321
    :cond_d
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [J

    move-object/from16 v20, v0

    fill-array-data v20, :array_0

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 332
    :cond_e
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$5;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/NotificationsController;->access$1400(Lorg/telegram/messenger/NotificationsController;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual {v11}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/support/v4/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 333
    .end local v4    # "choosenSoundPath":Ljava/lang/String;
    .end local v5    # "contentIntent":Landroid/app/PendingIntent;
    .end local v6    # "defaultPath":Ljava/lang/String;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "lastMessage":Ljava/lang/String;
    .end local v10    # "ledColor":I
    .end local v11    # "mBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v13    # "name":Ljava/lang/String;
    .end local v14    # "needVibrate":I
    .end local v15    # "notifyDisabled":Z
    .end local v16    # "preferences":Landroid/content/SharedPreferences;
    .end local v17    # "priority":I
    :catch_0
    move-exception v7

    .line 334
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 247
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v4    # "choosenSoundPath":Ljava/lang/String;
    .restart local v6    # "defaultPath":Ljava/lang/String;
    .restart local v10    # "ledColor":I
    .restart local v14    # "needVibrate":I
    .restart local v15    # "notifyDisabled":Z
    .restart local v16    # "preferences":Landroid/content/SharedPreferences;
    .restart local v17    # "priority":I
    .restart local v18    # "vibrateOnlyIfSilent":Z
    .restart local v19    # "vibrateOverride":I
    :cond_f
    if-nez v4, :cond_2

    .line 248
    :try_start_3
    const-string/jumbo v20, "GlobalSoundPath"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 267
    :catch_1
    move-exception v7

    .line 268
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 299
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v18    # "vibrateOnlyIfSilent":Z
    .end local v19    # "vibrateOverride":I
    .restart local v5    # "contentIntent":Landroid/app/PendingIntent;
    .restart local v8    # "intent":Landroid/content/Intent;
    .restart local v9    # "lastMessage":Ljava/lang/String;
    .restart local v11    # "mBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    .restart local v13    # "name":Ljava/lang/String;
    :cond_10
    const/16 v20, 0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_11

    .line 300
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_3

    .line 301
    :cond_11
    const/16 v20, 0x2

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 302
    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_3

    .line 314
    :cond_12
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    const/16 v21, 0x5

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_4

    .line 322
    :cond_13
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v14, v0, :cond_14

    .line 323
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [J

    move-object/from16 v20, v0

    fill-array-data v20, :array_1

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_5

    .line 324
    :cond_14
    if-eqz v14, :cond_15

    const/16 v20, 0x4

    move/from16 v0, v20

    if-ne v14, v0, :cond_16

    .line 325
    :cond_15
    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_5

    .line 326
    :cond_16
    const/16 v20, 0x3

    move/from16 v0, v20

    if-ne v14, v0, :cond_e

    .line 327
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [J

    move-object/from16 v20, v0

    fill-array-data v20, :array_2

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_5

    .line 330
    :cond_17
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [J

    move-object/from16 v20, v0

    fill-array-data v20, :array_3

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_5

    .line 321
    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data

    .line 323
    :array_1
    .array-data 8
        0x0
        0x64
        0x0
        0x64
    .end array-data

    .line 327
    :array_2
    .array-data 8
        0x0
        0x3e8
    .end array-data

    .line 330
    :array_3
    .array-data 8
        0x0
        0x0
    .end array-data
.end method
