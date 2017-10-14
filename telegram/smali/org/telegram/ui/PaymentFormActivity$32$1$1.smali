.class Lorg/telegram/ui/PaymentFormActivity$32$1$1;
.super Ljava/lang/Object;
.source "PaymentFormActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PaymentFormActivity$32$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/PaymentFormActivity$32$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PaymentFormActivity$32$1;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/PaymentFormActivity$32$1;

    .prologue
    .line 2698
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$32$1$1;->this$2:Lorg/telegram/ui/PaymentFormActivity$32$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 2701
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$32$1$1;->this$2:Lorg/telegram/ui/PaymentFormActivity$32$1;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$32$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$32;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$32;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->access$5202(Lorg/telegram/ui/PaymentFormActivity;Z)Z

    .line 2702
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$32$1$1;->this$2:Lorg/telegram/ui/PaymentFormActivity$32$1;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$32$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$32;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$32;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$4200(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/tgnet/TLRPC$account_Password;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$32$1$1;->this$2:Lorg/telegram/ui/PaymentFormActivity$32$1;

    iget-object v1, v1, Lorg/telegram/ui/PaymentFormActivity$32$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$32;

    iget-object v1, v1, Lorg/telegram/ui/PaymentFormActivity$32;->val$email:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$account_Password;->email_unconfirmed_pattern:Ljava/lang/String;

    .line 2703
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$32$1$1;->this$2:Lorg/telegram/ui/PaymentFormActivity$32$1;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$32$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$32;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$32;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$5300(Lorg/telegram/ui/PaymentFormActivity;)V

    .line 2704
    return-void
.end method
