.class final Lorg/telegram/messenger/browser/Browser$3;
.super Ljava/lang/Object;
.source "Browser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Landroid/net/Uri;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$progressDialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

.field final synthetic val$reqId:I


# direct methods
.method constructor <init>([Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lorg/telegram/messenger/browser/Browser$3;->val$progressDialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

    iput p2, p0, Lorg/telegram/messenger/browser/Browser$3;->val$reqId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 214
    iget-object v0, p0, Lorg/telegram/messenger/browser/Browser$3;->val$progressDialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 236
    :goto_0
    return-void

    .line 218
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/browser/Browser$3;->val$progressDialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string/jumbo v1, "Loading"

    const v2, 0x7f07035a

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v0, p0, Lorg/telegram/messenger/browser/Browser$3;->val$progressDialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 220
    iget-object v0, p0, Lorg/telegram/messenger/browser/Browser$3;->val$progressDialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCancelable(Z)V

    .line 221
    iget-object v0, p0, Lorg/telegram/messenger/browser/Browser$3;->val$progressDialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, -0x2

    const-string/jumbo v2, "Cancel"

    const v3, 0x7f0700f4

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/browser/Browser$3$1;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/browser/Browser$3$1;-><init>(Lorg/telegram/messenger/browser/Browser$3;)V

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 232
    iget-object v0, p0, Lorg/telegram/messenger/browser/Browser$3;->val$progressDialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    goto :goto_0
.end method
