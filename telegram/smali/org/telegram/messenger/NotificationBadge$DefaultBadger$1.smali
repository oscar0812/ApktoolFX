.class Lorg/telegram/messenger/NotificationBadge$DefaultBadger$1;
.super Ljava/lang/Object;
.source "NotificationBadge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/NotificationBadge$DefaultBadger;->executeBadge(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/NotificationBadge$DefaultBadger;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/NotificationBadge$DefaultBadger;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/NotificationBadge$DefaultBadger;

    .prologue
    .line 152
    iput-object p1, p0, Lorg/telegram/messenger/NotificationBadge$DefaultBadger$1;->this$0:Lorg/telegram/messenger/NotificationBadge$DefaultBadger;

    iput-object p2, p0, Lorg/telegram/messenger/NotificationBadge$DefaultBadger$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 156
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/messenger/NotificationBadge$DefaultBadger$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    goto :goto_0
.end method
