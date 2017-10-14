.class public final Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
.super Ljava/lang/Object;
.source "DefaultDashChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "RepresentationHolder"
.end annotation


# instance fields
.field public final extractorWrapper:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

.field private periodDurationUs:J

.field public representation:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;

.field public segmentIndex:Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;

.field private segmentNumShift:I

.field public final trackType:I


# direct methods
.method public constructor <init>(JLorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;ZZI)V
    .locals 5
    .param p1, "periodDurationUs"    # J
    .param p3, "representation"    # Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;
    .param p4, "enableEventMessageTrack"    # Z
    .param p5, "enableCea608Track"    # Z
    .param p6, "trackType"    # I

    .prologue
    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    .line 386
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;

    .line 387
    iput p6, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->trackType:I

    .line 388
    iget-object v3, p3, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iget-object v0, v3, Lorg/telegram/messenger/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    .line 389
    .local v0, "containerMimeType":Ljava/lang/String;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->mimeTypeIsRawText(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 390
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->extractorWrapper:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

    .line 411
    :goto_0
    invoke-virtual {p3}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->getIndex()Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;

    .line 412
    return-void

    .line 393
    :cond_0
    const-string/jumbo v3, "application/x-rawcc"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 394
    new-instance v1, Lorg/telegram/messenger/exoplayer2/extractor/rawcc/RawCcExtractor;

    iget-object v3, p3, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->format:Lorg/telegram/messenger/exoplayer2/Format;

    invoke-direct {v1, v3}, Lorg/telegram/messenger/exoplayer2/extractor/rawcc/RawCcExtractor;-><init>(Lorg/telegram/messenger/exoplayer2/Format;)V

    .line 409
    .local v1, "extractor":Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    :goto_1
    new-instance v3, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

    iget-object v4, p3, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->format:Lorg/telegram/messenger/exoplayer2/Format;

    invoke-direct {v3, v1, v4}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/Extractor;Lorg/telegram/messenger/exoplayer2/Format;)V

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->extractorWrapper:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

    goto :goto_0

    .line 395
    .end local v1    # "extractor":Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    :cond_1
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->mimeTypeIsWebm(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 396
    new-instance v1, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;-><init>(I)V

    .restart local v1    # "extractor":Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    goto :goto_1

    .line 398
    .end local v1    # "extractor":Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    :cond_2
    const/4 v2, 0x0

    .line 399
    .local v2, "flags":I
    if-eqz p4, :cond_3

    .line 400
    or-int/lit8 v2, v2, 0x4

    .line 402
    :cond_3
    if-eqz p5, :cond_4

    .line 403
    or-int/lit8 v2, v2, 0x8

    .line 405
    :cond_4
    new-instance v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    invoke-direct {v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(I)V

    .restart local v1    # "extractor":Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    goto :goto_1
.end method

.method private static mimeTypeIsRawText(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 488
    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/util/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "application/ttml+xml"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static mimeTypeIsWebm(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 483
    const-string/jumbo v0, "video/webm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "audio/webm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "application/webm"

    .line 484
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 483
    :goto_0
    return v0

    .line 484
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getFirstSegmentNum()I
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;->getFirstSegmentNum()I

    move-result v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getSegmentCount()I
    .locals 4

    .prologue
    .line 462
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    invoke-interface {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;->getSegmentCount(J)I

    move-result v0

    return v0
.end method

.method public getSegmentEndTimeUs(I)J
    .locals 6
    .param p1, "segmentNum"    # I

    .prologue
    .line 470
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentStartTimeUs(I)J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:I

    sub-int v3, p1, v3

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    .line 471
    invoke-interface {v2, v3, v4, v5}, Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;->getDurationUs(IJ)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 470
    return-wide v0
.end method

.method public getSegmentNum(J)I
    .locals 5
    .param p1, "positionUs"    # J

    .prologue
    .line 475
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    invoke-interface {v0, p1, p2, v2, v3}, Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;->getSegmentNum(JJ)I

    move-result v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getSegmentStartTimeUs(I)J
    .locals 2
    .param p1, "segmentNum"    # I

    .prologue
    .line 466
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:I

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;->getTimeUs(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSegmentUrl(I)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;
    .locals 2
    .param p1, "segmentNum"    # I

    .prologue
    .line 479
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:I

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;->getSegmentUrl(I)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v0

    return-object v0
.end method

.method public updateRepresentation(JLorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;)V
    .locals 19
    .param p1, "newPeriodDurationUs"    # J
    .param p3, "newRepresentation"    # Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/source/BehindLiveWindowException;
        }
    .end annotation

    .prologue
    .line 416
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;

    invoke-virtual {v13}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->getIndex()Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;

    move-result-object v8

    .line 417
    .local v8, "oldIndex":Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->getIndex()Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;

    move-result-object v4

    .line 419
    .local v4, "newIndex":Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    .line 420
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;

    .line 421
    if-nez v8, :cond_1

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;

    .line 427
    invoke-interface {v8}, Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;->isExplicit()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 432
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    invoke-interface {v8, v14, v15}, Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;->getSegmentCount(J)I

    move-result v12

    .line 433
    .local v12, "oldIndexSegmentCount":I
    if-eqz v12, :cond_0

    .line 438
    invoke-interface {v8}, Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;->getFirstSegmentNum()I

    move-result v13

    add-int/2addr v13, v12

    add-int/lit8 v9, v13, -0x1

    .line 439
    .local v9, "oldIndexLastSegmentNum":I
    invoke-interface {v8, v9}, Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;->getTimeUs(I)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    move-wide/from16 v16, v0

    .line 440
    move-wide/from16 v0, v16

    invoke-interface {v8, v9, v0, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;->getDurationUs(IJ)J

    move-result-wide v16

    add-long v10, v14, v16

    .line 441
    .local v10, "oldIndexEndTimeUs":J
    invoke-interface {v4}, Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;->getFirstSegmentNum()I

    move-result v5

    .line 442
    .local v5, "newIndexFirstSegmentNum":I
    invoke-interface {v4, v5}, Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;->getTimeUs(I)J

    move-result-wide v6

    .line 443
    .local v6, "newIndexStartTimeUs":J
    cmp-long v13, v10, v6

    if-nez v13, :cond_2

    .line 445
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:I

    add-int/lit8 v14, v9, 0x1

    sub-int/2addr v14, v5

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:I

    goto :goto_0

    .line 446
    :cond_2
    cmp-long v13, v10, v6

    if-gez v13, :cond_3

    .line 449
    new-instance v13, Lorg/telegram/messenger/exoplayer2/source/BehindLiveWindowException;

    invoke-direct {v13}, Lorg/telegram/messenger/exoplayer2/source/BehindLiveWindowException;-><init>()V

    throw v13

    .line 452
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:I

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    invoke-interface {v8, v6, v7, v14, v15}, Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;->getSegmentNum(JJ)I

    move-result v14

    sub-int/2addr v14, v5

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:I

    goto :goto_0
.end method
