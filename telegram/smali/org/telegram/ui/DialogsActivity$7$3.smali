.class Lorg/telegram/ui/DialogsActivity$7$3;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity$7;->onItemClick(Landroid/view/View;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/DialogsActivity$7;

.field final synthetic val$isBot:Z

.field final synthetic val$isChat:Z

.field final synthetic val$pinned:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity$7;ZZZ)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/DialogsActivity$7;

    .prologue
    .line 792
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$7$3;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iput-boolean p2, p0, Lorg/telegram/ui/DialogsActivity$7$3;->val$pinned:Z

    iput-boolean p3, p0, Lorg/telegram/ui/DialogsActivity$7$3;->val$isChat:Z

    iput-boolean p4, p0, Lorg/telegram/ui/DialogsActivity$7$3;->val$isBot:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 795
    if-nez p2, :cond_2

    .line 796
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$7$3;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2700(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    iget-boolean v6, p0, Lorg/telegram/ui/DialogsActivity$7$3;->val$pinned:Z

    if-nez v6, :cond_1

    :goto_0
    const-wide/16 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/MessagesController;->pinDialog(JZLorg/telegram/tgnet/TLRPC$InputPeer;J)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/DialogsActivity$7$3;->val$pinned:Z

    if-nez v1, :cond_0

    .line 797
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$7$3;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/RecyclerListView;->smoothScrollToPosition(I)V

    .line 839
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v4, v8

    .line 796
    goto :goto_0

    .line 800
    :cond_2
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$7$3;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 801
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v1, "AppName"

    const v2, 0x7f07007a

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 802
    if-ne p2, v4, :cond_3

    .line 803
    const-string/jumbo v1, "AreYouSureClearHistory"

    const v2, 0x7f07008c

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 811
    :goto_2
    const-string/jumbo v1, "OK"

    const v2, 0x7f070440

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/DialogsActivity$7$3$1;

    invoke-direct {v2, p0, p2}, Lorg/telegram/ui/DialogsActivity$7$3$1;-><init>(Lorg/telegram/ui/DialogsActivity$7$3;I)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 836
    const-string/jumbo v1, "Cancel"

    const v2, 0x7f0700f4

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 837
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$7$3;->this$1:Lorg/telegram/ui/DialogsActivity$7;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/DialogsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_1

    .line 805
    :cond_3
    iget-boolean v1, p0, Lorg/telegram/ui/DialogsActivity$7$3;->val$isChat:Z

    if-eqz v1, :cond_4

    .line 806
    const-string/jumbo v1, "AreYouSureDeleteAndExit"

    const v2, 0x7f07008e

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_2

    .line 808
    :cond_4
    const-string/jumbo v1, "AreYouSureDeleteThisChat"

    const v2, 0x7f070092

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_2
.end method
