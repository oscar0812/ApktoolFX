.class Lorg/telegram/ui/GroupInviteActivity$3$1;
.super Ljava/lang/Object;
.source "GroupInviteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupInviteActivity$3;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/GroupInviteActivity$3;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupInviteActivity$3;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/GroupInviteActivity$3;

    .prologue
    .line 214
    iput-object p1, p0, Lorg/telegram/ui/GroupInviteActivity$3$1;->this$1:Lorg/telegram/ui/GroupInviteActivity$3;

    iput-object p2, p0, Lorg/telegram/ui/GroupInviteActivity$3$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/GroupInviteActivity$3$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 217
    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity$3$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v1, :cond_1

    .line 218
    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity$3$1;->this$1:Lorg/telegram/ui/GroupInviteActivity$3;

    iget-object v2, v1, Lorg/telegram/ui/GroupInviteActivity$3;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity$3$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    invoke-static {v2, v1}, Lorg/telegram/ui/GroupInviteActivity;->access$202(Lorg/telegram/ui/GroupInviteActivity;Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    .line 219
    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity$3$1;->this$1:Lorg/telegram/ui/GroupInviteActivity$3;

    iget-boolean v1, v1, Lorg/telegram/ui/GroupInviteActivity$3;->val$newRequest:Z

    if-eqz v1, :cond_1

    .line 220
    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity$3$1;->this$1:Lorg/telegram/ui/GroupInviteActivity$3;

    iget-object v1, v1, Lorg/telegram/ui/GroupInviteActivity$3;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/GroupInviteActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 232
    :goto_0
    return-void

    .line 223
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity$3$1;->this$1:Lorg/telegram/ui/GroupInviteActivity$3;

    iget-object v1, v1, Lorg/telegram/ui/GroupInviteActivity$3;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/GroupInviteActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 224
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v1, "RevokeAlertNewLink"

    const v2, 0x7f070522

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 225
    const-string/jumbo v1, "RevokeLink"

    const v2, 0x7f070524

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 226
    const-string/jumbo v1, "OK"

    const v2, 0x7f070440

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 227
    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity$3$1;->this$1:Lorg/telegram/ui/GroupInviteActivity$3;

    iget-object v1, v1, Lorg/telegram/ui/GroupInviteActivity$3;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/GroupInviteActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 230
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity$3$1;->this$1:Lorg/telegram/ui/GroupInviteActivity$3;

    iget-object v1, v1, Lorg/telegram/ui/GroupInviteActivity$3;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/GroupInviteActivity;->access$602(Lorg/telegram/ui/GroupInviteActivity;Z)Z

    .line 231
    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity$3$1;->this$1:Lorg/telegram/ui/GroupInviteActivity$3;

    iget-object v1, v1, Lorg/telegram/ui/GroupInviteActivity$3;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupInviteActivity;->access$700(Lorg/telegram/ui/GroupInviteActivity;)Lorg/telegram/ui/GroupInviteActivity$ListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
