.class public Lorg/telegram/messenger/AuthenticatorService;
.super Landroid/app/Service;
.source "AuthenticatorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/AuthenticatorService$Authenticator;
    }
.end annotation


# static fields
.field private static authenticator:Lorg/telegram/messenger/AuthenticatorService$Authenticator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/AuthenticatorService;->authenticator:Lorg/telegram/messenger/AuthenticatorService$Authenticator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAuthenticator()Lorg/telegram/messenger/AuthenticatorService$Authenticator;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lorg/telegram/messenger/AuthenticatorService;->authenticator:Lorg/telegram/messenger/AuthenticatorService$Authenticator;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lorg/telegram/messenger/AuthenticatorService$Authenticator;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/AuthenticatorService$Authenticator;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/telegram/messenger/AuthenticatorService;->authenticator:Lorg/telegram/messenger/AuthenticatorService$Authenticator;

    .line 85
    :cond_0
    sget-object v0, Lorg/telegram/messenger/AuthenticatorService;->authenticator:Lorg/telegram/messenger/AuthenticatorService$Authenticator;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.accounts.AccountAuthenticator"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lorg/telegram/messenger/AuthenticatorService;->getAuthenticator()Lorg/telegram/messenger/AuthenticatorService$Authenticator;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AuthenticatorService$Authenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 94
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
