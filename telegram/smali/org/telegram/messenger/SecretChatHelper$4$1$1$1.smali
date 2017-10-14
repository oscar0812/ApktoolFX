.class Lorg/telegram/messenger/SecretChatHelper$4$1$1$1;
.super Ljava/lang/Object;
.source "SecretChatHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SecretChatHelper$4$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lorg/telegram/messenger/SecretChatHelper$4$1$1;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SecretChatHelper$4$1$1;)V
    .locals 0
    .param p1, "this$3"    # Lorg/telegram/messenger/SecretChatHelper$4$1$1;

    .prologue
    .line 703
    iput-object p1, p0, Lorg/telegram/messenger/SecretChatHelper$4$1$1$1;->this$3:Lorg/telegram/messenger/SecretChatHelper$4$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 706
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper$4$1$1$1;->this$3:Lorg/telegram/messenger/SecretChatHelper$4$1$1;

    iget-object v0, v0, Lorg/telegram/messenger/SecretChatHelper$4$1$1;->this$2:Lorg/telegram/messenger/SecretChatHelper$4$1;

    iget-object v0, v0, Lorg/telegram/messenger/SecretChatHelper$4$1;->this$1:Lorg/telegram/messenger/SecretChatHelper$4;

    iget-object v0, v0, Lorg/telegram/messenger/SecretChatHelper$4;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 707
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/telegram/messenger/SecretChatHelper$4$1$1$1;->this$3:Lorg/telegram/messenger/SecretChatHelper$4$1$1;

    iget-object v3, v3, Lorg/telegram/messenger/SecretChatHelper$4$1$1;->this$2:Lorg/telegram/messenger/SecretChatHelper$4$1;

    iget-object v3, v3, Lorg/telegram/messenger/SecretChatHelper$4$1;->this$1:Lorg/telegram/messenger/SecretChatHelper$4;

    iget-object v3, v3, Lorg/telegram/messenger/SecretChatHelper$4;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/telegram/messenger/SecretChatHelper$4$1$1$1;->this$3:Lorg/telegram/messenger/SecretChatHelper$4$1$1;

    iget-object v4, v4, Lorg/telegram/messenger/SecretChatHelper$4$1$1;->this$2:Lorg/telegram/messenger/SecretChatHelper$4$1;

    iget-object v4, v4, Lorg/telegram/messenger/SecretChatHelper$4$1;->this$1:Lorg/telegram/messenger/SecretChatHelper$4;

    iget-object v4, v4, Lorg/telegram/messenger/SecretChatHelper$4;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lorg/telegram/messenger/SecretChatHelper$4$1$1$1;->this$3:Lorg/telegram/messenger/SecretChatHelper$4$1$1;

    iget-object v4, v4, Lorg/telegram/messenger/SecretChatHelper$4$1$1;->this$2:Lorg/telegram/messenger/SecretChatHelper$4$1;

    iget-object v4, v4, Lorg/telegram/messenger/SecretChatHelper$4$1;->this$1:Lorg/telegram/messenger/SecretChatHelper$4;

    iget-object v4, v4, Lorg/telegram/messenger/SecretChatHelper$4;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lorg/telegram/messenger/SecretChatHelper$4$1$1$1;->this$3:Lorg/telegram/messenger/SecretChatHelper$4$1$1;

    iget-object v4, v4, Lorg/telegram/messenger/SecretChatHelper$4$1$1;->this$2:Lorg/telegram/messenger/SecretChatHelper$4$1;

    iget-object v4, v4, Lorg/telegram/messenger/SecretChatHelper$4$1;->this$1:Lorg/telegram/messenger/SecretChatHelper$4;

    iget-object v4, v4, Lorg/telegram/messenger/SecretChatHelper$4;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 708
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/SecretChatHelper$4$1$1$1;->this$3:Lorg/telegram/messenger/SecretChatHelper$4$1$1;

    iget-object v1, v1, Lorg/telegram/messenger/SecretChatHelper$4$1$1;->this$2:Lorg/telegram/messenger/SecretChatHelper$4$1;

    iget-object v1, v1, Lorg/telegram/messenger/SecretChatHelper$4$1;->this$1:Lorg/telegram/messenger/SecretChatHelper$4;

    iget-object v1, v1, Lorg/telegram/messenger/SecretChatHelper$4;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    .line 709
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper$4$1$1$1;->this$3:Lorg/telegram/messenger/SecretChatHelper$4$1$1;

    iget-object v0, v0, Lorg/telegram/messenger/SecretChatHelper$4$1$1;->this$2:Lorg/telegram/messenger/SecretChatHelper$4$1;

    iget-object v0, v0, Lorg/telegram/messenger/SecretChatHelper$4$1;->this$1:Lorg/telegram/messenger/SecretChatHelper$4;

    iget-object v0, v0, Lorg/telegram/messenger/SecretChatHelper$4;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper$4$1$1$1;->this$3:Lorg/telegram/messenger/SecretChatHelper$4$1$1;

    iget-object v0, v0, Lorg/telegram/messenger/SecretChatHelper$4$1$1;->this$2:Lorg/telegram/messenger/SecretChatHelper$4$1;

    iget-object v0, v0, Lorg/telegram/messenger/SecretChatHelper$4$1;->this$1:Lorg/telegram/messenger/SecretChatHelper$4;

    iget-object v0, v0, Lorg/telegram/messenger/SecretChatHelper$4;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isNewGifMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper$4$1$1$1;->this$3:Lorg/telegram/messenger/SecretChatHelper$4$1$1;

    iget-object v0, v0, Lorg/telegram/messenger/SecretChatHelper$4$1$1;->this$2:Lorg/telegram/messenger/SecretChatHelper$4$1;

    iget-object v0, v0, Lorg/telegram/messenger/SecretChatHelper$4$1;->this$1:Lorg/telegram/messenger/SecretChatHelper$4;

    iget-object v0, v0, Lorg/telegram/messenger/SecretChatHelper$4;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isRoundVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 710
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/SecretChatHelper$4$1$1$1;->this$3:Lorg/telegram/messenger/SecretChatHelper$4$1$1;

    iget-object v1, v1, Lorg/telegram/messenger/SecretChatHelper$4$1$1;->val$attachPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->stopVideoService(Ljava/lang/String;)V

    .line 712
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/SecretChatHelper$4$1$1$1;->this$3:Lorg/telegram/messenger/SecretChatHelper$4$1$1;

    iget-object v1, v1, Lorg/telegram/messenger/SecretChatHelper$4$1$1;->this$2:Lorg/telegram/messenger/SecretChatHelper$4$1;

    iget-object v1, v1, Lorg/telegram/messenger/SecretChatHelper$4$1;->this$1:Lorg/telegram/messenger/SecretChatHelper$4;

    iget-object v1, v1, Lorg/telegram/messenger/SecretChatHelper$4;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->removeFromSendingMessages(I)V

    .line 713
    return-void
.end method
