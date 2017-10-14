.class public final Lorg/telegram/messenger/exoplayer2/upstream/PriorityDataSourceFactory;
.super Ljava/lang/Object;
.source "PriorityDataSourceFactory.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;


# instance fields
.field private final priority:I

.field private final priorityTaskManager:Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;

.field private final upstreamFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;I)V
    .locals 0
    .param p1, "upstreamFactory"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;
    .param p2, "priorityTaskManager"    # Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;
    .param p3, "priority"    # I

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/upstream/PriorityDataSourceFactory;->upstreamFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    .line 39
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/upstream/PriorityDataSourceFactory;->priorityTaskManager:Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;

    .line 40
    iput p3, p0, Lorg/telegram/messenger/exoplayer2/upstream/PriorityDataSourceFactory;->priority:I

    .line 41
    return-void
.end method


# virtual methods
.method public bridge synthetic createDataSource()Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/upstream/PriorityDataSourceFactory;->createDataSource()Lorg/telegram/messenger/exoplayer2/upstream/PriorityDataSource;

    move-result-object v0

    return-object v0
.end method

.method public createDataSource()Lorg/telegram/messenger/exoplayer2/upstream/PriorityDataSource;
    .locals 4

    .prologue
    .line 45
    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/PriorityDataSource;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/PriorityDataSourceFactory;->upstreamFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/PriorityDataSourceFactory;->priorityTaskManager:Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/PriorityDataSourceFactory;->priority:I

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/upstream/PriorityDataSource;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;I)V

    return-object v0
.end method
