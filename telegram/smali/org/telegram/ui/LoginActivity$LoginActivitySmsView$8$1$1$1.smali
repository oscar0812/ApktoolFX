.class Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$4:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$4"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1;

    .prologue
    .line 1760
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1$1;->this$4:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1;

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1763
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1$1;->this$4:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1;->this$3:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/LoginActivity;->needHideProgress()V

    .line 1764
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v2, :cond_1

    .line 1765
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_account_password;

    .line 1766
    .local v1, "password":Lorg/telegram/tgnet/TLRPC$TL_account_password;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1767
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "current_salt"

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_account_password;->current_salt:[B

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1768
    const-string/jumbo v2, "hint"

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_account_password;->hint:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1769
    const-string/jumbo v2, "email_unconfirmed_pattern"

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_account_password;->email_unconfirmed_pattern:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1770
    const-string/jumbo v2, "phoneFormated"

    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1$1;->this$4:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1;->this$3:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v5}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$3200(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1771
    const-string/jumbo v2, "phoneHash"

    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1$1;->this$4:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1;->this$3:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v5}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$3400(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1772
    const-string/jumbo v2, "code"

    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1$1;->this$4:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1;->this$3:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->val$req:Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->phone_code:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1773
    const-string/jumbo v5, "has_recovery"

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_password;->has_recovery:Z

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1774
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1$1;->this$4:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1;->this$3:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v5, 0x6

    invoke-virtual {v2, v5, v3, v0, v4}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    .line 1778
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "password":Lorg/telegram/tgnet/TLRPC$TL_account_password;
    :goto_1
    return-void

    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "password":Lorg/telegram/tgnet/TLRPC$TL_account_password;
    :cond_0
    move v2, v4

    .line 1773
    goto :goto_0

    .line 1776
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "password":Lorg/telegram/tgnet/TLRPC$TL_account_password;
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1$1;->this$4:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1;->this$3:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    const-string/jumbo v3, "AppName"

    const v4, 0x7f07007a

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
