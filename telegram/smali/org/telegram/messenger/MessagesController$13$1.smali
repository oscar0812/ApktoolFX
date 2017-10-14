.class Lorg/telegram/messenger/MessagesController$13$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$13;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$13;

.field final synthetic val$objects:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$13;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesController$13;

    .prologue
    .line 1320
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$13$1;->this$1:Lorg/telegram/messenger/MessagesController$13;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$13$1;->val$objects:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1323
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$13$1;->this$1:Lorg/telegram/messenger/MessagesController$13;

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController$13;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->access$2700(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/messenger/MessagesController$13$1;->this$1:Lorg/telegram/messenger/MessagesController$13;

    iget-wide v6, v5, Lorg/telegram/messenger/MessagesController$13;->val$dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1324
    .local v1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    .line 1325
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$13$1;->this$1:Lorg/telegram/messenger/MessagesController$13;

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController$13;->val$result:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1326
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1327
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$13$1;->this$1:Lorg/telegram/messenger/MessagesController$13;

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController$13;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->access$2700(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/messenger/MessagesController$13$1;->this$1:Lorg/telegram/messenger/MessagesController$13;

    iget-wide v6, v5, Lorg/telegram/messenger/MessagesController$13;->val$dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1330
    :cond_0
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$13$1;->this$1:Lorg/telegram/messenger/MessagesController$13;

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController$13;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    iget-object v5, p0, Lorg/telegram/messenger/MessagesController$13$1;->this$1:Lorg/telegram/messenger/MessagesController$13;

    iget-wide v6, v5, Lorg/telegram/messenger/MessagesController$13;->val$dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 1331
    .local v2, "dialogObj":Lorg/telegram/messenger/MessageObject;
    if-eqz v2, :cond_2

    .line 1332
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$13$1;->val$objects:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 1333
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$13$1;->val$objects:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 1334
    .local v3, "obj":Lorg/telegram/messenger/MessageObject;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 1335
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$13$1;->this$1:Lorg/telegram/messenger/MessagesController$13;

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController$13;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    iget-object v5, p0, Lorg/telegram/messenger/MessagesController$13$1;->this$1:Lorg/telegram/messenger/MessagesController$13;

    iget-wide v6, v5, Lorg/telegram/messenger/MessagesController$13;->val$dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1336
    iget-object v4, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v4, :cond_1

    .line 1337
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$13$1;->this$1:Lorg/telegram/messenger/MessagesController$13;

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController$13;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "obj":Lorg/telegram/messenger/MessageObject;
    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 1338
    .restart local v3    # "obj":Lorg/telegram/messenger/MessageObject;
    if-eqz v3, :cond_1

    .line 1339
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$13$1;->this$1:Lorg/telegram/messenger/MessagesController$13;

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController$13;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1342
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1347
    .end local v0    # "a":I
    .end local v3    # "obj":Lorg/telegram/messenger/MessageObject;
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->replaceMessagesObjects:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$13$1;->this$1:Lorg/telegram/messenger/MessagesController$13;

    iget-wide v8, v7, Lorg/telegram/messenger/MessagesController$13;->val$dialog_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v10

    const/4 v7, 0x1

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$13$1;->val$objects:Ljava/util/ArrayList;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1348
    return-void

    .line 1332
    .restart local v0    # "a":I
    .restart local v3    # "obj":Lorg/telegram/messenger/MessageObject;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method
