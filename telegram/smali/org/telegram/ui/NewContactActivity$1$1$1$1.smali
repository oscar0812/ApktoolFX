.class Lorg/telegram/ui/NewContactActivity$1$1$1$1;
.super Ljava/lang/Object;
.source "NewContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/NewContactActivity$1$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lorg/telegram/ui/NewContactActivity$1$1$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/NewContactActivity$1$1$1;)V
    .locals 0
    .param p1, "this$3"    # Lorg/telegram/ui/NewContactActivity$1$1$1;

    .prologue
    .line 172
    iput-object p1, p0, Lorg/telegram/ui/NewContactActivity$1$1$1$1;->this$3:Lorg/telegram/ui/NewContactActivity$1$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 176
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    const-string/jumbo v3, "sms"

    iget-object v4, p0, Lorg/telegram/ui/NewContactActivity$1$1$1$1;->this$3:Lorg/telegram/ui/NewContactActivity$1$1$1;

    iget-object v4, v4, Lorg/telegram/ui/NewContactActivity$1$1$1;->this$2:Lorg/telegram/ui/NewContactActivity$1$1;

    iget-object v4, v4, Lorg/telegram/ui/NewContactActivity$1$1;->val$inputPhoneContact:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->phone:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 177
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "sms_body"

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/ContactsController;->getInviteText(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    iget-object v2, p0, Lorg/telegram/ui/NewContactActivity$1$1$1$1;->this$3:Lorg/telegram/ui/NewContactActivity$1$1$1;

    iget-object v2, v2, Lorg/telegram/ui/NewContactActivity$1$1$1;->this$2:Lorg/telegram/ui/NewContactActivity$1$1;

    iget-object v2, v2, Lorg/telegram/ui/NewContactActivity$1$1;->this$1:Lorg/telegram/ui/NewContactActivity$1;

    iget-object v2, v2, Lorg/telegram/ui/NewContactActivity$1;->this$0:Lorg/telegram/ui/NewContactActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/NewContactActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x1f4

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
