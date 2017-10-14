.class Lorg/telegram/ui/SettingsActivity$11$2;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SettingsActivity$11;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/SettingsActivity$11;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SettingsActivity$11;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/SettingsActivity$11;

    .prologue
    .line 987
    iput-object p1, p0, Lorg/telegram/ui/SettingsActivity$11$2;->this$1:Lorg/telegram/ui/SettingsActivity$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 991
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$11$2;->this$1:Lorg/telegram/ui/SettingsActivity$11;

    iget-object v1, v1, Lorg/telegram/ui/SettingsActivity$11;->val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 995
    :goto_0
    return-void

    .line 992
    :catch_0
    move-exception v0

    .line 993
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
