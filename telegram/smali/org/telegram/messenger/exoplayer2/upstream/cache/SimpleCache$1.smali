.class Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache$1;
.super Ljava/lang/Thread;
.source "SimpleCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;-><init>(Ljava/io/File;Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheEvictor;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;

.field final synthetic val$conditionVariable:Landroid/os/ConditionVariable;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;Ljava/lang/String;Landroid/os/ConditionVariable;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache$1;->this$0:Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;

    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache$1;->val$conditionVariable:Landroid/os/ConditionVariable;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 74
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache$1;->this$0:Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;

    monitor-enter v2

    .line 75
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache$1;->val$conditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :try_start_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache$1;->this$0:Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->access$000(Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;)V
    :try_end_1
    .catch Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$CacheException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    :goto_0
    :try_start_2
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache$1;->this$0:Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->access$200(Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;)Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheEvictor;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheEvictor;->onCacheInitialized()V

    .line 82
    monitor-exit v2

    .line 83
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$CacheException;
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache$1;->this$0:Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;

    invoke-static {v1, v0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->access$102(Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$CacheException;)Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$CacheException;

    goto :goto_0

    .line 82
    .end local v0    # "e":Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$CacheException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
