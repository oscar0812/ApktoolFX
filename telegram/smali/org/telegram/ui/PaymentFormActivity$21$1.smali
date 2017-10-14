.class Lorg/telegram/ui/PaymentFormActivity$21$1;
.super Ljava/lang/Object;
.source "PaymentFormActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PaymentFormActivity$21;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PaymentFormActivity$21;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PaymentFormActivity$21;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PaymentFormActivity$21;

    .prologue
    .line 1805
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$21$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 1808
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$21$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$21;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$21;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$21$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$21;

    iget-object v1, v1, Lorg/telegram/ui/PaymentFormActivity$21;->val$totalPrice:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->access$4000(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/String;)V

    .line 1809
    return-void
.end method
