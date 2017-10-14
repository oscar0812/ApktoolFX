.class Lorg/telegram/messenger/support/customtabs/CustomTabsService$1;
.super Lorg/telegram/messenger/support/customtabs/ICustomTabsService$Stub;
.source "CustomTabsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/customtabs/CustomTabsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/support/customtabs/CustomTabsService;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/customtabs/CustomTabsService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/support/customtabs/CustomTabsService;

    .prologue
    .line 83
    iput-object p1, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsService$1;->this$0:Lorg/telegram/messenger/support/customtabs/CustomTabsService;

    invoke-direct {p0}, Lorg/telegram/messenger/support/customtabs/ICustomTabsService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public extraCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "commandName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsService$1;->this$0:Lorg/telegram/messenger/support/customtabs/CustomTabsService;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/support/customtabs/CustomTabsService;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public mayLaunchUrl(Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .locals 2
    .param p1, "callback"    # Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 113
    .local p4, "otherLikelyBundles":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsService$1;->this$0:Lorg/telegram/messenger/support/customtabs/CustomTabsService;

    new-instance v1, Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;

    invoke-direct {v1, p1}, Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;-><init>(Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;)V

    invoke-virtual {v0, v1, p2, p3, p4}, Lorg/telegram/messenger/support/customtabs/CustomTabsService;->mayLaunchUrl(Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public newSession(Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;)Z
    .locals 7
    .param p1, "callback"    # Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;

    .prologue
    const/4 v3, 0x0

    .line 92
    new-instance v2, Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;

    invoke-direct {v2, p1}, Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;-><init>(Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;)V

    .line 94
    .local v2, "sessionToken":Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;
    :try_start_0
    new-instance v0, Lorg/telegram/messenger/support/customtabs/CustomTabsService$1$1;

    invoke-direct {v0, p0, v2}, Lorg/telegram/messenger/support/customtabs/CustomTabsService$1$1;-><init>(Lorg/telegram/messenger/support/customtabs/CustomTabsService$1;Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;)V

    .line 100
    .local v0, "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    iget-object v4, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsService$1;->this$0:Lorg/telegram/messenger/support/customtabs/CustomTabsService;

    invoke-static {v4}, Lorg/telegram/messenger/support/customtabs/CustomTabsService;->access$000(Lorg/telegram/messenger/support/customtabs/CustomTabsService;)Ljava/util/Map;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :try_start_1
    invoke-interface {p1}, Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    const/4 v6, 0x0

    invoke-interface {v4, v0, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 102
    iget-object v4, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsService$1;->this$0:Lorg/telegram/messenger/support/customtabs/CustomTabsService;

    invoke-static {v4}, Lorg/telegram/messenger/support/customtabs/CustomTabsService;->access$000(Lorg/telegram/messenger/support/customtabs/CustomTabsService;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {p1}, Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {v4, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    :try_start_2
    iget-object v4, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsService$1;->this$0:Lorg/telegram/messenger/support/customtabs/CustomTabsService;

    invoke-virtual {v4, v2}, Lorg/telegram/messenger/support/customtabs/CustomTabsService;->newSession(Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    .line 106
    .end local v0    # "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    :goto_0
    return v3

    .line 103
    .restart local v0    # "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 105
    .end local v0    # "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public postMessage(Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 2
    .param p1, "callback"    # Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 137
    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsService$1;->this$0:Lorg/telegram/messenger/support/customtabs/CustomTabsService;

    new-instance v1, Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;

    invoke-direct {v1, p1}, Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;-><init>(Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;)V

    invoke-virtual {v0, v1, p2, p3}, Lorg/telegram/messenger/support/customtabs/CustomTabsService;->postMessage(Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public requestPostMessageChannel(Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;Landroid/net/Uri;)Z
    .locals 2
    .param p1, "callback"    # Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;
    .param p2, "postMessageOrigin"    # Landroid/net/Uri;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsService$1;->this$0:Lorg/telegram/messenger/support/customtabs/CustomTabsService;

    new-instance v1, Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;

    invoke-direct {v1, p1}, Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;-><init>(Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;)V

    invoke-virtual {v0, v1, p2}, Lorg/telegram/messenger/support/customtabs/CustomTabsService;->requestPostMessageChannel(Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public updateVisuals(Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "callback"    # Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 124
    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsService$1;->this$0:Lorg/telegram/messenger/support/customtabs/CustomTabsService;

    new-instance v1, Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;

    invoke-direct {v1, p1}, Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;-><init>(Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;)V

    invoke-virtual {v0, v1, p2}, Lorg/telegram/messenger/support/customtabs/CustomTabsService;->updateVisuals(Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public warmup(J)Z
    .locals 1
    .param p1, "flags"    # J

    .prologue
    .line 87
    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsService$1;->this$0:Lorg/telegram/messenger/support/customtabs/CustomTabsService;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/support/customtabs/CustomTabsService;->warmup(J)Z

    move-result v0

    return v0
.end method
