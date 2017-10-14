.class public abstract Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;
.super Ljava/lang/Object;
.source "BaseTrackSelection.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection$DecreasingBandwidthComparator;
    }
.end annotation


# instance fields
.field private final blacklistUntilTimes:[J

.field private final formats:[Lorg/telegram/messenger/exoplayer2/Format;

.field protected final group:Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

.field private hashCode:I

.field protected final length:I

.field protected final tracks:[I


# direct methods
.method public varargs constructor <init>(Lorg/telegram/messenger/exoplayer2/source/TrackGroup;[I)V
    .locals 4
    .param p1, "group"    # Lorg/telegram/messenger/exoplayer2/source/TrackGroup;
    .param p2, "tracks"    # [I

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    array-length v1, p2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 65
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->group:Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    .line 66
    array-length v1, p2

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->length:I

    .line 68
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->length:I

    new-array v1, v1, [Lorg/telegram/messenger/exoplayer2/Format;

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->formats:[Lorg/telegram/messenger/exoplayer2/Format;

    .line 69
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 70
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->formats:[Lorg/telegram/messenger/exoplayer2/Format;

    aget v2, p2, v0

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->getFormat(I)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v2

    aput-object v2, v1, v0

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 64
    .end local v0    # "i":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 72
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->formats:[Lorg/telegram/messenger/exoplayer2/Format;

    new-instance v2, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection$DecreasingBandwidthComparator;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection$DecreasingBandwidthComparator;-><init>(Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection$1;)V

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 74
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->length:I

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->tracks:[I

    .line 75
    const/4 v0, 0x0

    :goto_2
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->length:I

    if-ge v0, v1, :cond_2

    .line 76
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->tracks:[I

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->formats:[Lorg/telegram/messenger/exoplayer2/Format;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->indexOf(Lorg/telegram/messenger/exoplayer2/Format;)I

    move-result v2

    aput v2, v1, v0

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 78
    :cond_2
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->length:I

    new-array v1, v1, [J

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->blacklistUntilTimes:[J

    .line 79
    return-void
.end method


# virtual methods
.method public final blacklist(IJ)Z
    .locals 10
    .param p1, "index"    # I
    .param p2, "blacklistDurationMs"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 138
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 139
    .local v2, "nowMs":J
    invoke-virtual {p0, p1, v2, v3}, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->isBlacklisted(IJ)Z

    move-result v0

    .line 140
    .local v0, "canBlacklist":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v6, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->length:I

    if-ge v1, v6, :cond_1

    if-nez v0, :cond_1

    .line 141
    if-eq v1, p1, :cond_0

    invoke-virtual {p0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->isBlacklisted(IJ)Z

    move-result v6

    if-nez v6, :cond_0

    move v0, v4

    .line 140
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v0, v5

    .line 141
    goto :goto_1

    .line 143
    :cond_1
    if-nez v0, :cond_2

    .line 147
    :goto_2
    return v5

    .line 146
    :cond_2
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->blacklistUntilTimes:[J

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->blacklistUntilTimes:[J

    aget-wide v6, v6, p1

    add-long v8, v2, p2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    aput-wide v6, v5, p1

    move v5, v4

    .line 147
    goto :goto_2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 172
    if-ne p0, p1, :cond_1

    .line 179
    :cond_0
    :goto_0
    return v1

    .line 175
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 176
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 178
    check-cast v0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;

    .line 179
    .local v0, "other":Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->group:Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->group:Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->tracks:[I

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->tracks:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public evaluateQueueSize(JLjava/util/List;)I
    .locals 1
    .param p1, "playbackPositionUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<+",
            "Lorg/telegram/messenger/exoplayer2/source/chunk/MediaChunk;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 133
    .local p3, "queue":Ljava/util/List;, "Ljava/util/List<+Lorg/telegram/messenger/exoplayer2/source/chunk/MediaChunk;>;"
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getFormat(I)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->formats:[Lorg/telegram/messenger/exoplayer2/Format;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getIndexInTrackGroup(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->tracks:[I

    aget v0, v0, p1

    return v0
.end method

.method public final getSelectedFormat()Lorg/telegram/messenger/exoplayer2/Format;
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->formats:[Lorg/telegram/messenger/exoplayer2/Format;

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->getSelectedIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getSelectedIndexInTrackGroup()I
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->tracks:[I

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->getSelectedIndex()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public final getTrackGroup()Lorg/telegram/messenger/exoplayer2/source/TrackGroup;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->group:Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 164
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->hashCode:I

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->group:Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->tracks:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->hashCode:I

    .line 167
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->hashCode:I

    return v0
.end method

.method public final indexOf(I)I
    .locals 2
    .param p1, "indexInTrackGroup"    # I

    .prologue
    .line 113
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->length:I

    if-ge v0, v1, :cond_1

    .line 114
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->tracks:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 118
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 113
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public final indexOf(Lorg/telegram/messenger/exoplayer2/Format;)I
    .locals 2
    .param p1, "format"    # Lorg/telegram/messenger/exoplayer2/Format;

    .prologue
    .line 103
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->length:I

    if-ge v0, v1, :cond_1

    .line 104
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->formats:[Lorg/telegram/messenger/exoplayer2/Format;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 108
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 103
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected final isBlacklisted(IJ)Z
    .locals 2
    .param p1, "index"    # I
    .param p2, "nowMs"    # J

    .prologue
    .line 157
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->blacklistUntilTimes:[J

    aget-wide v0, v0, p1

    cmp-long v0, v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final length()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->tracks:[I

    array-length v0, v0

    return v0
.end method
