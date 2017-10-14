.class Lorg/telegram/ui/GroupInviteActivity$2;
.super Ljava/lang/Object;
.source "GroupInviteActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupInviteActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/GroupInviteActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupInviteActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/GroupInviteActivity;

    .prologue
    .line 123
    iput-object p1, p0, Lorg/telegram/ui/GroupInviteActivity$2;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 126
    iget-object v5, p0, Lorg/telegram/ui/GroupInviteActivity$2;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/GroupInviteActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    if-nez v5, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/GroupInviteActivity$2;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupInviteActivity;->access$000(Lorg/telegram/ui/GroupInviteActivity;)I

    move-result v5

    if-eq p2, v5, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/GroupInviteActivity$2;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupInviteActivity;->access$100(Lorg/telegram/ui/GroupInviteActivity;)I

    move-result v5

    if-ne p2, v5, :cond_3

    .line 130
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/GroupInviteActivity$2;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupInviteActivity;->access$200(Lorg/telegram/ui/GroupInviteActivity;)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 134
    :try_start_0
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "clipboard"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipboardManager;

    .line 135
    .local v2, "clipboard":Landroid/content/ClipboardManager;
    const-string/jumbo v5, "label"

    iget-object v6, p0, Lorg/telegram/ui/GroupInviteActivity$2;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupInviteActivity;->access$200(Lorg/telegram/ui/GroupInviteActivity;)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;->link:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 136
    .local v1, "clip":Landroid/content/ClipData;
    invoke-virtual {v2, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 137
    iget-object v5, p0, Lorg/telegram/ui/GroupInviteActivity$2;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/GroupInviteActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v6, "LinkCopied"

    const v7, 0x7f07034c

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    .end local v1    # "clip":Landroid/content/ClipData;
    .end local v2    # "clipboard":Landroid/content/ClipboardManager;
    :catch_0
    move-exception v3

    .line 139
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 141
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/GroupInviteActivity$2;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupInviteActivity;->access$300(Lorg/telegram/ui/GroupInviteActivity;)I

    move-result v5

    if-ne p2, v5, :cond_4

    .line 142
    iget-object v5, p0, Lorg/telegram/ui/GroupInviteActivity$2;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupInviteActivity;->access$200(Lorg/telegram/ui/GroupInviteActivity;)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 146
    :try_start_1
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.SEND"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "text/plain"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-string/jumbo v5, "android.intent.extra.TEXT"

    iget-object v6, p0, Lorg/telegram/ui/GroupInviteActivity$2;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupInviteActivity;->access$200(Lorg/telegram/ui/GroupInviteActivity;)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;->link:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    iget-object v5, p0, Lorg/telegram/ui/GroupInviteActivity$2;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/GroupInviteActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v6, "InviteToGroupByLink"

    const v7, 0x7f07031b

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v6

    const/16 v7, 0x1f4

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 150
    .end local v4    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v3

    .line 151
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 153
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v5, p0, Lorg/telegram/ui/GroupInviteActivity$2;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupInviteActivity;->access$400(Lorg/telegram/ui/GroupInviteActivity;)I

    move-result v5

    if-ne p2, v5, :cond_0

    .line 154
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v5, p0, Lorg/telegram/ui/GroupInviteActivity$2;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/GroupInviteActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 155
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v5, "RevokeAlert"

    const v6, 0x7f070521

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 156
    const-string/jumbo v5, "RevokeLink"

    const v6, 0x7f070524

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 157
    const-string/jumbo v5, "RevokeButton"

    const v6, 0x7f070523

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/GroupInviteActivity$2$1;

    invoke-direct {v6, p0}, Lorg/telegram/ui/GroupInviteActivity$2$1;-><init>(Lorg/telegram/ui/GroupInviteActivity$2;)V

    invoke-virtual {v0, v5, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 163
    const-string/jumbo v5, "Cancel"

    const v6, 0x7f0700f4

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 164
    iget-object v5, p0, Lorg/telegram/ui/GroupInviteActivity$2;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/GroupInviteActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0
.end method
