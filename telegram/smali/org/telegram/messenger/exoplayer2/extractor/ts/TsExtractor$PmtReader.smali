.class Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;
.super Ljava/lang/Object;
.source "TsExtractor.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionPayloadReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PmtReader"
.end annotation


# static fields
.field private static final TS_PMT_DESC_AC3:I = 0x6a

.field private static final TS_PMT_DESC_DTS:I = 0x7b

.field private static final TS_PMT_DESC_DVBSUBS:I = 0x59

.field private static final TS_PMT_DESC_EAC3:I = 0x7a

.field private static final TS_PMT_DESC_ISO639_LANG:I = 0xa

.field private static final TS_PMT_DESC_REGISTRATION:I = 0x5


# instance fields
.field private final pid:I

.field private final pmtScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;I)V
    .locals 2
    .param p2, "pid"    # I

    .prologue
    .line 376
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x5

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    .line 378
    iput p2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pid:I

    .line 379
    return-void
.end method

.method private readEsInfo(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;
    .locals 18
    .param p1, "data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p2, "length"    # I

    .prologue
    .line 488
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v5

    .line 489
    .local v5, "descriptorsStartPosition":I
    add-int v4, v5, p2

    .line 490
    .local v4, "descriptorsEndPosition":I
    const/4 v14, -0x1

    .line 491
    .local v14, "streamType":I
    const/4 v12, 0x0

    .line 492
    .local v12, "language":Ljava/lang/String;
    const/4 v7, 0x0

    .line 493
    .local v7, "dvbSubtitleInfos":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$DvbSubtitleInfo;>;"
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v15

    if-ge v15, v4, :cond_8

    .line 494
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 495
    .local v3, "descriptorTag":I
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 496
    .local v2, "descriptorLength":I
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v15

    add-int v13, v15, v2

    .line 497
    .local v13, "positionOfNextDescriptor":I
    const/4 v15, 0x5

    if-ne v3, v15, :cond_3

    .line 498
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v10

    .line 499
    .local v10, "formatIdentifier":J
    invoke-static {}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$900()J

    move-result-wide v16

    cmp-long v15, v10, v16

    if-nez v15, :cond_1

    .line 500
    const/16 v14, 0x81

    .line 528
    .end local v10    # "formatIdentifier":J
    :cond_0
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v15

    sub-int v15, v13, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    .line 501
    .restart local v10    # "formatIdentifier":J
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$1000()J

    move-result-wide v16

    cmp-long v15, v10, v16

    if-nez v15, :cond_2

    .line 502
    const/16 v14, 0x87

    goto :goto_1

    .line 503
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$1100()J

    move-result-wide v16

    cmp-long v15, v10, v16

    if-nez v15, :cond_0

    .line 504
    const/16 v14, 0x24

    goto :goto_1

    .line 506
    .end local v10    # "formatIdentifier":J
    :cond_3
    const/16 v15, 0x6a

    if-ne v3, v15, :cond_4

    .line 507
    const/16 v14, 0x81

    goto :goto_1

    .line 508
    :cond_4
    const/16 v15, 0x7a

    if-ne v3, v15, :cond_5

    .line 509
    const/16 v14, 0x87

    goto :goto_1

    .line 510
    :cond_5
    const/16 v15, 0x7b

    if-ne v3, v15, :cond_6

    .line 511
    const/16 v14, 0x8a

    goto :goto_1

    .line 512
    :cond_6
    const/16 v15, 0xa

    if-ne v3, v15, :cond_7

    .line 513
    const/4 v15, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 515
    :cond_7
    const/16 v15, 0x59

    if-ne v3, v15, :cond_0

    .line 516
    const/16 v14, 0x59

    .line 517
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "dvbSubtitleInfos":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$DvbSubtitleInfo;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 518
    .restart local v7    # "dvbSubtitleInfos":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$DvbSubtitleInfo;>;"
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v15

    if-ge v15, v13, :cond_0

    .line 519
    const/4 v15, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 520
    .local v6, "dvbLanguage":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    .line 521
    .local v8, "dvbSubtitlingType":I
    const/4 v15, 0x4

    new-array v9, v15, [B

    .line 522
    .local v9, "initializationData":[B
    const/4 v15, 0x0

    const/16 v16, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v9, v15, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 523
    new-instance v15, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$DvbSubtitleInfo;

    invoke-direct {v15, v6, v8, v9}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$DvbSubtitleInfo;-><init>(Ljava/lang/String;I[B)V

    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 530
    .end local v2    # "descriptorLength":I
    .end local v3    # "descriptorTag":I
    .end local v6    # "dvbLanguage":Ljava/lang/String;
    .end local v8    # "dvbSubtitlingType":I
    .end local v9    # "initializationData":[B
    .end local v13    # "positionOfNextDescriptor":I
    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 531
    new-instance v15, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    move-object/from16 v16, v0

    .line 532
    move-object/from16 v0, v16

    invoke-static {v0, v5, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v15, v14, v12, v7, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;-><init>(ILjava/lang/String;Ljava/util/List;[B)V

    .line 531
    return-object v15
.end method


# virtual methods
.method public consume(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V
    .locals 21
    .param p1, "sectionData"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    .line 389
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v13

    .line 390
    .local v13, "tableId":I
    const/16 v16, 0x2

    move/from16 v0, v16

    if-eq v13, v0, :cond_1

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$200(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$200(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$100(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 397
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$300(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x0

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;

    .line 405
    .local v14, "timestampAdjuster":Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;
    :goto_1
    const/16 v16, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 406
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v9

    .line 409
    .local v9, "programNumber":I
    const/16 v16, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    move-object/from16 v16, v0

    const/16 v17, 0x2

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes(Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;I)V

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    move-object/from16 v16, v0

    const/16 v17, 0x4

    invoke-virtual/range {v16 .. v17}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    move-object/from16 v16, v0

    const/16 v17, 0xc

    invoke-virtual/range {v16 .. v17}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 417
    .local v8, "programInfoLength":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$200(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$400(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;

    move-result-object v16

    if-nez v16, :cond_3

    .line 422
    new-instance v4, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;

    const/16 v16, 0x15

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v19, v0

    move/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;-><init>(ILjava/lang/String;Ljava/util/List;[B)V

    .line 423
    .local v4, "dummyEsInfo":Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$500(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$Factory;

    move-result-object v17

    const/16 v18, 0x15

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v0, v1, v4}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$Factory;->createPayloadReader(ILorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$402(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;)Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$400(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$600(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    move-result-object v17

    new-instance v18, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    const/16 v19, 0x15

    const/16 v20, 0x2000

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v9, v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(III)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v14, v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;->init(Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 428
    .end local v4    # "dummyEsInfo":Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v11

    .line 429
    .local v11, "remainingEntriesLength":I
    :cond_4
    :goto_2
    if-lez v11, :cond_a

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    move-object/from16 v16, v0

    const/16 v17, 0x5

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes(Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;I)V

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 432
    .local v12, "streamType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    move-object/from16 v16, v0

    const/16 v17, 0x3

    invoke-virtual/range {v16 .. v17}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    move-object/from16 v16, v0

    const/16 v17, 0xd

    invoke-virtual/range {v16 .. v17}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 434
    .local v5, "elementaryPid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    move-object/from16 v16, v0

    const/16 v17, 0x4

    invoke-virtual/range {v16 .. v17}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    move-object/from16 v16, v0

    const/16 v17, 0xc

    invoke-virtual/range {v16 .. v17}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 436
    .local v7, "esInfoLength":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->readEsInfo(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;

    move-result-object v6

    .line 437
    .local v6, "esInfo":Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;
    const/16 v16, 0x6

    move/from16 v0, v16

    if-ne v12, v0, :cond_5

    .line 438
    iget v12, v6, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->streamType:I

    .line 440
    :cond_5
    add-int/lit8 v16, v7, 0x5

    sub-int v11, v11, v16

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$200(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    move v15, v12

    .line 443
    .local v15, "trackId":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$700(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Landroid/util/SparseBooleanArray;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v16

    if-nez v16, :cond_4

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$700(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Landroid/util/SparseBooleanArray;

    move-result-object v16

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$200(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_9

    const/16 v16, 0x15

    move/from16 v0, v16

    if-ne v12, v0, :cond_9

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$400(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;

    move-result-object v10

    .line 459
    .local v10, "reader":Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;
    :cond_6
    :goto_4
    if-eqz v10, :cond_4

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$000(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Landroid/util/SparseArray;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 399
    .end local v5    # "elementaryPid":I
    .end local v6    # "esInfo":Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;
    .end local v7    # "esInfoLength":I
    .end local v8    # "programInfoLength":I
    .end local v9    # "programNumber":I
    .end local v10    # "reader":Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;
    .end local v11    # "remainingEntriesLength":I
    .end local v12    # "streamType":I
    .end local v14    # "timestampAdjuster":Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;
    .end local v15    # "trackId":I
    :cond_7
    new-instance v14, Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    .line 400
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$300(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x0

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;

    invoke-virtual/range {v16 .. v16}, Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;->getFirstSampleTimestampUs()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-direct {v14, v0, v1}, Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;-><init>(J)V

    .line 401
    .restart local v14    # "timestampAdjuster":Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$300(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Ljava/util/List;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .restart local v5    # "elementaryPid":I
    .restart local v6    # "esInfo":Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;
    .restart local v7    # "esInfoLength":I
    .restart local v8    # "programInfoLength":I
    .restart local v9    # "programNumber":I
    .restart local v11    # "remainingEntriesLength":I
    .restart local v12    # "streamType":I
    :cond_8
    move v15, v5

    .line 442
    goto/16 :goto_3

    .line 452
    .restart local v15    # "trackId":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$500(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$Factory;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v0, v12, v6}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$Factory;->createPayloadReader(ILorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;

    move-result-object v10

    .line 453
    .restart local v10    # "reader":Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;
    if-eqz v10, :cond_6

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$600(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    move-result-object v16

    new-instance v17, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    const/16 v18, 0x2000

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v9, v15, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(III)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v10, v14, v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;->init(Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    goto :goto_4

    .line 463
    .end local v5    # "elementaryPid":I
    .end local v6    # "esInfo":Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;
    .end local v7    # "esInfoLength":I
    .end local v10    # "reader":Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;
    .end local v12    # "streamType":I
    .end local v15    # "trackId":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$200(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$800(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$600(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$102(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;I)I

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-static/range {v16 .. v17}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$802(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;Z)Z

    goto/16 :goto_0

    .line 470
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$000(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Landroid/util/SparseArray;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pid:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/util/SparseArray;->remove(I)V

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$200(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)I

    move-result v16

    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    const/16 v16, 0x0

    :goto_5
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$102(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;I)I

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$100(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)I

    move-result v16

    if-nez v16, :cond_0

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$600(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-static/range {v16 .. v17}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$802(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;Z)Z

    goto/16 :goto_0

    .line 471
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$100(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    goto :goto_5
.end method

.method public init(Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 0
    .param p1, "timestampAdjuster"    # Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;
    .param p2, "extractorOutput"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;
    .param p3, "idGenerator"    # Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .prologue
    .line 385
    return-void
.end method
