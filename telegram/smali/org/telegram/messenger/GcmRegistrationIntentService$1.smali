.class Lorg/telegram/messenger/GcmRegistrationIntentService$1;
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

.field final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/GcmRegistrationIntentService;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/GcmRegistrationIntentService;

    .prologue
    .line 29
    iput-object p1, p0, Lorg/telegram/messenger/GcmRegistrationIntentService$1;->this$0:Lorg/telegram/messenger/GcmRegistrationIntentService;

    iput-object p2, p0, Lorg/telegram/messenger/GcmRegistrationIntentService$1;->val$token:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 32
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->postInitApplication()V

    .line 33
    iget-object v0, p0, Lorg/telegram/messenger/GcmRegistrationIntentService$1;->this$0:Lorg/telegram/messenger/GcmRegistrationIntentService;

    iget-object v1, p0, Lorg/telegram/messenger/GcmRegistrationIntentService$1;->val$token:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/telegram/messenger/GcmRegistrationIntentService;->access$000(Lorg/telegram/messenger/GcmRegistrationIntentService;Ljava/lang/String;)V

    .line 34
    return-void
.end method
