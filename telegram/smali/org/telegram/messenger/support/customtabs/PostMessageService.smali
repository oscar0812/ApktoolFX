.class public Lorg/telegram/messenger/support/customtabs/PostMessageService;
.super Landroid/app/Service;
.source "PostMessageService.java"


# instance fields
.field private mBinder:Lorg/telegram/messenger/support/customtabs/IPostMessageService$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 21
    new-instance v0, Lorg/telegram/messenger/support/customtabs/PostMessageService$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/support/customtabs/PostMessageService$1;-><init>(Lorg/telegram/messenger/support/customtabs/PostMessageService;)V

    iput-object v0, p0, Lorg/telegram/messenger/support/customtabs/PostMessageService;->mBinder:Lorg/telegram/messenger/support/customtabs/IPostMessageService$Stub;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/PostMessageService;->mBinder:Lorg/telegram/messenger/support/customtabs/IPostMessageService$Stub;

    return-object v0
.end method
