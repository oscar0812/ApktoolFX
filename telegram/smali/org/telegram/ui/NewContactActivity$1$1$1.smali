.class Lorg/telegram/ui/NewContactActivity$1$1$1;
.super Ljava/lang/Object;
.source "NewContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/NewContactActivity$1$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/NewContactActivity$1$1;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$res:Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;


# direct methods
.method constructor <init>(Lorg/telegram/ui/NewContactActivity$1$1;Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/NewContactActivity$1$1;

    .prologue
    .line 155
    iput-object p1, p0, Lorg/telegram/ui/NewContactActivity$1$1$1;->this$2:Lorg/telegram/ui/NewContactActivity$1$1;

    iput-object p2, p0, Lorg/telegram/ui/NewContactActivity$1$1$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;

    iput-object p3, p0, Lorg/telegram/ui/NewContactActivity$1$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 158
    iget-object v1, p0, Lorg/telegram/ui/NewContactActivity$1$1$1;->this$2:Lorg/telegram/ui/NewContactActivity$1$1;

    iget-object v1, v1, Lorg/telegram/ui/NewContactActivity$1$1;->this$1:Lorg/telegram/ui/NewContactActivity$1;

    iget-object v1, v1, Lorg/telegram/ui/NewContactActivity$1;->this$0:Lorg/telegram/ui/NewContactActivity;

    invoke-static {v1, v6}, Lorg/telegram/ui/NewContactActivity;->access$002(Lorg/telegram/ui/NewContactActivity;Z)Z

    .line 159
    iget-object v1, p0, Lorg/telegram/ui/NewContactActivity$1$1$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;

    if-eqz v1, :cond_2

    .line 160
    iget-object v1, p0, Lorg/telegram/ui/NewContactActivity$1$1$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->users:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 161
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/NewContactActivity$1$1$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v6}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 162
    iget-object v1, p0, Lorg/telegram/ui/NewContactActivity$1$1$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, p0, Lorg/telegram/ui/NewContactActivity$1$1$1;->this$2:Lorg/telegram/ui/NewContactActivity$1$1;

    iget-object v2, v2, Lorg/telegram/ui/NewContactActivity$1$1;->this$1:Lorg/telegram/ui/NewContactActivity$1;

    iget-object v2, v2, Lorg/telegram/ui/NewContactActivity$1;->this$0:Lorg/telegram/ui/NewContactActivity;

    invoke-static {v1, v7, v2, v3, v3}, Lorg/telegram/messenger/MessagesController;->openChatOrProfileWith(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/NewContactActivity$1$1$1;->this$2:Lorg/telegram/ui/NewContactActivity$1$1;

    iget-object v1, v1, Lorg/telegram/ui/NewContactActivity$1$1;->this$1:Lorg/telegram/ui/NewContactActivity$1;

    iget-object v1, v1, Lorg/telegram/ui/NewContactActivity$1;->this$0:Lorg/telegram/ui/NewContactActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/NewContactActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lorg/telegram/ui/NewContactActivity$1$1$1;->this$2:Lorg/telegram/ui/NewContactActivity$1$1;

    iget-object v1, v1, Lorg/telegram/ui/NewContactActivity$1$1;->this$1:Lorg/telegram/ui/NewContactActivity$1;

    iget-object v1, v1, Lorg/telegram/ui/NewContactActivity$1;->this$0:Lorg/telegram/ui/NewContactActivity;

    invoke-static {v1, v6, v3}, Lorg/telegram/ui/NewContactActivity;->access$400(Lorg/telegram/ui/NewContactActivity;ZZ)V

    .line 168
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/NewContactActivity$1$1$1;->this$2:Lorg/telegram/ui/NewContactActivity$1$1;

    iget-object v1, v1, Lorg/telegram/ui/NewContactActivity$1$1;->this$1:Lorg/telegram/ui/NewContactActivity$1;

    iget-object v1, v1, Lorg/telegram/ui/NewContactActivity$1;->this$0:Lorg/telegram/ui/NewContactActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/NewContactActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 169
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v1, "AppName"

    const v2, 0x7f07007a

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 170
    const-string/jumbo v1, "ContactNotRegistered"

    const v2, 0x7f070191

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/telegram/ui/NewContactActivity$1$1$1;->this$2:Lorg/telegram/ui/NewContactActivity$1$1;

    iget-object v4, v4, Lorg/telegram/ui/NewContactActivity$1$1;->val$inputPhoneContact:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->first_name:Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/ui/NewContactActivity$1$1$1;->this$2:Lorg/telegram/ui/NewContactActivity$1$1;

    iget-object v5, v5, Lorg/telegram/ui/NewContactActivity$1$1;->val$inputPhoneContact:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->last_name:Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 171
    const-string/jumbo v1, "Cancel"

    const v2, 0x7f0700f4

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 172
    const-string/jumbo v1, "Invite"

    const v2, 0x7f07030f

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/NewContactActivity$1$1$1$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/NewContactActivity$1$1$1$1;-><init>(Lorg/telegram/ui/NewContactActivity$1$1$1;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 184
    iget-object v1, p0, Lorg/telegram/ui/NewContactActivity$1$1$1;->this$2:Lorg/telegram/ui/NewContactActivity$1$1;

    iget-object v1, v1, Lorg/telegram/ui/NewContactActivity$1$1;->this$1:Lorg/telegram/ui/NewContactActivity$1;

    iget-object v1, v1, Lorg/telegram/ui/NewContactActivity$1;->this$0:Lorg/telegram/ui/NewContactActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/NewContactActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 187
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/NewContactActivity$1$1$1;->this$2:Lorg/telegram/ui/NewContactActivity$1$1;

    iget-object v1, v1, Lorg/telegram/ui/NewContactActivity$1$1;->this$1:Lorg/telegram/ui/NewContactActivity$1;

    iget-object v1, v1, Lorg/telegram/ui/NewContactActivity$1;->this$0:Lorg/telegram/ui/NewContactActivity;

    invoke-static {v1, v6, v3}, Lorg/telegram/ui/NewContactActivity;->access$400(Lorg/telegram/ui/NewContactActivity;ZZ)V

    .line 188
    iget-object v1, p0, Lorg/telegram/ui/NewContactActivity$1$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v2, p0, Lorg/telegram/ui/NewContactActivity$1$1$1;->this$2:Lorg/telegram/ui/NewContactActivity$1$1;

    iget-object v2, v2, Lorg/telegram/ui/NewContactActivity$1$1;->this$1:Lorg/telegram/ui/NewContactActivity$1;

    iget-object v2, v2, Lorg/telegram/ui/NewContactActivity$1;->this$0:Lorg/telegram/ui/NewContactActivity;

    iget-object v3, p0, Lorg/telegram/ui/NewContactActivity$1$1$1;->this$2:Lorg/telegram/ui/NewContactActivity$1$1;

    iget-object v3, v3, Lorg/telegram/ui/NewContactActivity$1$1;->val$req:Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lorg/telegram/ui/Components/AlertsCreator;->processError(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    goto/16 :goto_0
.end method
