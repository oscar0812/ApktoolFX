.class Lorg/telegram/messenger/SendMessagesHelper$9$1$2;
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

.field final synthetic val$newMessage:Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SendMessagesHelper$9$1;Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/messenger/SendMessagesHelper$9$1;

    .prologue
    .line 2533
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$2;->this$2:Lorg/telegram/messenger/SendMessagesHelper$9$1;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$2;->val$newMessage:Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 2536
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$2;->val$newMessage:Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;->pts:I

    iget-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$2;->val$newMessage:Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;->pts_count:I

    invoke-virtual {v0, v3, v1, v3, v2}, Lorg/telegram/messenger/MessagesController;->processNewDifferenceParams(IIII)V

    .line 2537
    return-void
.end method
