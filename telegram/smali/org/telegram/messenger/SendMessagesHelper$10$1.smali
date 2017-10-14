.class Lorg/telegram/messenger/SendMessagesHelper$10$1;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/SendMessagesHelper$10;

.field final synthetic val$msg_id:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SendMessagesHelper$10;I)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/SendMessagesHelper$10;

    .prologue
    .line 2642
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$10$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$10;

    iput p2, p0, Lorg/telegram/messenger/SendMessagesHelper$10$1;->val$msg_id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2645
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$10$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$10;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$10;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 2646
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByAck:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lorg/telegram/messenger/SendMessagesHelper$10$1;->val$msg_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2647
    return-void
.end method
