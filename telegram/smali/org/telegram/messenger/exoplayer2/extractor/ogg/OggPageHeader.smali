.class final Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;
.super Ljava/lang/Object;
.source "OggPageHeader.java"


# static fields
.field public static final EMPTY_PAGE_HEADER_SIZE:I = 0x1b

.field public static final MAX_PAGE_PAYLOAD:I = 0xfe01

.field public static final MAX_PAGE_SIZE:I = 0xff1b

.field public static final MAX_SEGMENT_COUNT:I = 0xff

.field private static final TYPE_OGGS:I


# instance fields
.field public bodySize:I

.field public granulePosition:J

.field public headerSize:I

.field public final laces:[I

.field public pageChecksum:J

.field public pageSegmentCount:I

.field public pageSequenceNumber:J

.field public revision:I

.field private final scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field public streamSerialNumber:J

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string/jumbo v0, "OggS"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->TYPE_OGGS:I

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0xff

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->laces:[I

    .line 54
    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    return-void
.end method


# virtual methods
.method public populate(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Z)Z
    .locals 8
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .param p2, "quiet"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 84
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->reset()V

    .line 85
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->reset()V

    .line 86
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 87
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1b

    cmp-long v4, v4, v6

    if-ltz v4, :cond_3

    :cond_0
    move v0, v3

    .line 88
    .local v0, "hasEnoughBytes":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v5, 0x1b

    invoke-interface {p1, v4, v2, v5, v3}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v4

    if-nez v4, :cond_5

    .line 89
    :cond_1
    if-eqz p2, :cond_4

    .line 128
    :cond_2
    :goto_1
    return v2

    .end local v0    # "hasEnoughBytes":Z
    :cond_3
    move v0, v2

    .line 87
    goto :goto_0

    .line 92
    .restart local v0    # "hasEnoughBytes":Z
    :cond_4
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 95
    :cond_5
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    sget v6, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->TYPE_OGGS:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_6

    .line 96
    if-nez p2, :cond_2

    .line 99
    new-instance v2, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v3, "expected OggS capture pattern at begin of page"

    invoke-direct {v2, v3}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 103
    :cond_6
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    iput v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->revision:I

    .line 104
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->revision:I

    if-eqz v4, :cond_7

    .line 105
    if-nez p2, :cond_2

    .line 108
    new-instance v2, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v3, "unsupported bit stream revision"

    invoke-direct {v2, v3}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 111
    :cond_7
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    iput v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->type:I

    .line 113
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readLittleEndianLong()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->granulePosition:J

    .line 114
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->streamSerialNumber:J

    .line 115
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->pageSequenceNumber:J

    .line 116
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->pageChecksum:J

    .line 117
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    iput v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    .line 118
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    add-int/lit8 v4, v4, 0x1b

    iput v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->headerSize:I

    .line 121
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->reset()V

    .line 122
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    invoke-interface {p1, v4, v2, v5}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 123
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    if-ge v1, v2, :cond_8

    .line 124
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->laces:[I

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    aput v4, v2, v1

    .line 125
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->bodySize:I

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->laces:[I

    aget v4, v4, v1

    add-int/2addr v2, v4

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->bodySize:I

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    move v2, v3

    .line 128
    goto/16 :goto_1
.end method

.method public reset()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->revision:I

    .line 61
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->type:I

    .line 62
    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->granulePosition:J

    .line 63
    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->streamSerialNumber:J

    .line 64
    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->pageSequenceNumber:J

    .line 65
    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->pageChecksum:J

    .line 66
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    .line 67
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->headerSize:I

    .line 68
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->bodySize:I

    .line 69
    return-void
.end method
