.class public abstract Lorg/telegram/messenger/support/customtabs/CustomTabsService;
.super Landroid/app/Service;
.source "CustomTabsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/support/customtabs/CustomTabsService$Result;
    }
.end annotation


# static fields
.field public static final ACTION_CUSTOM_TABS_CONNECTION:Ljava/lang/String; = "android.support.customtabs.action.CustomTabsService"

.field public static final KEY_URL:Ljava/lang/String; = "android.support.customtabs.otherurls.URL"

.field public static final RESULT_FAILURE_DISALLOWED:I = -0x1

.field public static final RESULT_FAILURE_MESSAGING_ERROR:I = -0x3

.field public static final RESULT_FAILURE_REMOTE_ERROR:I = -0x2

.field public static final RESULT_SUCCESS:I


# instance fields
.field private mBinder:Lorg/telegram/messenger/support/customtabs/ICustomTabsService$Stub;

.field private final mDeathRecipientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/os/IBinder$DeathRecipient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 81
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsService;->mDeathRecipientMap:Ljava/util/Map;

    .line 83
    new-instance v0, Lorg/telegram/messenger/support/customtabs/CustomTabsService$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/support/customtabs/CustomTabsService$1;-><init>(Lorg/telegram/messenger/support/customtabs/CustomTabsService;)V

    iput-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsService;->mBinder:Lorg/telegram/messenger/support/customtabs/ICustomTabsService$Stub;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/support/customtabs/CustomTabsService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/support/customtabs/CustomTabsService;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsService;->mDeathRecipientMap:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method protected cleanUpSession(Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;)Z
    .locals 6
    .param p1, "sessionToken"    # Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;

    .prologue
    const/4 v3, 0x0

    .line 158
    :try_start_0
    iget-object v5, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsService;->mDeathRecipientMap:Ljava/util/Map;

    monitor-enter v5
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :try_start_1
    invoke-virtual {p1}, Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;->getCallbackBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 160
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v4, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsService;->mDeathRecipientMap:Ljava/util/Map;

    .line 161
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder$DeathRecipient;

    .line 162
    .local v1, "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 163
    iget-object v4, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsService;->mDeathRecipientMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    monitor-exit v5

    .line 168
    const/4 v3, 0x1

    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    :goto_0
    return v3

    .line 164
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    .line 165
    :catch_0
    move-exception v2

    .line 166
    .local v2, "e":Ljava/util/NoSuchElementException;
    goto :goto_0
.end method

.method protected abstract extraCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method protected abstract mayLaunchUrl(Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation
.end method

.method protected abstract newSession(Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;)Z
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsService;->mBinder:Lorg/telegram/messenger/support/customtabs/ICustomTabsService$Stub;

    return-object v0
.end method

.method protected abstract postMessage(Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;Ljava/lang/String;Landroid/os/Bundle;)I
.end method

.method protected abstract requestPostMessageChannel(Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;Landroid/net/Uri;)Z
.end method

.method protected abstract updateVisuals(Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;Landroid/os/Bundle;)Z
.end method

.method protected abstract warmup(J)Z
.end method
