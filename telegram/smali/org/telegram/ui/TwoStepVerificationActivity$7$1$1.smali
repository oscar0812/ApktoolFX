.class Lorg/telegram/ui/TwoStepVerificationActivity$7$1$1;
.super Ljava/lang/Object;
.source "TwoStepVerificationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TwoStepVerificationActivity$7$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/TwoStepVerificationActivity$7$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TwoStepVerificationActivity$7$1;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/TwoStepVerificationActivity$7$1;

    .prologue
    .line 428
    iput-object p1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$7$1$1;->this$2:Lorg/telegram/ui/TwoStepVerificationActivity$7$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$7$1$1;->this$2:Lorg/telegram/ui/TwoStepVerificationActivity$7$1;

    iget-object v0, v0, Lorg/telegram/ui/TwoStepVerificationActivity$7$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$7;

    iget-object v0, v0, Lorg/telegram/ui/TwoStepVerificationActivity$7;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$2200(Lorg/telegram/ui/TwoStepVerificationActivity;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 436
    :goto_0
    return-void

    .line 434
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$7$1$1;->this$2:Lorg/telegram/ui/TwoStepVerificationActivity$7$1;

    iget-object v0, v0, Lorg/telegram/ui/TwoStepVerificationActivity$7$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$7;

    iget-object v0, v0, Lorg/telegram/ui/TwoStepVerificationActivity$7;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$2300(Lorg/telegram/ui/TwoStepVerificationActivity;Z)V

    .line 435
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$7$1$1;->this$2:Lorg/telegram/ui/TwoStepVerificationActivity$7$1;

    iget-object v0, v0, Lorg/telegram/ui/TwoStepVerificationActivity$7$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$7;

    iget-object v0, v0, Lorg/telegram/ui/TwoStepVerificationActivity$7;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$2202(Lorg/telegram/ui/TwoStepVerificationActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_0
.end method
