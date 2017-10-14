.class public final Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;
.super Ljava/lang/Object;
.source "SectionReader.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;


# static fields
.field private static final DEFAULT_SECTION_BUFFER_LENGTH:I = 0x20

.field private static final MAX_SECTION_LENGTH:I = 0x1002

.field private static final SECTION_HEADER_LENGTH:I = 0x3


# instance fields
.field private bytesRead:I

.field private final reader:Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionPayloadReader;

.field private final sectionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private sectionSyntaxIndicator:Z

.field private totalSectionLength:I

.field private waitingForPayloadStart:Z


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionPayloadReader;)V
    .locals 2
    .param p1, "reader"    # Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionPayloadReader;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->reader:Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionPayloadReader;

    .line 44
    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->sectionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .line 45
    return-void
.end method


# virtual methods
.method public consume(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Z)V
    .locals 12
    .param p1, "data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p2, "payloadUnitStartIndicator"    # Z

    .prologue
    .line 61
    const/4 v4, -0x1

    .line 62
    .local v4, "payloadStartPosition":I
    if-eqz p2, :cond_0

    .line 63
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 64
    .local v3, "payloadStartOffset":I
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v8

    add-int v4, v8, v3

    .line 67
    .end local v3    # "payloadStartOffset":I
    :cond_0
    iget-boolean v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->waitingForPayloadStart:Z

    if-eqz v8, :cond_3

    .line 68
    if-nez p2, :cond_2

    .line 131
    :cond_1
    :goto_0
    return-void

    .line 71
    :cond_2
    const/4 v8, 0x0

    iput-boolean v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->waitingForPayloadStart:Z

    .line 72
    invoke-virtual {p1, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 73
    const/4 v8, 0x0

    iput v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->bytesRead:I

    .line 76
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v8

    if-lez v8, :cond_1

    .line 77
    iget v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->bytesRead:I

    const/4 v9, 0x3

    if-ge v8, v9, :cond_6

    .line 80
    iget v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->bytesRead:I

    if-nez v8, :cond_4

    .line 81
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    .line 82
    .local v6, "tableId":I
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p1, v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 83
    const/16 v8, 0xff

    if-ne v6, v8, :cond_4

    .line 85
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->waitingForPayloadStart:Z

    goto :goto_0

    .line 89
    .end local v6    # "tableId":I
    :cond_4
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v8

    iget v9, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->bytesRead:I

    rsub-int/lit8 v9, v9, 0x3

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 90
    .local v2, "headerBytesToRead":I
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->sectionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v8, v8, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v9, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->bytesRead:I

    invoke-virtual {p1, v8, v9, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 91
    iget v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->bytesRead:I

    add-int/2addr v8, v2

    iput v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->bytesRead:I

    .line 92
    iget v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->bytesRead:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_3

    .line 93
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->sectionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 94
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->sectionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 95
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->sectionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 96
    .local v5, "secondHeaderByte":I
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->sectionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    .line 97
    .local v7, "thirdHeaderByte":I
    and-int/lit16 v8, v5, 0x80

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    :goto_2
    iput-boolean v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->sectionSyntaxIndicator:Z

    .line 98
    and-int/lit8 v8, v5, 0xf

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v8, v7

    add-int/lit8 v8, v8, 0x3

    iput v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->totalSectionLength:I

    .line 100
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->sectionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->capacity()I

    move-result v8

    iget v9, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->totalSectionLength:I

    if-ge v8, v9, :cond_3

    .line 102
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->sectionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v1, v8, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    .line 103
    .local v1, "bytes":[B
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->sectionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/16 v9, 0x1002

    iget v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->totalSectionLength:I

    array-length v11, v1

    mul-int/lit8 v11, v11, 0x2

    .line 104
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 103
    invoke-virtual {v8, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 105
    const/4 v8, 0x0

    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->sectionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v9, v9, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-static {v1, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_1

    .line 97
    .end local v1    # "bytes":[B
    :cond_5
    const/4 v8, 0x0

    goto :goto_2

    .line 110
    .end local v2    # "headerBytesToRead":I
    .end local v5    # "secondHeaderByte":I
    .end local v7    # "thirdHeaderByte":I
    :cond_6
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v8

    iget v9, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->totalSectionLength:I

    iget v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->bytesRead:I

    sub-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 111
    .local v0, "bodyBytesToRead":I
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->sectionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v8, v8, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v9, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->bytesRead:I

    invoke-virtual {p1, v8, v9, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 112
    iget v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->bytesRead:I

    add-int/2addr v8, v0

    iput v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->bytesRead:I

    .line 113
    iget v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->bytesRead:I

    iget v9, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->totalSectionLength:I

    if-ne v8, v9, :cond_3

    .line 114
    iget-boolean v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->sectionSyntaxIndicator:Z

    if-eqz v8, :cond_8

    .line 116
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->sectionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v8, v8, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v9, 0x0

    iget v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->totalSectionLength:I

    const/4 v11, -0x1

    invoke-static {v8, v9, v10, v11}, Lorg/telegram/messenger/exoplayer2/util/Util;->crc([BIII)I

    move-result v8

    if-eqz v8, :cond_7

    .line 118
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->waitingForPayloadStart:Z

    goto/16 :goto_0

    .line 121
    :cond_7
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->sectionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget v9, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->totalSectionLength:I

    add-int/lit8 v9, v9, -0x4

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 126
    :goto_3
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->reader:Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionPayloadReader;

    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->sectionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-interface {v8, v9}, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionPayloadReader;->consume(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V

    .line 127
    const/4 v8, 0x0

    iput v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->bytesRead:I

    goto/16 :goto_1

    .line 124
    :cond_8
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->sectionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget v9, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->totalSectionLength:I

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->reset(I)V

    goto :goto_3
.end method

.method public init(Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 1
    .param p1, "timestampAdjuster"    # Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;
    .param p2, "extractorOutput"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;
    .param p3, "idGenerator"    # Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->reader:Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionPayloadReader;

    invoke-interface {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionPayloadReader;->init(Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->waitingForPayloadStart:Z

    .line 52
    return-void
.end method

.method public seek()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->waitingForPayloadStart:Z

    .line 57
    return-void
.end method
