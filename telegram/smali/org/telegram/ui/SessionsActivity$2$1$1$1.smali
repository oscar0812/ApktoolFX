.class Lorg/telegram/ui/SessionsActivity$2$1$1$1;
.super Ljava/lang/Object;
.source "SessionsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SessionsActivity$2$1$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lorg/telegram/ui/SessionsActivity$2$1$1;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SessionsActivity$2$1$1;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$3"    # Lorg/telegram/ui/SessionsActivity$2$1$1;

    .prologue
    .line 169
    iput-object p1, p0, Lorg/telegram/ui/SessionsActivity$2$1$1$1;->this$3:Lorg/telegram/ui/SessionsActivity$2$1$1;

    iput-object p2, p0, Lorg/telegram/ui/SessionsActivity$2$1$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/SessionsActivity$2$1$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 172
    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity$2$1$1$1;->this$3:Lorg/telegram/ui/SessionsActivity$2$1$1;

    iget-object v1, v1, Lorg/telegram/ui/SessionsActivity$2$1$1;->this$2:Lorg/telegram/ui/SessionsActivity$2$1;

    iget-object v1, v1, Lorg/telegram/ui/SessionsActivity$2$1;->this$1:Lorg/telegram/ui/SessionsActivity$2;

    iget-object v1, v1, Lorg/telegram/ui/SessionsActivity$2;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/SessionsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 183
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity$2$1$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity$2$1$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz v1, :cond_1

    .line 176
    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity$2$1$1$1;->this$3:Lorg/telegram/ui/SessionsActivity$2$1$1;

    iget-object v1, v1, Lorg/telegram/ui/SessionsActivity$2$1$1;->this$2:Lorg/telegram/ui/SessionsActivity$2$1;

    iget-object v1, v1, Lorg/telegram/ui/SessionsActivity$2$1;->this$1:Lorg/telegram/ui/SessionsActivity$2;

    iget-object v1, v1, Lorg/telegram/ui/SessionsActivity$2;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/SessionsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "TerminateAllSessions"

    const v3, 0x7f0705cd

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 177
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 182
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity$2$1$1$1;->this$3:Lorg/telegram/ui/SessionsActivity$2$1$1;

    iget-object v1, v1, Lorg/telegram/ui/SessionsActivity$2$1$1;->this$2:Lorg/telegram/ui/SessionsActivity$2$1;

    iget-object v1, v1, Lorg/telegram/ui/SessionsActivity$2$1;->this$1:Lorg/telegram/ui/SessionsActivity$2;

    iget-object v1, v1, Lorg/telegram/ui/SessionsActivity$2;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/SessionsActivity;->finishFragment()V

    goto :goto_0

    .line 179
    .end local v0    # "toast":Landroid/widget/Toast;
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity$2$1$1$1;->this$3:Lorg/telegram/ui/SessionsActivity$2$1$1;

    iget-object v1, v1, Lorg/telegram/ui/SessionsActivity$2$1$1;->this$2:Lorg/telegram/ui/SessionsActivity$2$1;

    iget-object v1, v1, Lorg/telegram/ui/SessionsActivity$2$1;->this$1:Lorg/telegram/ui/SessionsActivity$2;

    iget-object v1, v1, Lorg/telegram/ui/SessionsActivity$2;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/SessionsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "UnknownError"

    const v3, 0x7f0705ec

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 180
    .restart local v0    # "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
