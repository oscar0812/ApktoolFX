.class Lorg/telegram/ui/PaymentFormActivity$20$1;
.super Ljava/lang/Object;
.source "PaymentFormActivity.java"

# interfaces
.implements Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PaymentFormActivity$20;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PaymentFormActivity$20;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PaymentFormActivity$20;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PaymentFormActivity$20;

    .prologue
    .line 1708
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$20$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentPasswordUpdated(Lorg/telegram/tgnet/TLRPC$account_Password;)V
    .locals 0
    .param p1, "password"    # Lorg/telegram/tgnet/TLRPC$account_Password;

    .prologue
    .line 1728
    return-void
.end method

.method public didSelectNewCard(Ljava/lang/String;Ljava/lang/String;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsAndroidPay;)Z
    .locals 5
    .param p1, "tokenJson"    # Ljava/lang/String;
    .param p2, "card"    # Ljava/lang/String;
    .param p3, "saveCard"    # Z
    .param p4, "androidPay"    # Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsAndroidPay;

    .prologue
    const/4 v4, 0x0

    .line 1711
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$20$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$20;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$20;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$3100(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_credentials:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    .line 1712
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$20$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$20;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$20;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/PaymentFormActivity;->access$002(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1713
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$20$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$20;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$20;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0, p3}, Lorg/telegram/ui/PaymentFormActivity;->access$2702(Lorg/telegram/ui/PaymentFormActivity;Z)Z

    .line 1714
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$20$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$20;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$20;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0, p2}, Lorg/telegram/ui/PaymentFormActivity;->access$102(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1715
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$20$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$20;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$20;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0, p4}, Lorg/telegram/ui/PaymentFormActivity;->access$3502(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsAndroidPay;)Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsAndroidPay;

    .line 1716
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$20$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$20;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$20;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$3600(Lorg/telegram/ui/PaymentFormActivity;)[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    move-result-object v0

    aget-object v0, v0, v4

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$20$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$20;

    iget-object v1, v1, Lorg/telegram/ui/PaymentFormActivity$20;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v1}, Lorg/telegram/ui/PaymentFormActivity;->access$100(Lorg/telegram/ui/PaymentFormActivity;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "PaymentCheckoutMethod"

    const v3, 0x7f07047d

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1717
    return v4
.end method

.method public onFragmentDestroyed()V
    .locals 0

    .prologue
    .line 1723
    return-void
.end method
