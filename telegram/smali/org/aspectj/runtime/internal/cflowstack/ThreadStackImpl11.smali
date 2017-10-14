.class public Lorg/aspectj/runtime/internal/cflowstack/ThreadStackImpl11;
.super Ljava/lang/Object;
.source "ThreadStackImpl11.java"

# interfaces
.implements Lorg/aspectj/runtime/internal/cflowstack/ThreadStack;


# static fields
.field private static final COLLECT_AT:I = 0x4e20

.field private static final MIN_COLLECT_AT:I = 0x64


# instance fields
.field private cached_stack:Ljava/util/Stack;

.field private cached_thread:Ljava/lang/Thread;

.field private change_count:I

.field private stacks:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackImpl11;->stacks:Ljava/util/Hashtable;

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackImpl11;->change_count:I

    return-void
.end method


# virtual methods
.method public declared-synchronized getThreadStack()Ljava/util/Stack;
    .locals 7

    .prologue
    .line 29
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    iget-object v5, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackImpl11;->cached_thread:Ljava/lang/Thread;

    if-eq v4, v5, :cond_4

    .line 30
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    iput-object v4, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackImpl11;->cached_thread:Ljava/lang/Thread;

    .line 31
    iget-object v4, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackImpl11;->stacks:Ljava/util/Hashtable;

    iget-object v5, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackImpl11;->cached_thread:Ljava/lang/Thread;

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Stack;

    iput-object v4, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackImpl11;->cached_stack:Ljava/util/Stack;

    .line 32
    iget-object v4, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackImpl11;->cached_stack:Ljava/util/Stack;

    if-nez v4, :cond_0

    .line 33
    new-instance v4, Ljava/util/Stack;

    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    iput-object v4, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackImpl11;->cached_stack:Ljava/util/Stack;

    .line 34
    iget-object v4, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackImpl11;->stacks:Ljava/util/Hashtable;

    iget-object v5, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackImpl11;->cached_thread:Ljava/lang/Thread;

    iget-object v6, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackImpl11;->cached_stack:Ljava/util/Stack;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_0
    iget v4, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackImpl11;->change_count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackImpl11;->change_count:I

    .line 38
    const/4 v4, 0x1

    iget-object v5, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackImpl11;->stacks:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->size()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 39
    .local v2, "size":I
    iget v4, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackImpl11;->change_count:I

    const/16 v5, 0x64

    const/16 v6, 0x4e20

    div-int/2addr v6, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-le v4, v5, :cond_4

    .line 40
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 41
    .local v0, "dead_stacks":Ljava/util/Stack;
    iget-object v4, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackImpl11;->stacks:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "e":Ljava/util/Enumeration;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 42
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Thread;

    .line 43
    .local v3, "t":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 29
    .end local v0    # "dead_stacks":Ljava/util/Stack;
    .end local v1    # "e":Ljava/util/Enumeration;
    .end local v2    # "size":I
    .end local v3    # "t":Ljava/lang/Thread;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 45
    .restart local v0    # "dead_stacks":Ljava/util/Stack;
    .restart local v1    # "e":Ljava/util/Enumeration;
    .restart local v2    # "size":I
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 46
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Thread;

    .line 47
    .restart local v3    # "t":Ljava/lang/Thread;
    iget-object v4, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackImpl11;->stacks:Ljava/util/Hashtable;

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 49
    .end local v3    # "t":Ljava/lang/Thread;
    :cond_3
    const/4 v4, 0x0

    iput v4, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackImpl11;->change_count:I

    .line 52
    .end local v0    # "dead_stacks":Ljava/util/Stack;
    .end local v1    # "e":Ljava/util/Enumeration;
    .end local v2    # "size":I
    :cond_4
    iget-object v4, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackImpl11;->cached_stack:Ljava/util/Stack;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v4
.end method

.method public removeThreadStack()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method
