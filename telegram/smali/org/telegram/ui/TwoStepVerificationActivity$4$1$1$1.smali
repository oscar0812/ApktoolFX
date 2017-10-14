.class Lorg/telegram/ui/TwoStepVerificationActivity$4$1$1$1;
.super Ljava/lang/Object;
.source "TwoStepVerificationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TwoStepVerificationActivity$4$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lorg/telegram/ui/TwoStepVerificationActivity$4$1$1;

.field final synthetic val$res:Lorg/telegram/tgnet/TLRPC$TL_auth_passwordRecovery;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TwoStepVerificationActivity$4$1$1;Lorg/telegram/tgnet/TLRPC$TL_auth_passwordRecovery;)V
    .locals 0
    .param p1, "this$3"    # Lorg/telegram/ui/TwoStepVerificationActivity$4$1$1;

    .prologue
    .line 257
    iput-object p1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$4$1$1$1;->this$3:Lorg/telegram/ui/TwoStepVerificationActivity$4$1$1;

    iput-object p2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$4$1$1$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_auth_passwordRecovery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 260
    new-instance v0, Lorg/telegram/ui/TwoStepVerificationActivity;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/telegram/ui/TwoStepVerificationActivity;-><init>(I)V

    .line 261
    .local v0, "fragment":Lorg/telegram/ui/TwoStepVerificationActivity;
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$4$1$1$1;->this$3:Lorg/telegram/ui/TwoStepVerificationActivity$4$1$1;

    iget-object v1, v1, Lorg/telegram/ui/TwoStepVerificationActivity$4$1$1;->this$2:Lorg/telegram/ui/TwoStepVerificationActivity$4$1;

    iget-object v1, v1, Lorg/telegram/ui/TwoStepVerificationActivity$4$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$4;

    iget-object v1, v1, Lorg/telegram/ui/TwoStepVerificationActivity$4;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-static {v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$200(Lorg/telegram/ui/TwoStepVerificationActivity;)Lorg/telegram/tgnet/TLRPC$account_Password;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$202(Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLRPC$account_Password;)Lorg/telegram/tgnet/TLRPC$account_Password;

    .line 262
    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$200(Lorg/telegram/ui/TwoStepVerificationActivity;)Lorg/telegram/tgnet/TLRPC$account_Password;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$4$1$1$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_auth_passwordRecovery;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_auth_passwordRecovery;->email_pattern:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$account_Password;->email_unconfirmed_pattern:Ljava/lang/String;

    .line 263
    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$502(Lorg/telegram/ui/TwoStepVerificationActivity;I)I

    .line 264
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$4$1$1$1;->this$3:Lorg/telegram/ui/TwoStepVerificationActivity$4$1$1;

    iget-object v1, v1, Lorg/telegram/ui/TwoStepVerificationActivity$4$1$1;->this$2:Lorg/telegram/ui/TwoStepVerificationActivity$4$1;

    iget-object v1, v1, Lorg/telegram/ui/TwoStepVerificationActivity$4$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$4;

    iget-object v1, v1, Lorg/telegram/ui/TwoStepVerificationActivity$4;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 265
    return-void
.end method
