.class Lorg/telegram/ui/PaymentFormActivity$35$2;
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

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PaymentFormActivity$35;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PaymentFormActivity$35;

    .prologue
    .line 2987
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$35$2;->this$1:Lorg/telegram/ui/PaymentFormActivity$35;

    iput-object p2, p0, Lorg/telegram/ui/PaymentFormActivity$35$2;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2990
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->paymentFinished:I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2991
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$35$2;->this$1:Lorg/telegram/ui/PaymentFormActivity$35;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$35;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0, v3}, Lorg/telegram/ui/PaymentFormActivity;->access$500(Lorg/telegram/ui/PaymentFormActivity;Z)V

    .line 2992
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$35$2;->this$1:Lorg/telegram/ui/PaymentFormActivity$35;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$35;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$5700(Lorg/telegram/ui/PaymentFormActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 2993
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$35$2;->this$1:Lorg/telegram/ui/PaymentFormActivity$35;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$35;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0, v4}, Lorg/telegram/ui/PaymentFormActivity;->access$2402(Lorg/telegram/ui/PaymentFormActivity;Z)Z

    .line 2994
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$35$2;->this$1:Lorg/telegram/ui/PaymentFormActivity$35;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$35;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0, v4, v4}, Lorg/telegram/ui/PaymentFormActivity;->access$2500(Lorg/telegram/ui/PaymentFormActivity;ZZ)V

    .line 2995
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$35$2;->this$1:Lorg/telegram/ui/PaymentFormActivity$35;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$35;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$5800(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/ui/Components/ContextProgressView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    .line 2996
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$35$2;->this$1:Lorg/telegram/ui/PaymentFormActivity$35;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$35;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$2000(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setEnabled(Z)V

    .line 2997
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$35$2;->this$1:Lorg/telegram/ui/PaymentFormActivity$35;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$35;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$2000(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2998
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$35$2;->this$1:Lorg/telegram/ui/PaymentFormActivity$35;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$35;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$5700(Lorg/telegram/ui/PaymentFormActivity;)Landroid/webkit/WebView;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$35$2;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentVerficationNeeded;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentVerficationNeeded;->url:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2999
    return-void
.end method
