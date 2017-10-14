.class public abstract Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;
.super Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;
.source "DataChunk.java"


# static fields
.field private static final READ_GRANULARITY:I = 0x4000


# instance fields
.field private data:[B

.field private limit:I

.field private volatile loadCanceled:Z


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;ILorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;[B)V
    .locals 14
    .param p1, "dataSource"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    .param p2, "dataSpec"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    .param p3, "type"    # I
    .param p4, "trackFormat"    # Lorg/telegram/messenger/exoplayer2/Format;
    .param p5, "trackSelectionReason"    # I
    .param p6, "trackSelectionData"    # Ljava/lang/Object;
    .param p7, "data"    # [B

    .prologue
    .line 50
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v3 .. v13}, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;ILorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 52
    move-object/from16 v0, p7

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;->data:[B

    .line 53
    return-void
.end method

.method private maybeExpandData()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;->data:[B

    if-nez v0, :cond_1

    .line 116
    const/16 v0, 0x4000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;->data:[B

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;->data:[B

    array-length v0, v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;->limit:I

    add-int/lit16 v1, v1, 0x4000

    if-ge v0, v1, :cond_0

    .line 120
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;->data:[B

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;->data:[B

    array-length v1, v1

    add-int/lit16 v1, v1, 0x4000

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;->data:[B

    goto :goto_0
.end method


# virtual methods
.method public bytesLoaded()J
    .locals 2

    .prologue
    .line 68
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;->limit:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final cancelLoad()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;->loadCanceled:Z

    .line 76
    return-void
.end method

.method protected abstract consume([BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getDataHolder()[B
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;->data:[B

    return-object v0
.end method

.method public final isLoadCanceled()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;->loadCanceled:Z

    return v0
.end method

.method public final load()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 86
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)J

    .line 87
    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;->limit:I

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "bytesRead":I
    :cond_0
    :goto_0
    if-eq v0, v5, :cond_1

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;->loadCanceled:Z

    if-nez v1, :cond_1

    .line 90
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;->maybeExpandData()V

    .line 91
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;->limit:I

    const/16 v4, 0x4000

    invoke-interface {v1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->read([BII)I

    move-result v0

    .line 92
    if-eq v0, v5, :cond_0

    .line 93
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;->limit:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;->limit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 100
    .end local v0    # "bytesRead":I
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/util/Util;->closeQuietly(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;)V

    throw v1

    .line 96
    .restart local v0    # "bytesRead":I
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;->loadCanceled:Z

    if-nez v1, :cond_2

    .line 97
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;->data:[B

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;->limit:I

    invoke-virtual {p0, v1, v2}, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;->consume([BI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Util;->closeQuietly(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;)V

    .line 102
    return-void
.end method
