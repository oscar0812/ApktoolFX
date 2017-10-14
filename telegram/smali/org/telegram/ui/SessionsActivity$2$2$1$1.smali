.class Lorg/telegram/ui/SessionsActivity$2$2$1$1;
.super Ljava/lang/Object;
.source "SessionsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SessionsActivity$2$2$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lorg/telegram/ui/SessionsActivity$2$2$1;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SessionsActivity$2$2$1;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0
    .param p1, "this$3"    # Lorg/telegram/ui/SessionsActivity$2$2$1;

    .prologue
    .line 217
    iput-object p1, p0, Lorg/telegram/ui/SessionsActivity$2$2$1$1;->this$3:Lorg/telegram/ui/SessionsActivity$2$2$1;

    iput-object p2, p0, Lorg/telegram/ui/SessionsActivity$2$2$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 221
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity$2$2$1$1;->this$3:Lorg/telegram/ui/SessionsActivity$2$2$1;

    iget-object v1, v1, Lorg/telegram/ui/SessionsActivity$2$2$1;->val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity$2$2$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v1, :cond_0

    .line 226
    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity$2$2$1$1;->this$3:Lorg/telegram/ui/SessionsActivity$2$2$1;

    iget-object v1, v1, Lorg/telegram/ui/SessionsActivity$2$2$1;->this$2:Lorg/telegram/ui/SessionsActivity$2$2;

    iget-object v1, v1, Lorg/telegram/ui/SessionsActivity$2$2;->this$1:Lorg/telegram/ui/SessionsActivity$2;

    iget-object v1, v1, Lorg/telegram/ui/SessionsActivity$2;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SessionsActivity;->access$300(Lorg/telegram/ui/SessionsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/SessionsActivity$2$2$1$1;->this$3:Lorg/telegram/ui/SessionsActivity$2$2$1;

    iget-object v2, v2, Lorg/telegram/ui/SessionsActivity$2$2$1;->val$authorization:Lorg/telegram/tgnet/TLRPC$TL_authorization;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 227
    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity$2$2$1$1;->this$3:Lorg/telegram/ui/SessionsActivity$2$2$1;

    iget-object v1, v1, Lorg/telegram/ui/SessionsActivity$2$2$1;->this$2:Lorg/telegram/ui/SessionsActivity$2$2;

    iget-object v1, v1, Lorg/telegram/ui/SessionsActivity$2$2;->this$1:Lorg/telegram/ui/SessionsActivity$2;

    iget-object v1, v1, Lorg/telegram/ui/SessionsActivity$2;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SessionsActivity;->access$400(Lorg/telegram/ui/SessionsActivity;)V

    .line 228
    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity$2$2$1$1;->this$3:Lorg/telegram/ui/SessionsActivity$2$2$1;

    iget-object v1, v1, Lorg/telegram/ui/SessionsActivity$2$2$1;->this$2:Lorg/telegram/ui/SessionsActivity$2$2;

    iget-object v1, v1, Lorg/telegram/ui/SessionsActivity$2$2;->this$1:Lorg/telegram/ui/SessionsActivity$2;

    iget-object v1, v1, Lorg/telegram/ui/SessionsActivity$2;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SessionsActivity;->access$500(Lorg/telegram/ui/SessionsActivity;)Lorg/telegram/ui/SessionsActivity$ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 229
    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity$2$2$1$1;->this$3:Lorg/telegram/ui/SessionsActivity$2$2$1;

    iget-object v1, v1, Lorg/telegram/ui/SessionsActivity$2$2$1;->this$2:Lorg/telegram/ui/SessionsActivity$2$2;

    iget-object v1, v1, Lorg/telegram/ui/SessionsActivity$2$2;->this$1:Lorg/telegram/ui/SessionsActivity$2;

    iget-object v1, v1, Lorg/telegram/ui/SessionsActivity$2;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SessionsActivity;->access$500(Lorg/telegram/ui/SessionsActivity;)Lorg/telegram/ui/SessionsActivity$ListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/SessionsActivity$ListAdapter;->notifyDataSetChanged()V

    .line 232
    :cond_0
    return-void

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
