.class Lorg/telegram/messenger/support/util/MessageThreadUtil$2;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"

# interfaces
.implements Lorg/telegram/messenger/support/util/ThreadUtil$BackgroundCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/support/util/MessageThreadUtil;->getBackgroundProxy(Lorg/telegram/messenger/support/util/ThreadUtil$BackgroundCallback;)Lorg/telegram/messenger/support/util/ThreadUtil$BackgroundCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/telegram/messenger/support/util/ThreadUtil$BackgroundCallback",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final LOAD_TILE:I = 0x3

.field static final RECYCLE_TILE:I = 0x4

.field static final REFRESH:I = 0x1

.field static final UPDATE_RANGE:I = 0x2


# instance fields
.field private mBackgroundRunnable:Ljava/lang/Runnable;

.field mBackgroundRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field final mQueue:Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;

.field final synthetic this$0:Lorg/telegram/messenger/support/util/MessageThreadUtil;

.field final synthetic val$callback:Lorg/telegram/messenger/support/util/ThreadUtil$BackgroundCallback;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/util/MessageThreadUtil;Lorg/telegram/messenger/support/util/ThreadUtil$BackgroundCallback;)V
    .locals 2
    .param p1, "this$0"    # Lorg/telegram/messenger/support/util/MessageThreadUtil;

    .prologue
    .line 87
    .local p0, "this":Lorg/telegram/messenger/support/util/MessageThreadUtil$2;, "Lorg/telegram/messenger/support/util/MessageThreadUtil$2;"
    iput-object p1, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$2;->this$0:Lorg/telegram/messenger/support/util/MessageThreadUtil;

    iput-object p2, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$2;->val$callback:Lorg/telegram/messenger/support/util/ThreadUtil$BackgroundCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;

    invoke-direct {v0}, Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$2;->mQueue:Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;

    .line 89
    invoke-static {}, Landroid/support/v4/content/ParallelExecutorCompat;->getParallelExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$2;->mExecutor:Ljava/util/concurrent/Executor;

    .line 90
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$2;->mBackgroundRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 135
    new-instance v0, Lorg/telegram/messenger/support/util/MessageThreadUtil$2$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/support/util/MessageThreadUtil$2$1;-><init>(Lorg/telegram/messenger/support/util/MessageThreadUtil$2;)V

    iput-object v0, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$2;->mBackgroundRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private maybeExecuteBackgroundRunnable()V
    .locals 3

    .prologue
    .line 130
    .local p0, "this":Lorg/telegram/messenger/support/util/MessageThreadUtil$2;, "Lorg/telegram/messenger/support/util/MessageThreadUtil$2;"
    iget-object v0, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$2;->mBackgroundRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$2;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$2;->mBackgroundRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 133
    :cond_0
    return-void
.end method

.method private sendMessage(Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;)V
    .locals 1
    .param p1, "msg"    # Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    .prologue
    .line 120
    .local p0, "this":Lorg/telegram/messenger/support/util/MessageThreadUtil$2;, "Lorg/telegram/messenger/support/util/MessageThreadUtil$2;"
    iget-object v0, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$2;->mQueue:Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;->sendMessage(Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;)V

    .line 121
    invoke-direct {p0}, Lorg/telegram/messenger/support/util/MessageThreadUtil$2;->maybeExecuteBackgroundRunnable()V

    .line 122
    return-void
.end method

.method private sendMessageAtFrontOfQueue(Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;)V
    .locals 1
    .param p1, "msg"    # Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    .prologue
    .line 125
    .local p0, "this":Lorg/telegram/messenger/support/util/MessageThreadUtil$2;, "Lorg/telegram/messenger/support/util/MessageThreadUtil$2;"
    iget-object v0, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$2;->mQueue:Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;->sendMessageAtFrontOfQueue(Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;)V

    .line 126
    invoke-direct {p0}, Lorg/telegram/messenger/support/util/MessageThreadUtil$2;->maybeExecuteBackgroundRunnable()V

    .line 127
    return-void
.end method


# virtual methods
.method public loadTile(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "scrollHint"    # I

    .prologue
    .line 111
    .local p0, "this":Lorg/telegram/messenger/support/util/MessageThreadUtil$2;, "Lorg/telegram/messenger/support/util/MessageThreadUtil$2;"
    const/4 v0, 0x3

    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->obtainMessage(III)Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/support/util/MessageThreadUtil$2;->sendMessage(Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;)V

    .line 112
    return-void
.end method

.method public recycleTile(Lorg/telegram/messenger/support/util/TileList$Tile;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/support/util/TileList$Tile",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lorg/telegram/messenger/support/util/MessageThreadUtil$2;, "Lorg/telegram/messenger/support/util/MessageThreadUtil$2;"
    .local p1, "tile":Lorg/telegram/messenger/support/util/TileList$Tile;, "Lorg/telegram/messenger/support/util/TileList$Tile<TT;>;"
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->obtainMessage(IILjava/lang/Object;)Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/support/util/MessageThreadUtil$2;->sendMessage(Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;)V

    .line 117
    return-void
.end method

.method public refresh(I)V
    .locals 2
    .param p1, "generation"    # I

    .prologue
    .line 99
    .local p0, "this":Lorg/telegram/messenger/support/util/MessageThreadUtil$2;, "Lorg/telegram/messenger/support/util/MessageThreadUtil$2;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->obtainMessage(IILjava/lang/Object;)Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/support/util/MessageThreadUtil$2;->sendMessageAtFrontOfQueue(Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;)V

    .line 100
    return-void
.end method

.method public updateRange(IIIII)V
    .locals 7
    .param p1, "rangeStart"    # I
    .param p2, "rangeEnd"    # I
    .param p3, "extRangeStart"    # I
    .param p4, "extRangeEnd"    # I
    .param p5, "scrollHint"    # I

    .prologue
    .line 105
    .local p0, "this":Lorg/telegram/messenger/support/util/MessageThreadUtil$2;, "Lorg/telegram/messenger/support/util/MessageThreadUtil$2;"
    const/4 v0, 0x2

    const/4 v6, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->obtainMessage(IIIIIILjava/lang/Object;)Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/support/util/MessageThreadUtil$2;->sendMessageAtFrontOfQueue(Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;)V

    .line 107
    return-void
.end method
