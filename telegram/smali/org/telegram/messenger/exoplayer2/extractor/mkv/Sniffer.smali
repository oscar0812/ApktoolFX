.class final Lorg/telegram/messenger/exoplayer2/extractor/mkv/Sniffer;
.super Ljava/lang/Object;
.source "Sniffer.java"


# static fields
.field private static final ID_EBML:I = 0x1a45dfa3

.field private static final SEARCH_LENGTH:I = 0x400


# instance fields
.field private peekLength:I

.field private final scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/Sniffer;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .line 40
    return-void
.end method

.method private readUint(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)J
    .locals 7
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 92
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/Sniffer;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v4, v5, v6}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 93
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/Sniffer;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    aget-byte v4, v4, v5

    and-int/lit16 v3, v4, 0xff

    .line 94
    .local v3, "value":I
    if-nez v3, :cond_0

    .line 95
    const-wide/high16 v4, -0x8000000000000000L

    .line 110
    :goto_0
    return-wide v4

    .line 97
    :cond_0
    const/16 v2, 0x80

    .line 98
    .local v2, "mask":I
    const/4 v1, 0x0

    .line 99
    .local v1, "length":I
    :goto_1
    and-int v4, v3, v2

    if-nez v4, :cond_1

    .line 100
    shr-int/lit8 v2, v2, 0x1

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 103
    :cond_1
    xor-int/lit8 v4, v2, -0x1

    and-int/2addr v3, v4

    .line 104
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/Sniffer;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v4, v6, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 105
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_2

    .line 106
    shl-int/lit8 v3, v3, 0x8

    .line 107
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/Sniffer;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    add-int/lit8 v5, v0, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 109
    :cond_2
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/Sniffer;->peekLength:I

    add-int/lit8 v5, v1, 0x1

    add-int/2addr v4, v5

    iput v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/Sniffer;->peekLength:I

    .line 110
    int-to-long v4, v3

    goto :goto_0
.end method


# virtual methods
.method public sniff(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Z
    .locals 22
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-interface/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v12

    .line 47
    .local v12, "inputLength":J
    const-wide/16 v18, -0x1

    cmp-long v5, v12, v18

    if-eqz v5, :cond_0

    const-wide/16 v18, 0x400

    cmp-long v5, v12, v18

    if-lez v5, :cond_1

    :cond_0
    const-wide/16 v18, 0x400

    :goto_0
    move-wide/from16 v0, v18

    long-to-int v4, v0

    .line 50
    .local v4, "bytesToSearch":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/Sniffer;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v5, v5, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v18, 0x0

    const/16 v19, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v5, v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 51
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/Sniffer;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v16

    .line 52
    .local v16, "tag":J
    const/4 v5, 0x4

    move-object/from16 v0, p0

    iput v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/Sniffer;->peekLength:I

    .line 53
    :goto_1
    const-wide/32 v18, 0x1a45dfa3

    cmp-long v5, v16, v18

    if-eqz v5, :cond_3

    .line 54
    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/Sniffer;->peekLength:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/Sniffer;->peekLength:I

    if-ne v5, v4, :cond_2

    .line 55
    const/4 v5, 0x0

    .line 85
    :goto_2
    return v5

    .end local v4    # "bytesToSearch":I
    .end local v16    # "tag":J
    :cond_1
    move-wide/from16 v18, v12

    .line 47
    goto :goto_0

    .line 57
    .restart local v4    # "bytesToSearch":I
    .restart local v16    # "tag":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/Sniffer;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v5, v5, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v5, v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 58
    const/16 v5, 0x8

    shl-long v18, v16, v5

    const-wide/16 v20, -0x100

    and-long v16, v18, v20

    .line 59
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/Sniffer;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v5, v5, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v18, 0x0

    aget-byte v5, v5, v18

    and-int/lit16 v5, v5, 0xff

    int-to-long v0, v5

    move-wide/from16 v18, v0

    or-long v16, v16, v18

    goto :goto_1

    .line 63
    :cond_3
    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/Sniffer;->readUint(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)J

    move-result-wide v6

    .line 64
    .local v6, "headerSize":J
    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/Sniffer;->peekLength:I

    int-to-long v8, v5

    .line 65
    .local v8, "headerStart":J
    const-wide/high16 v18, -0x8000000000000000L

    cmp-long v5, v6, v18

    if-eqz v5, :cond_4

    const-wide/16 v18, -0x1

    cmp-long v5, v12, v18

    if-eqz v5, :cond_6

    add-long v18, v8, v6

    cmp-long v5, v18, v12

    if-ltz v5, :cond_6

    .line 67
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 80
    .local v10, "id":J
    .local v14, "size":J
    :cond_5
    const-wide/16 v18, 0x0

    cmp-long v5, v14, v18

    if-eqz v5, :cond_6

    .line 81
    long-to-int v5, v14

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 82
    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/Sniffer;->peekLength:I

    int-to-long v0, v5

    move-wide/from16 v18, v0

    add-long v18, v18, v14

    move-wide/from16 v0, v18

    long-to-int v5, v0

    move-object/from16 v0, p0

    iput v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/Sniffer;->peekLength:I

    .line 71
    .end local v10    # "id":J
    .end local v14    # "size":J
    :cond_6
    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/Sniffer;->peekLength:I

    int-to-long v0, v5

    move-wide/from16 v18, v0

    add-long v20, v8, v6

    cmp-long v5, v18, v20

    if-gez v5, :cond_9

    .line 72
    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/Sniffer;->readUint(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)J

    move-result-wide v10

    .line 73
    .restart local v10    # "id":J
    const-wide/high16 v18, -0x8000000000000000L

    cmp-long v5, v10, v18

    if-nez v5, :cond_7

    .line 74
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 76
    :cond_7
    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/Sniffer;->readUint(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)J

    move-result-wide v14

    .line 77
    .restart local v14    # "size":J
    const-wide/16 v18, 0x0

    cmp-long v5, v14, v18

    if-ltz v5, :cond_8

    const-wide/32 v18, 0x7fffffff

    cmp-long v5, v14, v18

    if-lez v5, :cond_5

    .line 78
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 85
    .end local v10    # "id":J
    .end local v14    # "size":J
    :cond_9
    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/Sniffer;->peekLength:I

    int-to-long v0, v5

    move-wide/from16 v18, v0

    add-long v20, v8, v6

    cmp-long v5, v18, v20

    if-nez v5, :cond_a

    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_2
.end method
