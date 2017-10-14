.class Lorg/telegram/ui/Components/JoinGroupAlert$2$1$1;
.super Ljava/lang/Object;
.source "JoinGroupAlert.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/JoinGroupAlert$2$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/Components/JoinGroupAlert$2$1;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/JoinGroupAlert$2$1;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/Components/JoinGroupAlert$2$1;

    .prologue
    .line 149
    iput-object p1, p0, Lorg/telegram/ui/Components/JoinGroupAlert$2$1$1;->this$2:Lorg/telegram/ui/Components/JoinGroupAlert$2$1;

    iput-object p2, p0, Lorg/telegram/ui/Components/JoinGroupAlert$2$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/Components/JoinGroupAlert$2$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 152
    iget-object v4, p0, Lorg/telegram/ui/Components/JoinGroupAlert$2$1$1;->this$2:Lorg/telegram/ui/Components/JoinGroupAlert$2$1;

    iget-object v4, v4, Lorg/telegram/ui/Components/JoinGroupAlert$2$1;->this$1:Lorg/telegram/ui/Components/JoinGroupAlert$2;

    iget-object v4, v4, Lorg/telegram/ui/Components/JoinGroupAlert$2;->this$0:Lorg/telegram/ui/Components/JoinGroupAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/JoinGroupAlert;->access$100(Lorg/telegram/ui/Components/JoinGroupAlert;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/Components/JoinGroupAlert$2$1$1;->this$2:Lorg/telegram/ui/Components/JoinGroupAlert$2$1;

    iget-object v4, v4, Lorg/telegram/ui/Components/JoinGroupAlert$2$1;->this$1:Lorg/telegram/ui/Components/JoinGroupAlert$2;

    iget-object v4, v4, Lorg/telegram/ui/Components/JoinGroupAlert$2;->this$0:Lorg/telegram/ui/Components/JoinGroupAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/JoinGroupAlert;->access$100(Lorg/telegram/ui/Components/JoinGroupAlert;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/Components/JoinGroupAlert$2$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v4, :cond_2

    .line 156
    iget-object v3, p0, Lorg/telegram/ui/Components/JoinGroupAlert$2$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 157
    .local v3, "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 158
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 159
    .local v1, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    iput-boolean v7, v1, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    .line 160
    iput-boolean v7, v1, Lorg/telegram/tgnet/TLRPC$Chat;->kicked:Z

    .line 161
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v7}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 162
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v7}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 163
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 164
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v4, "chat_id"

    iget v5, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 165
    iget-object v4, p0, Lorg/telegram/ui/Components/JoinGroupAlert$2$1$1;->this$2:Lorg/telegram/ui/Components/JoinGroupAlert$2$1;

    iget-object v4, v4, Lorg/telegram/ui/Components/JoinGroupAlert$2$1;->this$1:Lorg/telegram/ui/Components/JoinGroupAlert$2;

    iget-object v4, v4, Lorg/telegram/ui/Components/JoinGroupAlert$2;->this$0:Lorg/telegram/ui/Components/JoinGroupAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/JoinGroupAlert;->access$100(Lorg/telegram/ui/Components/JoinGroupAlert;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 166
    new-instance v2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 167
    .local v2, "chatActivity":Lorg/telegram/ui/ChatActivity;
    iget-object v4, p0, Lorg/telegram/ui/Components/JoinGroupAlert$2$1$1;->this$2:Lorg/telegram/ui/Components/JoinGroupAlert$2$1;

    iget-object v4, v4, Lorg/telegram/ui/Components/JoinGroupAlert$2$1;->this$1:Lorg/telegram/ui/Components/JoinGroupAlert$2;

    iget-object v4, v4, Lorg/telegram/ui/Components/JoinGroupAlert$2;->this$0:Lorg/telegram/ui/Components/JoinGroupAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/JoinGroupAlert;->access$100(Lorg/telegram/ui/Components/JoinGroupAlert;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/JoinGroupAlert$2$1$1;->this$2:Lorg/telegram/ui/Components/JoinGroupAlert$2$1;

    iget-object v5, v5, Lorg/telegram/ui/Components/JoinGroupAlert$2$1;->this$1:Lorg/telegram/ui/Components/JoinGroupAlert$2;

    iget-object v5, v5, Lorg/telegram/ui/Components/JoinGroupAlert$2;->this$0:Lorg/telegram/ui/Components/JoinGroupAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/JoinGroupAlert;->access$100(Lorg/telegram/ui/Components/JoinGroupAlert;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v5

    instance-of v5, v5, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4, v2, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto :goto_0

    .line 171
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v2    # "chatActivity":Lorg/telegram/ui/ChatActivity;
    .end local v3    # "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/Components/JoinGroupAlert$2$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v5, p0, Lorg/telegram/ui/Components/JoinGroupAlert$2$1$1;->this$2:Lorg/telegram/ui/Components/JoinGroupAlert$2$1;

    iget-object v5, v5, Lorg/telegram/ui/Components/JoinGroupAlert$2$1;->this$1:Lorg/telegram/ui/Components/JoinGroupAlert$2;

    iget-object v5, v5, Lorg/telegram/ui/Components/JoinGroupAlert$2;->this$0:Lorg/telegram/ui/Components/JoinGroupAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/JoinGroupAlert;->access$100(Lorg/telegram/ui/Components/JoinGroupAlert;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Components/JoinGroupAlert$2$1$1;->this$2:Lorg/telegram/ui/Components/JoinGroupAlert$2$1;

    iget-object v6, v6, Lorg/telegram/ui/Components/JoinGroupAlert$2$1;->val$req:Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v7}, Lorg/telegram/ui/Components/AlertsCreator;->processError(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    goto :goto_0
.end method
