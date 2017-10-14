.class public Lorg/telegram/messenger/GoogleVoiceClientService;
.super Lcom/google/android/search/verification/client/SearchActionVerificationClientService;
.source "GoogleVoiceClientService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/google/android/search/verification/client/SearchActionVerificationClientService;-><init>()V

    return-void
.end method


# virtual methods
.method public performAction(Landroid/content/Intent;ZLandroid/os/Bundle;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "isVerified"    # Z
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    .line 22
    if-eqz p2, :cond_0

    .line 23
    new-instance v0, Lorg/telegram/messenger/GoogleVoiceClientService$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/GoogleVoiceClientService$1;-><init>(Lorg/telegram/messenger/GoogleVoiceClientService;Landroid/content/Intent;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 50
    const/4 v0, 0x1

    .line 52
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
