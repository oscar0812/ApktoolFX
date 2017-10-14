.class final Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$2;
.super Ljava/lang/Object;
.source "SlidingPercentile.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 45
    check-cast p1, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;

    check-cast p2, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$2;->compare(Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;)I
    .locals 2
    .param p1, "a"    # Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;
    .param p2, "b"    # Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;

    .prologue
    .line 48
    iget v0, p1, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;->value:F

    iget v1, p2, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;->value:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p2, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;->value:F

    iget v1, p1, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;->value:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
