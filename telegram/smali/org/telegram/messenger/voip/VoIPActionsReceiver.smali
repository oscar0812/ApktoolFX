.class public Lorg/telegram/messenger/voip/VoIPActionsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VoIPActionsReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 14
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPBaseService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPBaseService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPBaseService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPBaseService;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/voip/VoIPBaseService;->handleNotificationAction(Landroid/content/Intent;)V

    .line 16
    :cond_0
    return-void
.end method
