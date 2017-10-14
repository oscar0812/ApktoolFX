.class Lorg/telegram/ui/PaymentFormActivity$36$1$1;
.super Ljava/lang/Object;
.source "PaymentFormActivity.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PaymentFormActivity$36$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/PaymentFormActivity$36$1;

.field final synthetic val$req:Lorg/telegram/tgnet/TLRPC$TL_account_getTmpPassword;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PaymentFormActivity$36$1;Lorg/telegram/tgnet/TLRPC$TL_account_getTmpPassword;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/PaymentFormActivity$36$1;

    .prologue
    .line 3083
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$36$1$1;->this$2:Lorg/telegram/ui/PaymentFormActivity$36$1;

    iput-object p2, p0, Lorg/telegram/ui/PaymentFormActivity$36$1$1;->val$req:Lorg/telegram/tgnet/TLRPC$TL_account_getTmpPassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 3086
    new-instance v0, Lorg/telegram/ui/PaymentFormActivity$36$1$1$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/PaymentFormActivity$36$1$1$1;-><init>(Lorg/telegram/ui/PaymentFormActivity$36$1$1;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3111
    return-void
.end method
