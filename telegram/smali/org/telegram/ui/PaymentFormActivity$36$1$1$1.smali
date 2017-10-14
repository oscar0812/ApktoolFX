.class Lorg/telegram/ui/PaymentFormActivity$36$1$1$1;
.super Ljava/lang/Object;
.source "PaymentFormActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PaymentFormActivity$36$1$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lorg/telegram/ui/PaymentFormActivity$36$1$1;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PaymentFormActivity$36$1$1;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0
    .param p1, "this$3"    # Lorg/telegram/ui/PaymentFormActivity$36$1$1;

    .prologue
    .line 3086
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$36$1$1$1;->this$3:Lorg/telegram/ui/PaymentFormActivity$36$1$1;

    iput-object p2, p0, Lorg/telegram/ui/PaymentFormActivity$36$1$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    iput-object p3, p0, Lorg/telegram/ui/PaymentFormActivity$36$1$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3089
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$36$1$1$1;->this$3:Lorg/telegram/ui/PaymentFormActivity$36$1$1;

    iget-object v1, v1, Lorg/telegram/ui/PaymentFormActivity$36$1$1;->this$2:Lorg/telegram/ui/PaymentFormActivity$36$1;

    iget-object v1, v1, Lorg/telegram/ui/PaymentFormActivity$36$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$36;

    iget-object v1, v1, Lorg/telegram/ui/PaymentFormActivity$36;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v1, v5, v4}, Lorg/telegram/ui/PaymentFormActivity;->access$2500(Lorg/telegram/ui/PaymentFormActivity;ZZ)V

    .line 3090
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$36$1$1$1;->this$3:Lorg/telegram/ui/PaymentFormActivity$36$1$1;

    iget-object v1, v1, Lorg/telegram/ui/PaymentFormActivity$36$1$1;->this$2:Lorg/telegram/ui/PaymentFormActivity$36$1;

    iget-object v1, v1, Lorg/telegram/ui/PaymentFormActivity$36$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$36;

    iget-object v1, v1, Lorg/telegram/ui/PaymentFormActivity$36;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v1, v4}, Lorg/telegram/ui/PaymentFormActivity;->access$500(Lorg/telegram/ui/PaymentFormActivity;Z)V

    .line 3091
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$36$1$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    if-eqz v1, :cond_0

    .line 3092
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$36$1$1$1;->this$3:Lorg/telegram/ui/PaymentFormActivity$36$1$1;

    iget-object v1, v1, Lorg/telegram/ui/PaymentFormActivity$36$1$1;->this$2:Lorg/telegram/ui/PaymentFormActivity$36$1;

    iget-object v1, v1, Lorg/telegram/ui/PaymentFormActivity$36$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$36;

    iget-object v1, v1, Lorg/telegram/ui/PaymentFormActivity$36;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v1, v5}, Lorg/telegram/ui/PaymentFormActivity;->access$3002(Lorg/telegram/ui/PaymentFormActivity;Z)Z

    .line 3093
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$36$1$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    sput-object v1, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    .line 3094
    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 3095
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$36$1$1$1;->this$3:Lorg/telegram/ui/PaymentFormActivity$36$1$1;

    iget-object v1, v1, Lorg/telegram/ui/PaymentFormActivity$36$1$1;->this$2:Lorg/telegram/ui/PaymentFormActivity$36$1;

    iget-object v1, v1, Lorg/telegram/ui/PaymentFormActivity$36$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$36;

    iget-object v1, v1, Lorg/telegram/ui/PaymentFormActivity$36;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v1}, Lorg/telegram/ui/PaymentFormActivity;->access$200(Lorg/telegram/ui/PaymentFormActivity;)V

    .line 3108
    :goto_0
    return-void

    .line 3097
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$36$1$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v2, "PASSWORD_HASH_INVALID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3098
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 3099
    .local v0, "v":Landroid/os/Vibrator;
    if-eqz v0, :cond_1

    .line 3100
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 3102
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$36$1$1$1;->this$3:Lorg/telegram/ui/PaymentFormActivity$36$1$1;

    iget-object v1, v1, Lorg/telegram/ui/PaymentFormActivity$36$1$1;->this$2:Lorg/telegram/ui/PaymentFormActivity$36$1;

    iget-object v1, v1, Lorg/telegram/ui/PaymentFormActivity$36$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$36;

    iget-object v1, v1, Lorg/telegram/ui/PaymentFormActivity$36;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v1}, Lorg/telegram/ui/PaymentFormActivity;->access$1300(Lorg/telegram/ui/PaymentFormActivity;)[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    aget-object v1, v1, v5

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2, v4}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;FI)V

    .line 3103
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$36$1$1$1;->this$3:Lorg/telegram/ui/PaymentFormActivity$36$1$1;

    iget-object v1, v1, Lorg/telegram/ui/PaymentFormActivity$36$1$1;->this$2:Lorg/telegram/ui/PaymentFormActivity$36$1;

    iget-object v1, v1, Lorg/telegram/ui/PaymentFormActivity$36$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$36;

    iget-object v1, v1, Lorg/telegram/ui/PaymentFormActivity$36;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v1}, Lorg/telegram/ui/PaymentFormActivity;->access$1300(Lorg/telegram/ui/PaymentFormActivity;)[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    aget-object v1, v1, v5

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3105
    .end local v0    # "v":Landroid/os/Vibrator;
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$36$1$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity$36$1$1$1;->this$3:Lorg/telegram/ui/PaymentFormActivity$36$1$1;

    iget-object v2, v2, Lorg/telegram/ui/PaymentFormActivity$36$1$1;->this$2:Lorg/telegram/ui/PaymentFormActivity$36$1;

    iget-object v2, v2, Lorg/telegram/ui/PaymentFormActivity$36$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$36;

    iget-object v2, v2, Lorg/telegram/ui/PaymentFormActivity$36;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity$36$1$1$1;->this$3:Lorg/telegram/ui/PaymentFormActivity$36$1$1;

    iget-object v3, v3, Lorg/telegram/ui/PaymentFormActivity$36$1$1;->val$req:Lorg/telegram/tgnet/TLRPC$TL_account_getTmpPassword;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lorg/telegram/ui/Components/AlertsCreator;->processError(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    goto :goto_0
.end method
