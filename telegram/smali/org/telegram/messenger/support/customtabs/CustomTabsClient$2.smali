.class Lorg/telegram/messenger/support/customtabs/CustomTabsClient$2;
.super Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback$Stub;
.source "CustomTabsClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/support/customtabs/CustomTabsClient;->newSession(Lorg/telegram/messenger/support/customtabs/CustomTabsCallback;)Lorg/telegram/messenger/support/customtabs/CustomTabsSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lorg/telegram/messenger/support/customtabs/CustomTabsClient;

.field final synthetic val$callback:Lorg/telegram/messenger/support/customtabs/CustomTabsCallback;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/customtabs/CustomTabsClient;Lorg/telegram/messenger/support/customtabs/CustomTabsCallback;)V
    .locals 2
    .param p1, "this$0"    # Lorg/telegram/messenger/support/customtabs/CustomTabsClient;

    .prologue
    .line 179
    iput-object p1, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsClient$2;->this$0:Lorg/telegram/messenger/support/customtabs/CustomTabsClient;

    iput-object p2, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsClient$2;->val$callback:Lorg/telegram/messenger/support/customtabs/CustomTabsCallback;

    invoke-direct {p0}, Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback$Stub;-><init>()V

    .line 180
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsClient$2;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public extraCallback(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "callbackName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsClient$2;->val$callback:Lorg/telegram/messenger/support/customtabs/CustomTabsCallback;

    if-nez v0, :cond_0

    .line 203
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsClient$2;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/support/customtabs/CustomTabsClient$2$2;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/support/customtabs/CustomTabsClient$2$2;-><init>(Lorg/telegram/messenger/support/customtabs/CustomTabsClient$2;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onMessageChannelReady(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsClient$2;->val$callback:Lorg/telegram/messenger/support/customtabs/CustomTabsCallback;

    if-nez v0, :cond_0

    .line 215
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsClient$2;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/support/customtabs/CustomTabsClient$2$3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/support/customtabs/CustomTabsClient$2$3;-><init>(Lorg/telegram/messenger/support/customtabs/CustomTabsClient$2;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onNavigationEvent(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "navigationEvent"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 184
    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsClient$2;->val$callback:Lorg/telegram/messenger/support/customtabs/CustomTabsCallback;

    if-nez v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsClient$2;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/support/customtabs/CustomTabsClient$2$1;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/support/customtabs/CustomTabsClient$2$1;-><init>(Lorg/telegram/messenger/support/customtabs/CustomTabsClient$2;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onPostMessage(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 220
    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsClient$2;->val$callback:Lorg/telegram/messenger/support/customtabs/CustomTabsCallback;

    if-nez v0, :cond_0

    .line 227
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsClient$2;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/support/customtabs/CustomTabsClient$2$4;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/support/customtabs/CustomTabsClient$2$4;-><init>(Lorg/telegram/messenger/support/customtabs/CustomTabsClient$2;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
