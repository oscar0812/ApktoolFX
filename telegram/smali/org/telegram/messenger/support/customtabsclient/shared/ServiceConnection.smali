.class public Lorg/telegram/messenger/support/customtabsclient/shared/ServiceConnection;
.super Lorg/telegram/messenger/support/customtabs/CustomTabsServiceConnection;
.source "ServiceConnection.java"


# instance fields
.field private mConnectionCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/telegram/messenger/support/customtabsclient/shared/ServiceConnectionCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/support/customtabsclient/shared/ServiceConnectionCallback;)V
    .locals 1
    .param p1, "connectionCallback"    # Lorg/telegram/messenger/support/customtabsclient/shared/ServiceConnectionCallback;

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/telegram/messenger/support/customtabs/CustomTabsServiceConnection;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/telegram/messenger/support/customtabsclient/shared/ServiceConnection;->mConnectionCallback:Ljava/lang/ref/WeakReference;

    .line 34
    return-void
.end method


# virtual methods
.method public onCustomTabsServiceConnected(Landroid/content/ComponentName;Lorg/telegram/messenger/support/customtabs/CustomTabsClient;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "client"    # Lorg/telegram/messenger/support/customtabs/CustomTabsClient;

    .prologue
    .line 38
    iget-object v1, p0, Lorg/telegram/messenger/support/customtabsclient/shared/ServiceConnection;->mConnectionCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/customtabsclient/shared/ServiceConnectionCallback;

    .line 39
    .local v0, "connectionCallback":Lorg/telegram/messenger/support/customtabsclient/shared/ServiceConnectionCallback;
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Lorg/telegram/messenger/support/customtabsclient/shared/ServiceConnectionCallback;->onServiceConnected(Lorg/telegram/messenger/support/customtabs/CustomTabsClient;)V

    .line 40
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 44
    iget-object v1, p0, Lorg/telegram/messenger/support/customtabsclient/shared/ServiceConnection;->mConnectionCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/customtabsclient/shared/ServiceConnectionCallback;

    .line 45
    .local v0, "connectionCallback":Lorg/telegram/messenger/support/customtabsclient/shared/ServiceConnectionCallback;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/telegram/messenger/support/customtabsclient/shared/ServiceConnectionCallback;->onServiceDisconnected()V

    .line 46
    :cond_0
    return-void
.end method
