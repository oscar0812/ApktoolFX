.class Lorg/telegram/messenger/GcmRegistrationIntentService$3;
.super Ljava/lang/Object;
.source "GcmRegistrationIntentService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/GcmRegistrationIntentService;->sendRegistrationToServer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/GcmRegistrationIntentService;

.field final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/GcmRegistrationIntentService;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/GcmRegistrationIntentService;

    .prologue
    .line 59
    iput-object p1, p0, Lorg/telegram/messenger/GcmRegistrationIntentService$3;->this$0:Lorg/telegram/messenger/GcmRegistrationIntentService;

    iput-object p2, p0, Lorg/telegram/messenger/GcmRegistrationIntentService$3;->val$token:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    iget-object v0, p0, Lorg/telegram/messenger/GcmRegistrationIntentService$3;->val$token:Ljava/lang/String;

    sput-object v0, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    .line 63
    sput-boolean v1, Lorg/telegram/messenger/UserConfig;->registeredForPush:Z

    .line 64
    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 65
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Lorg/telegram/messenger/GcmRegistrationIntentService$3$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/GcmRegistrationIntentService$3$1;-><init>(Lorg/telegram/messenger/GcmRegistrationIntentService$3;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 73
    :cond_0
    return-void
.end method
