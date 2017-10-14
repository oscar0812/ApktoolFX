.class Lorg/telegram/messenger/SendMessagesHelper$9$1$5$1;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lorg/telegram/messenger/SendMessagesHelper$9$1$5;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SendMessagesHelper$9$1$5;)V
    .locals 0
    .param p1, "this$3"    # Lorg/telegram/messenger/SendMessagesHelper$9$1$5;

    .prologue
    .line 2596
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5$1;->this$3:Lorg/telegram/messenger/SendMessagesHelper$9$1$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2599
    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5$1;->this$3:Lorg/telegram/messenger/SendMessagesHelper$9$1$5;

    iget-boolean v4, v4, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->val$isBroadcast:Z

    if-eqz v4, :cond_1

    .line 2600
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5$1;->this$3:Lorg/telegram/messenger/SendMessagesHelper$9$1$5;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->val$sentMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 2601
    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5$1;->this$3:Lorg/telegram/messenger/SendMessagesHelper$9$1$5;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->val$sentMessages:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Message;

    .line 2602
    .local v2, "message":Lorg/telegram/tgnet/TLRPC$Message;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2603
    .local v1, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    new-instance v3, Lorg/telegram/messenger/MessageObject;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4, v8}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    .line 2604
    .local v3, "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2605
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7, v1, v9}, Lorg/telegram/messenger/MessagesController;->updateInterfaceWithMessages(JLjava/util/ArrayList;Z)V

    .line 2600
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2607
    .end local v1    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v3    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2609
    .end local v0    # "a":I
    :cond_1
    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5$1;->this$3:Lorg/telegram/messenger/SendMessagesHelper$9$1$5;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->this$2:Lorg/telegram/messenger/SendMessagesHelper$9$1;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v4, v5}, Lorg/telegram/messenger/query/SearchQuery;->increasePeerRaiting(J)V

    .line 2610
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    const/4 v4, 0x4

    new-array v7, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5$1;->this$3:Lorg/telegram/messenger/SendMessagesHelper$9$1$5;

    iget v4, v4, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->val$oldId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v8

    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5$1;->this$3:Lorg/telegram/messenger/SendMessagesHelper$9$1$5;

    iget-boolean v4, v4, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->val$isBroadcast:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5$1;->this$3:Lorg/telegram/messenger/SendMessagesHelper$9$1$5;

    iget v4, v4, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->val$oldId:I

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v9

    const/4 v4, 0x2

    iget-object v8, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5$1;->this$3:Lorg/telegram/messenger/SendMessagesHelper$9$1$5;

    iget-object v8, v8, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->this$2:Lorg/telegram/messenger/SendMessagesHelper$9$1;

    iget-object v8, v8, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v8, v8, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    aput-object v8, v7, v4

    const/4 v4, 0x3

    iget-object v8, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5$1;->this$3:Lorg/telegram/messenger/SendMessagesHelper$9$1$5;

    iget-object v8, v8, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->this$2:Lorg/telegram/messenger/SendMessagesHelper$9$1;

    iget-object v8, v8, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v8, v8, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2611
    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5$1;->this$3:Lorg/telegram/messenger/SendMessagesHelper$9$1$5;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->this$2:Lorg/telegram/messenger/SendMessagesHelper$9$1;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$9;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    iget-object v5, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5$1;->this$3:Lorg/telegram/messenger/SendMessagesHelper$9$1$5;

    iget v5, v5, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->val$oldId:I

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    .line 2612
    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5$1;->this$3:Lorg/telegram/messenger/SendMessagesHelper$9$1$5;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->this$2:Lorg/telegram/messenger/SendMessagesHelper$9$1;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$9;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    iget-object v5, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5$1;->this$3:Lorg/telegram/messenger/SendMessagesHelper$9$1$5;

    iget v5, v5, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->val$oldId:I

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/SendMessagesHelper;->removeFromSendingMessages(I)V

    .line 2613
    return-void

    .line 2610
    :cond_2
    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5$1;->this$3:Lorg/telegram/messenger/SendMessagesHelper$9$1$5;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->this$2:Lorg/telegram/messenger/SendMessagesHelper$9$1;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    goto :goto_1
.end method
