.class final Lorg/telegram/messenger/query/MessagesQuery$9;
.super Ljava/lang/Object;
.source "MessagesQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/MessagesQuery;->broadcastReplyMessages(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$chats:Ljava/util/ArrayList;

.field final synthetic val$chatsDict:Ljava/util/HashMap;

.field final synthetic val$dialog_id:J

.field final synthetic val$isCache:Z

.field final synthetic val$replyMessageOwners:Ljava/util/HashMap;

.field final synthetic val$result:Ljava/util/ArrayList;

.field final synthetic val$users:Ljava/util/ArrayList;

.field final synthetic val$usersDict:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;J)V
    .locals 0

    .prologue
    .line 450
    iput-object p1, p0, Lorg/telegram/messenger/query/MessagesQuery$9;->val$users:Ljava/util/ArrayList;

    iput-boolean p2, p0, Lorg/telegram/messenger/query/MessagesQuery$9;->val$isCache:Z

    iput-object p3, p0, Lorg/telegram/messenger/query/MessagesQuery$9;->val$chats:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/telegram/messenger/query/MessagesQuery$9;->val$result:Ljava/util/ArrayList;

    iput-object p5, p0, Lorg/telegram/messenger/query/MessagesQuery$9;->val$replyMessageOwners:Ljava/util/HashMap;

    iput-object p6, p0, Lorg/telegram/messenger/query/MessagesQuery$9;->val$usersDict:Ljava/util/HashMap;

    iput-object p7, p0, Lorg/telegram/messenger/query/MessagesQuery$9;->val$chatsDict:Ljava/util/HashMap;

    iput-wide p8, p0, Lorg/telegram/messenger/query/MessagesQuery$9;->val$dialog_id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v10, 0x0

    .line 453
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/messenger/query/MessagesQuery$9;->val$users:Ljava/util/ArrayList;

    iget-boolean v9, p0, Lorg/telegram/messenger/query/MessagesQuery$9;->val$isCache:Z

    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 454
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/messenger/query/MessagesQuery$9;->val$chats:Ljava/util/ArrayList;

    iget-boolean v9, p0, Lorg/telegram/messenger/query/MessagesQuery$9;->val$isCache:Z

    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 455
    const/4 v3, 0x0

    .line 456
    .local v3, "changed":Z
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v7, p0, Lorg/telegram/messenger/query/MessagesQuery$9;->val$result:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_6

    .line 457
    iget-object v7, p0, Lorg/telegram/messenger/query/MessagesQuery$9;->val$result:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Message;

    .line 458
    .local v5, "message":Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v7, p0, Lorg/telegram/messenger/query/MessagesQuery$9;->val$replyMessageOwners:Ljava/util/HashMap;

    iget v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 459
    .local v1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-eqz v1, :cond_5

    .line 460
    new-instance v6, Lorg/telegram/messenger/MessageObject;

    iget-object v7, p0, Lorg/telegram/messenger/query/MessagesQuery$9;->val$usersDict:Ljava/util/HashMap;

    iget-object v8, p0, Lorg/telegram/messenger/query/MessagesQuery$9;->val$chatsDict:Ljava/util/HashMap;

    invoke-direct {v6, v5, v7, v8, v12}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V

    .line 461
    .local v6, "messageObject":Lorg/telegram/messenger/MessageObject;
    const/4 v2, 0x0

    .local v2, "b":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_4

    .line 462
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    .line 463
    .local v4, "m":Lorg/telegram/messenger/MessageObject;
    iput-object v6, v4, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 464
    iget-object v7, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_messageActionPinMessage;

    if-eqz v7, :cond_2

    .line 465
    invoke-virtual {v4, v10, v10}, Lorg/telegram/messenger/MessageObject;->generatePinMessageText(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 471
    :cond_0
    :goto_2
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isMegagroup()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 472
    iget-object v7, v4, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v7, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v8, v7, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v9, -0x80000000

    or-int/2addr v8, v9

    iput v8, v7, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 461
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 466
    :cond_2
    iget-object v7, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_messageActionGameScore;

    if-eqz v7, :cond_3

    .line 467
    invoke-virtual {v4, v10}, Lorg/telegram/messenger/MessageObject;->generateGameMessageText(Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_2

    .line 468
    :cond_3
    iget-object v7, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSent;

    if-eqz v7, :cond_0

    .line 469
    invoke-virtual {v4, v10}, Lorg/telegram/messenger/MessageObject;->generatePaymentSentMessageText(Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_2

    .line 475
    .end local v4    # "m":Lorg/telegram/messenger/MessageObject;
    :cond_4
    const/4 v3, 0x1

    .line 456
    .end local v2    # "b":I
    .end local v6    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 478
    .end local v1    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v5    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_6
    if-eqz v3, :cond_7

    .line 479
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/NotificationCenter;->didLoadedReplyMessages:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    iget-wide v10, p0, Lorg/telegram/messenger/query/MessagesQuery$9;->val$dialog_id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 481
    :cond_7
    return-void
.end method
