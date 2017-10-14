.class Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView$1;
.super Ljava/lang/Object;
.source "CancelAccountDeletionActivity.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView;->onNextPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView;

.field final synthetic val$params:Landroid/os/Bundle;

.field final synthetic val$req:Lorg/telegram/tgnet/TLRPC$TL_account_sendConfirmPhoneCode;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_account_sendConfirmPhoneCode;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView;

    .prologue
    .line 397
    iput-object p1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView$1;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView;

    iput-object p2, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView$1;->val$params:Landroid/os/Bundle;

    iput-object p3, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView$1;->val$req:Lorg/telegram/tgnet/TLRPC$TL_account_sendConfirmPhoneCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 400
    new-instance v0, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView$1$1;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView$1$1;-><init>(Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView$1;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 411
    return-void
.end method
