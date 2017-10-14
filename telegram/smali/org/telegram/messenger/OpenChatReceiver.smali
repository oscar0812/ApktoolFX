.class public Lorg/telegram/messenger/OpenChatReceiver;
.super Landroid/app/Activity;
.source "OpenChatReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lorg/telegram/messenger/OpenChatReceiver;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 23
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 24
    invoke-virtual {p0}, Lorg/telegram/messenger/OpenChatReceiver;->finish()V

    .line 26
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.tmessages.openchat"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 27
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/OpenChatReceiver;->finish()V

    .line 35
    :goto_0
    return-void

    .line 30
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/telegram/ui/LaunchActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    .local v1, "intent2":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 33
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/OpenChatReceiver;->startActivity(Landroid/content/Intent;)V

    .line 34
    invoke-virtual {p0}, Lorg/telegram/messenger/OpenChatReceiver;->finish()V

    goto :goto_0
.end method
