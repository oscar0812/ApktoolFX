.class Lorg/telegram/messenger/support/util/MessageThreadUtil$1;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"

# interfaces
.implements Lorg/telegram/messenger/support/util/ThreadUtil$MainThreadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/support/util/MessageThreadUtil;->getMainThreadProxy(Lorg/telegram/messenger/support/util/ThreadUtil$MainThreadCallback;)Lorg/telegram/messenger/support/util/ThreadUtil$MainThreadCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/telegram/messenger/support/util/ThreadUtil$MainThreadCallback",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final ADD_TILE:I = 0x2

.field static final REMOVE_TILE:I = 0x3

.field static final UPDATE_ITEM_COUNT:I = 0x1


# instance fields
.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mMainThreadRunnable:Ljava/lang/Runnable;

.field final mQueue:Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;

.field final synthetic this$0:Lorg/telegram/messenger/support/util/MessageThreadUtil;

.field final synthetic val$callback:Lorg/telegram/messenger/support/util/ThreadUtil$MainThreadCallback;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/util/MessageThreadUtil;Lorg/telegram/messenger/support/util/ThreadUtil$MainThreadCallback;)V
    .locals 2
    .param p1, "this$0"    # Lorg/telegram/messenger/support/util/MessageThreadUtil;

    .prologue
    .line 31
    .local p0, "this":Lorg/telegram/messenger/support/util/MessageThreadUtil$1;, "Lorg/telegram/messenger/support/util/MessageThreadUtil$1;"
    iput-object p1, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$1;->this$0:Lorg/telegram/messenger/support/util/MessageThreadUtil;

    iput-object p2, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$1;->val$callback:Lorg/telegram/messenger/support/util/ThreadUtil$MainThreadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;

    invoke-direct {v0}, Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$1;->mQueue:Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$1;->mMainThreadHandler:Landroid/os/Handler;

    .line 59
    new-instance v0, Lorg/telegram/messenger/support/util/MessageThreadUtil$1$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/support/util/MessageThreadUtil$1$1;-><init>(Lorg/telegram/messenger/support/util/MessageThreadUtil$1;)V

    iput-object v0, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$1;->mMainThreadRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private sendMessage(Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;)V
    .locals 2
    .param p1, "msg"    # Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    .prologue
    .line 55
    .local p0, "this":Lorg/telegram/messenger/support/util/MessageThreadUtil$1;, "Lorg/telegram/messenger/support/util/MessageThreadUtil$1;"
    iget-object v0, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$1;->mQueue:Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;->sendMessage(Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;)V

    .line 56
    iget-object v0, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$1;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$1;->mMainThreadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 57
    return-void
.end method


# virtual methods
.method public addTile(ILorg/telegram/messenger/support/util/TileList$Tile;)V
    .locals 1
    .param p1, "generation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/telegram/messenger/support/util/TileList$Tile",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lorg/telegram/messenger/support/util/MessageThreadUtil$1;, "Lorg/telegram/messenger/support/util/MessageThreadUtil$1;"
    .local p2, "tile":Lorg/telegram/messenger/support/util/TileList$Tile;, "Lorg/telegram/messenger/support/util/TileList$Tile<TT;>;"
    const/4 v0, 0x2

    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->obtainMessage(IILjava/lang/Object;)Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/support/util/MessageThreadUtil$1;->sendMessage(Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;)V

    .line 47
    return-void
.end method

.method public removeTile(II)V
    .locals 1
    .param p1, "generation"    # I
    .param p2, "position"    # I

    .prologue
    .line 51
    .local p0, "this":Lorg/telegram/messenger/support/util/MessageThreadUtil$1;, "Lorg/telegram/messenger/support/util/MessageThreadUtil$1;"
    const/4 v0, 0x3

    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->obtainMessage(III)Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/support/util/MessageThreadUtil$1;->sendMessage(Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;)V

    .line 52
    return-void
.end method

.method public updateItemCount(II)V
    .locals 1
    .param p1, "generation"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 41
    .local p0, "this":Lorg/telegram/messenger/support/util/MessageThreadUtil$1;, "Lorg/telegram/messenger/support/util/MessageThreadUtil$1;"
    const/4 v0, 0x1

    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->obtainMessage(III)Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/support/util/MessageThreadUtil$1;->sendMessage(Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;)V

    .line 42
    return-void
.end method
