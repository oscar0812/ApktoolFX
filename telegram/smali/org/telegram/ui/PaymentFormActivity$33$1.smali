.class Lorg/telegram/ui/PaymentFormActivity$33$1;
.super Ljava/lang/Object;
.source "PaymentFormActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PaymentFormActivity$33;->onSuccess(Lcom/stripe/android/model/Token;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PaymentFormActivity$33;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PaymentFormActivity$33;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PaymentFormActivity$33;

    .prologue
    .line 2788
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$33$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$33;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2791
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$33$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$33;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$33;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$200(Lorg/telegram/ui/PaymentFormActivity;)V

    .line 2792
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$33$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$33;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$33;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/PaymentFormActivity;->access$2500(Lorg/telegram/ui/PaymentFormActivity;ZZ)V

    .line 2793
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$33$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$33;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$33;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0, v2}, Lorg/telegram/ui/PaymentFormActivity;->access$500(Lorg/telegram/ui/PaymentFormActivity;Z)V

    .line 2794
    return-void
.end method
