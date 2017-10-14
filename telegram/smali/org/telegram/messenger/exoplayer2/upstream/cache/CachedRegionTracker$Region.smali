.class Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;
.super Ljava/lang/Object;
.source "CachedRegionTracker.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Region"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;",
        ">;"
    }
.end annotation


# instance fields
.field public endOffset:J

.field public endOffsetIndex:I

.field public startOffset:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "position"    # J
    .param p3, "endOffset"    # J

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;->startOffset:J

    .line 195
    iput-wide p3, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;->endOffset:J

    .line 196
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 176
    check-cast p1, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;->compareTo(Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;)I
    .locals 4
    .param p1, "another"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 200
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;->startOffset:J

    iget-wide v2, p1, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;->startOffset:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;->startOffset:J

    iget-wide v2, p1, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedRegionTracker$Region;->startOffset:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
