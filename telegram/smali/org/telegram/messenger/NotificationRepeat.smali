.class public Lorg/telegram/messenger/NotificationRepeat;
.super Landroid/app/IntentService;
.source "NotificationRepeat.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    const-string/jumbo v0, "NotificationRepeat"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 22
    new-instance v0, Lorg/telegram/messenger/NotificationRepeat$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/NotificationRepeat$1;-><init>(Lorg/telegram/messenger/NotificationRepeat;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 28
    return-void
.end method
