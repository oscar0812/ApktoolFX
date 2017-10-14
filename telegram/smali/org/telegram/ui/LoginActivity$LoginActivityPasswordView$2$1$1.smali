.class Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$3"    # Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1;

    .prologue
    .line 2014
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1$1;->this$3:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1;

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const v9, 0x7f07007a

    const/4 v10, 0x0

    .line 2017
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1$1;->this$3:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/LoginActivity;->needHideProgress()V

    .line 2018
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v5, :cond_1

    .line 2019
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_auth_passwordRecovery;

    .line 2020
    .local v2, "res":Lorg/telegram/tgnet/TLRPC$TL_auth_passwordRecovery;
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1$1;->this$3:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2021
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v5, "RestoreEmailSent"

    const v6, 0x7f070519

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$TL_auth_passwordRecovery;->email_pattern:Ljava/lang/String;

    aput-object v8, v7, v10

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2022
    const-string/jumbo v5, "AppName"

    invoke-static {v5, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2023
    const-string/jumbo v5, "OK"

    const v6, 0x7f070440

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1$1$1;

    invoke-direct {v6, p0, v2}, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1$1$1;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1$1;Lorg/telegram/tgnet/TLRPC$TL_auth_passwordRecovery;)V

    invoke-virtual {v0, v5, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2031
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1$1;->this$3:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/LoginActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object v1

    .line 2032
    .local v1, "dialog":Landroid/app/Dialog;
    if-eqz v1, :cond_0

    .line 2033
    invoke-virtual {v1, v10}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 2034
    invoke-virtual {v1, v10}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2050
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v1    # "dialog":Landroid/app/Dialog;
    .end local v2    # "res":Lorg/telegram/tgnet/TLRPC$TL_auth_passwordRecovery;
    :cond_0
    :goto_0
    return-void

    .line 2037
    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v6, "FLOOD_WAIT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2038
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2040
    .local v3, "time":I
    const/16 v5, 0x3c

    if-ge v3, v5, :cond_2

    .line 2041
    const-string/jumbo v5, "Seconds"

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 2045
    .local v4, "timeString":Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1$1;->this$3:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->this$0:Lorg/telegram/ui/LoginActivity;

    const-string/jumbo v6, "AppName"

    invoke-static {v6, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "FloodWaitTime"

    const v8, 0x7f070285

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v4, v9, v10

    invoke-static {v7, v8, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2043
    .end local v4    # "timeString":Ljava/lang/String;
    :cond_2
    const-string/jumbo v5, "Minutes"

    div-int/lit8 v6, v3, 0x3c

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "timeString":Ljava/lang/String;
    goto :goto_1

    .line 2047
    .end local v3    # "time":I
    .end local v4    # "timeString":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1$1;->this$3:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->this$0:Lorg/telegram/ui/LoginActivity;

    const-string/jumbo v6, "AppName"

    invoke-static {v6, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
