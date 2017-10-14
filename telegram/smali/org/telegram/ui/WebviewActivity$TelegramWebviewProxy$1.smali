.class Lorg/telegram/ui/WebviewActivity$TelegramWebviewProxy$1;
.super Ljava/lang/Object;
.source "WebviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/WebviewActivity$TelegramWebviewProxy;->postEvent(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/WebviewActivity$TelegramWebviewProxy;

.field final synthetic val$eventName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/WebviewActivity$TelegramWebviewProxy;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/WebviewActivity$TelegramWebviewProxy;

    .prologue
    .line 71
    iput-object p1, p0, Lorg/telegram/ui/WebviewActivity$TelegramWebviewProxy$1;->this$1:Lorg/telegram/ui/WebviewActivity$TelegramWebviewProxy;

    iput-object p2, p0, Lorg/telegram/ui/WebviewActivity$TelegramWebviewProxy$1;->val$eventName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 74
    iget-object v0, p0, Lorg/telegram/ui/WebviewActivity$TelegramWebviewProxy$1;->this$1:Lorg/telegram/ui/WebviewActivity$TelegramWebviewProxy;

    iget-object v0, v0, Lorg/telegram/ui/WebviewActivity$TelegramWebviewProxy;->this$0:Lorg/telegram/ui/WebviewActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/WebviewActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/WebviewActivity$TelegramWebviewProxy$1;->val$eventName:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 78
    iget-object v2, p0, Lorg/telegram/ui/WebviewActivity$TelegramWebviewProxy$1;->val$eventName:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 86
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/WebviewActivity$TelegramWebviewProxy$1;->this$1:Lorg/telegram/ui/WebviewActivity$TelegramWebviewProxy;

    iget-object v7, v0, Lorg/telegram/ui/WebviewActivity$TelegramWebviewProxy;->this$0:Lorg/telegram/ui/WebviewActivity;

    new-instance v0, Lorg/telegram/ui/Components/ShareAlert;

    iget-object v1, p0, Lorg/telegram/ui/WebviewActivity$TelegramWebviewProxy$1;->this$1:Lorg/telegram/ui/WebviewActivity$TelegramWebviewProxy;

    iget-object v1, v1, Lorg/telegram/ui/WebviewActivity$TelegramWebviewProxy;->this$0:Lorg/telegram/ui/WebviewActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/WebviewActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/WebviewActivity$TelegramWebviewProxy$1;->this$1:Lorg/telegram/ui/WebviewActivity$TelegramWebviewProxy;

    iget-object v2, v2, Lorg/telegram/ui/WebviewActivity$TelegramWebviewProxy;->this$0:Lorg/telegram/ui/WebviewActivity;

    invoke-static {v2}, Lorg/telegram/ui/WebviewActivity;->access$000(Lorg/telegram/ui/WebviewActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v5, p0, Lorg/telegram/ui/WebviewActivity$TelegramWebviewProxy$1;->this$1:Lorg/telegram/ui/WebviewActivity$TelegramWebviewProxy;

    iget-object v5, v5, Lorg/telegram/ui/WebviewActivity$TelegramWebviewProxy;->this$0:Lorg/telegram/ui/WebviewActivity;

    invoke-static {v5}, Lorg/telegram/ui/WebviewActivity;->access$100(Lorg/telegram/ui/WebviewActivity;)Ljava/lang/String;

    move-result-object v5

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ShareAlert;-><init>(Landroid/content/Context;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ZLjava/lang/String;Z)V

    invoke-virtual {v7, v0}, Lorg/telegram/ui/WebviewActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 78
    :sswitch_0
    const-string/jumbo v3, "share_game"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v4

    goto :goto_1

    :sswitch_1
    const-string/jumbo v3, "share_score"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_1

    .line 80
    :pswitch_0
    iget-object v0, p0, Lorg/telegram/ui/WebviewActivity$TelegramWebviewProxy$1;->this$1:Lorg/telegram/ui/WebviewActivity$TelegramWebviewProxy;

    iget-object v0, v0, Lorg/telegram/ui/WebviewActivity$TelegramWebviewProxy;->this$0:Lorg/telegram/ui/WebviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/WebviewActivity;->access$000(Lorg/telegram/ui/WebviewActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->with_my_score:Z

    goto :goto_2

    .line 83
    :pswitch_1
    iget-object v0, p0, Lorg/telegram/ui/WebviewActivity$TelegramWebviewProxy$1;->this$1:Lorg/telegram/ui/WebviewActivity$TelegramWebviewProxy;

    iget-object v0, v0, Lorg/telegram/ui/WebviewActivity$TelegramWebviewProxy;->this$0:Lorg/telegram/ui/WebviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/WebviewActivity;->access$000(Lorg/telegram/ui/WebviewActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->with_my_score:Z

    goto :goto_2

    .line 78
    :sswitch_data_0
    .sparse-switch
        -0x6a9837ae -> :sswitch_0
        0x183b4e32 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
