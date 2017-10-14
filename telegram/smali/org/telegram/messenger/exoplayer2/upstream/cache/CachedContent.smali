.class final Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;
.super Ljava/lang/Object;
.source "CachedContent.java"


# instance fields
.field private final cachedSpans:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;",
            ">;"
        }
    .end annotation
.end field

.field public final id:I

.field public final key:Ljava/lang/String;

.field private length:J


# direct methods
.method public constructor <init>(ILjava/lang/String;J)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "length"    # J

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->id:I

    .line 67
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    .line 68
    iput-wide p3, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->length:J

    .line 69
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;)V
    .locals 4
    .param p1, "input"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;-><init>(ILjava/lang/String;J)V

    .line 56
    return-void
.end method


# virtual methods
.method public addSpan(Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;)V
    .locals 1
    .param p1, "span"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;

    .prologue
    .line 96
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 97
    return-void
.end method

.method public getCachedBytes(JJ)J
    .locals 15
    .param p1, "position"    # J
    .param p3, "length"    # J

    .prologue
    .line 129
    invoke-virtual/range {p0 .. p2}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->getSpan(J)Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v5

    .line 130
    .local v5, "span":Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;
    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->isHoleSpan()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 132
    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->isOpenEnded()Z

    move-result v8

    if-eqz v8, :cond_0

    const-wide v8, 0x7fffffffffffffffL

    :goto_0
    move-wide/from16 v0, p3

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    neg-long v8, v8

    .line 151
    :goto_1
    return-wide v8

    .line 132
    :cond_0
    iget-wide v8, v5, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->length:J

    goto :goto_0

    .line 134
    :cond_1
    add-long v6, p1, p3

    .line 135
    .local v6, "queryEndPosition":J
    iget-wide v8, v5, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->position:J

    iget-wide v10, v5, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->length:J

    add-long v2, v8, v10

    .line 136
    .local v2, "currentEndPosition":J
    cmp-long v8, v2, v6

    if-gez v8, :cond_3

    .line 137
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    const/4 v9, 0x0

    invoke-virtual {v8, v5, v9}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;

    .line 138
    .local v4, "next":Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;
    iget-wide v10, v4, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->position:J

    cmp-long v9, v10, v2

    if-lez v9, :cond_4

    .line 151
    .end local v4    # "next":Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;
    :cond_3
    :goto_2
    sub-long v8, v2, p1

    move-wide/from16 v0, p3

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    goto :goto_1

    .line 144
    .restart local v4    # "next":Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;
    :cond_4
    iget-wide v10, v4, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->position:J

    iget-wide v12, v4, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->length:J

    add-long/2addr v10, v12

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 145
    cmp-long v9, v2, v6

    if-ltz v9, :cond_2

    goto :goto_2
.end method

.method public getLength()J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->length:J

    return-wide v0
.end method

.method public getSpan(J)Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;
    .locals 9
    .param p1, "position"    # J

    .prologue
    .line 109
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    invoke-static {v3, p1, p2}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->createLookup(Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v2

    .line 110
    .local v2, "lookupSpan":Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    invoke-virtual {v3, v2}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;

    .line 111
    .local v1, "floorSpan":Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;
    if-eqz v1, :cond_0

    iget-wide v4, v1, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->position:J

    iget-wide v6, v1, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->length:J

    add-long/2addr v4, v6

    cmp-long v3, v4, p1

    if-lez v3, :cond_0

    .line 115
    .end local v1    # "floorSpan":Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;
    :goto_0
    return-object v1

    .line 114
    .restart local v1    # "floorSpan":Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;
    :cond_0
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    invoke-virtual {v3, v2}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;

    .line 115
    .local v0, "ceilSpan":Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;
    if-nez v0, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    invoke-static {v3, p1, p2}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->createOpenHole(Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v3

    :goto_1
    move-object v1, v3

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->position:J

    sub-long/2addr v4, p1

    .line 116
    invoke-static {v3, p1, p2, v4, v5}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->createClosedHole(Ljava/lang/String;JJ)Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v3

    goto :goto_1
.end method

.method public getSpans()Ljava/util/TreeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet",
            "<",
            "Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    return-object v0
.end method

.method public headerHashCode()I
    .locals 7

    .prologue
    .line 193
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->id:I

    .line 194
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 195
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->length:J

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->length:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 196
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public removeSpan(Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;)Z
    .locals 1
    .param p1, "span"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;

    .prologue
    .line 184
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p1, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 186
    const/4 v0, 0x1

    .line 188
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLength(J)V
    .locals 1
    .param p1, "length"    # J

    .prologue
    .line 91
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->length:J

    .line 92
    return-void
.end method

.method public touch(Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;)Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;
    .locals 4
    .param p1, "cacheSpan"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    .prologue
    .line 164
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 166
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->id:I

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->copyWithUpdatedLastAccessTime(I)Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v0

    .line 168
    .local v0, "newCacheSpan":Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;
    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->file:Ljava/io/File;

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    new-instance v1, Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$CacheException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Renaming of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->file:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->file:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$CacheException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 173
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 174
    return-object v0
.end method

.method public writeToStream(Ljava/io/DataOutputStream;)V
    .locals 2
    .param p1, "output"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->id:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 80
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 81
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->length:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 82
    return-void
.end method
