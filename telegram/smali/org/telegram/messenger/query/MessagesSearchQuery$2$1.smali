.class Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;
.super Ljava/lang/Object;
.source "MessagesSearchQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/MessagesSearchQuery$2;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/query/MessagesSearchQuery$2;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    .prologue
    .line 185
    iput-object p1, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iput-object p2, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 188
    iget-object v1, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget v1, v1, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$currentReqId:I

    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$500()I

    move-result v2

    if-ne v1, v2, :cond_8

    .line 189
    const/4 v1, 0x0

    invoke-static {v1}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$602(I)I

    .line 190
    iget-object v1, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->val$response:Lorg/telegram/tgnet/TLObject;

    if-eqz v1, :cond_8

    .line 191
    iget-object v13, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v13, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .line 192
    .local v13, "res":Lorg/telegram/tgnet/TLRPC$messages_Messages;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v1, v13, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 193
    iget-object v1, v13, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$Message;

    .line 194
    .local v11, "message":Lorg/telegram/tgnet/TLRPC$Message;
    instance-of v1, v11, Lorg/telegram/tgnet/TLRPC$TL_messageEmpty;

    if-nez v1, :cond_0

    iget-object v1, v11, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionHistoryClear;

    if-eqz v1, :cond_1

    .line 195
    :cond_0
    iget-object v1, v13, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 196
    add-int/lit8 v0, v0, -0x1

    .line 192
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    .end local v11    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    iget-object v3, v13, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 200
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 201
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 202
    iget-object v1, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget-object v1, v1, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$req:Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->offset_id:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget-wide v2, v1, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$queryWithDialogFinal:J

    iget-object v1, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget-wide v4, v1, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$dialog_id:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_3

    .line 203
    const/4 v1, 0x0

    invoke-static {v1}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$702(I)I

    .line 204
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$800()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 205
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$900()[Ljava/util/HashMap;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 206
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$900()[Ljava/util/HashMap;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 207
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$300()[I

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 209
    :cond_3
    const/4 v10, 0x0

    .line 210
    .local v10, "added":Z
    const/4 v0, 0x0

    :goto_1
    iget-object v1, v13, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x14

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 211
    iget-object v1, v13, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$Message;

    .line 212
    .restart local v11    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    const/4 v10, 0x1

    .line 213
    new-instance v12, Lorg/telegram/messenger/MessageObject;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v12, v11, v1, v2}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    .line 214
    .local v12, "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$800()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$900()[Ljava/util/HashMap;

    move-result-object v2

    iget-object v1, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget-wide v4, v1, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$queryWithDialogFinal:J

    iget-object v1, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget-wide v6, v1, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$dialog_id:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_4

    const/4 v1, 0x0

    :goto_2
    aget-object v1, v2, v1

    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 215
    :cond_4
    const/4 v1, 0x1

    goto :goto_2

    .line 217
    .end local v11    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v12    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_5
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$200()[Z

    move-result-object v3

    iget-object v1, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget-wide v4, v1, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$queryWithDialogFinal:J

    iget-object v1, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget-wide v6, v1, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$dialog_id:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_9

    const/4 v1, 0x0

    :goto_3
    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v4, 0x15

    if-eq v2, v4, :cond_a

    const/4 v2, 0x1

    :goto_4
    aput-boolean v2, v3, v1

    .line 218
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$300()[I

    move-result-object v3

    iget-object v1, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget-wide v4, v1, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$queryWithDialogFinal:J

    iget-object v1, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget-wide v6, v1, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$dialog_id:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_b

    const/4 v1, 0x0

    :goto_5
    instance-of v2, v13, Lorg/telegram/tgnet/TLRPC$TL_messages_messagesSlice;

    if-nez v2, :cond_6

    instance-of v2, v13, Lorg/telegram/tgnet/TLRPC$TL_messages_channelMessages;

    if-eqz v2, :cond_c

    :cond_6
    iget v2, v13, Lorg/telegram/tgnet/TLRPC$messages_Messages;->count:I

    :goto_6
    aput v2, v3, v1

    .line 219
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$800()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 220
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->chatSearchResultsAvailable:I

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget v5, v5, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$guid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$1000()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 230
    :cond_7
    :goto_7
    iget-object v1, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget-wide v2, v1, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$queryWithDialogFinal:J

    iget-object v1, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget-wide v4, v1, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$dialog_id:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_8

    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$200()[Z

    move-result-object v1

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget-wide v2, v1, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$mergeDialogId:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_8

    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$200()[Z

    move-result-object v1

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-nez v1, :cond_8

    .line 231
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$1100()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget-wide v2, v2, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$dialog_id:J

    iget-object v4, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget-wide v4, v4, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$mergeDialogId:J

    iget-object v6, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget v6, v6, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$guid:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget-object v9, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget-object v9, v9, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static/range {v1 .. v9}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$400(Ljava/lang/String;JJIIZLorg/telegram/tgnet/TLRPC$User;)V

    .line 235
    .end local v0    # "a":I
    .end local v10    # "added":Z
    .end local v13    # "res":Lorg/telegram/tgnet/TLRPC$messages_Messages;
    :cond_8
    return-void

    .line 217
    .restart local v0    # "a":I
    .restart local v10    # "added":Z
    .restart local v13    # "res":Lorg/telegram/tgnet/TLRPC$messages_Messages;
    :cond_9
    const/4 v1, 0x1

    goto/16 :goto_3

    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 218
    :cond_b
    const/4 v1, 0x1

    goto/16 :goto_5

    :cond_c
    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto/16 :goto_6

    .line 222
    :cond_d
    if-eqz v10, :cond_7

    .line 223
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$700()I

    move-result v1

    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$800()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_e

    .line 224
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$800()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$702(I)I

    .line 226
    :cond_e
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$800()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$700()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/messenger/MessageObject;

    .line 227
    .restart local v12    # "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->chatSearchResultsAvailable:I

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget v5, v5, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$guid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$1000()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$700()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$300()[I

    move-result-object v5

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$300()[I

    move-result-object v6

    const/4 v7, 0x1

    aget v6, v6, v7

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_7
.end method
