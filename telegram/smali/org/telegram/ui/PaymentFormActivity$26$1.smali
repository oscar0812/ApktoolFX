.class Lorg/telegram/ui/PaymentFormActivity$26$1;
.super Ljava/lang/Object;
.source "PaymentFormActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PaymentFormActivity$26;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PaymentFormActivity$26;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PaymentFormActivity$26;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PaymentFormActivity$26;

    .prologue
    .line 2092
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$26$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$26;

    iput-object p2, p0, Lorg/telegram/ui/PaymentFormActivity$26$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/PaymentFormActivity$26$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2095
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$26$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$26;

    iget-object v1, v1, Lorg/telegram/ui/PaymentFormActivity$26;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v1, v3}, Lorg/telegram/ui/PaymentFormActivity;->access$4102(Lorg/telegram/ui/PaymentFormActivity;Z)Z

    .line 2096
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$26$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v1, :cond_1

    .line 2097
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$26$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$26;

    iget-object v2, v1, Lorg/telegram/ui/PaymentFormActivity$26;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$26$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$account_Password;

    invoke-static {v2, v1}, Lorg/telegram/ui/PaymentFormActivity;->access$4202(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$account_Password;)Lorg/telegram/tgnet/TLRPC$account_Password;

    .line 2098
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$26$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$26;

    iget-object v1, v1, Lorg/telegram/ui/PaymentFormActivity$26;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v1}, Lorg/telegram/ui/PaymentFormActivity;->access$3100(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$26$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$26;

    iget-object v1, v1, Lorg/telegram/ui/PaymentFormActivity$26;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v1}, Lorg/telegram/ui/PaymentFormActivity;->access$4200(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/tgnet/TLRPC$account_Password;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_account_password;

    if-eqz v1, :cond_0

    .line 2099
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$26$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$26;

    iget-object v1, v1, Lorg/telegram/ui/PaymentFormActivity$26;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v1}, Lorg/telegram/ui/PaymentFormActivity;->access$3100(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    move-result-object v1

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->password_missing:Z

    .line 2100
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$26$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$26;

    iget-object v1, v1, Lorg/telegram/ui/PaymentFormActivity$26;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v1}, Lorg/telegram/ui/PaymentFormActivity;->access$3100(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->can_save_credentials:Z

    .line 2101
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$26$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$26;

    iget-object v1, v1, Lorg/telegram/ui/PaymentFormActivity$26;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v1}, Lorg/telegram/ui/PaymentFormActivity;->access$2600(Lorg/telegram/ui/PaymentFormActivity;)V

    .line 2103
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$26$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$26;

    iget-object v1, v1, Lorg/telegram/ui/PaymentFormActivity$26;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v1}, Lorg/telegram/ui/PaymentFormActivity;->access$4200(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/tgnet/TLRPC$account_Password;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$account_Password;->new_salt:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x8

    new-array v0, v1, [B

    .line 2104
    .local v0, "salt":[B
    sget-object v1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 2105
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$26$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$26;

    iget-object v1, v1, Lorg/telegram/ui/PaymentFormActivity$26;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v1}, Lorg/telegram/ui/PaymentFormActivity;->access$4200(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/tgnet/TLRPC$account_Password;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$account_Password;->new_salt:[B

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity$26$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$26;

    iget-object v2, v2, Lorg/telegram/ui/PaymentFormActivity$26;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v2}, Lorg/telegram/ui/PaymentFormActivity;->access$4200(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/tgnet/TLRPC$account_Password;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$account_Password;->new_salt:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2106
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$26$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$26;

    iget-object v1, v1, Lorg/telegram/ui/PaymentFormActivity$26;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v1}, Lorg/telegram/ui/PaymentFormActivity;->access$4200(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/tgnet/TLRPC$account_Password;

    move-result-object v1

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$account_Password;->new_salt:[B

    .line 2107
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$26$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$26;

    iget-object v1, v1, Lorg/telegram/ui/PaymentFormActivity$26;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v1}, Lorg/telegram/ui/PaymentFormActivity;->access$4300(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/ui/PaymentFormActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2108
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$26$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$26;

    iget-object v1, v1, Lorg/telegram/ui/PaymentFormActivity$26;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v1}, Lorg/telegram/ui/PaymentFormActivity;->access$4300(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/ui/PaymentFormActivity;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity$26$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$26;

    iget-object v2, v2, Lorg/telegram/ui/PaymentFormActivity$26;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v2}, Lorg/telegram/ui/PaymentFormActivity;->access$4200(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/tgnet/TLRPC$account_Password;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/ui/PaymentFormActivity;->access$4400(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$account_Password;)V

    .line 2111
    .end local v0    # "salt":[B
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$26$1;->val$response:Lorg/telegram/tgnet/TLObject;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_account_noPassword;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$26$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$26;

    iget-object v1, v1, Lorg/telegram/ui/PaymentFormActivity$26;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v1}, Lorg/telegram/ui/PaymentFormActivity;->access$4500(Lorg/telegram/ui/PaymentFormActivity;)Ljava/lang/Runnable;

    move-result-object v1

    if-nez v1, :cond_2

    .line 2112
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$26$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$26;

    iget-object v1, v1, Lorg/telegram/ui/PaymentFormActivity$26;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    new-instance v2, Lorg/telegram/ui/PaymentFormActivity$26$1$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PaymentFormActivity$26$1$1;-><init>(Lorg/telegram/ui/PaymentFormActivity$26$1;)V

    invoke-static {v1, v2}, Lorg/telegram/ui/PaymentFormActivity;->access$4502(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 2122
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$26$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$26;

    iget-object v1, v1, Lorg/telegram/ui/PaymentFormActivity$26;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v1}, Lorg/telegram/ui/PaymentFormActivity;->access$4500(Lorg/telegram/ui/PaymentFormActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 2124
    :cond_2
    return-void
.end method
