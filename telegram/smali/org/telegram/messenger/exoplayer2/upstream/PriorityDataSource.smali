.class public final Lorg/telegram/messenger/exoplayer2/upstream/PriorityDataSource;
.super Ljava/lang/Object;
.source "PriorityDataSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/upstream/DataSource;


# instance fields
.field private final priority:I

.field private final priorityTaskManager:Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;

.field private final upstream:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;I)V
    .locals 1
    .param p1, "upstream"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    .param p2, "priorityTaskManager"    # Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;
    .param p3, "priority"    # I

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/PriorityDataSource;->upstream:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    .line 49
    invoke-static {p2}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/PriorityDataSource;->priorityTaskManager:Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;

    .line 50
    iput p3, p0, Lorg/telegram/messenger/exoplayer2/upstream/PriorityDataSource;->priority:I

    .line 51
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/PriorityDataSource;->upstream:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->close()V

    .line 73
    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/PriorityDataSource;->upstream:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)J
    .locals 2
    .param p1, "dataSpec"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/PriorityDataSource;->priorityTaskManager:Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/PriorityDataSource;->priority:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;->proceedOrThrow(I)V

    .line 56
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/PriorityDataSource;->upstream:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)J

    move-result-wide v0

    return-wide v0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/PriorityDataSource;->priorityTaskManager:Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/PriorityDataSource;->priority:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;->proceedOrThrow(I)V

    .line 62
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/PriorityDataSource;->upstream:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->read([BII)I

    move-result v0

    return v0
.end method
