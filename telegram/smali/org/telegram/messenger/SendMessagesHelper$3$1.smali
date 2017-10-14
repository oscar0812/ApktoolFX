.class Lorg/telegram/messenger/SendMessagesHelper$3$1;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/SendMessagesHelper$3;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SendMessagesHelper$3;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/SendMessagesHelper$3;

    .prologue
    .line 485
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$3$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 488
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$3$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$3;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$3;->val$message:Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    const/4 v4, 0x0

    iput-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    .line 489
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$3$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$3;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$3;->val$message:Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$3$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$3;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$3;->val$cacheFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 490
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$3$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$3;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$3;->val$message:Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$3$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$3;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$3;->val$message:Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 491
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 492
    .local v1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$3$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$3;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$3;->val$message:Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    .line 494
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$3$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$3;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$3;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$3$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$3;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$3;->val$message:Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    invoke-static {v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->access$700(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 495
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/NotificationCenter;->updateMessageMedia:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/telegram/messenger/SendMessagesHelper$3$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$3;

    iget-object v5, v5, Lorg/telegram/messenger/SendMessagesHelper$3;->val$message:Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    iget-object v5, v5, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    aput-object v5, v3, v2

    invoke-virtual {v0, v4, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 496
    return-void
.end method
