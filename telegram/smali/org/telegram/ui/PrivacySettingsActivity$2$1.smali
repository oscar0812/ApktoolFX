.class Lorg/telegram/ui/PrivacySettingsActivity$2$1;
.super Ljava/lang/Object;
.source "PrivacySettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PrivacySettingsActivity$2;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PrivacySettingsActivity$2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PrivacySettingsActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PrivacySettingsActivity$2;

    .prologue
    .line 187
    iput-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity$2$1;->this$1:Lorg/telegram/ui/PrivacySettingsActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 190
    const/4 v2, 0x0

    .line 191
    .local v2, "value":I
    if-nez p2, :cond_1

    .line 192
    const/16 v2, 0x1e

    .line 200
    :cond_0
    :goto_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v3, p0, Lorg/telegram/ui/PrivacySettingsActivity$2$1;->this$1:Lorg/telegram/ui/PrivacySettingsActivity$2;

    iget-object v3, v3, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/PrivacySettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 201
    .local v0, "progressDialog":Lorg/telegram/ui/ActionBar/AlertDialog;
    const-string/jumbo v3, "Loading"

    const v4, 0x7f07035a

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 202
    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 203
    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCancelable(Z)V

    .line 204
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    .line 206
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;-><init>()V

    .line 207
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_accountDaysTTL;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_accountDaysTTL;-><init>()V

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;->ttl:Lorg/telegram/tgnet/TLRPC$TL_accountDaysTTL;

    .line 208
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;->ttl:Lorg/telegram/tgnet/TLRPC$TL_accountDaysTTL;

    iput v2, v3, Lorg/telegram/tgnet/TLRPC$TL_accountDaysTTL;->days:I

    .line 209
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/PrivacySettingsActivity$2$1$1;

    invoke-direct {v4, p0, v0, v1}, Lorg/telegram/ui/PrivacySettingsActivity$2$1$1;-><init>(Lorg/telegram/ui/PrivacySettingsActivity$2$1;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;)V

    invoke-virtual {v3, v1, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 228
    return-void

    .line 193
    .end local v0    # "progressDialog":Lorg/telegram/ui/ActionBar/AlertDialog;
    .end local v1    # "req":Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;
    :cond_1
    if-ne p2, v4, :cond_2

    .line 194
    const/16 v2, 0x5a

    goto :goto_0

    .line 195
    :cond_2
    const/4 v3, 0x2

    if-ne p2, v3, :cond_3

    .line 196
    const/16 v2, 0xb6

    goto :goto_0

    .line 197
    :cond_3
    const/4 v3, 0x3

    if-ne p2, v3, :cond_0

    .line 198
    const/16 v2, 0x16d

    goto :goto_0
.end method
