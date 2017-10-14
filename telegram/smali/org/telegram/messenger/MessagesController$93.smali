.class Lorg/telegram/messenger/MessagesController$93;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->addUserToChat(ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$ChatFull;ILjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$chat_id:I

.field final synthetic val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field final synthetic val$inputUser:Lorg/telegram/tgnet/TLRPC$InputUser;

.field final synthetic val$isChannel:Z

.field final synthetic val$isMegagroup:Z

.field final synthetic val$request:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;ZLorg/telegram/tgnet/TLRPC$InputUser;ILorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;Z)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 5030
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$93;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-boolean p2, p0, Lorg/telegram/messenger/MessagesController$93;->val$isChannel:Z

    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$93;->val$inputUser:Lorg/telegram/tgnet/TLRPC$InputUser;

    iput p4, p0, Lorg/telegram/messenger/MessagesController$93;->val$chat_id:I

    iput-object p5, p0, Lorg/telegram/messenger/MessagesController$93;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p6, p0, Lorg/telegram/messenger/MessagesController$93;->val$request:Lorg/telegram/tgnet/TLObject;

    iput-boolean p7, p0, Lorg/telegram/messenger/MessagesController$93;->val$isMegagroup:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 9
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    const/4 v8, 0x1

    .line 5033
    iget-boolean v4, p0, Lorg/telegram/messenger/MessagesController$93;->val$isChannel:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$93;->val$inputUser:Lorg/telegram/tgnet/TLRPC$InputUser;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_inputUserSelf;

    if-eqz v4, :cond_0

    .line 5034
    new-instance v4, Lorg/telegram/messenger/MessagesController$93$1;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/MessagesController$93$1;-><init>(Lorg/telegram/messenger/MessagesController$93;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 5041
    :cond_0
    if-eqz p2, :cond_2

    .line 5042
    new-instance v4, Lorg/telegram/messenger/MessagesController$93$2;

    invoke-direct {v4, p0, p2}, Lorg/telegram/messenger/MessagesController$93$2;-><init>(Lorg/telegram/messenger/MessagesController$93;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 5076
    :cond_1
    :goto_0
    return-void

    .line 5050
    :cond_2
    const/4 v1, 0x0

    .local v1, "hasJoinMessage":Z
    move-object v3, p1

    .line 5051
    check-cast v3, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 5052
    .local v3, "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 5053
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Update;

    .line 5054
    .local v2, "update":Lorg/telegram/tgnet/TLRPC$Update;
    instance-of v4, v2, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    if-eqz v4, :cond_6

    .line 5055
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    .end local v2    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser;

    if-eqz v4, :cond_6

    .line 5056
    const/4 v1, 0x1

    .line 5061
    :cond_3
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$93;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 5062
    iget-boolean v4, p0, Lorg/telegram/messenger/MessagesController$93;->val$isChannel:Z

    if-eqz v4, :cond_5

    .line 5063
    if-nez v1, :cond_4

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$93;->val$inputUser:Lorg/telegram/tgnet/TLRPC$InputUser;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_inputUserSelf;

    if-eqz v4, :cond_4

    .line 5064
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$93;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v5, p0, Lorg/telegram/messenger/MessagesController$93;->val$chat_id:I

    invoke-virtual {v4, v5, v8}, Lorg/telegram/messenger/MessagesController;->generateJoinMessage(IZ)V

    .line 5066
    :cond_4
    new-instance v4, Lorg/telegram/messenger/MessagesController$93$3;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/MessagesController$93$3;-><init>(Lorg/telegram/messenger/MessagesController$93;)V

    const-wide/16 v6, 0x3e8

    invoke-static {v4, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 5073
    :cond_5
    iget-boolean v4, p0, Lorg/telegram/messenger/MessagesController$93;->val$isChannel:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$93;->val$inputUser:Lorg/telegram/tgnet/TLRPC$InputUser;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_inputUserSelf;

    if-eqz v4, :cond_1

    .line 5074
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    iget v7, p0, Lorg/telegram/messenger/MessagesController$93;->val$chat_id:I

    invoke-virtual {v4, v5, v6, v8, v7}, Lorg/telegram/messenger/MessagesStorage;->updateDialogsWithDeletedMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;ZI)V

    goto :goto_0

    .line 5052
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
