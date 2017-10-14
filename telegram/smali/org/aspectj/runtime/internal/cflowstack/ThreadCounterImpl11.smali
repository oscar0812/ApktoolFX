.class public Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;
.super Ljava/lang/Object;
.source "ThreadCounterImpl11.java"

# interfaces
.implements Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11$Counter;
    }
.end annotation


# static fields
.field private static final COLLECT_AT:I = 0x4e20

.field private static final MIN_COLLECT_AT:I = 0x64


# instance fields
.field private cached_counter:Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11$Counter;

.field private cached_thread:Ljava/lang/Thread;

.field private change_count:I

.field private counters:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->counters:Ljava/util/Hashtable;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->change_count:I

    .line 31
    return-void
.end method

.method private declared-synchronized getThreadCounter()Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11$Counter;
    .locals 7

    .prologue
    .line 36
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    iget-object v5, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->cached_thread:Ljava/lang/Thread;

    if-eq v4, v5, :cond_4

    .line 37
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    iput-object v4, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->cached_thread:Ljava/lang/Thread;

    .line 38
    iget-object v4, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->counters:Ljava/util/Hashtable;

    iget-object v5, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->cached_thread:Ljava/lang/Thread;

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11$Counter;

    iput-object v4, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->cached_counter:Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11$Counter;

    .line 39
    iget-object v4, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->cached_counter:Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11$Counter;

    if-nez v4, :cond_0

    .line 40
    new-instance v4, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11$Counter;

    invoke-direct {v4}, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11$Counter;-><init>()V

    iput-object v4, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->cached_counter:Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11$Counter;

    .line 41
    iget-object v4, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->counters:Ljava/util/Hashtable;

    iget-object v5, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->cached_thread:Ljava/lang/Thread;

    iget-object v6, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->cached_counter:Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11$Counter;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_0
    iget v4, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->change_count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->change_count:I

    .line 45
    const/4 v4, 0x1

    iget-object v5, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->counters:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->size()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 46
    .local v2, "size":I
    iget v4, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->change_count:I

    const/16 v5, 0x64

    const/16 v6, 0x4e20

    div-int/2addr v6, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-le v4, v5, :cond_4

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v0, "dead_stacks":Ljava/util/List;
    iget-object v4, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->counters:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "e":Ljava/util/Enumeration;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 49
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Thread;

    .line 50
    .local v3, "t":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 36
    .end local v0    # "dead_stacks":Ljava/util/List;
    .end local v1    # "e":Ljava/util/Enumeration;
    .end local v2    # "size":I
    .end local v3    # "t":Ljava/lang/Thread;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 52
    .restart local v0    # "dead_stacks":Ljava/util/List;
    .restart local v1    # "e":Ljava/util/Enumeration;
    .restart local v2    # "size":I
    :cond_2
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 53
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Thread;

    .line 54
    .restart local v3    # "t":Ljava/lang/Thread;
    iget-object v4, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->counters:Ljava/util/Hashtable;

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 56
    .end local v3    # "t":Ljava/lang/Thread;
    :cond_3
    const/4 v4, 0x0

    iput v4, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->change_count:I

    .line 59
    .end local v0    # "dead_stacks":Ljava/util/List;
    .end local v1    # "e":Ljava/util/Iterator;
    .end local v2    # "size":I
    :cond_4
    iget-object v4, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->cached_counter:Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11$Counter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v4
.end method


# virtual methods
.method public dec()V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->getThreadCounter()Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11$Counter;

    move-result-object v0

    iget v1, v0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11$Counter;->value:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11$Counter;->value:I

    .line 68
    return-void
.end method

.method public inc()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->getThreadCounter()Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11$Counter;

    move-result-object v0

    iget v1, v0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11$Counter;->value:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11$Counter;->value:I

    .line 64
    return-void
.end method

.method public isNotZero()Z
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->getThreadCounter()Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11$Counter;

    move-result-object v0

    iget v0, v0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11$Counter;->value:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeThreadCounter()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method
