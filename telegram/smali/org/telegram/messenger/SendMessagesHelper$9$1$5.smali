.class Lorg/telegram/messenger/SendMessagesHelper$9$1$5;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper$9$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/messenger/SendMessagesHelper$9$1;

.field final synthetic val$attachPath:Ljava/lang/String;

.field final synthetic val$isBroadcast:Z

.field final synthetic val$oldId:I

.field final synthetic val$sentMessages:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SendMessagesHelper$9$1;IZLjava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/messenger/SendMessagesHelper$9$1;

    .prologue
    .line 2586
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->this$2:Lorg/telegram/messenger/SendMessagesHelper$9$1;

    iput p2, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->val$oldId:I

    iput-boolean p3, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->val$isBroadcast:Z

    iput-object p4, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->val$sentMessages:Ljava/util/ArrayList;

    iput-object p5, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->val$attachPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 2589
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->this$2:Lorg/telegram/messenger/SendMessagesHelper$9$1;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iget v0, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->val$oldId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-boolean v0, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->val$isBroadcast:Z

    if-eqz v0, :cond_3

    iget v5, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->val$oldId:I

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->this$2:Lorg/telegram/messenger/SendMessagesHelper$9$1;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v8, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move v7, v6

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/MessagesStorage;->updateMessageStateAndId(JLjava/lang/Integer;IIZI)[J

    .line 2590
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->val$sentMessages:Ljava/util/ArrayList;

    iget-boolean v7, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->val$isBroadcast:Z

    move v5, v9

    move v8, v6

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    .line 2591
    iget-boolean v0, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->val$isBroadcast:Z

    if-eqz v0, :cond_0

    .line 2592
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2593
    .local v4, "currentMessage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->this$2:Lorg/telegram/messenger/SendMessagesHelper$9$1;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2594
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    move v5, v9

    move v7, v6

    move v8, v6

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    .line 2596
    .end local v4    # "currentMessage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    :cond_0
    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/SendMessagesHelper$9$1$5$1;-><init>(Lorg/telegram/messenger/SendMessagesHelper$9$1$5;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2615
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->this$2:Lorg/telegram/messenger/SendMessagesHelper$9$1;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->this$2:Lorg/telegram/messenger/SendMessagesHelper$9$1;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isRoundVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->this$2:Lorg/telegram/messenger/SendMessagesHelper$9$1;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isNewGifMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2616
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->this$2:Lorg/telegram/messenger/SendMessagesHelper$9$1;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->val$attachPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->stopVideoService(Ljava/lang/String;)V

    .line 2618
    :cond_2
    return-void

    .line 2589
    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->this$2:Lorg/telegram/messenger/SendMessagesHelper$9$1;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    goto :goto_0
.end method
