.class public Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;
.super Ljava/lang/Object;
.source "CacheSpan.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;",
        ">;"
    }
.end annotation


# instance fields
.field public final file:Ljava/io/File;

.field public final isCached:Z

.field public final key:Ljava/lang/String;

.field public final lastAccessTimestamp:J

.field public final length:J

.field public final position:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "position"    # J
    .param p4, "length"    # J

    .prologue
    .line 61
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v8}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;-><init>(Ljava/lang/String;JJJLjava/io/File;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJJLjava/io/File;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "position"    # J
    .param p4, "length"    # J
    .param p6, "lastAccessTimestamp"    # J
    .param p8, "file"    # Ljava/io/File;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    .line 77
    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->position:J

    .line 78
    iput-wide p4, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->length:J

    .line 79
    if-eqz p8, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->isCached:Z

    .line 80
    iput-object p8, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->file:Ljava/io/File;

    .line 81
    iput-wide p6, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->lastAccessTimestamp:J

    .line 82
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 25
    check-cast p1, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->compareTo(Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;)I
    .locals 8
    .param p1, "another"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const-wide/16 v6, 0x0

    .line 100
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    iget-object v3, p1, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 101
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    iget-object v3, p1, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 104
    :goto_0
    return v2

    .line 103
    :cond_0
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->position:J

    iget-wide v4, p1, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->position:J

    sub-long v0, v2, v4

    .line 104
    .local v0, "startOffsetDiff":J
    cmp-long v2, v0, v6

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    cmp-long v2, v0, v6

    if-gez v2, :cond_2

    const/4 v2, -0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isHoleSpan()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->isCached:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpenEnded()Z
    .locals 4

    .prologue
    .line 88
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->length:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
