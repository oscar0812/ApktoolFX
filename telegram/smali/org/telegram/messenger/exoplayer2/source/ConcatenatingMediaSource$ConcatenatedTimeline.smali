.class final Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;
.super Lorg/telegram/messenger/exoplayer2/Timeline;
.source "ConcatenatingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConcatenatedTimeline"
.end annotation


# instance fields
.field private final sourcePeriodOffsets:[I

.field private final sourceWindowOffsets:[I

.field private final timelines:[Lorg/telegram/messenger/exoplayer2/Timeline;


# direct methods
.method public constructor <init>([Lorg/telegram/messenger/exoplayer2/Timeline;)V
    .locals 10
    .param p1, "timelines"    # [Lorg/telegram/messenger/exoplayer2/Timeline;

    .prologue
    .line 153
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/Timeline;-><init>()V

    .line 154
    array-length v7, p1

    new-array v1, v7, [I

    .line 155
    .local v1, "sourcePeriodOffsets":[I
    array-length v7, p1

    new-array v4, v7, [I

    .line 156
    .local v4, "sourceWindowOffsets":[I
    const-wide/16 v2, 0x0

    .line 157
    .local v2, "periodCount":J
    const/4 v6, 0x0

    .line 158
    .local v6, "windowCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v7, p1

    if-ge v0, v7, :cond_1

    .line 159
    aget-object v5, p1, v0

    .line 160
    .local v5, "timeline":Lorg/telegram/messenger/exoplayer2/Timeline;
    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriodCount()I

    move-result v7

    int-to-long v8, v7

    add-long/2addr v2, v8

    .line 161
    const-wide/32 v8, 0x7fffffff

    cmp-long v7, v2, v8

    if-gtz v7, :cond_0

    const/4 v7, 0x1

    :goto_1
    const-string/jumbo v8, "ConcatenatingMediaSource children contain too many periods"

    invoke-static {v7, v8}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 163
    long-to-int v7, v2

    aput v7, v1, v0

    .line 164
    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/Timeline;->getWindowCount()I

    move-result v7

    add-int/2addr v6, v7

    .line 165
    aput v6, v4, v0

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    .line 167
    .end local v5    # "timeline":Lorg/telegram/messenger/exoplayer2/Timeline;
    :cond_1
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->timelines:[Lorg/telegram/messenger/exoplayer2/Timeline;

    .line 168
    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourcePeriodOffsets:[I

    .line 169
    iput-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourceWindowOffsets:[I

    .line 170
    return-void
.end method

.method static synthetic access$100(Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;I)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;
    .param p1, "x1"    # I

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->getSourceIndexForPeriod(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;I)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;
    .param p1, "x1"    # I

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->getFirstPeriodIndexInSource(I)I

    move-result v0

    return v0
.end method

.method private getFirstPeriodIndexInSource(I)I
    .locals 2
    .param p1, "sourceIndex"    # I

    .prologue
    .line 232
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourcePeriodOffsets:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    goto :goto_0
.end method

.method private getFirstWindowIndexInSource(I)I
    .locals 2
    .param p1, "sourceIndex"    # I

    .prologue
    .line 240
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourceWindowOffsets:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    goto :goto_0
.end method

.method private getSourceIndexForPeriod(I)I
    .locals 3
    .param p1, "periodIndex"    # I

    .prologue
    .line 228
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourcePeriodOffsets:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lorg/telegram/messenger/exoplayer2/util/Util;->binarySearchFloor([IIZZ)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private getSourceIndexForWindow(I)I
    .locals 3
    .param p1, "windowIndex"    # I

    .prologue
    .line 236
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourceWindowOffsets:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lorg/telegram/messenger/exoplayer2/util/Util;->binarySearchFloor([IIZZ)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public getIndexOfPeriod(Ljava/lang/Object;)I
    .locals 6
    .param p1, "uid"    # Ljava/lang/Object;

    .prologue
    const/4 v5, -0x1

    .line 210
    instance-of v4, p1, Landroid/util/Pair;

    if-nez v4, :cond_1

    .line 223
    :cond_0
    :goto_0
    return v5

    :cond_1
    move-object v3, p1

    .line 213
    check-cast v3, Landroid/util/Pair;

    .line 214
    .local v3, "sourceIndexAndPeriodId":Landroid/util/Pair;, "Landroid/util/Pair<**>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 217
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 218
    .local v2, "sourceIndex":I
    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 219
    .local v0, "periodId":Ljava/lang/Object;
    if-ltz v2, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->timelines:[Lorg/telegram/messenger/exoplayer2/Timeline;

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 222
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->timelines:[Lorg/telegram/messenger/exoplayer2/Timeline;

    aget-object v4, v4, v2

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    .line 223
    .local v1, "periodIndexInSource":I
    if-ne v1, v5, :cond_2

    move v4, v5

    :goto_1
    move v5, v4

    goto :goto_0

    .line 224
    :cond_2
    invoke-direct {p0, v2}, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->getFirstPeriodIndexInSource(I)I

    move-result v4

    add-int/2addr v4, v1

    goto :goto_1
.end method

.method public getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;Z)Lorg/telegram/messenger/exoplayer2/Timeline$Period;
    .locals 5
    .param p1, "periodIndex"    # I
    .param p2, "period"    # Lorg/telegram/messenger/exoplayer2/Timeline$Period;
    .param p3, "setIds"    # Z

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->getSourceIndexForPeriod(I)I

    move-result v2

    .line 198
    .local v2, "sourceIndex":I
    invoke-direct {p0, v2}, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->getFirstWindowIndexInSource(I)I

    move-result v1

    .line 199
    .local v1, "firstWindowIndexInSource":I
    invoke-direct {p0, v2}, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->getFirstPeriodIndexInSource(I)I

    move-result v0

    .line 200
    .local v0, "firstPeriodIndexInSource":I
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->timelines:[Lorg/telegram/messenger/exoplayer2/Timeline;

    aget-object v3, v3, v2

    sub-int v4, p1, v0

    invoke-virtual {v3, v4, p2, p3}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;Z)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    .line 201
    iget v3, p2, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->windowIndex:I

    add-int/2addr v3, v1

    iput v3, p2, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->windowIndex:I

    .line 202
    if-eqz p3, :cond_0

    .line 203
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p2, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    iput-object v3, p2, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    .line 205
    :cond_0
    return-object p2
.end method

.method public getPeriodCount()I
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourcePeriodOffsets:[I

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourcePeriodOffsets:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public getWindow(ILorg/telegram/messenger/exoplayer2/Timeline$Window;ZJ)Lorg/telegram/messenger/exoplayer2/Timeline$Window;
    .locals 10
    .param p1, "windowIndex"    # I
    .param p2, "window"    # Lorg/telegram/messenger/exoplayer2/Timeline$Window;
    .param p3, "setIds"    # Z
    .param p4, "defaultPositionProjectionUs"    # J

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->getSourceIndexForWindow(I)I

    move-result v8

    .line 181
    .local v8, "sourceIndex":I
    invoke-direct {p0, v8}, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->getFirstWindowIndexInSource(I)I

    move-result v7

    .line 182
    .local v7, "firstWindowIndexInSource":I
    invoke-direct {p0, v8}, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->getFirstPeriodIndexInSource(I)I

    move-result v6

    .line 183
    .local v6, "firstPeriodIndexInSource":I
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->timelines:[Lorg/telegram/messenger/exoplayer2/Timeline;

    aget-object v0, v0, v8

    sub-int v1, p1, v7

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/Timeline;->getWindow(ILorg/telegram/messenger/exoplayer2/Timeline$Window;ZJ)Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    .line 185
    iget v0, p2, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    add-int/2addr v0, v6

    iput v0, p2, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    .line 186
    iget v0, p2, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    add-int/2addr v0, v6

    iput v0, p2, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    .line 187
    return-object p2
.end method

.method public getWindowCount()I
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourceWindowOffsets:[I

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourceWindowOffsets:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method
