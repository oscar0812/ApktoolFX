.class public final Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Extractor;
.super Ljava/lang/Object;
.source "Ac3Extractor.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/Extractor;


# static fields
.field private static final AC3_SYNC_WORD:I = 0xb77

.field public static final FACTORY:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorsFactory;

.field private static final ID3_TAG:I

.field private static final MAX_SNIFF_BYTES:I = 0x2000

.field private static final MAX_SYNC_FRAME_SIZE:I = 0xae2


# instance fields
.field private final firstSampleTimestampUs:J

.field private reader:Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;

.field private final sampleData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private startedPacket:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Extractor$1;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Extractor$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Extractor;->FACTORY:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorsFactory;

    .line 56
    const-string/jumbo v0, "ID3"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Extractor;->ID3_TAG:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 65
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Extractor;-><init>(J)V

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
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Extractor;->firstSampleTimestampUs:J

    .line 70
    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0xae2

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Extractor;->sampleData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .line 71
    return-void
.end method


# virtual methods
.method public init(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;)V
    .locals 4
    .param p1, "output"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    .prologue
    .line 120
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Extractor;->reader:Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;

    .line 121
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Extractor;->reader:Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->createTracks(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 122
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 123
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/SeekMap$Unseekable;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->seekMap(Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;)V

    .line 124
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

    .line 140
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Extractor;->sampleData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v4, 0xae2

    invoke-interface {p1, v3, v2, v4}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->read([BII)I

    move-result v0

    .line 141
    .local v0, "bytesRead":I
    if-ne v0, v1, :cond_0

    .line 157
    :goto_0
    return v1

    .line 146
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Extractor;->sampleData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 147
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Extractor;->sampleData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 149
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Extractor;->startedPacket:Z

    if-nez v1, :cond_1

    .line 151
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Extractor;->reader:Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Extractor;->firstSampleTimestampUs:J

    invoke-virtual {v1, v4, v5, v6}, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->packetStarted(JZ)V

    .line 152
    iput-boolean v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Extractor;->startedPacket:Z

    .line 156
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Extractor;->reader:Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Extractor;->sampleData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->consume(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V

    move v1, v2

    .line 157
    goto :goto_0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public seek(JJ)V
    .locals 1
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .prologue
    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Extractor;->startedPacket:Z

    .line 129
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Extractor;->reader:Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->seek()V

    .line 130
    return-void
.end method

.method public sniff(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Z
    .locals 11
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/16 v10, 0xa

    const/4 v7, 0x0

    .line 76
    new-instance v3, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-direct {v3, v10}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 77
    .local v3, "scratch":Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    const/4 v4, 0x0

    .line 79
    .local v4, "startPosition":I
    :goto_0
    iget-object v8, v3, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v8, v7, v10}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 80
    invoke-virtual {v3, v7}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 81
    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v8

    sget v9, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Extractor;->ID3_TAG:I

    if-eq v8, v9, :cond_1

    .line 89
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 90
    invoke-interface {p1, v4}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 92
    move v1, v4

    .line 93
    .local v1, "headerPosition":I
    const/4 v6, 0x0

    .line 95
    .local v6, "validFramesCount":I
    :goto_1
    iget-object v8, v3, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v9, 0x5

    invoke-interface {p1, v8, v7, v9}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 96
    invoke-virtual {v3, v7}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 97
    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    .line 98
    .local v5, "syncBytes":I
    const/16 v8, 0xb77

    if-eq v5, v8, :cond_3

    .line 99
    const/4 v6, 0x0

    .line 100
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 101
    add-int/lit8 v1, v1, 0x1

    sub-int v8, v1, v4

    const/16 v9, 0x2000

    if-lt v8, v9, :cond_2

    .line 111
    :cond_0
    :goto_2
    return v7

    .line 84
    .end local v1    # "headerPosition":I
    .end local v5    # "syncBytes":I
    .end local v6    # "validFramesCount":I
    :cond_1
    const/4 v8, 0x3

    invoke-virtual {v3, v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 85
    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v2

    .line 86
    .local v2, "length":I
    add-int/lit8 v8, v2, 0xa

    add-int/2addr v4, v8

    .line 87
    invoke-interface {p1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_0

    .line 104
    .end local v2    # "length":I
    .restart local v1    # "headerPosition":I
    .restart local v5    # "syncBytes":I
    .restart local v6    # "validFramesCount":I
    :cond_2
    invoke-interface {p1, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_1

    .line 106
    :cond_3
    add-int/lit8 v6, v6, 0x1

    const/4 v8, 0x4

    if-lt v6, v8, :cond_4

    .line 107
    const/4 v7, 0x1

    goto :goto_2

    .line 109
    :cond_4
    iget-object v8, v3, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-static {v8}, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->parseAc3SyncframeSize([B)I

    move-result v0

    .line 110
    .local v0, "frameSize":I
    const/4 v8, -0x1

    if-eq v0, v8, :cond_0

    .line 113
    add-int/lit8 v8, v0, -0x5

    invoke-interface {p1, v8}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_1
.end method
