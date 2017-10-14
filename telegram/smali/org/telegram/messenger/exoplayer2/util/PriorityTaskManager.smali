.class public final Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;
.super Ljava/lang/Object;
.source "PriorityTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager$PriorityTooLowException;
    }
.end annotation


# instance fields
.field private highestPriority:I

.field private final lock:Ljava/lang/Object;

.field private final queue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;->lock:Ljava/lang/Object;

    .line 50
    new-instance v0, Ljava/util/PriorityQueue;

    const/16 v1, 0xa

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;->queue:Ljava/util/PriorityQueue;

    .line 51
    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;->highestPriority:I

    .line 52
    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 3
    .param p1, "priority"    # I

    .prologue
    .line 60
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 61
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;->queue:Ljava/util/PriorityQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 62
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;->highestPriority:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;->highestPriority:I

    .line 63
    monitor-exit v1

    .line 64
    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public proceed(I)V
    .locals 2
    .param p1, "priority"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 74
    :goto_0
    :try_start_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;->highestPriority:I

    if-eq v0, p1, :cond_0

    .line 75
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    return-void
.end method

.method public proceedNonBlocking(I)Z
    .locals 2
    .param p1, "priority"    # I

    .prologue
    .line 87
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 88
    :try_start_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;->highestPriority:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public proceedOrThrow(I)V
    .locals 3
    .param p1, "priority"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager$PriorityTooLowException;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 100
    :try_start_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;->highestPriority:I

    if-eq v0, p1, :cond_0

    .line 101
    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager$PriorityTooLowException;

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;->highestPriority:I

    invoke-direct {v0, p1, v2}, Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager$PriorityTooLowException;-><init>(II)V

    throw v0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    return-void
.end method

.method public remove(I)V
    .locals 3
    .param p1, "priority"    # I

    .prologue
    .line 112
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 113
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;->queue:Ljava/util/PriorityQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x80000000

    :goto_0
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;->highestPriority:I

    .line 115
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 116
    monitor-exit v1

    .line 117
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
