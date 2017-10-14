.class Lorg/telegram/messenger/NotificationBadge$ApexHomeBadger$1;
.super Ljava/lang/Object;
.source "NotificationBadge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/NotificationBadge$ApexHomeBadger;->executeBadge(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/NotificationBadge$ApexHomeBadger;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/NotificationBadge$ApexHomeBadger;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/NotificationBadge$ApexHomeBadger;

    .prologue
    .line 95
    iput-object p1, p0, Lorg/telegram/messenger/NotificationBadge$ApexHomeBadger$1;->this$0:Lorg/telegram/messenger/NotificationBadge$ApexHomeBadger;

    iput-object p2, p0, Lorg/telegram/messenger/NotificationBadge$ApexHomeBadger$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 98
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/messenger/NotificationBadge$ApexHomeBadger$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 99
    return-void
.end method
