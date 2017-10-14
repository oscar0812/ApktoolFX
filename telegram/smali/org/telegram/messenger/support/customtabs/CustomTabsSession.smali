.class public final Lorg/telegram/messenger/support/customtabs/CustomTabsSession;
.super Ljava/lang/Object;
.source "CustomTabsSession.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomTabsSession"


# instance fields
.field private final mCallback:Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;

.field private final mComponentName:Landroid/content/ComponentName;

.field private final mLock:Ljava/lang/Object;

.field private final mService:Lorg/telegram/messenger/support/customtabs/ICustomTabsService;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/customtabs/ICustomTabsService;Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "service"    # Lorg/telegram/messenger/support/customtabs/ICustomTabsService;
    .param p2, "callback"    # Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;
    .param p3, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsSession;->mLock:Ljava/lang/Object;

    .line 57
    iput-object p1, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsSession;->mService:Lorg/telegram/messenger/support/customtabs/ICustomTabsService;

    .line 58
    iput-object p2, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsSession;->mCallback:Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;

    .line 59
    iput-object p3, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsSession;->mComponentName:Landroid/content/ComponentName;

    .line 60
    return-void
.end method

.method public static createDummySessionForTesting(Landroid/content/ComponentName;)Lorg/telegram/messenger/support/customtabs/CustomTabsSession;
    .locals 3
    .param p0, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 52
    new-instance v0, Lorg/telegram/messenger/support/customtabs/CustomTabsSession;

    const/4 v1, 0x0

    new-instance v2, Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken$DummyCallback;

    invoke-direct {v2}, Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken$DummyCallback;-><init>()V

    invoke-direct {v0, v1, v2, p0}, Lorg/telegram/messenger/support/customtabs/CustomTabsSession;-><init>(Lorg/telegram/messenger/support/customtabs/ICustomTabsService;Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;Landroid/content/ComponentName;)V

    return-object v0
.end method


# virtual methods
.method getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsSession;->mCallback:Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;

    invoke-interface {v0}, Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsSession;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public mayLaunchUrl(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .locals 3
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 80
    .local p3, "otherLikelyBundles":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsSession;->mService:Lorg/telegram/messenger/support/customtabs/ICustomTabsService;

    iget-object v2, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsSession;->mCallback:Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;

    invoke-interface {v1, v2, p1, p2, p3}, Lorg/telegram/messenger/support/customtabs/ICustomTabsService;->mayLaunchUrl(Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 82
    :goto_0
    return v1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public postMessage(Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 188
    iget-object v2, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsSession;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 190
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsSession;->mService:Lorg/telegram/messenger/support/customtabs/ICustomTabsService;

    iget-object v3, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsSession;->mCallback:Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;

    invoke-interface {v1, v3, p1, p2}, Lorg/telegram/messenger/support/customtabs/ICustomTabsService;->postMessage(Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;Ljava/lang/String;Landroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :try_start_1
    monitor-exit v2

    .line 192
    :goto_0
    return v1

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x2

    monitor-exit v2

    goto :goto_0

    .line 194
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public requestPostMessageChannel(Landroid/net/Uri;)Z
    .locals 3
    .param p1, "postMessageOrigin"    # Landroid/net/Uri;

    .prologue
    .line 168
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsSession;->mService:Lorg/telegram/messenger/support/customtabs/ICustomTabsService;

    iget-object v2, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsSession;->mCallback:Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;

    invoke-interface {v1, v2, p1}, Lorg/telegram/messenger/support/customtabs/ICustomTabsService;->requestPostMessageChannel(Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;Landroid/net/Uri;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 171
    :goto_0
    return v1

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setActionButton(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 5
    .param p1, "icon"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "description"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 96
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 97
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "android.support.customtabs.customaction.ICON"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 98
    const-string/jumbo v3, "android.support.customtabs.customaction.DESCRIPTION"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 101
    .local v2, "metaBundle":Landroid/os/Bundle;
    const-string/jumbo v3, "android.support.customtabs.extra.ACTION_BUTTON_BUNDLE"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 103
    :try_start_0
    iget-object v3, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsSession;->mService:Lorg/telegram/messenger/support/customtabs/ICustomTabsService;

    iget-object v4, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsSession;->mCallback:Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;

    invoke-interface {v3, v4, v2}, Lorg/telegram/messenger/support/customtabs/ICustomTabsService;->updateVisuals(Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 105
    :goto_0
    return v3

    .line 104
    :catch_0
    move-exception v1

    .line 105
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setSecondaryToolbarViews(Landroid/widget/RemoteViews;[ILandroid/app/PendingIntent;)Z
    .locals 4
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "clickableIDs"    # [I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 120
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 121
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "android.support.customtabs.extra.EXTRA_REMOTEVIEWS"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 122
    const-string/jumbo v2, "android.support.customtabs.extra.EXTRA_REMOTEVIEWS_VIEW_IDS"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 123
    const-string/jumbo v2, "android.support.customtabs.extra.EXTRA_REMOTEVIEWS_PENDINGINTENT"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 125
    :try_start_0
    iget-object v2, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsSession;->mService:Lorg/telegram/messenger/support/customtabs/ICustomTabsService;

    iget-object v3, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsSession;->mCallback:Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;

    invoke-interface {v2, v3, v0}, Lorg/telegram/messenger/support/customtabs/ICustomTabsService;->updateVisuals(Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 127
    :goto_0
    return v2

    .line 126
    :catch_0
    move-exception v1

    .line 127
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setToolbarItem(ILandroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 5
    .param p1, "id"    # I
    .param p2, "icon"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "description"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 143
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 144
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "android.support.customtabs.customaction.ID"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 145
    const-string/jumbo v3, "android.support.customtabs.customaction.ICON"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 146
    const-string/jumbo v3, "android.support.customtabs.customaction.DESCRIPTION"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 149
    .local v2, "metaBundle":Landroid/os/Bundle;
    const-string/jumbo v3, "android.support.customtabs.extra.ACTION_BUTTON_BUNDLE"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 151
    :try_start_0
    iget-object v3, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsSession;->mService:Lorg/telegram/messenger/support/customtabs/ICustomTabsService;

    iget-object v4, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsSession;->mCallback:Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;

    invoke-interface {v3, v4, v2}, Lorg/telegram/messenger/support/customtabs/ICustomTabsService;->updateVisuals(Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 153
    :goto_0
    return v3

    .line 152
    :catch_0
    move-exception v1

    .line 153
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    goto :goto_0
.end method
