.class Lorg/telegram/messenger/GcmInstanceIDListenerService$1;
.super Ljava/lang/Object;
.source "GcmInstanceIDListenerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/GcmInstanceIDListenerService;->onTokenRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/GcmInstanceIDListenerService;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/GcmInstanceIDListenerService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/GcmInstanceIDListenerService;

    .prologue
    .line 19
    iput-object p1, p0, Lorg/telegram/messenger/GcmInstanceIDListenerService$1;->this$0:Lorg/telegram/messenger/GcmInstanceIDListenerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 22
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->postInitApplication()V

    .line 23
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v2, Lorg/telegram/messenger/GcmRegistrationIntentService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lorg/telegram/messenger/GcmInstanceIDListenerService$1;->this$0:Lorg/telegram/messenger/GcmInstanceIDListenerService;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/GcmInstanceIDListenerService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 25
    return-void
.end method
