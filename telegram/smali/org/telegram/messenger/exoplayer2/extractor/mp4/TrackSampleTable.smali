.class final Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;
.super Ljava/lang/Object;
.source "TrackSampleTable.java"


# instance fields
.field public final flags:[I

.field public final maximumSize:I

.field public final offsets:[J

.field public final sampleCount:I

.field public final sizes:[I

.field public final timestampsUs:[J


# direct methods
.method public constructor <init>([J[II[J[I)V
    .locals 4
    .param p1, "offsets"    # [J
    .param p2, "sizes"    # [I
    .param p3, "maximumSize"    # I
    .param p4, "timestampsUs"    # [J
    .param p5, "flags"    # [I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    array-length v0, p2

    array-length v3, p4

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 55
    array-length v0, p1

    array-length v3, p4

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 56
    array-length v0, p5

    array-length v3, p4

    if-ne v0, v3, :cond_2

    :goto_2
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 58
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;->offsets:[J

    .line 59
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;->sizes:[I

    .line 60
    iput p3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;->maximumSize:I

    .line 61
    iput-object p4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    .line 62
    iput-object p5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;->flags:[I

    .line 63
    array-length v0, p1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    .line 64
    return-void

    :cond_0
    move v0, v2

    .line 54
    goto :goto_0

    :cond_1
    move v0, v2

    .line 55
    goto :goto_1

    :cond_2
    move v1, v2

    .line 56
    goto :goto_2
.end method


# virtual methods
.method public getIndexOfEarlierOrEqualSynchronizationSample(J)I
    .locals 5
    .param p1, "timeUs"    # J

    .prologue
    .line 76
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, p1, p2, v3, v4}, Lorg/telegram/messenger/exoplayer2/util/Util;->binarySearchFloor([JJZZ)I

    move-result v1

    .line 77
    .local v1, "startIndex":I
    move v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 78
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;->flags:[I

    aget v2, v2, v0

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 82
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 77
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 82
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getIndexOfLaterOrEqualSynchronizationSample(J)I
    .locals 5
    .param p1, "timeUs"    # J

    .prologue
    .line 93
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, p1, p2, v3, v4}, Lorg/telegram/messenger/exoplayer2/util/Util;->binarySearchCeil([JJZZ)I

    move-result v1

    .line 94
    .local v1, "startIndex":I
    move v0, v1

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 95
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;->flags:[I

    aget v2, v2, v0

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 99
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 94
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method
