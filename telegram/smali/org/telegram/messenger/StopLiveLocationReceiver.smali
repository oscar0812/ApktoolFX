.class public Lorg/telegram/messenger/StopLiveLocationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StopLiveLocationReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 19
    invoke-static {}, Lorg/telegram/messenger/LocationController;->getInstance()Lorg/telegram/messenger/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/LocationController;->removeAllLocationSharings()V

    .line 20
    return-void
.end method
