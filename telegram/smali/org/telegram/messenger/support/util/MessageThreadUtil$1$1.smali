.class Lorg/telegram/messenger/support/util/MessageThreadUtil$1$1;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/util/MessageThreadUtil$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/support/util/MessageThreadUtil$1;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/util/MessageThreadUtil$1;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/support/util/MessageThreadUtil$1;

    .prologue
    .line 59
    .local p0, "this":Lorg/telegram/messenger/support/util/MessageThreadUtil$1$1;, "Lorg/telegram/messenger/support/util/MessageThreadUtil$1$1;"
    iput-object p1, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$1$1;->this$1:Lorg/telegram/messenger/support/util/MessageThreadUtil$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 62
    .local p0, "this":Lorg/telegram/messenger/support/util/MessageThreadUtil$1$1;, "Lorg/telegram/messenger/support/util/MessageThreadUtil$1$1;"
    iget-object v1, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$1$1;->this$1:Lorg/telegram/messenger/support/util/MessageThreadUtil$1;

    iget-object v1, v1, Lorg/telegram/messenger/support/util/MessageThreadUtil$1;->mQueue:Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;->next()Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    .line 63
    .local v0, "msg":Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;
    :goto_0
    if-eqz v0, :cond_0

    .line 64
    iget v1, v0, Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->what:I

    packed-switch v1, :pswitch_data_0

    .line 76
    const-string/jumbo v1, "ThreadUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported message, what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :goto_1
    iget-object v1, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$1$1;->this$1:Lorg/telegram/messenger/support/util/MessageThreadUtil$1;

    iget-object v1, v1, Lorg/telegram/messenger/support/util/MessageThreadUtil$1;->mQueue:Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;->next()Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    goto :goto_0

    .line 66
    :pswitch_0
    iget-object v1, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$1$1;->this$1:Lorg/telegram/messenger/support/util/MessageThreadUtil$1;

    iget-object v1, v1, Lorg/telegram/messenger/support/util/MessageThreadUtil$1;->val$callback:Lorg/telegram/messenger/support/util/ThreadUtil$MainThreadCallback;

    iget v2, v0, Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->arg1:I

    iget v3, v0, Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->arg2:I

    invoke-interface {v1, v2, v3}, Lorg/telegram/messenger/support/util/ThreadUtil$MainThreadCallback;->updateItemCount(II)V

    goto :goto_1

    .line 70
    :pswitch_1
    iget-object v1, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$1$1;->this$1:Lorg/telegram/messenger/support/util/MessageThreadUtil$1;

    iget-object v2, v1, Lorg/telegram/messenger/support/util/MessageThreadUtil$1;->val$callback:Lorg/telegram/messenger/support/util/ThreadUtil$MainThreadCallback;

    iget v3, v0, Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->arg1:I

    iget-object v1, v0, Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->data:Ljava/lang/Object;

    check-cast v1, Lorg/telegram/messenger/support/util/TileList$Tile;

    invoke-interface {v2, v3, v1}, Lorg/telegram/messenger/support/util/ThreadUtil$MainThreadCallback;->addTile(ILorg/telegram/messenger/support/util/TileList$Tile;)V

    goto :goto_1

    .line 73
    :pswitch_2
    iget-object v1, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$1$1;->this$1:Lorg/telegram/messenger/support/util/MessageThreadUtil$1;

    iget-object v1, v1, Lorg/telegram/messenger/support/util/MessageThreadUtil$1;->val$callback:Lorg/telegram/messenger/support/util/ThreadUtil$MainThreadCallback;

    iget v2, v0, Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->arg1:I

    iget v3, v0, Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->arg2:I

    invoke-interface {v1, v2, v3}, Lorg/telegram/messenger/support/util/ThreadUtil$MainThreadCallback;->removeTile(II)V

    goto :goto_1

    .line 80
    :cond_0
    return-void

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
