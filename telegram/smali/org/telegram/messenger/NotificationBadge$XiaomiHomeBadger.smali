.class public Lorg/telegram/messenger/NotificationBadge$XiaomiHomeBadger;
.super Ljava/lang/Object;
.source "NotificationBadge.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationBadge$Badger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/NotificationBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XiaomiHomeBadger"
.end annotation


# static fields
.field public static final EXTRA_UPDATE_APP_COMPONENT_NAME:Ljava/lang/String; = "android.intent.extra.update_application_component_name"

.field public static final EXTRA_UPDATE_APP_MSG_TEXT:Ljava/lang/String; = "android.intent.extra.update_application_message_text"

.field public static final INTENT_ACTION:Ljava/lang/String; = "android.intent.action.APPLICATION_MESSAGE_UPDATE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeBadge(I)V
    .locals 8
    .param p1, "badgeCount"    # I

    .prologue
    .line 566
    :try_start_0
    const-string/jumbo v5, "android.app.MiuiNotification"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 567
    .local v4, "miuiNotificationClass":Ljava/lang/Class;
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 568
    .local v3, "miuiNotification":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string/jumbo v6, "messageCount"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 569
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 570
    if-nez p1, :cond_1

    const-string/jumbo v5, ""

    :goto_0
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 584
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "miuiNotification":Ljava/lang/Object;
    .end local v4    # "miuiNotificationClass":Ljava/lang/Class;
    :cond_0
    :goto_1
    return-void

    .line 570
    .restart local v1    # "field":Ljava/lang/reflect/Field;
    .restart local v3    # "miuiNotification":Ljava/lang/Object;
    .restart local v4    # "miuiNotificationClass":Ljava/lang/Class;
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 571
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "miuiNotification":Ljava/lang/Object;
    .end local v4    # "miuiNotificationClass":Ljava/lang/Class;
    :catch_0
    move-exception v0

    .line 572
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.APPLICATION_MESSAGE_UPDATE"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 573
    .local v2, "localIntent":Landroid/content/Intent;
    const-string/jumbo v5, "android.intent.extra.update_application_component_name"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/NotificationBadge;->access$000()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lorg/telegram/messenger/NotificationBadge;->access$000()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 574
    const-string/jumbo v6, "android.intent.extra.update_application_message_text"

    if-nez p1, :cond_2

    const-string/jumbo v5, ""

    :goto_2
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 575
    invoke-static {v2}, Lorg/telegram/messenger/NotificationBadge;->access$100(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 576
    new-instance v5, Lorg/telegram/messenger/NotificationBadge$XiaomiHomeBadger$1;

    invoke-direct {v5, p0, v2}, Lorg/telegram/messenger/NotificationBadge$XiaomiHomeBadger$1;-><init>(Lorg/telegram/messenger/NotificationBadge$XiaomiHomeBadger;Landroid/content/Intent;)V

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 574
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_2
.end method

.method public getSupportLaunchers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 588
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "com.miui.miuilite"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "com.miui.home"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "com.miui.miuihome"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "com.miui.miuihome2"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "com.miui.mihome"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "com.miui.mihome2"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
