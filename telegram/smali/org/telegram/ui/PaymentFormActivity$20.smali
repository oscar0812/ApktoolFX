.class Lorg/telegram/ui/PaymentFormActivity$20;
.super Ljava/lang/Object;
.source "PaymentFormActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PaymentFormActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PaymentFormActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PaymentFormActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 1704
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$20;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 1707
    new-instance v0, Lorg/telegram/ui/PaymentFormActivity;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$20;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v1}, Lorg/telegram/ui/PaymentFormActivity;->access$3100(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity$20;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v2}, Lorg/telegram/ui/PaymentFormActivity;->access$3200(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    const/4 v3, 0x2

    iget-object v4, p0, Lorg/telegram/ui/PaymentFormActivity$20;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v4}, Lorg/telegram/ui/PaymentFormActivity;->access$900(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity$20;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v5}, Lorg/telegram/ui/PaymentFormActivity;->access$800(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    move-result-object v5

    iget-object v7, p0, Lorg/telegram/ui/PaymentFormActivity$20;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v7}, Lorg/telegram/ui/PaymentFormActivity;->access$100(Lorg/telegram/ui/PaymentFormActivity;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/PaymentFormActivity$20;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v8}, Lorg/telegram/ui/PaymentFormActivity;->access$3300(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/PaymentFormActivity$20;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v9}, Lorg/telegram/ui/PaymentFormActivity;->access$2700(Lorg/telegram/ui/PaymentFormActivity;)Z

    move-result v9

    move-object v10, v6

    move-object v11, v6

    invoke-direct/range {v0 .. v11}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsAndroidPay;Lorg/telegram/ui/PaymentFormActivity$1;)V

    .line 1708
    .local v0, "activity":Lorg/telegram/ui/PaymentFormActivity;
    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$20$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PaymentFormActivity$20$1;-><init>(Lorg/telegram/ui/PaymentFormActivity$20;)V

    invoke-static {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->access$3700(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;)V

    .line 1730
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$20;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 1731
    return-void
.end method
