.class Lorg/telegram/ui/PaymentFormActivity$26$1$1;
.super Ljava/lang/Object;
.source "PaymentFormActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PaymentFormActivity$26$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/PaymentFormActivity$26$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PaymentFormActivity$26$1;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/PaymentFormActivity$26$1;

    .prologue
    .line 2112
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$26$1$1;->this$2:Lorg/telegram/ui/PaymentFormActivity$26$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2115
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$26$1$1;->this$2:Lorg/telegram/ui/PaymentFormActivity$26$1;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$26$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$26;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$26;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$4500(Lorg/telegram/ui/PaymentFormActivity;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2120
    :goto_0
    return-void

    .line 2118
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$26$1$1;->this$2:Lorg/telegram/ui/PaymentFormActivity$26$1;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$26$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$26;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$26;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$4600(Lorg/telegram/ui/PaymentFormActivity;)V

    .line 2119
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$26$1$1;->this$2:Lorg/telegram/ui/PaymentFormActivity$26$1;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$26$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$26;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$26;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->access$4502(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_0
.end method
