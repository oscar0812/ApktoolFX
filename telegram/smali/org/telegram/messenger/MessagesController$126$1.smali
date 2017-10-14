.class Lorg/telegram/messenger/MessagesController$126$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$126;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$126;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$126;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesController$126;

    .prologue
    .line 8264
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$126$1;->this$1:Lorg/telegram/messenger/MessagesController$126;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 25

    .prologue
    .line 8267
    const/16 v24, 0x0

    .line 8268
    .local v24, "updateMask":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$126$1;->this$1:Lorg/telegram/messenger/MessagesController$126;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$126;->val$markAsReadMessagesInbox:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$126$1;->this$1:Lorg/telegram/messenger/MessagesController$126;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$126;->val$markAsReadMessagesOutbox:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-eqz v2, :cond_5

    .line 8269
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagesRead:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessagesController$126$1;->this$1:Lorg/telegram/messenger/MessagesController$126;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController$126;->val$markAsReadMessagesInbox:Landroid/util/SparseArray;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessagesController$126$1;->this$1:Lorg/telegram/messenger/MessagesController$126;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController$126;->val$markAsReadMessagesOutbox:Landroid/util/SparseArray;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 8270
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$126$1;->this$1:Lorg/telegram/messenger/MessagesController$126;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$126;->val$markAsReadMessagesInbox:Landroid/util/SparseArray;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/messenger/NotificationsController;->processReadMessages(Landroid/util/SparseArray;JIIZ)V

    .line 8271
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$126$1;->this$1:Lorg/telegram/messenger/MessagesController$126;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$126;->val$markAsReadMessagesInbox:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-eqz v2, :cond_3

    .line 8272
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "Notifications"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    .line 8273
    .local v13, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v11, 0x0

    .local v11, "b":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$126$1;->this$1:Lorg/telegram/messenger/MessagesController$126;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$126;->val$markAsReadMessagesInbox:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v11, v2, :cond_2

    .line 8274
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$126$1;->this$1:Lorg/telegram/messenger/MessagesController$126;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$126;->val$markAsReadMessagesInbox:Landroid/util/SparseArray;

    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v20

    .line 8275
    .local v20, "key":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$126$1;->this$1:Lorg/telegram/messenger/MessagesController$126;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$126;->val$markAsReadMessagesInbox:Landroid/util/SparseArray;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 v22, v0

    .line 8276
    .local v22, "messageId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$126$1;->this$1:Lorg/telegram/messenger/MessagesController$126;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$126;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    move/from16 v0, v20

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 8277
    .local v12, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v12, :cond_1

    iget v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-lez v2, :cond_1

    iget v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    move/from16 v0, v22

    if-gt v2, v0, :cond_1

    .line 8278
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$126$1;->this$1:Lorg/telegram/messenger/MessagesController$126;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$126;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    iget-wide v4, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/telegram/messenger/MessageObject;

    .line 8279
    .local v23, "obj":Lorg/telegram/messenger/MessageObject;
    if-eqz v23, :cond_1

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v2

    if-nez v2, :cond_1

    .line 8280
    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/MessageObject;->setIsRead()V

    .line 8281
    move/from16 v0, v24

    or-int/lit16 v0, v0, 0x100

    move/from16 v24, v0

    .line 8284
    .end local v23    # "obj":Lorg/telegram/messenger/MessageObject;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "diditem"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 8285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "diditemo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 8273
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 8287
    .end local v12    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v20    # "key":I
    .end local v22    # "messageId":I
    :cond_2
    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 8289
    .end local v11    # "b":I
    .end local v13    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_3
    const/4 v11, 0x0

    .restart local v11    # "b":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$126$1;->this$1:Lorg/telegram/messenger/MessagesController$126;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$126;->val$markAsReadMessagesOutbox:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v11, v2, :cond_5

    .line 8290
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$126$1;->this$1:Lorg/telegram/messenger/MessagesController$126;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$126;->val$markAsReadMessagesOutbox:Landroid/util/SparseArray;

    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v20

    .line 8291
    .restart local v20    # "key":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$126$1;->this$1:Lorg/telegram/messenger/MessagesController$126;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$126;->val$markAsReadMessagesOutbox:Landroid/util/SparseArray;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 v22, v0

    .line 8292
    .restart local v22    # "messageId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$126$1;->this$1:Lorg/telegram/messenger/MessagesController$126;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$126;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    move/from16 v0, v20

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 8293
    .restart local v12    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v12, :cond_4

    iget v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-lez v2, :cond_4

    iget v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    move/from16 v0, v22

    if-gt v2, v0, :cond_4

    .line 8294
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$126$1;->this$1:Lorg/telegram/messenger/MessagesController$126;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$126;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    iget-wide v4, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/telegram/messenger/MessageObject;

    .line 8295
    .restart local v23    # "obj":Lorg/telegram/messenger/MessageObject;
    if-eqz v23, :cond_4

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 8296
    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/MessageObject;->setIsRead()V

    .line 8297
    move/from16 v0, v24

    or-int/lit16 v0, v0, 0x100

    move/from16 v24, v0

    .line 8289
    .end local v23    # "obj":Lorg/telegram/messenger/MessageObject;
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 8302
    .end local v11    # "b":I
    .end local v12    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v20    # "key":I
    .end local v22    # "messageId":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$126$1;->this$1:Lorg/telegram/messenger/MessagesController$126;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$126;->val$markAsReadEncrypted:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 8303
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$126$1;->this$1:Lorg/telegram/messenger/MessagesController$126;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$126;->val$markAsReadEncrypted:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    .line 8304
    .local v18, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/NotificationCenter;->messagesReadEncrypted:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 8305
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v4, v2

    const/16 v2, 0x20

    shl-long v14, v4, v2

    .line 8306
    .local v14, "dialog_id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$126$1;->this$1:Lorg/telegram/messenger/MessagesController$126;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$126;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 8307
    .restart local v12    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v12, :cond_6

    .line 8308
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$126$1;->this$1:Lorg/telegram/messenger/MessagesController$126;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$126;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/telegram/messenger/MessageObject;

    .line 8309
    .local v21, "message":Lorg/telegram/messenger/MessageObject;
    if-eqz v21, :cond_6

    move-object/from16 v0, v21

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v4, v2, :cond_6

    .line 8310
    invoke-virtual/range {v21 .. v21}, Lorg/telegram/messenger/MessageObject;->setIsRead()V

    .line 8311
    move/from16 v0, v24

    or-int/lit16 v0, v0, 0x100

    move/from16 v24, v0

    goto :goto_2

    .line 8316
    .end local v12    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v14    # "dialog_id":J
    .end local v18    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v21    # "message":Lorg/telegram/messenger/MessageObject;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$126$1;->this$1:Lorg/telegram/messenger/MessagesController$126;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$126;->val$markAsReadMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 8317
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagesReadContent:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessagesController$126$1;->this$1:Lorg/telegram/messenger/MessagesController$126;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController$126;->val$markAsReadMessages:Ljava/util/ArrayList;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 8319
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$126$1;->this$1:Lorg/telegram/messenger/MessagesController$126;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$126;->val$deletedMessages:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-eqz v2, :cond_f

    .line 8320
    const/4 v9, 0x0

    .local v9, "a":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$126$1;->this$1:Lorg/telegram/messenger/MessagesController$126;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$126;->val$deletedMessages:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v9, v2, :cond_e

    .line 8321
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$126$1;->this$1:Lorg/telegram/messenger/MessagesController$126;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$126;->val$deletedMessages:Landroid/util/SparseArray;

    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v20

    .line 8322
    .restart local v20    # "key":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$126$1;->this$1:Lorg/telegram/messenger/MessagesController$126;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$126;->val$deletedMessages:Landroid/util/SparseArray;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 8323
    .local v10, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v10, :cond_a

    .line 8320
    :cond_9
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 8326
    :cond_a
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v10, v4, v5

    const/4 v5, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 8327
    if-nez v20, :cond_c

    .line 8328
    const/4 v11, 0x0

    .restart local v11    # "b":I
    :goto_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_9

    .line 8329
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    .line 8330
    .local v19, "id":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$126$1;->this$1:Lorg/telegram/messenger/MessagesController$126;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$126;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/telegram/messenger/MessageObject;

    .line 8331
    .restart local v23    # "obj":Lorg/telegram/messenger/MessageObject;
    if-eqz v23, :cond_b

    .line 8332
    const/4 v2, 0x1

    move-object/from16 v0, v23

    iput-boolean v2, v0, Lorg/telegram/messenger/MessageObject;->deleted:Z

    .line 8328
    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 8336
    .end local v11    # "b":I
    .end local v19    # "id":Ljava/lang/Integer;
    .end local v23    # "obj":Lorg/telegram/messenger/MessageObject;
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$126$1;->this$1:Lorg/telegram/messenger/MessagesController$126;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$126;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    move/from16 v0, v20

    neg-int v3, v0

    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/telegram/messenger/MessageObject;

    .line 8337
    .restart local v23    # "obj":Lorg/telegram/messenger/MessageObject;
    if-eqz v23, :cond_9

    .line 8338
    const/4 v11, 0x0

    .restart local v11    # "b":I
    :goto_6
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_9

    .line 8339
    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v3, v2, :cond_d

    .line 8340
    const/4 v2, 0x1

    move-object/from16 v0, v23

    iput-boolean v2, v0, Lorg/telegram/messenger/MessageObject;->deleted:Z

    goto :goto_4

    .line 8338
    :cond_d
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 8347
    .end local v10    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v11    # "b":I
    .end local v20    # "key":I
    .end local v23    # "obj":Lorg/telegram/messenger/MessageObject;
    :cond_e
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$126$1;->this$1:Lorg/telegram/messenger/MessagesController$126;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$126;->val$deletedMessages:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/NotificationsController;->removeDeletedMessagesFromNotifications(Landroid/util/SparseArray;)V

    .line 8349
    .end local v9    # "a":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$126$1;->this$1:Lorg/telegram/messenger/MessagesController$126;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$126;->val$clearHistoryMessages:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-eqz v2, :cond_13

    .line 8350
    const/4 v9, 0x0

    .restart local v9    # "a":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$126$1;->this$1:Lorg/telegram/messenger/MessagesController$126;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$126;->val$clearHistoryMessages:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v9, v2, :cond_12

    .line 8351
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$126$1;->this$1:Lorg/telegram/messenger/MessagesController$126;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$126;->val$clearHistoryMessages:Landroid/util/SparseArray;

    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v20

    .line 8352
    .restart local v20    # "key":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$126$1;->this$1:Lorg/telegram/messenger/MessagesController$126;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$126;->val$clearHistoryMessages:Landroid/util/SparseArray;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    .line 8353
    .restart local v19    # "id":Ljava/lang/Integer;
    if-nez v19, :cond_11

    .line 8350
    :cond_10
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 8356
    :cond_11
    move/from16 v0, v20

    neg-int v2, v0

    int-to-long v0, v2

    move-wide/from16 v16, v0

    .line 8357
    .local v16, "did":J
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->historyCleared:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v19, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 8358
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$126$1;->this$1:Lorg/telegram/messenger/MessagesController$126;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$126;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/telegram/messenger/MessageObject;

    .line 8359
    .restart local v23    # "obj":Lorg/telegram/messenger/MessageObject;
    if-eqz v23, :cond_10

    .line 8360
    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v2, v3, :cond_10

    .line 8361
    const/4 v2, 0x1

    move-object/from16 v0, v23

    iput-boolean v2, v0, Lorg/telegram/messenger/MessageObject;->deleted:Z

    .line 8366
    .end local v16    # "did":J
    .end local v19    # "id":Ljava/lang/Integer;
    .end local v20    # "key":I
    .end local v23    # "obj":Lorg/telegram/messenger/MessageObject;
    :cond_12
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$126$1;->this$1:Lorg/telegram/messenger/MessagesController$126;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$126;->val$clearHistoryMessages:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/NotificationsController;->removeDeletedHisoryFromNotifications(Landroid/util/SparseArray;)V

    .line 8368
    .end local v9    # "a":I
    :cond_13
    if-eqz v24, :cond_14

    .line 8369
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 8371
    :cond_14
    return-void
.end method
