.class Lorg/telegram/ui/SessionsActivity$2$2;
.super Ljava/lang/Object;
.source "SessionsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SessionsActivity$2;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/SessionsActivity$2;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/SessionsActivity$2;I)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/SessionsActivity$2;

    .prologue
    .line 199
    iput-object p1, p0, Lorg/telegram/ui/SessionsActivity$2$2;->this$1:Lorg/telegram/ui/SessionsActivity$2;

    iput p2, p0, Lorg/telegram/ui/SessionsActivity$2$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "option"    # I

    .prologue
    const/4 v5, 0x0

    .line 202
    iget-object v3, p0, Lorg/telegram/ui/SessionsActivity$2$2;->this$1:Lorg/telegram/ui/SessionsActivity$2;

    iget-object v3, v3, Lorg/telegram/ui/SessionsActivity$2;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/SessionsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_0

    .line 236
    :goto_0
    return-void

    .line 205
    :cond_0
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v3, p0, Lorg/telegram/ui/SessionsActivity$2$2;->this$1:Lorg/telegram/ui/SessionsActivity$2;

    iget-object v3, v3, Lorg/telegram/ui/SessionsActivity$2;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/SessionsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 206
    .local v1, "progressDialog":Lorg/telegram/ui/ActionBar/AlertDialog;
    const-string/jumbo v3, "Loading"

    const v4, 0x7f07035a

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 207
    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 208
    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCancelable(Z)V

    .line 209
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    .line 211
    iget-object v3, p0, Lorg/telegram/ui/SessionsActivity$2$2;->this$1:Lorg/telegram/ui/SessionsActivity$2;

    iget-object v3, v3, Lorg/telegram/ui/SessionsActivity$2;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v3}, Lorg/telegram/ui/SessionsActivity;->access$300(Lorg/telegram/ui/SessionsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/SessionsActivity$2$2;->val$position:I

    iget-object v5, p0, Lorg/telegram/ui/SessionsActivity$2$2;->this$1:Lorg/telegram/ui/SessionsActivity$2;

    iget-object v5, v5, Lorg/telegram/ui/SessionsActivity$2;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v5}, Lorg/telegram/ui/SessionsActivity;->access$100(Lorg/telegram/ui/SessionsActivity;)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_authorization;

    .line 212
    .local v0, "authorization":Lorg/telegram/tgnet/TLRPC$TL_authorization;
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_account_resetAuthorization;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_account_resetAuthorization;-><init>()V

    .line 213
    .local v2, "req":Lorg/telegram/tgnet/TLRPC$TL_account_resetAuthorization;
    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_authorization;->hash:J

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$TL_account_resetAuthorization;->hash:J

    .line 214
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/SessionsActivity$2$2$1;

    invoke-direct {v4, p0, v1, v0}, Lorg/telegram/ui/SessionsActivity$2$2$1;-><init>(Lorg/telegram/ui/SessionsActivity$2$2;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_authorization;)V

    invoke-virtual {v3, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method
