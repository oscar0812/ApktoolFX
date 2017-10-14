.class final Lorg/telegram/ui/Components/AlertsCreator$1;
.super Ljava/lang/Object;
.source "AlertsCreator.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AlertsCreator;->createMuteAlert(Landroid/content/Context;J)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog_id:J


# direct methods
.method constructor <init>(J)V
    .locals 1

    .prologue
    .line 247
    iput-wide p1, p0, Lorg/telegram/ui/Components/AlertsCreator$1;->val$dialog_id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x3

    .line 250
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v5

    .line 251
    .local v5, "untilTime":I
    if-nez p2, :cond_2

    .line 252
    add-int/lit16 v5, v5, 0xe10

    .line 261
    :cond_0
    :goto_0
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v7, "Notifications"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 262
    .local v4, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 264
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    if-ne p2, v10, :cond_5

    .line 265
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "notify2_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lorg/telegram/ui/Components/AlertsCreator$1;->val$dialog_id:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 266
    const-wide/16 v2, 0x1

    .line 272
    .local v2, "flags":J
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v6

    iget-wide v8, p0, Lorg/telegram/ui/Components/AlertsCreator$1;->val$dialog_id:J

    invoke-virtual {v6, v8, v9}, Lorg/telegram/messenger/NotificationsController;->removeNotificationsForDialog(J)V

    .line 273
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    iget-wide v8, p0, Lorg/telegram/ui/Components/AlertsCreator$1;->val$dialog_id:J

    invoke-virtual {v6, v8, v9, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->setDialogFlags(JJ)V

    .line 274
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 275
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v8, p0, Lorg/telegram/ui/Components/AlertsCreator$1;->val$dialog_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 276
    .local v0, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v0, :cond_1

    .line 277
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;-><init>()V

    iput-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 278
    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iput v5, v6, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    .line 280
    :cond_1
    iget-wide v6, p0, Lorg/telegram/ui/Components/AlertsCreator$1;->val$dialog_id:J

    invoke-static {v6, v7}, Lorg/telegram/messenger/NotificationsController;->updateServerNotificationsSettings(J)V

    .line 281
    return-void

    .line 253
    .end local v0    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "flags":J
    .end local v4    # "preferences":Landroid/content/SharedPreferences;
    :cond_2
    const/4 v6, 0x1

    if-ne p2, v6, :cond_3

    .line 254
    add-int/lit16 v5, v5, 0x7080

    goto :goto_0

    .line 255
    :cond_3
    if-ne p2, v11, :cond_4

    .line 256
    const v6, 0x2a300

    add-int/2addr v5, v6

    goto :goto_0

    .line 257
    :cond_4
    if-ne p2, v10, :cond_0

    .line 258
    const v5, 0x7fffffff

    goto :goto_0

    .line 268
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v4    # "preferences":Landroid/content/SharedPreferences;
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "notify2_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lorg/telegram/ui/Components/AlertsCreator$1;->val$dialog_id:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 269
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "notifyuntil_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lorg/telegram/ui/Components/AlertsCreator$1;->val$dialog_id:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 270
    int-to-long v6, v5

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    const-wide/16 v8, 0x1

    or-long v2, v6, v8

    .restart local v2    # "flags":J
    goto/16 :goto_1
.end method
