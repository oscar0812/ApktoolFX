.class Lorg/telegram/ui/PaymentFormActivity$32$1;
.super Ljava/lang/Object;
.source "PaymentFormActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PaymentFormActivity$32;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PaymentFormActivity$32;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PaymentFormActivity$32;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PaymentFormActivity$32;

    .prologue
    .line 2681
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$32$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$32;

    iput-object p2, p0, Lorg/telegram/ui/PaymentFormActivity$32$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/PaymentFormActivity$32$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const v6, 0x7f07007a

    const/4 v9, 0x0

    .line 2684
    iget-object v4, p0, Lorg/telegram/ui/PaymentFormActivity$32$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$32;

    iget-object v4, v4, Lorg/telegram/ui/PaymentFormActivity$32;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v4, v8, v9}, Lorg/telegram/ui/PaymentFormActivity;->access$2500(Lorg/telegram/ui/PaymentFormActivity;ZZ)V

    .line 2685
    iget-object v4, p0, Lorg/telegram/ui/PaymentFormActivity$32$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$32;

    iget-boolean v4, v4, Lorg/telegram/ui/PaymentFormActivity$32;->val$clear:Z

    if-eqz v4, :cond_1

    .line 2686
    iget-object v4, p0, Lorg/telegram/ui/PaymentFormActivity$32$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$32;

    iget-object v4, v4, Lorg/telegram/ui/PaymentFormActivity$32;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_account_noPassword;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_account_noPassword;-><init>()V

    invoke-static {v4, v5}, Lorg/telegram/ui/PaymentFormActivity;->access$4202(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$account_Password;)Lorg/telegram/tgnet/TLRPC$account_Password;

    .line 2687
    iget-object v4, p0, Lorg/telegram/ui/PaymentFormActivity$32$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$32;

    iget-object v4, v4, Lorg/telegram/ui/PaymentFormActivity$32;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v4}, Lorg/telegram/ui/PaymentFormActivity;->access$4900(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity$32$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$32;

    iget-object v5, v5, Lorg/telegram/ui/PaymentFormActivity$32;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v5}, Lorg/telegram/ui/PaymentFormActivity;->access$4200(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/tgnet/TLRPC$account_Password;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;->currentPasswordUpdated(Lorg/telegram/tgnet/TLRPC$account_Password;)V

    .line 2688
    iget-object v4, p0, Lorg/telegram/ui/PaymentFormActivity$32$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$32;

    iget-object v4, v4, Lorg/telegram/ui/PaymentFormActivity$32;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/PaymentFormActivity;->finishFragment()V

    .line 2731
    :cond_0
    :goto_0
    return-void

    .line 2690
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/PaymentFormActivity$32$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/PaymentFormActivity$32$1;->val$response:Lorg/telegram/tgnet/TLObject;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz v4, :cond_2

    .line 2691
    iget-object v4, p0, Lorg/telegram/ui/PaymentFormActivity$32$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$32;

    iget-object v4, v4, Lorg/telegram/ui/PaymentFormActivity$32;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/PaymentFormActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2694
    iget-object v4, p0, Lorg/telegram/ui/PaymentFormActivity$32$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$32;

    iget-object v4, v4, Lorg/telegram/ui/PaymentFormActivity$32;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v4}, Lorg/telegram/ui/PaymentFormActivity;->access$200(Lorg/telegram/ui/PaymentFormActivity;)V

    goto :goto_0

    .line 2695
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/PaymentFormActivity$32$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-eqz v4, :cond_0

    .line 2696
    iget-object v4, p0, Lorg/telegram/ui/PaymentFormActivity$32$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v5, "EMAIL_UNCONFIRMED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2697
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v4, p0, Lorg/telegram/ui/PaymentFormActivity$32$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$32;

    iget-object v4, v4, Lorg/telegram/ui/PaymentFormActivity$32;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/PaymentFormActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2698
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v4, "OK"

    const v5, 0x7f070440

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$32$1$1;

    invoke-direct {v5, p0}, Lorg/telegram/ui/PaymentFormActivity$32$1$1;-><init>(Lorg/telegram/ui/PaymentFormActivity$32$1;)V

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2706
    const-string/jumbo v4, "YourEmailAlmostThereText"

    const v5, 0x7f07067d

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2707
    const-string/jumbo v4, "YourEmailAlmostThere"

    const v5, 0x7f07067c

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2708
    iget-object v4, p0, Lorg/telegram/ui/PaymentFormActivity$32$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$32;

    iget-object v4, v4, Lorg/telegram/ui/PaymentFormActivity$32;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/PaymentFormActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object v1

    .line 2709
    .local v1, "dialog":Landroid/app/Dialog;
    if-eqz v1, :cond_0

    .line 2710
    invoke-virtual {v1, v9}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 2711
    invoke-virtual {v1, v9}, Landroid/app/Dialog;->setCancelable(Z)V

    goto :goto_0

    .line 2714
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v1    # "dialog":Landroid/app/Dialog;
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/PaymentFormActivity$32$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v5, "EMAIL_INVALID"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2715
    iget-object v4, p0, Lorg/telegram/ui/PaymentFormActivity$32$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$32;

    iget-object v4, v4, Lorg/telegram/ui/PaymentFormActivity$32;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    const-string/jumbo v5, "AppName"

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "PasswordEmailInvalid"

    const v7, 0x7f07046c

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/PaymentFormActivity;->access$5400(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2716
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/PaymentFormActivity$32$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v5, "FLOOD_WAIT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2717
    iget-object v4, p0, Lorg/telegram/ui/PaymentFormActivity$32$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2719
    .local v2, "time":I
    const/16 v4, 0x3c

    if-ge v2, v4, :cond_5

    .line 2720
    const-string/jumbo v4, "Seconds"

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 2724
    .local v3, "timeString":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/PaymentFormActivity$32$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$32;

    iget-object v4, v4, Lorg/telegram/ui/PaymentFormActivity$32;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    const-string/jumbo v5, "AppName"

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "FloodWaitTime"

    const v7, 0x7f070285

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v9

    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/PaymentFormActivity;->access$5400(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2722
    .end local v3    # "timeString":Ljava/lang/String;
    :cond_5
    const-string/jumbo v4, "Minutes"

    div-int/lit8 v5, v2, 0x3c

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "timeString":Ljava/lang/String;
    goto :goto_1

    .line 2726
    .end local v2    # "time":I
    .end local v3    # "timeString":Ljava/lang/String;
    :cond_6
    iget-object v4, p0, Lorg/telegram/ui/PaymentFormActivity$32$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$32;

    iget-object v4, v4, Lorg/telegram/ui/PaymentFormActivity$32;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    const-string/jumbo v5, "AppName"

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/PaymentFormActivity$32$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/PaymentFormActivity;->access$5400(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
