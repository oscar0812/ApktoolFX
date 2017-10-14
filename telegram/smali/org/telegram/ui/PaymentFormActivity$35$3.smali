.class Lorg/telegram/ui/PaymentFormActivity$35$3;
.super Ljava/lang/Object;
.source "PaymentFormActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PaymentFormActivity$35;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PaymentFormActivity$35;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PaymentFormActivity$35;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PaymentFormActivity$35;

    .prologue
    .line 3003
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$35$3;->this$1:Lorg/telegram/ui/PaymentFormActivity$35;

    iput-object p2, p0, Lorg/telegram/ui/PaymentFormActivity$35$3;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3006
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$35$3;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$35$3;->this$1:Lorg/telegram/ui/PaymentFormActivity$35;

    iget-object v1, v1, Lorg/telegram/ui/PaymentFormActivity$35;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity$35$3;->this$1:Lorg/telegram/ui/PaymentFormActivity$35;

    iget-object v2, v2, Lorg/telegram/ui/PaymentFormActivity$35;->val$req:Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/Components/AlertsCreator;->processError(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    .line 3007
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$35$3;->this$1:Lorg/telegram/ui/PaymentFormActivity$35;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$35;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0, v4}, Lorg/telegram/ui/PaymentFormActivity;->access$500(Lorg/telegram/ui/PaymentFormActivity;Z)V

    .line 3008
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$35$3;->this$1:Lorg/telegram/ui/PaymentFormActivity$35;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$35;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0, v4, v4}, Lorg/telegram/ui/PaymentFormActivity;->access$2500(Lorg/telegram/ui/PaymentFormActivity;ZZ)V

    .line 3009
    return-void
.end method
