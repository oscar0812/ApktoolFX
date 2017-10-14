.class Lorg/telegram/ui/PaymentFormActivity$31;
.super Ljava/lang/Object;
.source "PaymentFormActivity.java"

# interfaces
.implements Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PaymentFormActivity;->goToNextStep()V
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
    .line 2483
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$31;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentPasswordUpdated(Lorg/telegram/tgnet/TLRPC$account_Password;)V
    .locals 1
    .param p1, "password"    # Lorg/telegram/tgnet/TLRPC$account_Password;

    .prologue
    .line 2502
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$31;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/PaymentFormActivity;->access$4202(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$account_Password;)Lorg/telegram/tgnet/TLRPC$account_Password;

    .line 2503
    return-void
.end method

.method public didSelectNewCard(Ljava/lang/String;Ljava/lang/String;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsAndroidPay;)Z
    .locals 1
    .param p1, "tokenJson"    # Ljava/lang/String;
    .param p2, "card"    # Ljava/lang/String;
    .param p3, "saveCard"    # Z
    .param p4, "androidPay"    # Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsAndroidPay;

    .prologue
    .line 2486
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$31;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$4900(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2487
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$31;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$4900(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;->didSelectNewCard(Ljava/lang/String;Ljava/lang/String;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsAndroidPay;)Z

    .line 2489
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$31;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$5000(Lorg/telegram/ui/PaymentFormActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2490
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$31;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/PaymentFormActivity;->removeSelfFromStack()V

    .line 2492
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$31;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$4900(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFragmentDestroyed()V
    .locals 2

    .prologue
    .line 2497
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$31;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->access$4302(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/ui/PaymentFormActivity;

    .line 2498
    return-void
.end method
