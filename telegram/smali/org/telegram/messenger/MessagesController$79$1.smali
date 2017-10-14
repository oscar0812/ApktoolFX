.class Lorg/telegram/messenger/MessagesController$79$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$79;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$79;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$79;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesController$79;

    .prologue
    .line 4577
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$79$1;->this$1:Lorg/telegram/messenger/MessagesController$79;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 4580
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$79$1;->this$1:Lorg/telegram/messenger/MessagesController$79;

    iget-wide v2, v2, Lorg/telegram/messenger/MessagesController$79;->val$dialog_id:J

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$79$1;->this$1:Lorg/telegram/messenger/MessagesController$79;

    iget v4, v4, Lorg/telegram/messenger/MessagesController$79;->val$max_date:I

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$79$1;->this$1:Lorg/telegram/messenger/MessagesController$79;

    iget-boolean v6, v6, Lorg/telegram/messenger/MessagesController$79;->val$popup:Z

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/NotificationsController;->processReadMessages(Landroid/util/SparseArray;JIIZ)V

    .line 4581
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$79$1;->this$1:Lorg/telegram/messenger/MessagesController$79;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$79;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$79$1;->this$1:Lorg/telegram/messenger/MessagesController$79;

    iget-wide v2, v1, Lorg/telegram/messenger/MessagesController$79;->val$dialog_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 4582
    .local v7, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v7, :cond_0

    .line 4583
    iput v5, v7, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    .line 4584
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x100

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 4586
    :cond_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 4587
    .local v8, "dialogsToUpdate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$79$1;->this$1:Lorg/telegram/messenger/MessagesController$79;

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesController$79;->val$dialog_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4588
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/NotificationsController;->processDialogsUpdateRead(Ljava/util/HashMap;)V

    .line 4589
    return-void
.end method
