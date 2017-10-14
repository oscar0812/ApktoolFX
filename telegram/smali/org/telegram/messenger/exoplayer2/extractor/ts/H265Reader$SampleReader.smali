.class final Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;
.super Ljava/lang/Object;
.source "H265Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SampleReader"
.end annotation


# static fields
.field private static final FIRST_SLICE_FLAG_OFFSET:I = 0x2


# instance fields
.field private isFirstParameterSet:Z

.field private isFirstSlice:Z

.field private lookingForFirstSliceFlag:Z

.field private nalUnitBytesRead:I

.field private nalUnitHasKeyframeData:Z

.field private nalUnitStartPosition:J

.field private nalUnitTimeUs:J

.field private final output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

.field private readingSample:Z

.field private sampleIsKeyframe:Z

.field private samplePosition:J

.field private sampleTimeUs:J

.field private writingParameterSets:Z


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;)V
    .locals 0
    .param p1, "output"    # Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    .prologue
    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    .line 419
    return-void
.end method

.method private outputSample(I)V
    .locals 8
    .param p1, "offset"    # I

    .prologue
    .line 486
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->sampleIsKeyframe:Z

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    .line 487
    .local v4, "flags":I
    :goto_0
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitStartPosition:J

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->samplePosition:J

    sub-long/2addr v0, v2

    long-to-int v5, v0

    .line 488
    .local v5, "size":I
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->sampleTimeUs:J

    const/4 v7, 0x0

    move v6, p1

    invoke-interface/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    .line 489
    return-void

    .line 486
    .end local v4    # "flags":I
    .end local v5    # "size":I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public endNalUnit(JI)V
    .locals 5
    .param p1, "position"    # J
    .param p3, "offset"    # I

    .prologue
    .line 467
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->writingParameterSets:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    if-eqz v1, :cond_1

    .line 469
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitHasKeyframeData:Z

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->sampleIsKeyframe:Z

    .line 470
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->writingParameterSets:Z

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->isFirstParameterSet:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    if-eqz v1, :cond_0

    .line 473
    :cond_2
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    if-eqz v1, :cond_3

    .line 475
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitStartPosition:J

    sub-long v2, p1, v2

    long-to-int v0, v2

    .line 476
    .local v0, "nalUnitLength":I
    add-int v1, p3, v0

    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->outputSample(I)V

    .line 478
    .end local v0    # "nalUnitLength":I
    :cond_3
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitStartPosition:J

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->samplePosition:J

    .line 479
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitTimeUs:J

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->sampleTimeUs:J

    .line 480
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    .line 481
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitHasKeyframeData:Z

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->sampleIsKeyframe:Z

    goto :goto_0
.end method

.method public readNalUnitData([BII)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "limit"    # I

    .prologue
    const/4 v2, 0x0

    .line 455
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->lookingForFirstSliceFlag:Z

    if-eqz v1, :cond_0

    .line 456
    add-int/lit8 v1, p2, 0x2

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitBytesRead:I

    sub-int v0, v1, v3

    .line 457
    .local v0, "headerOffset":I
    if-ge v0, p3, :cond_2

    .line 458
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    .line 459
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->lookingForFirstSliceFlag:Z

    .line 464
    .end local v0    # "headerOffset":I
    :cond_0
    :goto_1
    return-void

    .restart local v0    # "headerOffset":I
    :cond_1
    move v1, v2

    .line 458
    goto :goto_0

    .line 461
    :cond_2
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitBytesRead:I

    sub-int v2, p3, p2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitBytesRead:I

    goto :goto_1
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 422
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->lookingForFirstSliceFlag:Z

    .line 423
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    .line 424
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->isFirstParameterSet:Z

    .line 425
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    .line 426
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->writingParameterSets:Z

    .line 427
    return-void
.end method

.method public startNalUnit(JIIJ)V
    .locals 3
    .param p1, "position"    # J
    .param p3, "offset"    # I
    .param p4, "nalUnitType"    # I
    .param p5, "pesTimeUs"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 430
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    .line 431
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->isFirstParameterSet:Z

    .line 432
    iput-wide p5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitTimeUs:J

    .line 433
    iput v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitBytesRead:I

    .line 434
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitStartPosition:J

    .line 436
    const/16 v0, 0x20

    if-lt p4, v0, :cond_1

    .line 437
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->writingParameterSets:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    if-eqz v0, :cond_0

    .line 439
    invoke-direct {p0, p3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->outputSample(I)V

    .line 440
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    .line 442
    :cond_0
    const/16 v0, 0x22

    if-gt p4, v0, :cond_1

    .line 444
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->writingParameterSets:Z

    if-nez v0, :cond_4

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->isFirstParameterSet:Z

    .line 445
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->writingParameterSets:Z

    .line 450
    :cond_1
    const/16 v0, 0x10

    if-lt p4, v0, :cond_5

    const/16 v0, 0x15

    if-gt p4, v0, :cond_5

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitHasKeyframeData:Z

    .line 451
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitHasKeyframeData:Z

    if-nez v0, :cond_2

    const/16 v0, 0x9

    if-gt p4, v0, :cond_3

    :cond_2
    move v2, v1

    :cond_3
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->lookingForFirstSliceFlag:Z

    .line 452
    return-void

    :cond_4
    move v0, v2

    .line 444
    goto :goto_0

    :cond_5
    move v0, v2

    .line 450
    goto :goto_1
.end method
