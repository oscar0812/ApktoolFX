.class public abstract Lorg/telegram/messenger/support/customtabs/CustomTabsServiceConnection;
.super Ljava/lang/Object;
.source "CustomTabsServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onCustomTabsServiceConnected(Landroid/content/ComponentName;Lorg/telegram/messenger/support/customtabs/CustomTabsClient;)V
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 32
    new-instance v0, Lorg/telegram/messenger/support/customtabs/CustomTabsServiceConnection$1;

    .line 33
    invoke-static {p2}, Lorg/telegram/messenger/support/customtabs/ICustomTabsService$Stub;->asInterface(Landroid/os/IBinder;)Lorg/telegram/messenger/support/customtabs/ICustomTabsService;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lorg/telegram/messenger/support/customtabs/CustomTabsServiceConnection$1;-><init>(Lorg/telegram/messenger/support/customtabs/CustomTabsServiceConnection;Lorg/telegram/messenger/support/customtabs/ICustomTabsService;Landroid/content/ComponentName;)V

    .line 32
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/support/customtabs/CustomTabsServiceConnection;->onCustomTabsServiceConnected(Landroid/content/ComponentName;Lorg/telegram/messenger/support/customtabs/CustomTabsClient;)V

    .line 35
    return-void
.end method
