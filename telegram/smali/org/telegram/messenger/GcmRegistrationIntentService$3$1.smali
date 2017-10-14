.class Lorg/telegram/messenger/GcmRegistrationIntentService$3$1;
.super Ljava/lang/Object;
.source "GcmRegistrationIntentService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/GcmRegistrationIntentService$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/GcmRegistrationIntentService$3;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/GcmRegistrationIntentService$3;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/GcmRegistrationIntentService$3;

    .prologue
    .line 66
    iput-object p1, p0, Lorg/telegram/messenger/GcmRegistrationIntentService$3$1;->this$1:Lorg/telegram/messenger/GcmRegistrationIntentService$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 69
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/GcmRegistrationIntentService$3$1;->this$1:Lorg/telegram/messenger/GcmRegistrationIntentService$3;

    iget-object v1, v1, Lorg/telegram/messenger/GcmRegistrationIntentService$3;->val$token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->registerForPush(Ljava/lang/String;)V

    .line 70
    return-void
.end method
