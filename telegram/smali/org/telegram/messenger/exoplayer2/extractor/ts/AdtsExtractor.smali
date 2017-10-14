.class public final Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsExtractor;
.super Ljava/lang/Object;
.source "AdtsExtractor.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/Extractor;


# static fields
.field public static final FACTORY:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorsFactory;

.field private static final ID3_TAG:I

.field private static final MAX_PACKET_SIZE:I = 0xc8

.field private static final MAX_SNIFF_BYTES:I = 0x2000


# instance fields
.field private final firstSampleTimestampUs:J

.field private final packetBuffer:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private reader:Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;

.field private startedPacket:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsExtractor$1;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsExtractor$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsExtractor;->FACTORY:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorsFactory;

    .line 50
    const-string/jumbo v0, "ID3"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsExtractor;->ID3_TAG:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 65
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsExtractor;-><init>(J)V

    .line 66
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "firstSampleTimestampUs"    # J

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsExtractor;->firstSampleTimestampUs:J

    .line 70
    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsExtractor;->packetBuffer:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .line 71
    return-void
.end method


# virtual methods
.method public init(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;)V
    .locals 4
    .param p1, "output"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    .prologue
    const/4 v3, 0x1

    .line 130
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;

    invoke-direct {v0, v3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;-><init>(Z)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsExtractor;->reader:Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;

    .line 131
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsExtractor;->reader:Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->createTracks(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 132
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 133
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/SeekMap$Unseekable;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->seekMap(Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;)V

    .line 134
    return-void
.end method

.method public read(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;)I
    .locals 7
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 150
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsExtractor;->packetBuffer:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v4, 0xc8

    invoke-interface {p1, v3, v2, v4}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->read([BII)I

    move-result v0

    .line 151
    .local v0, "bytesRead":I
    if-ne v0, v1, :cond_0

    .line 167
    :goto_0
    return v1

    .line 156
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsExtractor;->packetBuffer:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 157
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsExtractor;->packetBuffer:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 159
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsExtractor;->startedPacket:Z

    if-nez v1, :cond_1

    .line 161
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsExtractor;->reader:Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsExtractor;->firstSampleTimestampUs:J

    invoke-virtual {v1, v4, v5, v6}, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->packetStarted(JZ)V

    .line 162
    iput-boolean v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsExtractor;->startedPacket:Z

    .line 166
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsExtractor;->reader:Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsExtractor;->packetBuffer:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->consume(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V

    move v1, v2

    .line 167
    goto :goto_0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method public seek(JJ)V
    .locals 1
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .prologue
    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsExtractor;->startedPacket:Z

    .line 139
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsExtractor;->reader:Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->seek()V

    .line 140
    return-void
.end method

.method public sniff(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Z
    .locals 14
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/16 v13, 0xa

    const/4 v12, 0x4

    const/4 v9, 0x0

    .line 76
    new-instance v3, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-direct {v3, v13}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 77
    .local v3, "scratch":Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    new-instance v4, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    iget-object v10, v3, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-direct {v4, v10}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;-><init>([B)V

    .line 78
    .local v4, "scratchBits":Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;
    const/4 v5, 0x0

    .line 80
    .local v5, "startPosition":I
    :goto_0
    iget-object v10, v3, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v10, v9, v13}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 81
    invoke-virtual {v3, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 82
    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v10

    sget v11, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsExtractor;->ID3_TAG:I

    if-eq v10, v11, :cond_1

    .line 90
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 91
    invoke-interface {p1, v5}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 94
    move v1, v5

    .line 95
    .local v1, "headerPosition":I
    const/4 v8, 0x0

    .line 96
    .local v8, "validFramesSize":I
    const/4 v7, 0x0

    .line 98
    .local v7, "validFramesCount":I
    :goto_1
    iget-object v10, v3, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v11, 0x2

    invoke-interface {p1, v10, v9, v11}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 99
    invoke-virtual {v3, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 100
    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    .line 101
    .local v6, "syncBytes":I
    const v10, 0xfff6

    and-int/2addr v10, v6

    const v11, 0xfff0

    if-eq v10, v11, :cond_3

    .line 102
    const/4 v7, 0x0

    .line 103
    const/4 v8, 0x0

    .line 104
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 105
    add-int/lit8 v1, v1, 0x1

    sub-int v10, v1, v5

    const/16 v11, 0x2000

    if-lt v10, v11, :cond_2

    .line 120
    :cond_0
    :goto_2
    return v9

    .line 85
    .end local v1    # "headerPosition":I
    .end local v6    # "syncBytes":I
    .end local v7    # "validFramesCount":I
    .end local v8    # "validFramesSize":I
    :cond_1
    const/4 v10, 0x3

    invoke-virtual {v3, v10}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 86
    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v2

    .line 87
    .local v2, "length":I
    add-int/lit8 v10, v2, 0xa

    add-int/2addr v5, v10

    .line 88
    invoke-interface {p1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_0

    .line 108
    .end local v2    # "length":I
    .restart local v1    # "headerPosition":I
    .restart local v6    # "syncBytes":I
    .restart local v7    # "validFramesCount":I
    .restart local v8    # "validFramesSize":I
    :cond_2
    invoke-interface {p1, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_1

    .line 110
    :cond_3
    add-int/lit8 v7, v7, 0x1

    if-lt v7, v12, :cond_4

    const/16 v10, 0xbc

    if-le v8, v10, :cond_4

    .line 111
    const/4 v9, 0x1

    goto :goto_2

    .line 115
    :cond_4
    iget-object v10, v3, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v10, v9, v12}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 116
    const/16 v10, 0xe

    invoke-virtual {v4, v10}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 117
    const/16 v10, 0xd

    invoke-virtual {v4, v10}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 119
    .local v0, "frameSize":I
    const/4 v10, 0x6

    if-le v0, v10, :cond_0

    .line 122
    add-int/lit8 v10, v0, -0x6

    invoke-interface {p1, v10}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 123
    add-int/2addr v8, v0

    goto :goto_1
.end method
