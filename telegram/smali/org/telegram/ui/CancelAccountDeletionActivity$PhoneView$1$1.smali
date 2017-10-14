.class Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView$1$1;
.super Ljava/lang/Object;
.source "CancelAccountDeletionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView$1;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView$1;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView$1;

    .prologue
    .line 400
    iput-object p1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView$1$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView$1;

    iput-object p2, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 403
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView$1$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView$1;

    iget-object v0, v0, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView$1;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView;

    invoke-static {v0, v4}, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView;->access$402(Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView;Z)Z

    .line 404
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v0, :cond_0

    .line 405
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView$1$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView$1;

    iget-object v0, v0, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView$1;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView;

    iget-object v1, v0, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView;->this$0:Lorg/telegram/ui/CancelAccountDeletionActivity;

    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView$1$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView$1;

    iget-object v2, v0, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView$1;->val$params:Landroid/os/Bundle;

    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

    invoke-static {v1, v2, v0}, Lorg/telegram/ui/CancelAccountDeletionActivity;->access$500(Lorg/telegram/ui/CancelAccountDeletionActivity;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;)V

    .line 409
    :goto_0
    return-void

    .line 407
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView$1$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView$1;

    iget-object v0, v0, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView$1;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView;

    iget-object v0, v0, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView;->this$0:Lorg/telegram/ui/CancelAccountDeletionActivity;

    iget-object v1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v2, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView$1$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView$1;

    iget-object v2, v2, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView$1;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView;

    iget-object v2, v2, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView;->this$0:Lorg/telegram/ui/CancelAccountDeletionActivity;

    iget-object v3, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView$1$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView$1;

    iget-object v3, v3, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView$1;->val$req:Lorg/telegram/tgnet/TLRPC$TL_account_sendConfirmPhoneCode;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lorg/telegram/ui/Components/AlertsCreator;->processError(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/CancelAccountDeletionActivity;->access$602(Lorg/telegram/ui/CancelAccountDeletionActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0
.end method
