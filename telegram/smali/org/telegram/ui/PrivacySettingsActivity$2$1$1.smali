.class Lorg/telegram/ui/PrivacySettingsActivity$2$1$1;
.super Ljava/lang/Object;
.source "PrivacySettingsActivity.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PrivacySettingsActivity$2$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/PrivacySettingsActivity$2$1;

.field final synthetic val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field final synthetic val$req:Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PrivacySettingsActivity$2$1;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/PrivacySettingsActivity$2$1;

    .prologue
    .line 209
    iput-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity$2$1$1;->this$2:Lorg/telegram/ui/PrivacySettingsActivity$2$1;

    iput-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity$2$1$1;->val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    iput-object p3, p0, Lorg/telegram/ui/PrivacySettingsActivity$2$1$1;->val$req:Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 212
    new-instance v0, Lorg/telegram/ui/PrivacySettingsActivity$2$1$1$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/PrivacySettingsActivity$2$1$1$1;-><init>(Lorg/telegram/ui/PrivacySettingsActivity$2$1$1;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 226
    return-void
.end method
