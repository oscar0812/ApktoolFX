.class Lorg/telegram/ui/PrivacySettingsActivity$2$3;
.super Ljava/lang/Object;
.source "PrivacySettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 297
    iput-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity$2$3;->this$1:Lorg/telegram/ui/PrivacySettingsActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 301
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/PrivacySettingsActivity$2$3;->this$1:Lorg/telegram/ui/PrivacySettingsActivity$2;

    iget-object v2, v2, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1300(Lorg/telegram/ui/PrivacySettingsActivity;)Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 302
    iget-object v2, p0, Lorg/telegram/ui/PrivacySettingsActivity$2$3;->this$1:Lorg/telegram/ui/PrivacySettingsActivity$2;

    iget-object v2, v2, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1400(Lorg/telegram/ui/PrivacySettingsActivity;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :cond_0
    :goto_0
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;-><init>()V

    .line 308
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;
    iget-object v2, p0, Lorg/telegram/ui/PrivacySettingsActivity$2$3;->this$1:Lorg/telegram/ui/PrivacySettingsActivity$2;

    iget-object v2, v2, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1200(Lorg/telegram/ui/PrivacySettingsActivity;)[Z

    move-result-object v2

    const/4 v3, 0x1

    aget-boolean v2, v2, v3

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;->credentials:Z

    .line 309
    iget-object v2, p0, Lorg/telegram/ui/PrivacySettingsActivity$2$3;->this$1:Lorg/telegram/ui/PrivacySettingsActivity$2;

    iget-object v2, v2, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1200(Lorg/telegram/ui/PrivacySettingsActivity;)[Z

    move-result-object v2

    aget-boolean v2, v2, v4

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;->info:Z

    .line 310
    const/4 v2, 0x0

    sput-object v2, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    .line 311
    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 312
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/PrivacySettingsActivity$2$3$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/PrivacySettingsActivity$2$3$1;-><init>(Lorg/telegram/ui/PrivacySettingsActivity$2$3;)V

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 318
    return-void

    .line 304
    .end local v1    # "req":Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
