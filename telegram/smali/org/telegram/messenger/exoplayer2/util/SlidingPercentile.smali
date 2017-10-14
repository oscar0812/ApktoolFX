.class public Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;
.super Ljava/lang/Object;
.source "SlidingPercentile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;
    }
.end annotation


# static fields
.field private static final INDEX_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_RECYCLED_SAMPLES:I = 0x5

.field private static final SORT_ORDER_BY_INDEX:I = 0x1

.field private static final SORT_ORDER_BY_VALUE:I = 0x0

.field private static final SORT_ORDER_NONE:I = -0x1

.field private static final VALUE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private currentSortOrder:I

.field private final maxWeight:I

.field private nextSampleIndex:I

.field private recycledSampleCount:I

.field private final recycledSamples:[Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;

.field private final samples:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;",
            ">;"
        }
    .end annotation
.end field

.field private totalWeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$1;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->INDEX_COMPARATOR:Ljava/util/Comparator;

    .line 45
    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$2;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$2;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->VALUE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxWeight"    # I

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->maxWeight:I

    .line 73
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->recycledSamples:[Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->currentSortOrder:I

    .line 76
    return-void
.end method

.method private ensureSortedByIndex()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 136
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->currentSortOrder:I

    if-eq v0, v2, :cond_0

    .line 137
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    sget-object v1, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->INDEX_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 138
    iput v2, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->currentSortOrder:I

    .line 140
    :cond_0
    return-void
.end method

.method private ensureSortedByValue()V
    .locals 2

    .prologue
    .line 146
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->currentSortOrder:I

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    sget-object v1, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->VALUE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 148
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->currentSortOrder:I

    .line 150
    :cond_0
    return-void
.end method


# virtual methods
.method public addSample(IF)V
    .locals 7
    .param p1, "weight"    # I
    .param p2, "value"    # F

    .prologue
    const/4 v6, 0x0

    .line 85
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->ensureSortedByIndex()V

    .line 87
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->recycledSampleCount:I

    if-lez v3, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->recycledSamples:[Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->recycledSampleCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->recycledSampleCount:I

    aget-object v1, v3, v4

    .line 89
    .local v1, "newSample":Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;
    :goto_0
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->nextSampleIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->nextSampleIndex:I

    iput v3, v1, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;->index:I

    .line 90
    iput p1, v1, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;->weight:I

    .line 91
    iput p2, v1, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;->value:F

    .line 92
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->totalWeight:I

    add-int/2addr v3, p1

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->totalWeight:I

    .line 95
    :cond_0
    :goto_1
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->totalWeight:I

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->maxWeight:I

    if-le v3, v4, :cond_3

    .line 96
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->totalWeight:I

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->maxWeight:I

    sub-int v0, v3, v4

    .line 97
    .local v0, "excessWeight":I
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;

    .line 98
    .local v2, "oldestSample":Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;
    iget v3, v2, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;->weight:I

    if-gt v3, v0, :cond_2

    .line 99
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->totalWeight:I

    iget v4, v2, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;->weight:I

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->totalWeight:I

    .line 100
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 101
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->recycledSampleCount:I

    const/4 v4, 0x5

    if-ge v3, v4, :cond_0

    .line 102
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->recycledSamples:[Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->recycledSampleCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->recycledSampleCount:I

    aput-object v2, v3, v4

    goto :goto_1

    .line 87
    .end local v0    # "excessWeight":I
    .end local v1    # "newSample":Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;
    .end local v2    # "oldestSample":Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;
    :cond_1
    new-instance v1, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;-><init>(Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$1;)V

    goto :goto_0

    .line 105
    .restart local v0    # "excessWeight":I
    .restart local v1    # "newSample":Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;
    .restart local v2    # "oldestSample":Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;
    :cond_2
    iget v3, v2, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;->weight:I

    sub-int/2addr v3, v0

    iput v3, v2, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;->weight:I

    .line 106
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->totalWeight:I

    sub-int/2addr v3, v0

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->totalWeight:I

    goto :goto_1

    .line 109
    .end local v0    # "excessWeight":I
    .end local v2    # "oldestSample":Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;
    :cond_3
    return-void
.end method

.method public getPercentile(F)F
    .locals 6
    .param p1, "percentile"    # F

    .prologue
    .line 118
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->ensureSortedByValue()V

    .line 119
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->totalWeight:I

    int-to-float v4, v4

    mul-float v2, p1, v4

    .line 120
    .local v2, "desiredWeight":F
    const/4 v0, 0x0

    .line 121
    .local v0, "accumulatedWeight":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 122
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;

    .line 123
    .local v1, "currentSample":Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;
    iget v4, v1, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;->weight:I

    add-int/2addr v0, v4

    .line 124
    int-to-float v4, v0

    cmpl-float v4, v4, v2

    if-ltz v4, :cond_0

    .line 125
    iget v4, v1, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;->value:F

    .line 129
    .end local v1    # "currentSample":Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;
    :goto_1
    return v4

    .line 121
    .restart local v1    # "currentSample":Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 129
    .end local v1    # "currentSample":Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;
    :cond_1
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    const/high16 v4, 0x7fc00000    # NaNf

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;

    iget v4, v4, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;->value:F

    goto :goto_1
.end method
