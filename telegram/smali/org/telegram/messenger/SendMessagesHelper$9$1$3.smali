.class Lorg/telegram/messenger/SendMessagesHelper$9$1$3;
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

.field final synthetic val$newMessage:Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SendMessagesHelper$9$1;Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/messenger/SendMessagesHelper$9$1;

    .prologue
    .line 2547
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$3;->this$2:Lorg/telegram/messenger/SendMessagesHelper$9$1;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$3;->val$newMessage:Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2550
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$3;->val$newMessage:Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;->pts:I

    iget-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$3;->val$newMessage:Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;->pts_count:I

    iget-object v3, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$3;->val$newMessage:Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->processNewChannelDifferenceParams(III)V

    .line 2551
    return-void
.end method
