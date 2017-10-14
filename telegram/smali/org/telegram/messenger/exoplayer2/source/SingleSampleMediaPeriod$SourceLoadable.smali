.class final Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;
.super Ljava/lang/Object;
.source "SingleSampleMediaPeriod.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SourceLoadable"
.end annotation


# instance fields
.field private final dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

.field private sampleData:[B

.field private sampleSize:I

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "dataSource"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->uri:Landroid/net/Uri;

    .line 256
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    .line 257
    return-void
.end method

.method static synthetic access$100(Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;

    .prologue
    .line 246
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleSize:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;)[B
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;

    .prologue
    .line 246
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    return-object v0
.end method


# virtual methods
.method public cancelLoad()V
    .locals 0

    .prologue
    .line 262
    return-void
.end method

.method public isLoadCanceled()Z
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method public load()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 272
    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleSize:I

    .line 275
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    new-instance v2, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->uri:Landroid/net/Uri;

    invoke-direct {v2, v3}, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;)V

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)J

    .line 277
    const/4 v0, 0x0

    .line 278
    .local v0, "result":I
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 279
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleSize:I

    .line 280
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    if-nez v1, :cond_1

    .line 281
    const/16 v1, 0x400

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    .line 285
    :cond_0
    :goto_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleSize:I

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    array-length v4, v4

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleSize:I

    sub-int/2addr v4, v5

    invoke-interface {v1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->read([BII)I

    move-result v0

    goto :goto_0

    .line 282
    :cond_1
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleSize:I

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 283
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 288
    .end local v0    # "result":I
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/util/Util;->closeQuietly(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;)V

    throw v1

    .restart local v0    # "result":I
    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Util;->closeQuietly(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;)V

    .line 290
    return-void
.end method
