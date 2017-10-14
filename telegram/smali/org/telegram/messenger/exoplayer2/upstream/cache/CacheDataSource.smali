.class public final Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;
.super Ljava/lang/Object;
.source "CacheDataSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/upstream/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource$EventListener;,
        Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource$Flags;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_CACHE_FILE_SIZE:J = 0x200000L

.field public static final FLAG_BLOCK_ON_CACHE:I = 0x1

.field public static final FLAG_IGNORE_CACHE_FOR_UNSET_LENGTH_REQUESTS:I = 0x4

.field public static final FLAG_IGNORE_CACHE_ON_ERROR:I = 0x2


# instance fields
.field private final blockOnCache:Z

.field private bytesRemaining:J

.field private final cache:Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;

.field private final cacheReadDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

.field private final cacheWriteDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

.field private currentDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

.field private currentRequestIgnoresCache:Z

.field private currentRequestUnbounded:Z

.field private final eventListener:Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource$EventListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private flags:I

.field private final ignoreCacheForUnsetLengthRequests:Z

.field private final ignoreCacheOnError:Z

.field private key:Ljava/lang/String;

.field private lockedSpan:Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;

.field private readPosition:J

.field private seenCacheError:Z

.field private totalCachedBytesRead:J

.field private final upstreamDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;I)V
    .locals 6
    .param p1, "cache"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;
    .param p2, "upstream"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    .param p3, "flags"    # I

    .prologue
    .line 116
    const-wide/32 v4, 0x200000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;IJ)V

    .line 117
    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;IJ)V
    .locals 8
    .param p1, "cache"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;
    .param p2, "upstream"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    .param p3, "flags"    # I
    .param p4, "maxCacheFileSize"    # J

    .prologue
    .line 134
    new-instance v3, Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource;

    invoke-direct {v3}, Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource;-><init>()V

    new-instance v4, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSink;

    invoke-direct {v4, p1, p4, p5}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSink;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;J)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSink;ILorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource$EventListener;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSink;ILorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource$EventListener;)V
    .locals 3
    .param p1, "cache"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;
    .param p2, "upstream"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    .param p3, "cacheReadDataSource"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    .param p4, "cacheWriteDataSink"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSink;
    .param p5, "flags"    # I
    .param p6, "eventListener"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource$EventListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->cache:Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;

    .line 155
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->cacheReadDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    .line 156
    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->blockOnCache:Z

    .line 157
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->ignoreCacheOnError:Z

    .line 158
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->ignoreCacheForUnsetLengthRequests:Z

    .line 160
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->upstreamDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    .line 161
    if-eqz p4, :cond_3

    .line 162
    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/TeeDataSource;

    invoke-direct {v0, p2, p4}, Lorg/telegram/messenger/exoplayer2/upstream/TeeDataSource;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSink;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->cacheWriteDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    .line 166
    :goto_3
    iput-object p6, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->eventListener:Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource$EventListener;

    .line 167
    return-void

    :cond_0
    move v0, v2

    .line 156
    goto :goto_0

    :cond_1
    move v0, v2

    .line 157
    goto :goto_1

    :cond_2
    move v1, v2

    .line 158
    goto :goto_2

    .line 164
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->cacheWriteDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    goto :goto_3
.end method

.method private closeCurrentSource()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 355
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    if-nez v0, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->close()V

    .line 360
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    .line 361
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->currentRequestUnbounded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->lockedSpan:Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->cache:Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->lockedSpan:Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;->releaseHoleSpan(Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;)V

    .line 365
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->lockedSpan:Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;

    goto :goto_0

    .line 363
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->lockedSpan:Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;

    if-eqz v1, :cond_2

    .line 364
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->cache:Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->lockedSpan:Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;->releaseHoleSpan(Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;)V

    .line 365
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->lockedSpan:Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;

    :cond_2
    throw v0
.end method

.method private handleBeforeThrow(Ljava/io/IOException;)V
    .locals 2
    .param p1, "exception"    # Ljava/io/IOException;

    .prologue
    .line 371
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->cacheReadDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    if-eq v0, v1, :cond_0

    instance-of v0, p1, Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$CacheException;

    if-eqz v0, :cond_1

    .line 372
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->seenCacheError:Z

    .line 374
    :cond_1
    return-void
.end method

.method private notifyBytesRead()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 377
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->eventListener:Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource$EventListener;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->totalCachedBytesRead:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_0

    .line 378
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->eventListener:Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource$EventListener;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->cache:Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;->getCacheSpace()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->totalCachedBytesRead:J

    invoke-interface {v0, v2, v3, v4, v5}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource$EventListener;->onCachedBytesRead(JJ)V

    .line 379
    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->totalCachedBytesRead:J

    .line 381
    :cond_0
    return-void
.end method

.method private openNextSource(Z)Z
    .locals 27
    .param p1, "initial"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->currentRequestIgnoresCache:Z

    if-eqz v6, :cond_2

    .line 263
    const/16 v25, 0x0

    .line 274
    .local v25, "span":Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;
    :goto_0
    if-nez v25, :cond_4

    .line 277
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->upstreamDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    move-object/from16 v0, p0

    iput-object v6, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    .line 278
    new-instance v4, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->uri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->key:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->flags:I

    invoke-direct/range {v4 .. v11}, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 310
    .local v4, "dataSpec":Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    :goto_1
    iget-wide v6, v4, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v12, -0x1

    cmp-long v6, v6, v12

    if-nez v6, :cond_a

    const/4 v6, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->currentRequestUnbounded:Z

    .line 311
    const/16 v26, 0x0

    .line 312
    .local v26, "successful":Z
    const-wide/16 v22, 0x0

    .line 314
    .local v22, "currentBytesRemaining":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v6, v4}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v22

    .line 315
    const/16 v26, 0x1

    .line 340
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->currentRequestUnbounded:Z

    if-eqz v6, :cond_1

    const-wide/16 v6, -0x1

    cmp-long v6, v22, v6

    if-eqz v6, :cond_1

    .line 341
    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    .line 342
    iget-wide v6, v4, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->position:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    add-long/2addr v6, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->setContentLength(J)V

    .line 344
    :cond_1
    return v26

    .line 264
    .end local v4    # "dataSpec":Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    .end local v22    # "currentBytesRemaining":J
    .end local v25    # "span":Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;
    .end local v26    # "successful":Z
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->blockOnCache:Z

    if-eqz v6, :cond_3

    .line 266
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->cache:Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->key:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    invoke-interface {v6, v7, v12, v13}, Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;->startReadWrite(Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v25

    .restart local v25    # "span":Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;
    goto :goto_0

    .line 267
    .end local v25    # "span":Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;
    :catch_0
    move-exception v21

    .line 268
    .local v21, "e":Ljava/lang/InterruptedException;
    new-instance v6, Ljava/io/InterruptedIOException;

    invoke-direct {v6}, Ljava/io/InterruptedIOException;-><init>()V

    throw v6

    .line 271
    .end local v21    # "e":Ljava/lang/InterruptedException;
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->cache:Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->key:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    invoke-interface {v6, v7, v12, v13}, Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;->startReadWriteNonBlocking(Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;

    move-result-object v25

    .restart local v25    # "span":Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;
    goto/16 :goto_0

    .line 279
    :cond_4
    move-object/from16 v0, v25

    iget-boolean v6, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->isCached:Z

    if-eqz v6, :cond_6

    .line 281
    move-object/from16 v0, v25

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->file:Ljava/io/File;

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 282
    .local v5, "fileUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    move-object/from16 v0, v25

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->position:J

    sub-long v8, v6, v12

    .line 283
    .local v8, "filePosition":J
    move-object/from16 v0, v25

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->length:J

    sub-long v10, v6, v8

    .line 284
    .local v10, "length":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    const-wide/16 v12, -0x1

    cmp-long v6, v6, v12

    if-eqz v6, :cond_5

    .line 285
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 287
    :cond_5
    new-instance v4, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->key:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->flags:I

    invoke-direct/range {v4 .. v13}, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    .line 288
    .restart local v4    # "dataSpec":Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->cacheReadDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    move-object/from16 v0, p0

    iput-object v6, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    goto/16 :goto_1

    .line 292
    .end local v4    # "dataSpec":Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    .end local v5    # "fileUri":Landroid/net/Uri;
    .end local v8    # "filePosition":J
    .end local v10    # "length":J
    :cond_6
    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->isOpenEnded()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 293
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    .line 300
    .restart local v10    # "length":J
    :cond_7
    :goto_3
    new-instance v4, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->uri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->key:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->flags:I

    move/from16 v19, v0

    move-object v12, v4

    move-wide/from16 v16, v10

    invoke-direct/range {v12 .. v19}, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 301
    .restart local v4    # "dataSpec":Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->cacheWriteDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    if-eqz v6, :cond_9

    .line 302
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->cacheWriteDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    move-object/from16 v0, p0

    iput-object v6, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    .line 303
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->lockedSpan:Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;

    goto/16 :goto_1

    .line 295
    .end local v4    # "dataSpec":Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    .end local v10    # "length":J
    :cond_8
    move-object/from16 v0, v25

    iget-wide v10, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->length:J

    .line 296
    .restart local v10    # "length":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    const-wide/16 v12, -0x1

    cmp-long v6, v6, v12

    if-eqz v6, :cond_7

    .line 297
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    goto :goto_3

    .line 305
    .restart local v4    # "dataSpec":Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    :cond_9
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->upstreamDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    move-object/from16 v0, p0

    iput-object v6, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    .line 306
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->cache:Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;

    move-object/from16 v0, v25

    invoke-interface {v6, v0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;->releaseHoleSpan(Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;)V

    goto/16 :goto_1

    .line 310
    .end local v10    # "length":J
    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 316
    .restart local v22    # "currentBytesRemaining":J
    .restart local v26    # "successful":Z
    :catch_1
    move-exception v21

    .line 320
    .local v21, "e":Ljava/io/IOException;
    if-nez p1, :cond_b

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->currentRequestUnbounded:Z

    if-eqz v6, :cond_b

    .line 321
    move-object/from16 v20, v21

    .line 322
    .local v20, "cause":Ljava/lang/Throwable;
    :goto_4
    if-eqz v20, :cond_b

    .line 323
    move-object/from16 v0, v20

    instance-of v6, v0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceException;

    if-eqz v6, :cond_c

    move-object/from16 v6, v20

    .line 324
    check-cast v6, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceException;

    iget v0, v6, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceException;->reason:I

    move/from16 v24, v0

    .line 325
    .local v24, "reason":I
    if-nez v24, :cond_c

    .line 326
    const/16 v21, 0x0

    .line 333
    .end local v20    # "cause":Ljava/lang/Throwable;
    .end local v24    # "reason":I
    :cond_b
    if-eqz v21, :cond_0

    .line 334
    throw v21

    .line 330
    .restart local v20    # "cause":Ljava/lang/Throwable;
    :cond_c
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v20

    goto :goto_4
.end method

.method private setContentLength(J)V
    .locals 3
    .param p1, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 349
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->cacheWriteDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    if-ne v0, v1, :cond_0

    .line 350
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->cache:Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->key:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;->setContentLength(Ljava/lang/String;J)V

    .line 352
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->uri:Landroid/net/Uri;

    .line 244
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->notifyBytesRead()V

    .line 246
    :try_start_0
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->closeCurrentSource()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    return-void

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->handleBeforeThrow(Ljava/io/IOException;)V

    .line 249
    throw v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->upstreamDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->uri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)J
    .locals 8
    .param p1, "dataSpec"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v6, -0x1

    .line 172
    :try_start_0
    iget-object v3, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->uri:Landroid/net/Uri;

    .line 173
    iget v3, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->flags:I

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->flags:I

    .line 174
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheUtil;->getKey(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->key:Ljava/lang/String;

    .line 175
    iget-wide v4, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->position:J

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    .line 176
    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->ignoreCacheOnError:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->seenCacheError:Z

    if-nez v3, :cond_1

    :cond_0
    iget-wide v4, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->length:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->ignoreCacheForUnsetLengthRequests:Z

    if-eqz v3, :cond_4

    :cond_1
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->currentRequestIgnoresCache:Z

    .line 178
    iget-wide v2, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->length:J

    cmp-long v1, v2, v6

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->currentRequestIgnoresCache:Z

    if-eqz v1, :cond_5

    .line 179
    :cond_2
    iget-wide v2, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->length:J

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    .line 189
    :cond_3
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->openNextSource(Z)Z

    .line 190
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    return-wide v2

    :cond_4
    move v1, v2

    .line 176
    goto :goto_0

    .line 181
    :cond_5
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->cache:Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->key:Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;->getContentLength(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    .line 182
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_3

    .line 183
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    iget-wide v4, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->position:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    .line 184
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_3

    .line 185
    new-instance v1, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceException;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceException;-><init>(I)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->handleBeforeThrow(Ljava/io/IOException;)V

    .line 193
    throw v0
.end method

.method public read([BII)I
    .locals 8
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "readLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    const/4 v0, 0x0

    const-wide/16 v4, 0x0

    .line 199
    if-nez p3, :cond_1

    .line 229
    :cond_0
    :goto_0
    return v0

    .line 202
    :cond_1
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 203
    const/4 v0, -0x1

    goto :goto_0

    .line 206
    :cond_2
    :try_start_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v2, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->read([BII)I

    move-result v0

    .line 207
    .local v0, "bytesRead":I
    if-ltz v0, :cond_4

    .line 208
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->cacheReadDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    if-ne v2, v3, :cond_3

    .line 209
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->totalCachedBytesRead:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->totalCachedBytesRead:J

    .line 211
    :cond_3
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    .line 212
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    .line 213
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    .end local v0    # "bytesRead":I
    :catch_0
    move-exception v1

    .line 231
    .local v1, "e":Ljava/io/IOException;
    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->handleBeforeThrow(Ljava/io/IOException;)V

    .line 232
    throw v1

    .line 216
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "bytesRead":I
    :cond_4
    :try_start_1
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->currentRequestUnbounded:Z

    if-eqz v2, :cond_5

    .line 219
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->setContentLength(J)V

    .line 220
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    .line 222
    :cond_5
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->closeCurrentSource()V

    .line 223
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_6

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_0

    .line 224
    :cond_6
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->openNextSource(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->read([BII)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0
.end method
