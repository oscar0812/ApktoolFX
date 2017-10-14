.class public final Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker;
.super Ljava/lang/Object;
.source "CachedRegionTracker.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;
    }
.end annotation


# static fields
.field public static final CACHED_TO_END:I = -0x2

.field public static final NOT_CACHED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "CachedRegionTracker"


# instance fields
.field private final cache:Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;

.field private final cacheKey:Ljava/lang/String;

.field private final chunkIndex:Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;

.field private final lookupRegion:Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;

.field private final regions:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;)V
    .locals 6
    .param p1, "cache"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;
    .param p2, "cacheKey"    # Ljava/lang/String;
    .param p3, "chunkIndex"    # Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;

    .prologue
    const-wide/16 v4, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker;->cache:Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;

    .line 46
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker;->cacheKey:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker;->chunkIndex:Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;

    .line 48
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    .line 49
    new-instance v3, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;

    invoke-direct {v3, v4, v5, v4, v5}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;-><init>(JJ)V

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker;->lookupRegion:Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;

    .line 51
    monitor-enter p0

    .line 52
    :try_start_0
    invoke-interface {p1, p2, p0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;->addListener(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$Listener;)Ljava/util/NavigableSet;

    move-result-object v0

    .line 53
    .local v0, "cacheSpans":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;>;"
    if-eqz v0, :cond_0

    .line 56
    invoke-interface {v0}, Ljava/util/NavigableSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 57
    .local v2, "spanIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 58
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;

    .line 59
    .local v1, "span":Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;
    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker;->mergeSpan(Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;)V

    goto :goto_0

    .line 62
    .end local v0    # "cacheSpans":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;>;"
    .end local v1    # "span":Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;
    .end local v2    # "spanIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "cacheSpans":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;>;"
    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    return-void
.end method

.method private mergeSpan(Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;)V
    .locals 12
    .param p1, "span"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;

    .prologue
    .line 137
    new-instance v5, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;

    iget-wide v6, p1, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->position:J

    iget-wide v8, p1, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->position:J

    iget-wide v10, p1, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->length:J

    add-long/2addr v8, v10

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;-><init>(JJ)V

    .line 138
    .local v5, "newRegion":Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    invoke-virtual {v6, v5}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;

    .line 139
    .local v3, "floorRegion":Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    invoke-virtual {v6, v5}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;

    .line 140
    .local v1, "ceilingRegion":Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;
    invoke-direct {p0, v3, v5}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker;->regionsConnect(Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;)Z

    move-result v2

    .line 141
    .local v2, "floorConnects":Z
    invoke-direct {p0, v5, v1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker;->regionsConnect(Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;)Z

    move-result v0

    .line 143
    .local v0, "ceilingConnects":Z
    if-eqz v0, :cond_1

    .line 144
    if-eqz v2, :cond_0

    .line 146
    iget-wide v6, v1, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffset:J

    iput-wide v6, v3, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffset:J

    .line 147
    iget v6, v1, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffsetIndex:I

    iput v6, v3, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffsetIndex:I

    .line 154
    :goto_0
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    invoke-virtual {v6, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 170
    :goto_1
    return-void

    .line 150
    :cond_0
    iget-wide v6, v1, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffset:J

    iput-wide v6, v5, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffset:J

    .line 151
    iget v6, v1, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffsetIndex:I

    iput v6, v5, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffsetIndex:I

    .line 152
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    invoke-virtual {v6, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 155
    :cond_1
    if-eqz v2, :cond_3

    .line 157
    iget-wide v6, v5, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffset:J

    iput-wide v6, v3, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffset:J

    .line 158
    iget v4, v3, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffsetIndex:I

    .line 159
    .local v4, "index":I
    :goto_2
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker;->chunkIndex:Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;

    iget v6, v6, Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;->length:I

    add-int/lit8 v6, v6, -0x1

    if-ge v4, v6, :cond_2

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker;->chunkIndex:Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;

    iget-object v6, v6, Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;->offsets:[J

    add-int/lit8 v7, v4, 0x1

    aget-wide v6, v6, v7

    iget-wide v8, v3, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffset:J

    cmp-long v6, v6, v8

    if-gtz v6, :cond_2

    .line 161
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 163
    :cond_2
    iput v4, v3, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffsetIndex:I

    goto :goto_1

    .line 166
    .end local v4    # "index":I
    :cond_3
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker;->chunkIndex:Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;

    iget-object v6, v6, Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;->offsets:[J

    iget-wide v8, v5, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffset:J

    invoke-static {v6, v8, v9}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v4

    .line 167
    .restart local v4    # "index":I
    if-gez v4, :cond_4

    neg-int v6, v4

    add-int/lit8 v4, v6, -0x2

    .end local v4    # "index":I
    :cond_4
    iput v4, v5, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffsetIndex:I

    .line 168
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    invoke-virtual {v6, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private regionsConnect(Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;)Z
    .locals 4
    .param p1, "lower"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;
    .param p2, "upper"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;

    .prologue
    .line 173
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-wide v0, p1, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffset:J

    iget-wide v2, p2, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;->startOffset:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized getRegionEndTimeMs(J)I
    .locals 11
    .param p1, "byteOffset"    # J

    .prologue
    const/4 v4, -0x1

    .line 80
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker;->lookupRegion:Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;

    iput-wide p1, v5, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;->startOffset:J

    .line 81
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker;->lookupRegion:Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;

    invoke-virtual {v5, v6}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;

    .line 82
    .local v0, "floorRegion":Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;
    if-eqz v0, :cond_0

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffset:J

    cmp-long v5, p1, v6

    if-gtz v5, :cond_0

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffsetIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v5, v4, :cond_1

    .line 93
    :cond_0
    :goto_0
    monitor-exit p0

    return v4

    .line 86
    :cond_1
    :try_start_1
    iget v1, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffsetIndex:I

    .line 87
    .local v1, "index":I
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker;->chunkIndex:Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;

    iget v4, v4, Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;->length:I

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_2

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffset:J

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker;->chunkIndex:Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;

    iget-object v6, v6, Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;->offsets:[J

    aget-wide v6, v6, v1

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker;->chunkIndex:Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;

    iget-object v8, v8, Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;->sizes:[I

    aget v8, v8, v1

    int-to-long v8, v8

    add-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 89
    const/4 v4, -0x2

    goto :goto_0

    .line 91
    :cond_2
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker;->chunkIndex:Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;->durationsUs:[J

    aget-wide v4, v4, v1

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffset:J

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker;->chunkIndex:Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;

    iget-object v8, v8, Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;->offsets:[J

    aget-wide v8, v8, v1

    sub-long/2addr v6, v8

    mul-long/2addr v4, v6

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker;->chunkIndex:Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;

    iget-object v6, v6, Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;->sizes:[I

    aget v6, v6, v1

    int-to-long v6, v6

    div-long v2, v4, v6

    .line 93
    .local v2, "segmentFractionUs":J
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker;->chunkIndex:Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;->timesUs:[J

    aget-wide v4, v4, v1

    add-long/2addr v4, v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    long-to-int v4, v4

    goto :goto_0

    .line 80
    .end local v0    # "floorRegion":Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;
    .end local v1    # "index":I
    .end local v2    # "segmentFractionUs":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized onSpanAdded(Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;)V
    .locals 1
    .param p1, "cache"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;
    .param p2, "span"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker;->mergeSpan(Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onSpanRemoved(Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;)V
    .locals 12
    .param p1, "cache"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;
    .param p2, "span"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    new-instance v4, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;

    iget-wide v6, p2, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->position:J

    iget-wide v8, p2, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->position:J

    iget-wide v10, p2, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->length:J

    add-long/2addr v8, v10

    invoke-direct {v4, v6, v7, v8, v9}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;-><init>(JJ)V

    .line 106
    .local v4, "removedRegion":Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    invoke-virtual {v5, v4}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;

    .line 107
    .local v0, "floorRegion":Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;
    if-nez v0, :cond_1

    .line 108
    const-string/jumbo v5, "CachedRegionTracker"

    const-string/jumbo v6, "Removed a span we were not aware of"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 113
    :cond_1
    :try_start_1
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    invoke-virtual {v5, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 116
    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;->startOffset:J

    iget-wide v8, v4, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;->startOffset:J

    cmp-long v5, v6, v8

    if-gez v5, :cond_3

    .line 117
    new-instance v3, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;->startOffset:J

    iget-wide v8, v4, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;->startOffset:J

    invoke-direct {v3, v6, v7, v8, v9}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;-><init>(JJ)V

    .line 119
    .local v3, "newFloorRegion":Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker;->chunkIndex:Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;

    iget-object v5, v5, Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;->offsets:[J

    iget-wide v6, v3, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffset:J

    invoke-static {v5, v6, v7}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v1

    .line 120
    .local v1, "index":I
    if-gez v1, :cond_2

    neg-int v5, v1

    add-int/lit8 v1, v5, -0x2

    .end local v1    # "index":I
    :cond_2
    iput v1, v3, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffsetIndex:I

    .line 121
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    invoke-virtual {v5, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 124
    .end local v3    # "newFloorRegion":Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;
    :cond_3
    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffset:J

    iget-wide v8, v4, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffset:J

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    .line 125
    new-instance v2, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;

    iget-wide v6, v4, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffset:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffset:J

    invoke-direct {v2, v6, v7, v8, v9}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;-><init>(JJ)V

    .line 126
    .local v2, "newCeilingRegion":Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;
    iget v5, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffsetIndex:I

    iput v5, v2, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffsetIndex:I

    .line 127
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    invoke-virtual {v5, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 103
    .end local v0    # "floorRegion":Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;
    .end local v2    # "newCeilingRegion":Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;
    .end local v4    # "removedRegion":Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public onSpanTouched(Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;)V
    .locals 0
    .param p1, "cache"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;
    .param p2, "oldSpan"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;
    .param p3, "newSpan"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;

    .prologue
    .line 134
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker;->cache:Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker;->cacheKey:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;->removeListener(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$Listener;)V

    .line 67
    return-void
.end method
