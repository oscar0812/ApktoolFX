.class Lorg/telegram/ui/PaymentFormActivity$34$1;
.super Ljava/lang/Object;
.source "PaymentFormActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PaymentFormActivity$34;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PaymentFormActivity$34;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PaymentFormActivity$34;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PaymentFormActivity$34;

    .prologue
    .line 2854
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$34$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$34;

    iput-object p2, p0, Lorg/telegram/ui/PaymentFormActivity$34$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2857
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$34$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$34;

    iget-object v2, v1, Lorg/telegram/ui/PaymentFormActivity$34;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$34$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    invoke-static {v2, v1}, Lorg/telegram/ui/PaymentFormActivity;->access$902(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;)Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    .line 2858
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$34$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$34;

    iget-object v1, v1, Lorg/telegram/ui/PaymentFormActivity$34;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v1}, Lorg/telegram/ui/PaymentFormActivity;->access$3100(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$34$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$34;

    iget-object v1, v1, Lorg/telegram/ui/PaymentFormActivity$34;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v1}, Lorg/telegram/ui/PaymentFormActivity;->access$2100(Lorg/telegram/ui/PaymentFormActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2859
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;-><init>()V

    .line 2860
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;
    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;->info:Z

    .line 2861
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/PaymentFormActivity$34$1$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PaymentFormActivity$34$1$1;-><init>(Lorg/telegram/ui/PaymentFormActivity$34$1;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 2868
    .end local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$34$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$34;

    iget-object v1, v1, Lorg/telegram/ui/PaymentFormActivity$34;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v1}, Lorg/telegram/ui/PaymentFormActivity;->access$200(Lorg/telegram/ui/PaymentFormActivity;)V

    .line 2869
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$34$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$34;

    iget-object v1, v1, Lorg/telegram/ui/PaymentFormActivity$34;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v1, v3}, Lorg/telegram/ui/PaymentFormActivity;->access$500(Lorg/telegram/ui/PaymentFormActivity;Z)V

    .line 2870
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$34$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$34;

    iget-object v1, v1, Lorg/telegram/ui/PaymentFormActivity$34;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v1, v4, v3}, Lorg/telegram/ui/PaymentFormActivity;->access$2500(Lorg/telegram/ui/PaymentFormActivity;ZZ)V

    .line 2871
    return-void
.end method
