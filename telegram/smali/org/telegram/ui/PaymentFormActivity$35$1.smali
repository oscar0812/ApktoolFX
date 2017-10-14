.class Lorg/telegram/ui/PaymentFormActivity$35$1;
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


# direct methods
.method constructor <init>(Lorg/telegram/ui/PaymentFormActivity$35;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PaymentFormActivity$35;

    .prologue
    .line 2980
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$35$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$35;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2983
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$35$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$35;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$35;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$200(Lorg/telegram/ui/PaymentFormActivity;)V

    .line 2984
    return-void
.end method
