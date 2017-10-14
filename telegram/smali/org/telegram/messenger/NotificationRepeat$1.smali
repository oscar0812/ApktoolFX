.class Lorg/telegram/messenger/NotificationRepeat$1;
.super Ljava/lang/Object;
.source "NotificationRepeat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/NotificationRepeat;->onHandleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/NotificationRepeat;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/NotificationRepeat;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/NotificationRepeat;

    .prologue
    .line 22
    iput-object p1, p0, Lorg/telegram/messenger/NotificationRepeat$1;->this$0:Lorg/telegram/messenger/NotificationRepeat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/NotificationsController;->repeatNotificationMaybe()V

    .line 26
    return-void
.end method
