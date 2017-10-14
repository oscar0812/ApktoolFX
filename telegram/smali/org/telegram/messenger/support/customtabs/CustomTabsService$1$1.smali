.class Lorg/telegram/messenger/support/customtabs/CustomTabsService$1$1;
.super Ljava/lang/Object;
.source "CustomTabsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/support/customtabs/CustomTabsService$1;->newSession(Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/support/customtabs/CustomTabsService$1;

.field final synthetic val$sessionToken:Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/customtabs/CustomTabsService$1;Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/support/customtabs/CustomTabsService$1;

    .prologue
    .line 94
    iput-object p1, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsService$1$1;->this$1:Lorg/telegram/messenger/support/customtabs/CustomTabsService$1;

    iput-object p2, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsService$1$1;->val$sessionToken:Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsService$1$1;->this$1:Lorg/telegram/messenger/support/customtabs/CustomTabsService$1;

    iget-object v0, v0, Lorg/telegram/messenger/support/customtabs/CustomTabsService$1;->this$0:Lorg/telegram/messenger/support/customtabs/CustomTabsService;

    iget-object v1, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsService$1$1;->val$sessionToken:Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/customtabs/CustomTabsService;->cleanUpSession(Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;)Z

    .line 98
    return-void
.end method
