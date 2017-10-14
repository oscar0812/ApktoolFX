.class Lorg/telegram/ui/ChangeBioActivity$6$1;
.super Ljava/lang/Object;
.source "ChangeBioActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangeBioActivity$6;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChangeBioActivity$6;

.field final synthetic val$user:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangeBioActivity$6;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChangeBioActivity$6;

    .prologue
    .line 222
    iput-object p1, p0, Lorg/telegram/ui/ChangeBioActivity$6$1;->this$1:Lorg/telegram/ui/ChangeBioActivity$6;

    iput-object p2, p0, Lorg/telegram/ui/ChangeBioActivity$6$1;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 226
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/ChangeBioActivity$6$1;->this$1:Lorg/telegram/ui/ChangeBioActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/ChangeBioActivity$6;->val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ChangeBioActivity$6$1;->this$1:Lorg/telegram/ui/ChangeBioActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/ChangeBioActivity$6;->val$userFull:Lorg/telegram/tgnet/TLRPC$TL_userFull;

    iget-object v2, p0, Lorg/telegram/ui/ChangeBioActivity$6$1;->this$1:Lorg/telegram/ui/ChangeBioActivity$6;

    iget-object v2, v2, Lorg/telegram/ui/ChangeBioActivity$6;->val$newName:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_userFull;->about:Ljava/lang/String;

    .line 231
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoaded:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/ui/ChangeBioActivity$6$1;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/telegram/ui/ChangeBioActivity$6$1;->this$1:Lorg/telegram/ui/ChangeBioActivity$6;

    iget-object v5, v5, Lorg/telegram/ui/ChangeBioActivity$6;->val$userFull:Lorg/telegram/tgnet/TLRPC$TL_userFull;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 232
    iget-object v1, p0, Lorg/telegram/ui/ChangeBioActivity$6$1;->this$1:Lorg/telegram/ui/ChangeBioActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/ChangeBioActivity$6;->this$0:Lorg/telegram/ui/ChangeBioActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChangeBioActivity;->finishFragment()V

    .line 233
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
