.class Lorg/telegram/messenger/SendMessagesHelper$4$1$1;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/messenger/SendMessagesHelper$4$1;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SendMessagesHelper$4$1;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/messenger/SendMessagesHelper$4$1;

    .prologue
    .line 1034
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$4$1$1;->this$2:Lorg/telegram/messenger/SendMessagesHelper$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1037
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$4$1$1;->this$2:Lorg/telegram/messenger/SendMessagesHelper$4$1;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$4$1;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 1038
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$4$1$1;->this$2:Lorg/telegram/messenger/SendMessagesHelper$4$1;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$4$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$4;

    iget-wide v0, v0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$peer:J

    invoke-static {v0, v1}, Lorg/telegram/messenger/query/SearchQuery;->increasePeerRaiting(J)V

    .line 1039
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/telegram/messenger/SendMessagesHelper$4$1$1;->this$2:Lorg/telegram/messenger/SendMessagesHelper$4$1;

    iget v3, v3, Lorg/telegram/messenger/SendMessagesHelper$4$1;->val$oldId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$4$1$1;->this$2:Lorg/telegram/messenger/SendMessagesHelper$4$1;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$4$1;->val$message:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$4$1$1;->this$2:Lorg/telegram/messenger/SendMessagesHelper$4$1;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$4$1;->val$message:Lorg/telegram/tgnet/TLRPC$Message;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$4$1$1;->this$2:Lorg/telegram/messenger/SendMessagesHelper$4$1;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$4$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$4;

    iget-wide v4, v4, Lorg/telegram/messenger/SendMessagesHelper$4;->val$peer:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1040
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$4$1$1;->this$2:Lorg/telegram/messenger/SendMessagesHelper$4$1;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$4$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$4;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$4;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$4$1$1;->this$2:Lorg/telegram/messenger/SendMessagesHelper$4$1;

    iget v1, v1, Lorg/telegram/messenger/SendMessagesHelper$4$1;->val$oldId:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    .line 1041
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$4$1$1;->this$2:Lorg/telegram/messenger/SendMessagesHelper$4$1;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$4$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$4;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$4;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$4$1$1;->this$2:Lorg/telegram/messenger/SendMessagesHelper$4$1;

    iget v1, v1, Lorg/telegram/messenger/SendMessagesHelper$4$1;->val$oldId:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->removeFromSendingMessages(I)V

    .line 1042
    return-void
.end method
