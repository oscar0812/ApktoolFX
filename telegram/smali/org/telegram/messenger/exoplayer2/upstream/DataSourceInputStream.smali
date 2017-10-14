.class public final Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;
.super Ljava/io/InputStream;
.source "DataSourceInputStream.java"


# instance fields
.field private closed:Z

.field private final dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

.field private final dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

.field private opened:Z

.field private final singleByteArray:[B

.field private totalBytesRead:J


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)V
    .locals 1
    .param p1, "dataSource"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    .param p2, "dataSpec"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 34
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->opened:Z

    .line 35
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->closed:Z

    .line 43
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    .line 44
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    .line 45
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->singleByteArray:[B

    .line 46
    return-void
.end method

.method private checkOpened()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->opened:Z

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)J

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->opened:Z

    .line 105
    :cond_0
    return-void
.end method


# virtual methods
.method public bytesRead()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->totalBytesRead:J

    return-wide v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->closed:Z

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->close()V

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->closed:Z

    .line 98
    :cond_0
    return-void
.end method

.method public open()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->checkOpened()V

    .line 66
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 70
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->singleByteArray:[B

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->read([B)I

    move-result v0

    .line 71
    .local v0, "length":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->singleByteArray:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .param p1, "buffer"    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 6
    .param p1, "buffer"    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 81
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->closed:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 82
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->checkOpened()V

    .line 83
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v1, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->read([BII)I

    move-result v0

    .line 84
    .local v0, "bytesRead":I
    if-ne v0, v2, :cond_1

    move v0, v2

    .line 88
    .end local v0    # "bytesRead":I
    :goto_1
    return v0

    .line 81
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 87
    .restart local v0    # "bytesRead":I
    :cond_1
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->totalBytesRead:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->totalBytesRead:J

    goto :goto_1
.end method
