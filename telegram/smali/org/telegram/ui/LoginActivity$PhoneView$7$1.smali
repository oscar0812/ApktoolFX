.class Lorg/telegram/ui/LoginActivity$PhoneView$7$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$PhoneView$7;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/LoginActivity$PhoneView$7;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity$PhoneView$7;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/LoginActivity$PhoneView$7;

    .prologue
    .line 1067
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$7$1;->this$2:Lorg/telegram/ui/LoginActivity$PhoneView$7;

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView$7$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/LoginActivity$PhoneView$7$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const v2, 0x7f07007a

    .line 1070
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$7$1;->this$2:Lorg/telegram/ui/LoginActivity$PhoneView$7;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView$7;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {v0, v3}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$1802(Lorg/telegram/ui/LoginActivity$PhoneView;Z)Z

    .line 1071
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$7$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v0, :cond_1

    .line 1072
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$7$1;->this$2:Lorg/telegram/ui/LoginActivity$PhoneView$7;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView$7;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$7$1;->this$2:Lorg/telegram/ui/LoginActivity$PhoneView$7;

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView$7;->val$params:Landroid/os/Bundle;

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$7$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

    invoke-static {v1, v2, v0}, Lorg/telegram/ui/LoginActivity;->access$1900(Lorg/telegram/ui/LoginActivity;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;)V

    .line 1092
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$7$1;->this$2:Lorg/telegram/ui/LoginActivity$PhoneView$7;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView$7;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/LoginActivity;->needHideProgress()V

    .line 1093
    return-void

    .line 1074
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$7$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1075
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$7$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "PHONE_NUMBER_INVALID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1076
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$7$1;->this$2:Lorg/telegram/ui/LoginActivity$PhoneView$7;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView$7;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$7$1;->this$2:Lorg/telegram/ui/LoginActivity$PhoneView$7;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$PhoneView$7;->val$req:Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;->phone_number:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lorg/telegram/ui/LoginActivity;->access$2000(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1077
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$7$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "PHONE_NUMBER_FLOOD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1078
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$7$1;->this$2:Lorg/telegram/ui/LoginActivity$PhoneView$7;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView$7;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    const-string/jumbo v1, "AppName"

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "PhoneNumberFlood"

    const v3, 0x7f0704ba

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1079
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$7$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "PHONE_NUMBER_BANNED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1080
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$7$1;->this$2:Lorg/telegram/ui/LoginActivity$PhoneView$7;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView$7;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$7$1;->this$2:Lorg/telegram/ui/LoginActivity$PhoneView$7;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$PhoneView$7;->val$req:Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;->phone_number:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/LoginActivity;->access$2000(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1081
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$7$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "PHONE_CODE_EMPTY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$7$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "PHONE_CODE_INVALID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1082
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$7$1;->this$2:Lorg/telegram/ui/LoginActivity$PhoneView$7;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView$7;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    const-string/jumbo v1, "AppName"

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "InvalidCode"

    const v3, 0x7f07030a

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1083
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$7$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "PHONE_CODE_EXPIRED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1084
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$7$1;->this$2:Lorg/telegram/ui/LoginActivity$PhoneView$7;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView$7;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    const-string/jumbo v1, "AppName"

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "CodeExpired"

    const v3, 0x7f07017c

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1085
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$7$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "FLOOD_WAIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1086
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$7$1;->this$2:Lorg/telegram/ui/LoginActivity$PhoneView$7;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView$7;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    const-string/jumbo v1, "AppName"

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "FloodWait"

    const v3, 0x7f070284

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1087
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$7$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    const/16 v1, -0x3e8

    if-eq v0, v1, :cond_0

    .line 1088
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$7$1;->this$2:Lorg/telegram/ui/LoginActivity$PhoneView$7;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView$7;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    const-string/jumbo v1, "AppName"

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$PhoneView$7$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
