.class Lorg/telegram/messenger/support/customtabs/PostMessageService$1;
.super Lorg/telegram/messenger/support/customtabs/IPostMessageService$Stub;
.source "PostMessageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/customtabs/PostMessageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/support/customtabs/PostMessageService;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/customtabs/PostMessageService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/support/customtabs/PostMessageService;

    .prologue
    .line 21
    iput-object p1, p0, Lorg/telegram/messenger/support/customtabs/PostMessageService$1;->this$0:Lorg/telegram/messenger/support/customtabs/PostMessageService;

    invoke-direct {p0}, Lorg/telegram/messenger/support/customtabs/IPostMessageService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageChannelReady(Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "callback"    # Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-interface {p1, p2}, Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;->onMessageChannelReady(Landroid/os/Bundle;)V

    .line 27
    return-void
.end method

.method public onPostMessage(Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "callback"    # Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-interface {p1, p2, p3}, Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;->onPostMessage(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 33
    return-void
.end method
