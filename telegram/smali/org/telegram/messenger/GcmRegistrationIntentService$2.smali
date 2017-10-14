.class Lorg/telegram/messenger/GcmRegistrationIntentService$2;
.super Ljava/lang/Object;
.source "GcmRegistrationIntentService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/GcmRegistrationIntentService;->onHandleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/GcmRegistrationIntentService;

.field final synthetic val$failCount:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/GcmRegistrationIntentService;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/GcmRegistrationIntentService;

    .prologue
    .line 41
    iput-object p1, p0, Lorg/telegram/messenger/GcmRegistrationIntentService$2;->this$0:Lorg/telegram/messenger/GcmRegistrationIntentService;

    iput p2, p0, Lorg/telegram/messenger/GcmRegistrationIntentService$2;->val$failCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 45
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v3, Lorg/telegram/messenger/GcmRegistrationIntentService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "failCount"

    iget v3, p0, Lorg/telegram/messenger/GcmRegistrationIntentService$2;->val$failCount:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 47
    iget-object v2, p0, Lorg/telegram/messenger/GcmRegistrationIntentService$2;->this$0:Lorg/telegram/messenger/GcmRegistrationIntentService;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/GcmRegistrationIntentService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
