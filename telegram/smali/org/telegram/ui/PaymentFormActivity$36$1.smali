.class Lorg/telegram/ui/PaymentFormActivity$36$1;
.super Ljava/lang/Object;
.source "PaymentFormActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PaymentFormActivity$36;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PaymentFormActivity$36;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PaymentFormActivity$36;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PaymentFormActivity$36;

    .prologue
    .line 3059
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$36$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$36;

    iput-object p2, p0, Lorg/telegram/ui/PaymentFormActivity$36$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/PaymentFormActivity$36$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 3062
    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity$36$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v5, :cond_1

    .line 3063
    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity$36$1;->val$response:Lorg/telegram/tgnet/TLObject;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_account_noPassword;

    if-eqz v5, :cond_0

    .line 3064
    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity$36$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$36;

    iget-object v5, v5, Lorg/telegram/ui/PaymentFormActivity$36;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v5, v9}, Lorg/telegram/ui/PaymentFormActivity;->access$3002(Lorg/telegram/ui/PaymentFormActivity;Z)Z

    .line 3065
    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity$36$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$36;

    iget-object v5, v5, Lorg/telegram/ui/PaymentFormActivity$36;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v5}, Lorg/telegram/ui/PaymentFormActivity;->access$200(Lorg/telegram/ui/PaymentFormActivity;)V

    .line 3119
    :goto_0
    return-void

    .line 3067
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$36$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_account_password;

    .line 3068
    .local v0, "currentPassword":Lorg/telegram/tgnet/TLRPC$TL_account_password;
    const/4 v3, 0x0

    .line 3070
    .local v3, "passwordBytes":[B
    :try_start_0
    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity$36$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$36;

    iget-object v5, v5, Lorg/telegram/ui/PaymentFormActivity$36;->val$password:Ljava/lang/String;

    const-string/jumbo v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 3075
    :goto_1
    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_account_password;->current_salt:[B

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    array-length v6, v3

    add-int/2addr v5, v6

    new-array v2, v5, [B

    .line 3076
    .local v2, "hash":[B
    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_account_password;->current_salt:[B

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_account_password;->current_salt:[B

    array-length v6, v6

    invoke-static {v5, v9, v2, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3077
    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_account_password;->current_salt:[B

    array-length v5, v5

    array-length v6, v3

    invoke-static {v3, v9, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3078
    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_account_password;->current_salt:[B

    array-length v6, v2

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_account_password;->current_salt:[B

    array-length v7, v7

    sub-int/2addr v6, v7

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_account_password;->current_salt:[B

    array-length v7, v7

    invoke-static {v5, v9, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3080
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_account_getTmpPassword;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_account_getTmpPassword;-><init>()V

    .line 3081
    .local v4, "req":Lorg/telegram/tgnet/TLRPC$TL_account_getTmpPassword;
    array-length v5, v2

    invoke-static {v2, v9, v5}, Lorg/telegram/messenger/Utilities;->computeSHA256([BII)[B

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_account_getTmpPassword;->password_hash:[B

    .line 3082
    const/16 v5, 0x708

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$TL_account_getTmpPassword;->period:I

    .line 3083
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/PaymentFormActivity$36$1$1;

    invoke-direct {v6, p0, v4}, Lorg/telegram/ui/PaymentFormActivity$36$1$1;-><init>(Lorg/telegram/ui/PaymentFormActivity$36$1;Lorg/telegram/tgnet/TLRPC$TL_account_getTmpPassword;)V

    const/4 v7, 0x2

    invoke-virtual {v5, v4, v6, v7}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_0

    .line 3071
    .end local v2    # "hash":[B
    .end local v4    # "req":Lorg/telegram/tgnet/TLRPC$TL_account_getTmpPassword;
    :catch_0
    move-exception v1

    .line 3072
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 3115
    .end local v0    # "currentPassword":Lorg/telegram/tgnet/TLRPC$TL_account_password;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "passwordBytes":[B
    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity$36$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v6, p0, Lorg/telegram/ui/PaymentFormActivity$36$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$36;

    iget-object v6, v6, Lorg/telegram/ui/PaymentFormActivity$36;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    iget-object v7, p0, Lorg/telegram/ui/PaymentFormActivity$36$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$36;

    iget-object v7, v7, Lorg/telegram/ui/PaymentFormActivity$36;->val$req:Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v5, v6, v7, v8}, Lorg/telegram/ui/Components/AlertsCreator;->processError(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    .line 3116
    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity$36$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$36;

    iget-object v5, v5, Lorg/telegram/ui/PaymentFormActivity$36;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    const/4 v6, 0x1

    invoke-static {v5, v6, v9}, Lorg/telegram/ui/PaymentFormActivity;->access$2500(Lorg/telegram/ui/PaymentFormActivity;ZZ)V

    .line 3117
    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity$36$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$36;

    iget-object v5, v5, Lorg/telegram/ui/PaymentFormActivity$36;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v5, v9}, Lorg/telegram/ui/PaymentFormActivity;->access$500(Lorg/telegram/ui/PaymentFormActivity;Z)V

    goto :goto_0
.end method
