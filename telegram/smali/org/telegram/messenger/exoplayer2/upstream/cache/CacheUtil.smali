.class public final Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheUtil;
.super Ljava/lang/Object;
.source "CacheUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheUtil$CachingCounters;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cache(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;[BLorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;ILorg/telegram/messenger/exoplayer2/upstream/cache/CacheUtil$CachingCounters;)Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheUtil$CachingCounters;
    .locals 1
    .param p0, "dataSpec"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    .param p1, "cache"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;
    .param p2, "dataSource"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;
    .param p3, "buffer"    # [B
    .param p4, "priorityTaskManager"    # Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;
    .param p5, "priority"    # I
    .param p6, "counters"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheUtil$CachingCounters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {p2}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-static {p3}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-static/range {p0 .. p6}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheUtil;->internalCache(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;[BLorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;ILorg/telegram/messenger/exoplayer2/upstream/cache/CacheUtil$CachingCounters;)Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheUtil$CachingCounters;

    move-result-object v0

    return-object v0
.end method

.method public static generateKey(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 53
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCached(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheUtil$CachingCounters;)Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheUtil$CachingCounters;
    .locals 8
    .param p0, "dataSpec"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    .param p1, "cache"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;
    .param p2, "counters"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheUtil$CachingCounters;

    .prologue
    .line 79
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    :try_start_0
    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheUtil;->internalCache(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;[BLorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;ILorg/telegram/messenger/exoplayer2/upstream/cache/CacheUtil$CachingCounters;)Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheUtil$CachingCounters;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 80
    :catch_0
    move-exception v7

    .line 81
    .local v7, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 80
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    goto :goto_0
.end method

.method public static getKey(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)Ljava/lang/String;
    .locals 1
    .param p0, "dataSpec"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheUtil;->generateKey(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static internalCache(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;[BLorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;ILorg/telegram/messenger/exoplayer2/upstream/cache/CacheUtil$CachingCounters;)Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheUtil$CachingCounters;
    .locals 22
    .param p0, "dataSpec"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    .param p1, "cache"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;
    .param p2, "dataSource"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;
    .param p3, "buffer"    # [B
    .param p4, "priorityTaskManager"    # Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;
    .param p5, "priority"    # I
    .param p6, "counters"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheUtil$CachingCounters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 131
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->position:J

    .line 132
    .local v6, "start":J
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->length:J

    .line 133
    .local v8, "left":J
    invoke-static/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheUtil;->getKey(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)Ljava/lang/String;

    move-result-object v5

    .line 134
    .local v5, "key":Ljava/lang/String;
    const-wide/16 v12, -0x1

    cmp-long v4, v8, v12

    if-nez v4, :cond_0

    .line 135
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;->getContentLength(Ljava/lang/String;)J

    move-result-wide v8

    .line 136
    const-wide/16 v12, -0x1

    cmp-long v4, v8, v12

    if-nez v4, :cond_0

    .line 137
    const-wide v8, 0x7fffffffffffffffL

    .line 140
    :cond_0
    if-nez p6, :cond_3

    .line 141
    new-instance p6, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheUtil$CachingCounters;

    .end local p6    # "counters":Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheUtil$CachingCounters;
    invoke-direct/range {p6 .. p6}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheUtil$CachingCounters;-><init>()V

    .line 146
    .restart local p6    # "counters":Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheUtil$CachingCounters;
    :cond_1
    :goto_0
    const-wide/16 v12, 0x0

    cmp-long v4, v8, v12

    if-lez v4, :cond_5

    move-object/from16 v4, p1

    .line 147
    invoke-interface/range {v4 .. v9}, Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;->getCachedBytes(Ljava/lang/String;JJ)J

    move-result-wide v18

    .line 149
    .local v18, "blockLength":J
    const-wide/16 v12, 0x0

    cmp-long v4, v18, v12

    if-lez v4, :cond_4

    .line 150
    move-object/from16 v0, p6

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->alreadyCachedBytes:J

    add-long v12, v12, v18

    move-object/from16 v0, p6

    iput-wide v12, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->alreadyCachedBytes:J

    .line 171
    :cond_2
    :goto_1
    add-long v6, v6, v18

    .line 172
    const-wide v12, 0x7fffffffffffffffL

    cmp-long v4, v8, v12

    if-eqz v4, :cond_1

    .line 173
    sub-long v8, v8, v18

    goto :goto_0

    .line 143
    .end local v18    # "blockLength":J
    :cond_3
    const-wide/16 v12, 0x0

    move-object/from16 v0, p6

    iput-wide v12, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->alreadyCachedBytes:J

    .line 144
    const-wide/16 v12, 0x0

    move-object/from16 v0, p6

    iput-wide v12, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->downloadedBytes:J

    goto :goto_0

    .line 153
    .restart local v18    # "blockLength":J
    :cond_4
    move-wide/from16 v0, v18

    neg-long v0, v0

    move-wide/from16 v18, v0

    .line 154
    if-eqz p2, :cond_7

    if-eqz p3, :cond_7

    .line 155
    new-instance v10, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    const-wide v12, 0x7fffffffffffffffL

    cmp-long v4, v18, v12

    if-nez v4, :cond_6

    const-wide/16 v14, -0x1

    :goto_2
    move-wide v12, v6

    move-object/from16 v16, v5

    invoke-direct/range {v10 .. v16}, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 157
    .local v10, "subDataSpec":Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p5

    invoke-static {v10, v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheUtil;->readAndDiscard(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;[BLorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;I)J

    move-result-wide v20

    .line 159
    .local v20, "read":J
    move-object/from16 v0, p6

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->downloadedBytes:J

    add-long v12, v12, v20

    move-object/from16 v0, p6

    iput-wide v12, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->downloadedBytes:J

    .line 160
    cmp-long v4, v20, v18

    if-gez v4, :cond_2

    .line 176
    .end local v10    # "subDataSpec":Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    .end local v18    # "blockLength":J
    .end local v20    # "read":J
    :cond_5
    :goto_3
    return-object p6

    .restart local v18    # "blockLength":J
    :cond_6
    move-wide/from16 v14, v18

    .line 155
    goto :goto_2

    .line 164
    :cond_7
    const-wide v12, 0x7fffffffffffffffL

    cmp-long v4, v18, v12

    if-nez v4, :cond_8

    .line 165
    const-wide/16 v12, -0x1

    move-object/from16 v0, p6

    iput-wide v12, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->downloadedBytes:J

    goto :goto_3

    .line 168
    :cond_8
    move-object/from16 v0, p6

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->downloadedBytes:J

    add-long v12, v12, v18

    move-object/from16 v0, p6

    iput-wide v12, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->downloadedBytes:J

    goto :goto_1
.end method

.method private static readAndDiscard(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;[BLorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;I)J
    .locals 6
    .param p0, "dataSpec"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    .param p1, "dataSource"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    .param p2, "buffer"    # [B
    .param p3, "priorityTaskManager"    # Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;
    .param p4, "priority"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 195
    :goto_0
    if-eqz p3, :cond_0

    .line 197
    invoke-virtual {p3, p4}, Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;->proceed(I)V

    .line 200
    :cond_0
    :try_start_0
    invoke-interface {p1, p0}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)J

    .line 201
    const-wide/16 v2, 0x0

    .line 203
    .local v2, "totalRead":J
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1
    :try_end_0
    .catch Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager$PriorityTooLowException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    .end local v2    # "totalRead":J
    :catch_0
    move-exception v1

    .line 215
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/util/Util;->closeQuietly(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;)V

    goto :goto_0

    .line 206
    .restart local v2    # "totalRead":J
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    array-length v4, p2

    invoke-interface {p1, p2, v1, v4}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->read([BII)I
    :try_end_1
    .catch Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager$PriorityTooLowException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 207
    .local v0, "read":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 215
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/util/Util;->closeQuietly(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;)V

    .line 208
    return-wide v2

    .line 210
    :cond_2
    int-to-long v4, v0

    add-long/2addr v2, v4

    .line 211
    goto :goto_1

    .line 215
    .end local v0    # "read":I
    .end local v2    # "totalRead":J
    :catchall_0
    move-exception v1

    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/util/Util;->closeQuietly(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;)V

    throw v1
.end method

.method public static remove(Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)V
    .locals 4
    .param p0, "cache"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 222
    invoke-interface {p0, p1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;->getCachedSpans(Ljava/lang/String;)Ljava/util/NavigableSet;

    move-result-object v1

    .line 223
    .local v1, "cachedSpans":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;>;"
    if-nez v1, :cond_1

    .line 233
    :cond_0
    return-void

    .line 226
    :cond_1
    invoke-interface {v1}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;

    .line 228
    .local v0, "cachedSpan":Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;
    :try_start_0
    invoke-interface {p0, v0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;->removeSpan(Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;)V
    :try_end_0
    .catch Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$CacheException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 229
    :catch_0
    move-exception v3

    goto :goto_0
.end method
