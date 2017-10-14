.class Lorg/telegram/messenger/MessagesController$62$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$62;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$62;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$62;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesController$62;

    .prologue
    .line 3332
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$62$1;->this$1:Lorg/telegram/messenger/MessagesController$62;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 3335
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$62$1;->this$1:Lorg/telegram/messenger/MessagesController$62;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController$62;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v6, v10}, Lorg/telegram/messenger/MessagesController;->access$4902(Lorg/telegram/messenger/MessagesController;Z)Z

    .line 3336
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$62$1;->this$1:Lorg/telegram/messenger/MessagesController$62;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController$62;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$62$1;->this$1:Lorg/telegram/messenger/MessagesController$62;

    iget-object v7, v7, Lorg/telegram/messenger/MessagesController$62;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-static {v6, v7}, Lorg/telegram/messenger/MessagesController;->access$5000(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;)V

    .line 3337
    sget-boolean v6, Lorg/telegram/messenger/UserConfig;->draftsLoaded:Z

    if-nez v6, :cond_0

    .line 3338
    invoke-static {}, Lorg/telegram/messenger/query/DraftQuery;->loadDrafts()V

    .line 3341
    :cond_0
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$62$1;->this$1:Lorg/telegram/messenger/MessagesController$62;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController$62;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$62$1;->this$1:Lorg/telegram/messenger/MessagesController$62;

    iget-object v7, v7, Lorg/telegram/messenger/MessagesController$62;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->users:Ljava/util/ArrayList;

    invoke-virtual {v6, v7, v10}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 3342
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$62$1;->this$1:Lorg/telegram/messenger/MessagesController$62;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController$62;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$62$1;->this$1:Lorg/telegram/messenger/MessagesController$62;

    iget-object v7, v7, Lorg/telegram/messenger/MessagesController$62;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->chats:Ljava/util/ArrayList;

    invoke-virtual {v6, v7, v10}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 3344
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$62$1;->this$1:Lorg/telegram/messenger/MessagesController$62;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController$62;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 3345
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$62$1;->this$1:Lorg/telegram/messenger/MessagesController$62;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController$62;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 3346
    .local v3, "oldDialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v6, v6

    if-eqz v6, :cond_1

    .line 3347
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$62$1;->this$1:Lorg/telegram/messenger/MessagesController$62;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController$62;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v8, v3, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3348
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$62$1;->this$1:Lorg/telegram/messenger/MessagesController$62;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController$62;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    iget-wide v8, v3, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 3349
    .local v2, "messageObject":Lorg/telegram/messenger/MessageObject;
    if-eqz v2, :cond_1

    .line 3350
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$62$1;->this$1:Lorg/telegram/messenger/MessagesController$62;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController$62;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3351
    iget-object v6, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    cmp-long v6, v6, v12

    if-eqz v6, :cond_1

    .line 3352
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$62$1;->this$1:Lorg/telegram/messenger/MessagesController$62;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController$62;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    iget-object v7, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v7, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3344
    .end local v2    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3358
    .end local v3    # "oldDialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_2
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$62$1;->this$1:Lorg/telegram/messenger/MessagesController$62;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController$62;->val$new_dialogs_dict:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 3359
    .local v4, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 3360
    .local v1, "key":Ljava/lang/Long;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 3361
    .local v5, "value":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$TL_dialog;->draft:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_draftMessage;

    if-eqz v7, :cond_4

    .line 3362
    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$TL_dialog;->draft:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    invoke-static {v8, v9, v7, v11, v10}, Lorg/telegram/messenger/query/DraftQuery;->saveDraft(JLorg/telegram/tgnet/TLRPC$DraftMessage;Lorg/telegram/tgnet/TLRPC$Message;Z)V

    .line 3364
    :cond_4
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$62$1;->this$1:Lorg/telegram/messenger/MessagesController$62;

    iget-object v7, v7, Lorg/telegram/messenger/MessagesController$62;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v7, v7, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v1, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3365
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$62$1;->this$1:Lorg/telegram/messenger/MessagesController$62;

    iget-object v7, v7, Lorg/telegram/messenger/MessagesController$62;->val$new_dialogMessage:Ljava/util/HashMap;

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 3366
    .restart local v2    # "messageObject":Lorg/telegram/messenger/MessageObject;
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$62$1;->this$1:Lorg/telegram/messenger/MessagesController$62;

    iget-object v7, v7, Lorg/telegram/messenger/MessagesController$62;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v7, v7, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    invoke-virtual {v7, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3367
    if-eqz v2, :cond_3

    iget-object v7, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v7, :cond_3

    .line 3368
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$62$1;->this$1:Lorg/telegram/messenger/MessagesController$62;

    iget-object v7, v7, Lorg/telegram/messenger/MessagesController$62;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v7, v7, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3369
    iget-object v7, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v7, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    cmp-long v7, v8, v12

    if-eqz v7, :cond_3

    .line 3370
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$62$1;->this$1:Lorg/telegram/messenger/MessagesController$62;

    iget-object v7, v7, Lorg/telegram/messenger/MessagesController$62;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v7, v7, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    iget-object v8, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3375
    .end local v1    # "key":Ljava/lang/Long;
    .end local v2    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v4    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    .end local v5    # "value":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_5
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$62$1;->this$1:Lorg/telegram/messenger/MessagesController$62;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController$62;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 3376
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$62$1;->this$1:Lorg/telegram/messenger/MessagesController$62;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController$62;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$62$1;->this$1:Lorg/telegram/messenger/MessagesController$62;

    iget-object v7, v7, Lorg/telegram/messenger/MessagesController$62;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v7, v7, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3377
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$62$1;->this$1:Lorg/telegram/messenger/MessagesController$62;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController$62;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-virtual {v6, v11}, Lorg/telegram/messenger/MessagesController;->sortDialogs(Ljava/util/HashMap;)V

    .line 3378
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$62$1;->this$1:Lorg/telegram/messenger/MessagesController$62;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController$62;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lorg/telegram/messenger/MessagesController;->dialogsEndReached:Z

    .line 3379
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$62$1;->this$1:Lorg/telegram/messenger/MessagesController$62;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController$62;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-boolean v10, v6, Lorg/telegram/messenger/MessagesController;->serverDialogsEndReached:Z

    .line 3381
    sget v6, Lorg/telegram/messenger/UserConfig;->totalDialogsLoadCount:I

    const/16 v7, 0x190

    if-ge v6, v7, :cond_6

    sget v6, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetId:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_6

    sget v6, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetId:I

    const v7, 0x7fffffff

    if-eq v6, v7, :cond_6

    .line 3382
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$62$1;->this$1:Lorg/telegram/messenger/MessagesController$62;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController$62;->this$0:Lorg/telegram/messenger/MessagesController;

    const/16 v7, 0x64

    invoke-virtual {v6, v10, v7, v10}, Lorg/telegram/messenger/MessagesController;->loadDialogs(IIZ)V

    .line 3384
    :cond_6
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    new-array v8, v10, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3385
    return-void
.end method
