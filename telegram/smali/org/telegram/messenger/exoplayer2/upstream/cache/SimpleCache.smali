.class public final Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;
.super Ljava/lang/Object;
.source "SimpleCache.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;


# instance fields
.field private final cacheDir:Ljava/io/File;

.field private final evictor:Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheEvictor;

.field private final index:Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;

.field private initializationException:Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$CacheException;

.field private final listeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$Listener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final lockedSpans:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;",
            ">;"
        }
    .end annotation
.end field

.field private totalSpace:J


# direct methods
.method public constructor <init>(Ljava/io/File;Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheEvictor;)V
    .locals 1
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "evictor"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheEvictor;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;-><init>(Ljava/io/File;Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheEvictor;[B)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheEvictor;[B)V
    .locals 4
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "evictor"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheEvictor;
    .param p3, "secretKey"    # [B

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->totalSpace:J

    .line 64
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    .line 65
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->evictor:Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheEvictor;

    .line 66
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->lockedSpans:Ljava/util/HashMap;

    .line 67
    new-instance v1, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-direct {v1, p1, p3}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;-><init>(Ljava/io/File;[B)V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->index:Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;

    .line 68
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    .line 70
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 71
    .local v0, "conditionVariable":Landroid/os/ConditionVariable;
    new-instance v1, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache$1;

    const-string/jumbo v2, "SimpleCache.initialize()"

    invoke-direct {v1, p0, v2, v0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache$1;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    .line 84
    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache$1;->start()V

    .line 85
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 86
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->initialize()V

    return-void
.end method

.method static synthetic access$102(Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$CacheException;)Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$CacheException;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;
    .param p1, "x1"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$CacheException;

    .prologue
    .line 33
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->initializationException:Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$CacheException;

    return-object p1
.end method

.method static synthetic access$200(Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;)Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheEvictor;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->evictor:Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheEvictor;

    return-object v0
.end method

.method private addSpan(Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;)V
    .locals 4
    .param p1, "span"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;

    .prologue
    .line 282
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->index:Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->add(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->addSpan(Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;)V

    .line 283
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->totalSpace:J

    iget-wide v2, p1, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->length:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->totalSpace:J

    .line 284
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->notifySpanAdded(Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;)V

    .line 285
    return-void
.end method

.method private getSpan(Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    .prologue
    .line 228
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->index:Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v2, p1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->get(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;

    move-result-object v0

    .line 229
    .local v0, "cachedContent":Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;
    if-nez v0, :cond_1

    .line 230
    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->createOpenHole(Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v1

    .line 240
    :cond_0
    return-object v1

    .line 233
    :cond_1
    :goto_0
    invoke-virtual {v0, p2, p3}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->getSpan(J)Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v1

    .line 234
    .local v1, "span":Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;
    iget-boolean v2, v1, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->isCached:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 237
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->removeStaleSpansAndCachedContents()V

    goto :goto_0
.end method

.method private initialize()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    .prologue
    .line 248
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 249
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->index:Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->load()V

    .line 255
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 256
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 259
    array-length v4, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_5

    aget-object v0, v1, v3

    .line 260
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "cached_content_index.exi"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 259
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 263
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_3

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->index:Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;

    .line 264
    invoke-static {v0, v5}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->createCacheEntry(Ljava/io/File;Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;)Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v2

    .line 265
    .local v2, "span":Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;
    :goto_3
    if-eqz v2, :cond_4

    .line 266
    invoke-direct {p0, v2}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->addSpan(Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;)V

    goto :goto_2

    .line 264
    .end local v2    # "span":Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;
    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    .line 268
    .restart local v2    # "span":Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 272
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "span":Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;
    :cond_5
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->index:Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->removeEmpty()V

    .line 273
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->index:Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->store()V

    goto :goto_0
.end method

.method private notifySpanAdded(Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;)V
    .locals 4
    .param p1, "span"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;

    .prologue
    .line 335
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    iget-object v3, p1, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 336
    .local v1, "keyListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$Listener;>;"
    if-eqz v1, :cond_0

    .line 337
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 338
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$Listener;

    invoke-interface {v2, p0, p1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$Listener;->onSpanAdded(Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;)V

    .line 337
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 341
    .end local v0    # "i":I
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->evictor:Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheEvictor;

    invoke-interface {v2, p0, p1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheEvictor;->onSpanAdded(Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;)V

    .line 342
    return-void
.end method

.method private notifySpanRemoved(Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;)V
    .locals 4
    .param p1, "span"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;

    .prologue
    .line 325
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    iget-object v3, p1, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 326
    .local v1, "keyListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$Listener;>;"
    if-eqz v1, :cond_0

    .line 327
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 328
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$Listener;

    invoke-interface {v2, p0, p1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$Listener;->onSpanRemoved(Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;)V

    .line 327
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 331
    .end local v0    # "i":I
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->evictor:Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheEvictor;

    invoke-interface {v2, p0, p1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheEvictor;->onSpanRemoved(Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;)V

    .line 332
    return-void
.end method

.method private notifySpanTouched(Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;)V
    .locals 4
    .param p1, "oldSpan"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;
    .param p2, "newSpan"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;

    .prologue
    .line 345
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    iget-object v3, p1, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 346
    .local v1, "keyListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$Listener;>;"
    if-eqz v1, :cond_0

    .line 347
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 348
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$Listener;

    invoke-interface {v2, p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$Listener;->onSpanTouched(Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;)V

    .line 347
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 351
    .end local v0    # "i":I
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->evictor:Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheEvictor;

    invoke-interface {v2, p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheEvictor;->onSpanTouched(Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;)V

    .line 352
    return-void
.end method

.method private removeSpan(Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;Z)V
    .locals 6
    .param p1, "span"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;
    .param p2, "removeEmptyCachedContent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    .prologue
    .line 288
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->index:Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;

    iget-object v2, p1, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->get(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;

    move-result-object v0

    .line 289
    .local v0, "cachedContent":Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->removeSpan(Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;)Z

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 290
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->totalSpace:J

    iget-wide v4, p1, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->length:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->totalSpace:J

    .line 291
    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->index:Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->removeEmpty(Ljava/lang/String;)V

    .line 293
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->index:Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->store()V

    .line 295
    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->notifySpanRemoved(Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;)V

    .line 296
    return-void
.end method

.method private removeStaleSpansAndCachedContents()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    .prologue
    .line 308
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 309
    .local v2, "spansToBeRemoved":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;>;"
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->index:Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->getAll()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;

    .line 310
    .local v0, "cachedContent":Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->getSpans()Ljava/util/TreeSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;

    .line 311
    .local v1, "span":Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;
    iget-object v5, v1, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 312
    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 316
    .end local v0    # "cachedContent":Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;
    .end local v1    # "span":Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;
    :cond_2
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;

    .line 318
    .restart local v1    # "span":Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;
    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->removeSpan(Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;Z)V

    goto :goto_1

    .line 320
    .end local v1    # "span":Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;
    :cond_3
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->index:Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->removeEmpty()V

    .line 321
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->index:Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->store()V

    .line 322
    return-void
.end method


# virtual methods
.method public declared-synchronized addListener(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$Listener;)Ljava/util/NavigableSet;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "listener"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$Listener;",
            ")",
            "Ljava/util/NavigableSet",
            "<",
            "Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 91
    .local v0, "listenersForKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$Listener;>;"
    if-nez v0, :cond_0

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "listenersForKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$Listener;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .restart local v0    # "listenersForKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$Listener;>;"
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->getCachedSpans(Ljava/lang/String;)Ljava/util/NavigableSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 90
    .end local v0    # "listenersForKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$Listener;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized commitFile(Ljava/io/File;)V
    .locals 8
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 186
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->index:Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-static {p1, v4}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->createCacheEntry(Ljava/io/File;Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;)Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v1

    .line 187
    .local v1, "span":Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;
    if-eqz v1, :cond_0

    move v4, v2

    :goto_0
    invoke-static {v4}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 188
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->lockedSpans:Ljava/util/HashMap;

    iget-object v5, v1, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 190
    invoke-virtual {p1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 206
    :goto_1
    monitor-exit p0

    return-void

    :cond_0
    move v4, v3

    .line 187
    goto :goto_0

    .line 194
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 195
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 186
    .end local v1    # "span":Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 199
    .restart local v1    # "span":Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;
    :cond_2
    :try_start_2
    iget-object v4, v1, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->key:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->getContentLength(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 200
    .local v0, "length":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 201
    iget-wide v4, v1, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->position:J

    iget-wide v6, v1, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->length:J

    add-long/2addr v4, v6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_4

    :goto_2
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 203
    :cond_3
    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->addSpan(Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;)V

    .line 204
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->index:Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->store()V

    .line 205
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_4
    move v2, v3

    .line 201
    goto :goto_2
.end method

.method public declared-synchronized getCacheSpace()J
    .locals 2

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->totalSpace:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCachedBytes(Ljava/lang/String;JJ)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "position"    # J
    .param p4, "length"    # J

    .prologue
    .line 362
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->index:Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->get(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;

    move-result-object v0

    .line 363
    .local v0, "cachedContent":Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3, p4, p5}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->getCachedBytes(JJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    :goto_0
    monitor-exit p0

    return-wide v2

    :cond_0
    neg-long v2, p4

    goto :goto_0

    .line 362
    .end local v0    # "cachedContent":Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getCachedSpans(Ljava/lang/String;)Ljava/util/NavigableSet;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/NavigableSet",
            "<",
            "Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->index:Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->get(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 113
    .local v0, "cachedContent":Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/TreeSet;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->getSpans()Ljava/util/TreeSet;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 112
    .end local v0    # "cachedContent":Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getContentLength(Ljava/lang/String;)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 374
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->index:Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->getContentLength(Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getKeys()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->index:Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->getKeys()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isCached(Ljava/lang/String;JJ)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "position"    # J
    .param p4, "length"    # J

    .prologue
    .line 356
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->index:Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->get(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;

    move-result-object v0

    .line 357
    .local v0, "cachedContent":Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3, p4, p5}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->getCachedBytes(JJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v1, v2, p4

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 356
    .end local v0    # "cachedContent":Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized releaseHoleSpan(Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;)V
    .locals 2
    .param p1, "holeSpan"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;

    .prologue
    .line 210
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->lockedSpans:Ljava/util/HashMap;

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 211
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    monitor-exit p0

    return-void

    .line 210
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeListener(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$Listener;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "listener"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$Listener;

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 102
    .local v0, "listenersForKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$Listener;>;"
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 104
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :cond_0
    monitor-exit p0

    return-void

    .line 101
    .end local v0    # "listenersForKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$Listener;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeSpan(Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;)V
    .locals 1
    .param p1, "span"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    .prologue
    .line 300
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->removeSpan(Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    monitor-exit p0

    return-void

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setContentLength(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    .prologue
    .line 368
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->index:Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->setContentLength(Ljava/lang/String;J)V

    .line 369
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->index:Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->store()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    monitor-exit p0

    return-void

    .line 368
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startFile(Ljava/lang/String;JJ)Ljava/io/File;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "position"    # J
    .param p4, "maxLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->lockedSpans:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 174
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->removeStaleSpansAndCachedContents()V

    .line 177
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 179
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->evictor:Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheEvictor;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheEvictor;->onStartFile(Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;Ljava/lang/String;JJ)V

    .line 180
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->index:Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->assignIdForKey(Ljava/lang/String;)I

    move-result v1

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-wide v2, p2

    .line 180
    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->getCacheFile(Ljava/io/File;IJJ)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic startReadWrite(Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->startReadWrite(Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized startReadWrite(Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    .prologue
    .line 130
    monitor-enter p0

    :goto_0
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->startReadWriteNonBlocking(Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 131
    .local v0, "span":Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;
    if-eqz v0, :cond_0

    .line 132
    monitor-exit p0

    return-object v0

    .line 138
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 130
    .end local v0    # "span":Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public bridge synthetic startReadWriteNonBlocking(Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->startReadWriteNonBlocking(Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized startReadWriteNonBlocking(Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->initializationException:Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$CacheException;

    if-eqz v2, :cond_0

    .line 147
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->initializationException:Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$CacheException;

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 150
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->getSpan(Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v0

    .line 153
    .local v0, "cacheSpan":Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;
    iget-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->isCached:Z

    if-eqz v2, :cond_1

    .line 155
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->index:Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v2, p1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->get(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->touch(Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;)Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v1

    .line 156
    .local v1, "newCacheSpan":Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;
    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->notifySpanTouched(Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    .end local v1    # "newCacheSpan":Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;
    :goto_0
    monitor-exit p0

    return-object v1

    .line 161
    :cond_1
    :try_start_2
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->lockedSpans:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 162
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->lockedSpans:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    .line 163
    goto :goto_0

    .line 167
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
