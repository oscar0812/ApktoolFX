.class public abstract Lorg/telegram/messenger/support/customtabs/PostMessageServiceConnection;
.super Ljava/lang/Object;
.source "PostMessageServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mService:Lorg/telegram/messenger/support/customtabs/IPostMessageService;

.field private final mSessionBinder:Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;)V
    .locals 1
    .param p1, "session"    # Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/customtabs/PostMessageServiceConnection;->mLock:Ljava/lang/Object;

    .line 29
    invoke-virtual {p1}, Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;->getCallbackBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/support/customtabs/PostMessageServiceConnection;->mSessionBinder:Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;

    .line 30
    return-void
.end method


# virtual methods
.method public bindSessionToPostMessageService(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 42
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lorg/telegram/messenger/support/customtabs/PostMessageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method

.method public final notifyMessageChannelReady(Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 77
    iget-object v2, p0, Lorg/telegram/messenger/support/customtabs/PostMessageServiceConnection;->mService:Lorg/telegram/messenger/support/customtabs/IPostMessageService;

    if-nez v2, :cond_0

    .line 85
    :goto_0
    return v1

    .line 78
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/support/customtabs/PostMessageServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 80
    :try_start_0
    iget-object v3, p0, Lorg/telegram/messenger/support/customtabs/PostMessageServiceConnection;->mService:Lorg/telegram/messenger/support/customtabs/IPostMessageService;

    iget-object v4, p0, Lorg/telegram/messenger/support/customtabs/PostMessageServiceConnection;->mSessionBinder:Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;

    invoke-interface {v3, v4, p1}, Lorg/telegram/messenger/support/customtabs/IPostMessageService;->onMessageChannelReady(Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :try_start_1
    monitor-exit v2

    .line 85
    const/4 v1, 0x1

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Landroid/os/RemoteException;
    monitor-exit v2

    goto :goto_0

    .line 84
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onPostMessageServiceConnected()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public onPostMessageServiceDisconnected()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 56
    invoke-static {p2}, Lorg/telegram/messenger/support/customtabs/IPostMessageService$Stub;->asInterface(Landroid/os/IBinder;)Lorg/telegram/messenger/support/customtabs/IPostMessageService;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/support/customtabs/PostMessageServiceConnection;->mService:Lorg/telegram/messenger/support/customtabs/IPostMessageService;

    .line 57
    invoke-virtual {p0}, Lorg/telegram/messenger/support/customtabs/PostMessageServiceConnection;->onPostMessageServiceConnected()V

    .line 58
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/support/customtabs/PostMessageServiceConnection;->mService:Lorg/telegram/messenger/support/customtabs/IPostMessageService;

    .line 63
    invoke-virtual {p0}, Lorg/telegram/messenger/support/customtabs/PostMessageServiceConnection;->onPostMessageServiceDisconnected()V

    .line 64
    return-void
.end method

.method public final postMessage(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 98
    iget-object v2, p0, Lorg/telegram/messenger/support/customtabs/PostMessageServiceConnection;->mService:Lorg/telegram/messenger/support/customtabs/IPostMessageService;

    if-nez v2, :cond_0

    .line 106
    :goto_0
    return v1

    .line 99
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/support/customtabs/PostMessageServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 101
    :try_start_0
    iget-object v3, p0, Lorg/telegram/messenger/support/customtabs/PostMessageServiceConnection;->mService:Lorg/telegram/messenger/support/customtabs/IPostMessageService;

    iget-object v4, p0, Lorg/telegram/messenger/support/customtabs/PostMessageServiceConnection;->mSessionBinder:Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;

    invoke-interface {v3, v4, p1, p2}, Lorg/telegram/messenger/support/customtabs/IPostMessageService;->onPostMessage(Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :try_start_1
    monitor-exit v2

    .line 106
    const/4 v1, 0x1

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Landroid/os/RemoteException;
    monitor-exit v2

    goto :goto_0

    .line 105
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public unbindFromContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 52
    return-void
.end method
