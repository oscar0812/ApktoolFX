.class Lorg/telegram/messenger/SendMessagesHelper$4;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;J)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/SendMessagesHelper;

.field final synthetic val$isMegagroupFinal:Z

.field final synthetic val$messagesByRandomIdsFinal:Ljava/util/HashMap;

.field final synthetic val$newMsgArr:Ljava/util/ArrayList;

.field final synthetic val$newMsgObjArr:Ljava/util/ArrayList;

.field final synthetic val$peer:J

.field final synthetic val$req:Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;

.field final synthetic val$toMyself:Z

.field final synthetic val$to_id:Lorg/telegram/tgnet/TLRPC$Peer;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SendMessagesHelper;JZZLjava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Peer;Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/SendMessagesHelper;

    .prologue
    .line 968
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$4;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    iput-wide p2, p0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$peer:J

    iput-boolean p4, p0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$isMegagroupFinal:Z

    iput-boolean p5, p0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$toMyself:Z

    iput-object p6, p0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$messagesByRandomIdsFinal:Ljava/util/HashMap;

    iput-object p7, p0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$newMsgObjArr:Ljava/util/ArrayList;

    iput-object p8, p0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$newMsgArr:Ljava/util/ArrayList;

    iput-object p9, p0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object p10, p0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$req:Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 23
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 971
    if-nez p2, :cond_b

    .line 972
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .local v13, "newMessagesByIds":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    move-object/from16 v18, p1

    .line 973
    check-cast v18, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 974
    .local v18, "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    const/4 v10, 0x0

    .local v10, "a":I
    :goto_0
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_1

    .line 975
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/telegram/tgnet/TLRPC$Update;

    .line 976
    .local v16, "update":Lorg/telegram/tgnet/TLRPC$Update;
    move-object/from16 v0, v16

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;

    if-eqz v4, :cond_0

    move-object/from16 v17, v16

    .line 977
    check-cast v17, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;

    .line 978
    .local v17, "updateMessageID":Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;
    move-object/from16 v0, v17

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;->random_id:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v13, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 980
    add-int/lit8 v10, v10, -0x1

    .line 974
    .end local v17    # "updateMessageID":Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 983
    .end local v16    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$peer:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    .line 984
    .local v19, "value":Ljava/lang/Integer;
    if-nez v19, :cond_2

    .line 985
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$peer:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v4, v5, v0, v1}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 986
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$peer:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    :cond_2
    const/4 v15, 0x0

    .line 990
    .local v15, "sentCount":I
    const/4 v10, 0x0

    :goto_1
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_a

    .line 991
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/telegram/tgnet/TLRPC$Update;

    .line 992
    .restart local v16    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    move-object/from16 v0, v16

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    if-nez v4, :cond_3

    move-object/from16 v0, v16

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    if-eqz v4, :cond_6

    .line 994
    :cond_3
    move-object/from16 v0, v16

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    if-eqz v4, :cond_7

    move-object/from16 v4, v16

    .line 995
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    .line 996
    .local v9, "message":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    const/4 v5, -0x1

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts_count:I

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v4, v5, v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->processNewDifferenceParams(IIII)V

    .line 1004
    :cond_4
    :goto_2
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, v9, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ge v4, v5, :cond_8

    const/4 v4, 0x1

    :goto_3
    iput-boolean v4, v9, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    .line 1005
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$toMyself:Z

    if-eqz v4, :cond_5

    .line 1006
    const/4 v4, 0x1

    iput-boolean v4, v9, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 1007
    const/4 v4, 0x0

    iput-boolean v4, v9, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    .line 1010
    :cond_5
    iget v4, v9, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    .line 1011
    .local v14, "random_id":Ljava/lang/Long;
    if-eqz v14, :cond_6

    .line 1012
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$messagesByRandomIdsFinal:Ljava/util/HashMap;

    invoke-virtual {v4, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Message;

    .line 1013
    .local v6, "newMsgObj":Lorg/telegram/tgnet/TLRPC$Message;
    if-nez v6, :cond_9

    .line 990
    .end local v6    # "newMsgObj":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v9    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v14    # "random_id":Ljava/lang/Long;
    :cond_6
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_7
    move-object/from16 v4, v16

    .line 998
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    .line 999
    .restart local v9    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object/from16 v0, v16

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts:I

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts_count:I

    move/from16 v20, v0

    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v5, v0, v1}, Lorg/telegram/messenger/MessagesController;->processNewChannelDifferenceParams(III)V

    .line 1000
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$isMegagroupFinal:Z

    if-eqz v4, :cond_4

    .line 1001
    iget v4, v9, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v5, -0x80000000

    or-int/2addr v4, v5

    iput v4, v9, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    goto :goto_2

    .line 1004
    :cond_8
    const/4 v4, 0x0

    goto :goto_3

    .line 1016
    .restart local v6    # "newMsgObj":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v14    # "random_id":Ljava/lang/Long;
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$newMsgObjArr:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    .line 1017
    .local v11, "index":I
    const/4 v4, -0x1

    if-eq v11, v4, :cond_6

    .line 1020
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$newMsgArr:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/messenger/MessageObject;

    .line 1021
    .local v12, "msgObj":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$newMsgObjArr:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1022
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$newMsgArr:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1023
    iget v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 1024
    .local v7, "oldId":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1025
    .local v8, "sentMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1026
    iget v4, v9, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v4, v6, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 1027
    add-int/lit8 v15, v15, 0x1

    .line 1028
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$4;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    const/4 v5, 0x0

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-static {v4, v12, v9, v5, v0}, Lorg/telegram/messenger/SendMessagesHelper;->access$800(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Message;Ljava/lang/String;Z)V

    .line 1029
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v20

    new-instance v4, Lorg/telegram/messenger/SendMessagesHelper$4$1;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lorg/telegram/messenger/SendMessagesHelper$4$1;-><init>(Lorg/telegram/messenger/SendMessagesHelper$4;Lorg/telegram/tgnet/TLRPC$Message;ILjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 1052
    .end local v6    # "newMsgObj":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v7    # "oldId":I
    .end local v8    # "sentMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v9    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v11    # "index":I
    .end local v12    # "msgObj":Lorg/telegram/messenger/MessageObject;
    .end local v14    # "random_id":Ljava/lang/Long;
    .end local v16    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_a
    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v4

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentNetworkType()I

    move-result v5

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v4, v5, v0, v15}, Lorg/telegram/messenger/StatsController;->incrementSentItemsCount(III)V

    .line 1061
    .end local v10    # "a":I
    .end local v13    # "newMessagesByIds":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .end local v15    # "sentCount":I
    .end local v18    # "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    .end local v19    # "value":Ljava/lang/Integer;
    :goto_5
    const/4 v10, 0x0

    .restart local v10    # "a":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$newMsgObjArr:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_c

    .line 1062
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$newMsgObjArr:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Message;

    .line 1063
    .restart local v6    # "newMsgObj":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 1064
    new-instance v4, Lorg/telegram/messenger/SendMessagesHelper$4$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v6}, Lorg/telegram/messenger/SendMessagesHelper$4$3;-><init>(Lorg/telegram/messenger/SendMessagesHelper$4;Lorg/telegram/tgnet/TLRPC$Message;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1061
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 1054
    .end local v6    # "newMsgObj":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v10    # "a":I
    :cond_b
    new-instance v4, Lorg/telegram/messenger/SendMessagesHelper$4$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v4, v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$4$2;-><init>(Lorg/telegram/messenger/SendMessagesHelper$4;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 1077
    .restart local v10    # "a":I
    :cond_c
    return-void
.end method
