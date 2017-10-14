.class public Lorg/telegram/messenger/GcmInstanceIDListenerService;
.super Lcom/google/android/gms/iid/InstanceIDListenerService;
.source "GcmInstanceIDListenerService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/iid/InstanceIDListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onTokenRefresh()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lorg/telegram/messenger/GcmInstanceIDListenerService$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/GcmInstanceIDListenerService$1;-><init>(Lorg/telegram/messenger/GcmInstanceIDListenerService;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 27
    return-void
.end method
