.class public final Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;
.super Ljava/lang/Object;
.source "Id3Decoder.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;,
        Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;
    }
.end annotation


# static fields
.field private static final FRAME_FLAG_V3_HAS_GROUP_IDENTIFIER:I = 0x20

.field private static final FRAME_FLAG_V3_IS_COMPRESSED:I = 0x80

.field private static final FRAME_FLAG_V3_IS_ENCRYPTED:I = 0x40

.field private static final FRAME_FLAG_V4_HAS_DATA_LENGTH:I = 0x1

.field private static final FRAME_FLAG_V4_HAS_GROUP_IDENTIFIER:I = 0x40

.field private static final FRAME_FLAG_V4_IS_COMPRESSED:I = 0x8

.field private static final FRAME_FLAG_V4_IS_ENCRYPTED:I = 0x4

.field private static final FRAME_FLAG_V4_IS_UNSYNCHRONIZED:I = 0x2

.field public static final ID3_HEADER_LENGTH:I = 0xa

.field public static final ID3_TAG:I

.field private static final ID3_TEXT_ENCODING_ISO_8859_1:I = 0x0

.field private static final ID3_TEXT_ENCODING_UTF_16:I = 0x1

.field private static final ID3_TEXT_ENCODING_UTF_16BE:I = 0x2

.field private static final ID3_TEXT_ENCODING_UTF_8:I = 0x3

.field private static final TAG:Ljava/lang/String; = "Id3Decoder"


# instance fields
.field private final framePredicate:Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string/jumbo v0, "ID3"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->ID3_TAG:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;-><init>(Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)V
    .locals 0
    .param p1, "framePredicate"    # Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->framePredicate:Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;

    .line 92
    return-void
.end method

.method private static decodeApicFrame(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;II)Lorg/telegram/messenger/exoplayer2/metadata/id3/ApicFrame;
    .locals 17
    .param p0, "id3Data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .param p2, "majorVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 526
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    .line 527
    .local v6, "encoding":I
    invoke-static {v6}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    move-result-object v1

    .line 529
    .local v1, "charset":Ljava/lang/String;
    add-int/lit8 v12, p1, -0x1

    new-array v2, v12, [B

    .line 530
    .local v2, "data":[B
    const/4 v12, 0x0

    add-int/lit8 v13, p1, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12, v13}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 534
    const/4 v12, 0x2

    move/from16 v0, p2

    if-ne v0, v12, :cond_1

    .line 535
    const/4 v8, 0x2

    .line 536
    .local v8, "mimeTypeEndIndex":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "image/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    new-instance v13, Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x3

    const-string/jumbo v16, "ISO-8859-1"

    move-object/from16 v0, v16

    invoke-direct {v13, v2, v14, v15, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v13}, Lorg/telegram/messenger/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 537
    .local v7, "mimeType":Ljava/lang/String;
    const-string/jumbo v12, "image/jpg"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 538
    const-string/jumbo v7, "image/jpeg"

    .line 548
    :cond_0
    :goto_0
    add-int/lit8 v12, v8, 0x1

    aget-byte v12, v2, v12

    and-int/lit16 v11, v12, 0xff

    .line 550
    .local v11, "pictureType":I
    add-int/lit8 v5, v8, 0x2

    .line 551
    .local v5, "descriptionStartIndex":I
    invoke-static {v2, v5, v6}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v4

    .line 552
    .local v4, "descriptionEndIndex":I
    new-instance v3, Ljava/lang/String;

    sub-int v12, v4, v5

    invoke-direct {v3, v2, v5, v12, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 555
    .local v3, "description":Ljava/lang/String;
    invoke-static {v6}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v12

    add-int v10, v4, v12

    .line 556
    .local v10, "pictureDataStartIndex":I
    array-length v12, v2

    invoke-static {v2, v10, v12}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    .line 558
    .local v9, "pictureData":[B
    new-instance v12, Lorg/telegram/messenger/exoplayer2/metadata/id3/ApicFrame;

    invoke-direct {v12, v7, v3, v11, v9}, Lorg/telegram/messenger/exoplayer2/metadata/id3/ApicFrame;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    return-object v12

    .line 541
    .end local v3    # "description":Ljava/lang/String;
    .end local v4    # "descriptionEndIndex":I
    .end local v5    # "descriptionStartIndex":I
    .end local v7    # "mimeType":Ljava/lang/String;
    .end local v8    # "mimeTypeEndIndex":I
    .end local v9    # "pictureData":[B
    .end local v10    # "pictureDataStartIndex":I
    .end local v11    # "pictureType":I
    :cond_1
    const/4 v12, 0x0

    invoke-static {v2, v12}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v8

    .line 542
    .restart local v8    # "mimeTypeEndIndex":I
    new-instance v12, Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "ISO-8859-1"

    invoke-direct {v12, v2, v13, v8, v14}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v12}, Lorg/telegram/messenger/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 543
    .restart local v7    # "mimeType":Ljava/lang/String;
    const/16 v12, 0x2f

    invoke-virtual {v7, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_0

    .line 544
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "image/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method private static decodeBinaryFrame(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/metadata/id3/BinaryFrame;
    .locals 2
    .param p0, "id3Data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 667
    new-array v0, p1, [B

    .line 668
    .local v0, "frame":[B
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 670
    new-instance v1, Lorg/telegram/messenger/exoplayer2/metadata/id3/BinaryFrame;

    invoke-direct {v1, p2, v0}, Lorg/telegram/messenger/exoplayer2/metadata/id3/BinaryFrame;-><init>(Ljava/lang/String;[B)V

    return-object v1
.end method

.method private static decodeChapterFrame(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;IIZILorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterFrame;
    .locals 22
    .param p0, "id3Data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .param p2, "majorVersion"    # I
    .param p3, "unsignedIntFrameSizeHack"    # Z
    .param p4, "frameHeaderSize"    # I
    .param p5, "framePredicate"    # Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 596
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v17

    .line 597
    .local v17, "framePosition":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    move/from16 v0, v17

    invoke-static {v6, v0}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v15

    .line 598
    .local v15, "chapterIdEndIndex":I
    new-instance v7, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    sub-int v20, v15, v17

    const-string/jumbo v21, "ISO-8859-1"

    move/from16 v0, v17

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v7, v6, v0, v1, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 600
    .local v7, "chapterId":Ljava/lang/String;
    add-int/lit8 v6, v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 602
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v8

    .line 603
    .local v8, "startTime":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v9

    .line 604
    .local v9, "endTime":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v10

    .line 605
    .local v10, "startOffset":J
    const-wide v20, 0xffffffffL

    cmp-long v6, v10, v20

    if-nez v6, :cond_0

    .line 606
    const-wide/16 v10, -0x1

    .line 608
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v12

    .line 609
    .local v12, "endOffset":J
    const-wide v20, 0xffffffffL

    cmp-long v6, v12, v20

    if-nez v6, :cond_1

    .line 610
    const-wide/16 v12, -0x1

    .line 613
    :cond_1
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 614
    .local v19, "subFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;>;"
    add-int v18, v17, p1

    .line 615
    .local v18, "limit":I
    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v6

    move/from16 v0, v18

    if-ge v6, v0, :cond_3

    .line 616
    move/from16 v0, p2

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->decodeFrame(ILorg/telegram/messenger/exoplayer2/util/ParsableByteArray;ZILorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v16

    .line 618
    .local v16, "frame":Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    if-eqz v16, :cond_2

    .line 619
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 623
    .end local v16    # "frame":Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    :cond_3
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v14, v6, [Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;

    .line 624
    .local v14, "subFrameArray":[Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 625
    new-instance v6, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterFrame;

    invoke-direct/range {v6 .. v14}, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterFrame;-><init>(Ljava/lang/String;IIJJ[Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;)V

    return-object v6
.end method

.method private static decodeChapterTOCFrame(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;IIZILorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterTocFrame;
    .locals 24
    .param p0, "id3Data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .param p2, "majorVersion"    # I
    .param p3, "unsignedIntFrameSizeHack"    # Z
    .param p4, "frameHeaderSize"    # I
    .param p5, "framePredicate"    # Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 631
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v16

    .line 632
    .local v16, "framePosition":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    move/from16 v0, v16

    invoke-static {v5, v0}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v13

    .line 633
    .local v13, "elementIdEndIndex":I
    new-instance v6, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    sub-int v21, v13, v16

    const-string/jumbo v22, "ISO-8859-1"

    move/from16 v0, v16

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v6, v5, v0, v1, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 635
    .local v6, "elementId":Ljava/lang/String;
    add-int/lit8 v5, v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 637
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v12

    .line 638
    .local v12, "ctocFlags":I
    and-int/lit8 v5, v12, 0x2

    if-eqz v5, :cond_0

    const/4 v7, 0x1

    .line 639
    .local v7, "isRoot":Z
    :goto_0
    and-int/lit8 v5, v12, 0x1

    if-eqz v5, :cond_1

    const/4 v8, 0x1

    .line 641
    .local v8, "isOrdered":Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v11

    .line 642
    .local v11, "childCount":I
    new-array v9, v11, [Ljava/lang/String;

    .line 643
    .local v9, "children":[Ljava/lang/String;
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_2
    move/from16 v0, v17

    if-ge v0, v11, :cond_2

    .line 644
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v19

    .line 645
    .local v19, "startIndex":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    move/from16 v0, v19

    invoke-static {v5, v0}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v14

    .line 646
    .local v14, "endIndex":I
    new-instance v5, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    move-object/from16 v21, v0

    sub-int v22, v14, v19

    const-string/jumbo v23, "ISO-8859-1"

    move-object/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v5, v0, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    aput-object v5, v9, v17

    .line 647
    add-int/lit8 v5, v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 643
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 638
    .end local v7    # "isRoot":Z
    .end local v8    # "isOrdered":Z
    .end local v9    # "children":[Ljava/lang/String;
    .end local v11    # "childCount":I
    .end local v14    # "endIndex":I
    .end local v17    # "i":I
    .end local v19    # "startIndex":I
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 639
    .restart local v7    # "isRoot":Z
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 650
    .restart local v8    # "isOrdered":Z
    .restart local v9    # "children":[Ljava/lang/String;
    .restart local v11    # "childCount":I
    .restart local v17    # "i":I
    :cond_2
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 651
    .local v20, "subFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;>;"
    add-int v18, v16, p1

    .line 652
    .local v18, "limit":I
    :cond_3
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v5

    move/from16 v0, v18

    if-ge v5, v0, :cond_4

    .line 653
    move/from16 v0, p2

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->decodeFrame(ILorg/telegram/messenger/exoplayer2/util/ParsableByteArray;ZILorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v15

    .line 655
    .local v15, "frame":Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    if-eqz v15, :cond_3

    .line 656
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 660
    .end local v15    # "frame":Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    :cond_4
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v10, v5, [Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;

    .line 661
    .local v10, "subFrameArray":[Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 662
    new-instance v5, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterTocFrame;

    invoke-direct/range {v5 .. v10}, Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterTocFrame;-><init>(Ljava/lang/String;ZZ[Ljava/lang/String;[Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;)V

    return-object v5
.end method

.method private static decodeCommentFrame(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer2/metadata/id3/CommentFrame;
    .locals 12
    .param p0, "id3Data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x0

    .line 563
    const/4 v9, 0x4

    if-ge p1, v9, :cond_0

    .line 565
    const/4 v9, 0x0

    .line 590
    :goto_0
    return-object v9

    .line 568
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 569
    .local v4, "encoding":I
    invoke-static {v4}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    move-result-object v0

    .line 571
    .local v0, "charset":Ljava/lang/String;
    new-array v1, v11, [B

    .line 572
    .local v1, "data":[B
    invoke-virtual {p0, v1, v10, v11}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 573
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1, v10, v11}, Ljava/lang/String;-><init>([BII)V

    .line 575
    .local v5, "language":Ljava/lang/String;
    add-int/lit8 v9, p1, -0x4

    new-array v1, v9, [B

    .line 576
    add-int/lit8 v9, p1, -0x4

    invoke-virtual {p0, v1, v10, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 578
    invoke-static {v1, v10, v4}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v3

    .line 579
    .local v3, "descriptionEndIndex":I
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, v10, v3, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 582
    .local v2, "description":Ljava/lang/String;
    invoke-static {v4}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v9

    add-int v8, v3, v9

    .line 583
    .local v8, "textStartIndex":I
    array-length v9, v1

    if-ge v8, v9, :cond_1

    .line 584
    invoke-static {v1, v8, v4}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v7

    .line 585
    .local v7, "textEndIndex":I
    new-instance v6, Ljava/lang/String;

    sub-int v9, v7, v8

    invoke-direct {v6, v1, v8, v9, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 590
    .end local v7    # "textEndIndex":I
    .local v6, "text":Ljava/lang/String;
    :goto_1
    new-instance v9, Lorg/telegram/messenger/exoplayer2/metadata/id3/CommentFrame;

    invoke-direct {v9, v5, v2, v6}, Lorg/telegram/messenger/exoplayer2/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 587
    .end local v6    # "text":Ljava/lang/String;
    :cond_1
    const-string/jumbo v6, ""

    .restart local v6    # "text":Ljava/lang/String;
    goto :goto_1
.end method

.method private static decodeFrame(ILorg/telegram/messenger/exoplayer2/util/ParsableByteArray;ZILorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    .locals 24
    .param p0, "majorVersion"    # I
    .param p1, "id3Data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p2, "unsignedIntFrameSizeHack"    # Z
    .param p3, "frameHeaderSize"    # I
    .param p4, "framePredicate"    # Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;

    .prologue
    .line 265
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 266
    .local v4, "frameId0":I
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 267
    .local v5, "frameId1":I
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    .line 268
    .local v6, "frameId2":I
    const/4 v2, 0x3

    move/from16 v0, p0

    if-lt v0, v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    .line 271
    .local v7, "frameId3":I
    :goto_0
    const/4 v2, 0x4

    move/from16 v0, p0

    if-ne v0, v2, :cond_2

    .line 272
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v9

    .line 273
    .local v9, "frameSize":I
    if-nez p2, :cond_0

    .line 274
    and-int/lit16 v2, v9, 0xff

    shr-int/lit8 v3, v9, 0x8

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x7

    or-int/2addr v2, v3

    shr-int/lit8 v3, v9, 0x10

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xe

    or-int/2addr v2, v3

    shr-int/lit8 v3, v9, 0x18

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x15

    or-int v9, v2, v3

    .line 283
    :cond_0
    :goto_1
    const/4 v2, 0x3

    move/from16 v0, p0

    if-lt v0, v2, :cond_4

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v15

    .line 284
    .local v15, "flags":I
    :goto_2
    if-nez v4, :cond_5

    if-nez v5, :cond_5

    if-nez v6, :cond_5

    if-nez v7, :cond_5

    if-nez v9, :cond_5

    if-nez v15, :cond_5

    .line 287
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 288
    const/16 v16, 0x0

    .line 386
    :goto_3
    return-object v16

    .line 268
    .end local v7    # "frameId3":I
    .end local v9    # "frameSize":I
    .end local v15    # "flags":I
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 277
    .restart local v7    # "frameId3":I
    :cond_2
    const/4 v2, 0x3

    move/from16 v0, p0

    if-ne v0, v2, :cond_3

    .line 278
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v9

    .restart local v9    # "frameSize":I
    goto :goto_1

    .line 280
    .end local v9    # "frameSize":I
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v9

    .restart local v9    # "frameSize":I
    goto :goto_1

    .line 283
    :cond_4
    const/4 v15, 0x0

    goto :goto_2

    .line 291
    .restart local v15    # "flags":I
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v2

    add-int v23, v2, v9

    .line 292
    .local v23, "nextFramePosition":I
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v2

    move/from16 v0, v23

    if-le v0, v2, :cond_6

    .line 293
    const-string/jumbo v2, "Id3Decoder"

    const-string/jumbo v3, "Frame size exceeds remaining tag data"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 295
    const/16 v16, 0x0

    goto :goto_3

    .line 298
    :cond_6
    if-eqz p4, :cond_7

    move-object/from16 v2, p4

    move/from16 v3, p0

    .line 299
    invoke-interface/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;->evaluate(IIIII)Z

    move-result v2

    if-nez v2, :cond_7

    .line 301
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 302
    const/16 v16, 0x0

    goto :goto_3

    .line 306
    :cond_7
    const/16 v20, 0x0

    .line 307
    .local v20, "isCompressed":Z
    const/16 v21, 0x0

    .line 308
    .local v21, "isEncrypted":Z
    const/16 v22, 0x0

    .line 309
    .local v22, "isUnsynchronized":Z
    const/16 v17, 0x0

    .line 310
    .local v17, "hasDataLength":Z
    const/16 v18, 0x0

    .line 311
    .local v18, "hasGroupIdentifier":Z
    const/4 v2, 0x3

    move/from16 v0, p0

    if-ne v0, v2, :cond_d

    .line 312
    and-int/lit16 v2, v15, 0x80

    if-eqz v2, :cond_a

    const/16 v20, 0x1

    .line 313
    :goto_4
    and-int/lit8 v2, v15, 0x40

    if-eqz v2, :cond_b

    const/16 v21, 0x1

    .line 314
    :goto_5
    and-int/lit8 v2, v15, 0x20

    if-eqz v2, :cond_c

    const/16 v18, 0x1

    .line 316
    :goto_6
    move/from16 v17, v20

    .line 325
    :cond_8
    :goto_7
    if-nez v20, :cond_9

    if-eqz v21, :cond_13

    .line 326
    :cond_9
    const-string/jumbo v2, "Id3Decoder"

    const-string/jumbo v3, "Skipping unsupported compressed or encrypted frame"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 328
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 312
    :cond_a
    const/16 v20, 0x0

    goto :goto_4

    .line 313
    :cond_b
    const/16 v21, 0x0

    goto :goto_5

    .line 314
    :cond_c
    const/16 v18, 0x0

    goto :goto_6

    .line 317
    :cond_d
    const/4 v2, 0x4

    move/from16 v0, p0

    if-ne v0, v2, :cond_8

    .line 318
    and-int/lit8 v2, v15, 0x40

    if-eqz v2, :cond_e

    const/16 v18, 0x1

    .line 319
    :goto_8
    and-int/lit8 v2, v15, 0x8

    if-eqz v2, :cond_f

    const/16 v20, 0x1

    .line 320
    :goto_9
    and-int/lit8 v2, v15, 0x4

    if-eqz v2, :cond_10

    const/16 v21, 0x1

    .line 321
    :goto_a
    and-int/lit8 v2, v15, 0x2

    if-eqz v2, :cond_11

    const/16 v22, 0x1

    .line 322
    :goto_b
    and-int/lit8 v2, v15, 0x1

    if-eqz v2, :cond_12

    const/16 v17, 0x1

    :goto_c
    goto :goto_7

    .line 318
    :cond_e
    const/16 v18, 0x0

    goto :goto_8

    .line 319
    :cond_f
    const/16 v20, 0x0

    goto :goto_9

    .line 320
    :cond_10
    const/16 v21, 0x0

    goto :goto_a

    .line 321
    :cond_11
    const/16 v22, 0x0

    goto :goto_b

    .line 322
    :cond_12
    const/16 v17, 0x0

    goto :goto_c

    .line 331
    :cond_13
    if-eqz v18, :cond_14

    .line 332
    add-int/lit8 v9, v9, -0x1

    .line 333
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 335
    :cond_14
    if-eqz v17, :cond_15

    .line 336
    add-int/lit8 v9, v9, -0x4

    .line 337
    const/4 v2, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 339
    :cond_15
    if-eqz v22, :cond_16

    .line 340
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->removeUnsynchronization(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)I

    move-result v9

    .line 345
    :cond_16
    const/16 v2, 0x54

    if-ne v4, v2, :cond_19

    const/16 v2, 0x58

    if-ne v5, v2, :cond_19

    const/16 v2, 0x58

    if-ne v6, v2, :cond_19

    const/4 v2, 0x2

    move/from16 v0, p0

    if-eq v0, v2, :cond_17

    const/16 v2, 0x58

    if-ne v7, v2, :cond_19

    .line 347
    :cond_17
    :try_start_0
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->decodeTxxxFrame(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v16

    .line 378
    .local v16, "frame":Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    :goto_d
    if-nez v16, :cond_18

    .line 379
    const-string/jumbo v2, "Id3Decoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to decode frame: id="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 380
    move/from16 v0, p0

    invoke-static {v0, v4, v5, v6, v7}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->getFrameId(IIIII)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, ", frameSize="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 379
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    :cond_18
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto/16 :goto_3

    .line 348
    .end local v16    # "frame":Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    :cond_19
    const/16 v2, 0x54

    if-ne v4, v2, :cond_1a

    .line 349
    :try_start_1
    move/from16 v0, p0

    invoke-static {v0, v4, v5, v6, v7}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->getFrameId(IIIII)Ljava/lang/String;

    move-result-object v19

    .line 350
    .local v19, "id":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v9, v1}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->decodeTextInformationFrame(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v16

    .line 351
    .restart local v16    # "frame":Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    goto :goto_d

    .end local v16    # "frame":Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    .end local v19    # "id":Ljava/lang/String;
    :cond_1a
    const/16 v2, 0x57

    if-ne v4, v2, :cond_1c

    const/16 v2, 0x58

    if-ne v5, v2, :cond_1c

    const/16 v2, 0x58

    if-ne v6, v2, :cond_1c

    const/4 v2, 0x2

    move/from16 v0, p0

    if-eq v0, v2, :cond_1b

    const/16 v2, 0x58

    if-ne v7, v2, :cond_1c

    .line 353
    :cond_1b
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->decodeWxxxFrame(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer2/metadata/id3/UrlLinkFrame;

    move-result-object v16

    .restart local v16    # "frame":Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    goto :goto_d

    .line 354
    .end local v16    # "frame":Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    :cond_1c
    const/16 v2, 0x57

    if-ne v4, v2, :cond_1d

    .line 355
    move/from16 v0, p0

    invoke-static {v0, v4, v5, v6, v7}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->getFrameId(IIIII)Ljava/lang/String;

    move-result-object v19

    .line 356
    .restart local v19    # "id":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v9, v1}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->decodeUrlLinkFrame(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/metadata/id3/UrlLinkFrame;

    move-result-object v16

    .line 357
    .restart local v16    # "frame":Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    goto :goto_d

    .end local v16    # "frame":Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    .end local v19    # "id":Ljava/lang/String;
    :cond_1d
    const/16 v2, 0x50

    if-ne v4, v2, :cond_1e

    const/16 v2, 0x52

    if-ne v5, v2, :cond_1e

    const/16 v2, 0x49

    if-ne v6, v2, :cond_1e

    const/16 v2, 0x56

    if-ne v7, v2, :cond_1e

    .line 358
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->decodePrivFrame(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer2/metadata/id3/PrivFrame;

    move-result-object v16

    .restart local v16    # "frame":Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    goto/16 :goto_d

    .line 359
    .end local v16    # "frame":Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    :cond_1e
    const/16 v2, 0x47

    if-ne v4, v2, :cond_20

    const/16 v2, 0x45

    if-ne v5, v2, :cond_20

    const/16 v2, 0x4f

    if-ne v6, v2, :cond_20

    const/16 v2, 0x42

    if-eq v7, v2, :cond_1f

    const/4 v2, 0x2

    move/from16 v0, p0

    if-ne v0, v2, :cond_20

    .line 361
    :cond_1f
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->decodeGeobFrame(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer2/metadata/id3/GeobFrame;

    move-result-object v16

    .restart local v16    # "frame":Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    goto/16 :goto_d

    .line 362
    .end local v16    # "frame":Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    :cond_20
    const/4 v2, 0x2

    move/from16 v0, p0

    if-ne v0, v2, :cond_22

    const/16 v2, 0x50

    if-ne v4, v2, :cond_23

    const/16 v2, 0x49

    if-ne v5, v2, :cond_23

    const/16 v2, 0x43

    if-ne v6, v2, :cond_23

    .line 364
    :cond_21
    move-object/from16 v0, p1

    move/from16 v1, p0

    invoke-static {v0, v9, v1}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->decodeApicFrame(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;II)Lorg/telegram/messenger/exoplayer2/metadata/id3/ApicFrame;

    move-result-object v16

    .restart local v16    # "frame":Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    goto/16 :goto_d

    .line 362
    .end local v16    # "frame":Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    :cond_22
    const/16 v2, 0x41

    if-ne v4, v2, :cond_23

    const/16 v2, 0x50

    if-ne v5, v2, :cond_23

    const/16 v2, 0x49

    if-ne v6, v2, :cond_23

    const/16 v2, 0x43

    if-eq v7, v2, :cond_21

    .line 365
    :cond_23
    const/16 v2, 0x43

    if-ne v4, v2, :cond_25

    const/16 v2, 0x4f

    if-ne v5, v2, :cond_25

    const/16 v2, 0x4d

    if-ne v6, v2, :cond_25

    const/16 v2, 0x4d

    if-eq v7, v2, :cond_24

    const/4 v2, 0x2

    move/from16 v0, p0

    if-ne v0, v2, :cond_25

    .line 367
    :cond_24
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->decodeCommentFrame(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer2/metadata/id3/CommentFrame;

    move-result-object v16

    .restart local v16    # "frame":Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    goto/16 :goto_d

    .line 368
    .end local v16    # "frame":Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    :cond_25
    const/16 v2, 0x43

    if-ne v4, v2, :cond_26

    const/16 v2, 0x48

    if-ne v5, v2, :cond_26

    const/16 v2, 0x41

    if-ne v6, v2, :cond_26

    const/16 v2, 0x50

    if-ne v7, v2, :cond_26

    move-object/from16 v8, p1

    move/from16 v10, p0

    move/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v13, p4

    .line 369
    invoke-static/range {v8 .. v13}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->decodeChapterFrame(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;IIZILorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterFrame;

    move-result-object v16

    .restart local v16    # "frame":Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    goto/16 :goto_d

    .line 371
    .end local v16    # "frame":Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    :cond_26
    const/16 v2, 0x43

    if-ne v4, v2, :cond_27

    const/16 v2, 0x54

    if-ne v5, v2, :cond_27

    const/16 v2, 0x4f

    if-ne v6, v2, :cond_27

    const/16 v2, 0x43

    if-ne v7, v2, :cond_27

    move-object/from16 v8, p1

    move/from16 v10, p0

    move/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v13, p4

    .line 372
    invoke-static/range {v8 .. v13}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->decodeChapterTOCFrame(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;IIZILorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)Lorg/telegram/messenger/exoplayer2/metadata/id3/ChapterTocFrame;

    move-result-object v16

    .restart local v16    # "frame":Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    goto/16 :goto_d

    .line 375
    .end local v16    # "frame":Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    :cond_27
    move/from16 v0, p0

    invoke-static {v0, v4, v5, v6, v7}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->getFrameId(IIIII)Ljava/lang/String;

    move-result-object v19

    .line 376
    .restart local v19    # "id":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v9, v1}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->decodeBinaryFrame(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/metadata/id3/BinaryFrame;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v16

    .restart local v16    # "frame":Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    goto/16 :goto_d

    .line 384
    .end local v16    # "frame":Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    .end local v19    # "id":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 385
    .local v14, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_2
    const-string/jumbo v2, "Id3Decoder"

    const-string/jumbo v3, "Unsupported character encoding"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 386
    const/16 v16, 0x0

    .line 388
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto/16 :goto_3

    .end local v14    # "e":Ljava/io/UnsupportedEncodingException;
    :catchall_0
    move-exception v2

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    throw v2
.end method

.method private static decodeGeobFrame(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer2/metadata/id3/GeobFrame;
    .locals 15
    .param p0, "id3Data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 499
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 500
    .local v5, "encoding":I
    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    move-result-object v0

    .line 502
    .local v0, "charset":Ljava/lang/String;
    add-int/lit8 v13, p1, -0x1

    new-array v1, v13, [B

    .line 503
    .local v1, "data":[B
    const/4 v13, 0x0

    add-int/lit8 v14, p1, -0x1

    invoke-virtual {p0, v1, v13, v14}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 505
    const/4 v13, 0x0

    invoke-static {v1, v13}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v10

    .line 506
    .local v10, "mimeTypeEndIndex":I
    new-instance v9, Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "ISO-8859-1"

    invoke-direct {v9, v1, v13, v10, v14}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 508
    .local v9, "mimeType":Ljava/lang/String;
    add-int/lit8 v8, v10, 0x1

    .line 509
    .local v8, "filenameStartIndex":I
    invoke-static {v1, v8, v5}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v7

    .line 510
    .local v7, "filenameEndIndex":I
    new-instance v6, Ljava/lang/String;

    sub-int v13, v7, v8

    invoke-direct {v6, v1, v8, v13, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 513
    .local v6, "filename":Ljava/lang/String;
    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v13

    add-int v4, v7, v13

    .line 514
    .local v4, "descriptionStartIndex":I
    invoke-static {v1, v4, v5}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v3

    .line 515
    .local v3, "descriptionEndIndex":I
    new-instance v2, Ljava/lang/String;

    sub-int v13, v3, v4

    invoke-direct {v2, v1, v4, v13, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 518
    .local v2, "description":Ljava/lang/String;
    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v13

    add-int v12, v3, v13

    .line 519
    .local v12, "objectDataStartIndex":I
    array-length v13, v1

    invoke-static {v1, v12, v13}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v11

    .line 521
    .local v11, "objectData":[B
    new-instance v13, Lorg/telegram/messenger/exoplayer2/metadata/id3/GeobFrame;

    invoke-direct {v13, v9, v6, v2, v11}, Lorg/telegram/messenger/exoplayer2/metadata/id3/GeobFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v13
.end method

.method private static decodeHeader(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;
    .locals 14
    .param p0, "data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    const/4 v13, 0x4

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x1

    .line 150
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v11

    const/16 v12, 0xa

    if-ge v11, v12, :cond_0

    .line 151
    const-string/jumbo v9, "Id3Decoder"

    const-string/jumbo v11, "Data too short to be an ID3 tag"

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v10

    .line 197
    :goto_0
    return-object v9

    .line 155
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v5

    .line 156
    .local v5, "id":I
    sget v11, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->ID3_TAG:I

    if-eq v5, v11, :cond_1

    .line 157
    const-string/jumbo v9, "Id3Decoder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unexpected first three bytes of ID3 tag header: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v10

    .line 158
    goto :goto_0

    .line 161
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    .line 162
    .local v8, "majorVersion":I
    invoke-virtual {p0, v7}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 163
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 164
    .local v1, "flags":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v2

    .line 166
    .local v2, "framesSize":I
    const/4 v11, 0x2

    if-ne v8, v11, :cond_3

    .line 167
    and-int/lit8 v11, v1, 0x40

    if-eqz v11, :cond_2

    move v6, v7

    .line 168
    .local v6, "isCompressed":Z
    :goto_1
    if-eqz v6, :cond_4

    .line 169
    const-string/jumbo v9, "Id3Decoder"

    const-string/jumbo v11, "Skipped ID3 tag with majorVersion=2 and undefined compression scheme"

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v10

    .line 170
    goto :goto_0

    .end local v6    # "isCompressed":Z
    :cond_2
    move v6, v9

    .line 167
    goto :goto_1

    .line 172
    :cond_3
    const/4 v11, 0x3

    if-ne v8, v11, :cond_6

    .line 173
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_5

    move v3, v7

    .line 174
    .local v3, "hasExtendedHeader":Z
    :goto_2
    if-eqz v3, :cond_4

    .line 175
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 176
    .local v0, "extendedHeaderSize":I
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 177
    add-int/lit8 v10, v0, 0x4

    sub-int/2addr v2, v10

    .line 196
    .end local v0    # "extendedHeaderSize":I
    .end local v3    # "hasExtendedHeader":Z
    :cond_4
    :goto_3
    if-ge v8, v13, :cond_b

    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_b

    .line 197
    .local v7, "isUnsynchronized":Z
    :goto_4
    new-instance v9, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;

    invoke-direct {v9, v8, v7, v2}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;-><init>(IZI)V

    goto :goto_0

    .end local v7    # "isUnsynchronized":Z
    :cond_5
    move v3, v9

    .line 173
    goto :goto_2

    .line 179
    :cond_6
    if-ne v8, v13, :cond_a

    .line 180
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_8

    move v3, v7

    .line 181
    .restart local v3    # "hasExtendedHeader":Z
    :goto_5
    if-eqz v3, :cond_7

    .line 182
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v0

    .line 183
    .restart local v0    # "extendedHeaderSize":I
    add-int/lit8 v10, v0, -0x4

    invoke-virtual {p0, v10}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 184
    sub-int/2addr v2, v0

    .line 186
    .end local v0    # "extendedHeaderSize":I
    :cond_7
    and-int/lit8 v10, v1, 0x10

    if-eqz v10, :cond_9

    move v4, v7

    .line 187
    .local v4, "hasFooter":Z
    :goto_6
    if-eqz v4, :cond_4

    .line 188
    add-int/lit8 v2, v2, -0xa

    goto :goto_3

    .end local v3    # "hasExtendedHeader":Z
    .end local v4    # "hasFooter":Z
    :cond_8
    move v3, v9

    .line 180
    goto :goto_5

    .restart local v3    # "hasExtendedHeader":Z
    :cond_9
    move v4, v9

    .line 186
    goto :goto_6

    .line 191
    .end local v3    # "hasExtendedHeader":Z
    :cond_a
    const-string/jumbo v9, "Id3Decoder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Skipped ID3 tag with unsupported majorVersion="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v10

    .line 192
    goto/16 :goto_0

    :cond_b
    move v7, v9

    .line 196
    goto :goto_4
.end method

.method private static decodePrivFrame(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer2/metadata/id3/PrivFrame;
    .locals 7
    .param p0, "id3Data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 480
    new-array v0, p1, [B

    .line 481
    .local v0, "data":[B
    invoke-virtual {p0, v0, v6, p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 483
    invoke-static {v0, v6}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v2

    .line 484
    .local v2, "ownerEndIndex":I
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v5, "ISO-8859-1"

    invoke-direct {v1, v0, v6, v2, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 487
    .local v1, "owner":Ljava/lang/String;
    add-int/lit8 v4, v2, 0x1

    .line 488
    .local v4, "privateDataStartIndex":I
    array-length v5, v0

    if-ge v4, v5, :cond_0

    .line 489
    array-length v5, v0

    invoke-static {v0, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 494
    .local v3, "privateData":[B
    :goto_0
    new-instance v5, Lorg/telegram/messenger/exoplayer2/metadata/id3/PrivFrame;

    invoke-direct {v5, v1, v3}, Lorg/telegram/messenger/exoplayer2/metadata/id3/PrivFrame;-><init>(Ljava/lang/String;[B)V

    return-object v5

    .line 491
    .end local v3    # "privateData":[B
    :cond_0
    new-array v3, v6, [B

    .restart local v3    # "privateData":[B
    goto :goto_0
.end method

.method private static decodeTextInformationFrame(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;
    .locals 8
    .param p0, "id3Data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 422
    const/4 v6, 0x1

    if-ge p1, v6, :cond_0

    .line 436
    :goto_0
    return-object v5

    .line 427
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 428
    .local v2, "encoding":I
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, "charset":Ljava/lang/String;
    add-int/lit8 v6, p1, -0x1

    new-array v1, v6, [B

    .line 431
    .local v1, "data":[B
    add-int/lit8 v6, p1, -0x1

    invoke-virtual {p0, v1, v7, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 433
    invoke-static {v1, v7, v2}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v4

    .line 434
    .local v4, "valueEndIndex":I
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1, v7, v4, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 436
    .local v3, "value":Ljava/lang/String;
    new-instance v6, Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;

    invoke-direct {v6, p2, v5, v3}, Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    goto :goto_0
.end method

.method private static decodeTxxxFrame(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;
    .locals 10
    .param p0, "id3Data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 394
    const/4 v8, 0x1

    if-ge p1, v8, :cond_0

    .line 396
    const/4 v8, 0x0

    .line 417
    :goto_0
    return-object v8

    .line 399
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 400
    .local v4, "encoding":I
    invoke-static {v4}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, "charset":Ljava/lang/String;
    add-int/lit8 v8, p1, -0x1

    new-array v1, v8, [B

    .line 403
    .local v1, "data":[B
    add-int/lit8 v8, p1, -0x1

    invoke-virtual {p0, v1, v9, v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 405
    invoke-static {v1, v9, v4}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v3

    .line 406
    .local v3, "descriptionEndIndex":I
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, v9, v3, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 409
    .local v2, "description":Ljava/lang/String;
    invoke-static {v4}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v8

    add-int v7, v3, v8

    .line 410
    .local v7, "valueStartIndex":I
    array-length v8, v1

    if-ge v7, v8, :cond_1

    .line 411
    invoke-static {v1, v7, v4}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v6

    .line 412
    .local v6, "valueEndIndex":I
    new-instance v5, Ljava/lang/String;

    sub-int v8, v6, v7

    invoke-direct {v5, v1, v7, v8, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 417
    .end local v6    # "valueEndIndex":I
    .local v5, "value":Ljava/lang/String;
    :goto_1
    new-instance v8, Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;

    const-string/jumbo v9, "TXXX"

    invoke-direct {v8, v9, v2, v5}, Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 414
    .end local v5    # "value":Ljava/lang/String;
    :cond_1
    const-string/jumbo v5, ""

    .restart local v5    # "value":Ljava/lang/String;
    goto :goto_1
.end method

.method private static decodeUrlLinkFrame(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/metadata/id3/UrlLinkFrame;
    .locals 5
    .param p0, "id3Data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 469
    new-array v0, p1, [B

    .line 470
    .local v0, "data":[B
    invoke-virtual {p0, v0, v4, p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 472
    invoke-static {v0, v4}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v2

    .line 473
    .local v2, "urlEndIndex":I
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v3, "ISO-8859-1"

    invoke-direct {v1, v0, v4, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 475
    .local v1, "url":Ljava/lang/String;
    new-instance v3, Lorg/telegram/messenger/exoplayer2/metadata/id3/UrlLinkFrame;

    const/4 v4, 0x0

    invoke-direct {v3, p2, v4, v1}, Lorg/telegram/messenger/exoplayer2/metadata/id3/UrlLinkFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private static decodeWxxxFrame(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer2/metadata/id3/UrlLinkFrame;
    .locals 10
    .param p0, "id3Data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 441
    const/4 v8, 0x1

    if-ge p1, v8, :cond_0

    .line 443
    const/4 v8, 0x0

    .line 464
    :goto_0
    return-object v8

    .line 446
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 447
    .local v4, "encoding":I
    invoke-static {v4}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, "charset":Ljava/lang/String;
    add-int/lit8 v8, p1, -0x1

    new-array v1, v8, [B

    .line 450
    .local v1, "data":[B
    add-int/lit8 v8, p1, -0x1

    invoke-virtual {p0, v1, v9, v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 452
    invoke-static {v1, v9, v4}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v3

    .line 453
    .local v3, "descriptionEndIndex":I
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, v9, v3, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 456
    .local v2, "description":Ljava/lang/String;
    invoke-static {v4}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v8

    add-int v7, v3, v8

    .line 457
    .local v7, "urlStartIndex":I
    array-length v8, v1

    if-ge v7, v8, :cond_1

    .line 458
    invoke-static {v1, v7}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v6

    .line 459
    .local v6, "urlEndIndex":I
    new-instance v5, Ljava/lang/String;

    sub-int v8, v6, v7

    const-string/jumbo v9, "ISO-8859-1"

    invoke-direct {v5, v1, v7, v8, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 464
    .end local v6    # "urlEndIndex":I
    .local v5, "url":Ljava/lang/String;
    :goto_1
    new-instance v8, Lorg/telegram/messenger/exoplayer2/metadata/id3/UrlLinkFrame;

    const-string/jumbo v9, "WXXX"

    invoke-direct {v8, v9, v2, v5}, Lorg/telegram/messenger/exoplayer2/metadata/id3/UrlLinkFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 461
    .end local v5    # "url":Ljava/lang/String;
    :cond_1
    const-string/jumbo v5, ""

    .restart local v5    # "url":Ljava/lang/String;
    goto :goto_1
.end method

.method private static delimiterLength(I)I
    .locals 1
    .param p0, "encodingByte"    # I

    .prologue
    .line 748
    if-eqz p0, :cond_0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private static getCharsetName(I)Ljava/lang/String;
    .locals 1
    .param p0, "encodingByte"    # I

    .prologue
    .line 699
    packed-switch p0, :pswitch_data_0

    .line 709
    const-string/jumbo v0, "ISO-8859-1"

    :goto_0
    return-object v0

    .line 701
    :pswitch_0
    const-string/jumbo v0, "ISO-8859-1"

    goto :goto_0

    .line 703
    :pswitch_1
    const-string/jumbo v0, "UTF-16"

    goto :goto_0

    .line 705
    :pswitch_2
    const-string/jumbo v0, "UTF-16BE"

    goto :goto_0

    .line 707
    :pswitch_3
    const-string/jumbo v0, "UTF-8"

    goto :goto_0

    .line 699
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getFrameId(IIIII)Ljava/lang/String;
    .locals 8
    .param p0, "majorVersion"    # I
    .param p1, "frameId0"    # I
    .param p2, "frameId1"    # I
    .param p3, "frameId2"    # I
    .param p4, "frameId3"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 715
    if-ne p0, v4, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "%c%c%c"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "%c%c%c%c"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 716
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static indexOfEos([BII)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "fromIndex"    # I
    .param p2, "encoding"    # I

    .prologue
    .line 720
    invoke-static {p0, p1}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v0

    .line 723
    .local v0, "terminationPos":I
    if-eqz p2, :cond_0

    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    :cond_0
    move v1, v0

    .line 735
    :goto_0
    return v1

    .line 732
    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-static {p0, v1}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v0

    .line 728
    :cond_2
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3

    .line 729
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p0, v1

    if-nez v1, :cond_1

    move v1, v0

    .line 730
    goto :goto_0

    .line 735
    :cond_3
    array-length v1, p0

    goto :goto_0
.end method

.method private static indexOfZeroByte([BI)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "fromIndex"    # I

    .prologue
    .line 739
    move v0, p1

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 740
    aget-byte v1, p0, v0

    if-nez v1, :cond_0

    .line 744
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 739
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 744
    :cond_1
    array-length v0, p0

    goto :goto_1
.end method

.method private static removeUnsynchronization(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)I
    .locals 5
    .param p0, "data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p1, "length"    # I

    .prologue
    .line 682
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    .line 683
    .local v0, "bytes":[B
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    .local v1, "i":I
    :goto_0
    add-int/lit8 v2, v1, 0x1

    if-ge v2, p1, :cond_1

    .line 684
    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v1, 0x1

    aget-byte v2, v0, v2

    if-nez v2, :cond_0

    .line 685
    add-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v1, 0x1

    sub-int v4, p1, v1

    add-int/lit8 v4, v4, -0x2

    invoke-static {v0, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 686
    add-int/lit8 p1, p1, -0x1

    .line 683
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 689
    :cond_1
    return p1
.end method

.method private static validateFrames(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;IIZ)Z
    .locals 16
    .param p0, "id3Data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p1, "majorVersion"    # I
    .param p2, "frameHeaderSize"    # I
    .param p3, "unsignedIntFrameSizeHack"    # Z

    .prologue
    .line 202
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v9

    .line 204
    .local v9, "startPosition":I
    :goto_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v10

    move/from16 v0, p2

    if-lt v10, v0, :cond_e

    .line 209
    const/4 v10, 0x3

    move/from16 v0, p1

    if-lt v0, v10, :cond_0

    .line 210
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v7

    .line 211
    .local v7, "id":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    .line 212
    .local v4, "frameSize":J
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 219
    .local v2, "flags":I
    :goto_1
    if-nez v7, :cond_1

    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-nez v10, :cond_1

    if-nez v2, :cond_1

    .line 221
    const/4 v10, 0x1

    .line 259
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 257
    .end local v2    # "flags":I
    .end local v4    # "frameSize":J
    .end local v7    # "id":I
    :goto_2
    return v10

    .line 214
    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v7

    .line 215
    .restart local v7    # "id":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    int-to-long v4, v10

    .line 216
    .restart local v4    # "frameSize":J
    const/4 v2, 0x0

    .restart local v2    # "flags":I
    goto :goto_1

    .line 223
    :cond_1
    const/4 v10, 0x4

    move/from16 v0, p1

    if-ne v0, v10, :cond_3

    if-nez p3, :cond_3

    .line 225
    const-wide/32 v10, 0x808080

    and-long/2addr v10, v4

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_2

    .line 226
    const/4 v10, 0x0

    .line 259
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_2

    .line 228
    :cond_2
    const-wide/16 v10, 0xff

    and-long/2addr v10, v4

    const/16 v12, 0x8

    shr-long v12, v4, v12

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    const/4 v14, 0x7

    shl-long/2addr v12, v14

    or-long/2addr v10, v12

    const/16 v12, 0x10

    shr-long v12, v4, v12

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    const/16 v14, 0xe

    shl-long/2addr v12, v14

    or-long/2addr v10, v12

    const/16 v12, 0x18

    shr-long v12, v4, v12

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    const/16 v14, 0x15

    shl-long/2addr v12, v14

    or-long v4, v10, v12

    .line 231
    :cond_3
    const/4 v6, 0x0

    .line 232
    .local v6, "hasGroupIdentifier":Z
    const/4 v3, 0x0

    .line 233
    .local v3, "hasDataLength":Z
    const/4 v10, 0x4

    move/from16 v0, p1

    if-ne v0, v10, :cond_9

    .line 234
    and-int/lit8 v10, v2, 0x40

    if-eqz v10, :cond_7

    const/4 v6, 0x1

    .line 235
    :goto_3
    and-int/lit8 v10, v2, 0x1

    if-eqz v10, :cond_8

    const/4 v3, 0x1

    .line 241
    :cond_4
    :goto_4
    const/4 v8, 0x0

    .line 242
    .local v8, "minimumFrameSize":I
    if-eqz v6, :cond_5

    .line 243
    add-int/lit8 v8, v8, 0x1

    .line 245
    :cond_5
    if-eqz v3, :cond_6

    .line 246
    add-int/lit8 v8, v8, 0x4

    .line 248
    :cond_6
    int-to-long v10, v8

    cmp-long v10, v4, v10

    if-gez v10, :cond_c

    .line 249
    const/4 v10, 0x0

    .line 259
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_2

    .line 234
    .end local v8    # "minimumFrameSize":I
    :cond_7
    const/4 v6, 0x0

    goto :goto_3

    .line 235
    :cond_8
    const/4 v3, 0x0

    goto :goto_4

    .line 236
    :cond_9
    const/4 v10, 0x3

    move/from16 v0, p1

    if-ne v0, v10, :cond_4

    .line 237
    and-int/lit8 v10, v2, 0x20

    if-eqz v10, :cond_a

    const/4 v6, 0x1

    .line 239
    :goto_5
    and-int/lit16 v10, v2, 0x80

    if-eqz v10, :cond_b

    const/4 v3, 0x1

    :goto_6
    goto :goto_4

    .line 237
    :cond_a
    const/4 v6, 0x0

    goto :goto_5

    .line 239
    :cond_b
    const/4 v3, 0x0

    goto :goto_6

    .line 251
    .restart local v8    # "minimumFrameSize":I
    :cond_c
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v10

    int-to-long v10, v10

    cmp-long v10, v10, v4

    if-gez v10, :cond_d

    .line 252
    const/4 v10, 0x0

    .line 259
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto/16 :goto_2

    .line 254
    :cond_d
    long-to-int v10, v4

    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 259
    .end local v2    # "flags":I
    .end local v3    # "hasDataLength":Z
    .end local v4    # "frameSize":J
    .end local v6    # "hasGroupIdentifier":Z
    .end local v7    # "id":I
    .end local v8    # "minimumFrameSize":I
    :catchall_0
    move-exception v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    throw v10

    .line 257
    :cond_e
    const/4 v10, 0x1

    .line 259
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto/16 :goto_2
.end method


# virtual methods
.method public decode(Lorg/telegram/messenger/exoplayer2/metadata/MetadataInputBuffer;)Lorg/telegram/messenger/exoplayer2/metadata/Metadata;
    .locals 3
    .param p1, "inputBuffer"    # Lorg/telegram/messenger/exoplayer2/metadata/MetadataInputBuffer;

    .prologue
    .line 96
    iget-object v0, p1, Lorg/telegram/messenger/exoplayer2/metadata/MetadataInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 97
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->decode([BI)Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    move-result-object v1

    return-object v1
.end method

.method public decode([BI)Lorg/telegram/messenger/exoplayer2/metadata/Metadata;
    .locals 12
    .param p1, "data"    # [B
    .param p2, "size"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x4

    .line 108
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v4, "id3Frames":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;>;"
    new-instance v3, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-direct {v3, p1, p2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>([BI)V

    .line 111
    .local v3, "id3Data":Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->decodeHeader(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;

    move-result-object v5

    .line 112
    .local v5, "id3Header":Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;
    if-nez v5, :cond_0

    .line 142
    :goto_0
    return-object v8

    .line 116
    :cond_0
    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v6

    .line 117
    .local v6, "startPosition":I
    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$000(Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    const/4 v1, 0x6

    .line 118
    .local v1, "frameHeaderSize":I
    :goto_1
    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$100(Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v2

    .line 119
    .local v2, "framesSize":I
    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$200(Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 120
    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$100(Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v9

    invoke-static {v3, v9}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->removeUnsynchronization(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)I

    move-result v2

    .line 122
    :cond_1
    add-int v9, v6, v2

    invoke-virtual {v3, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 124
    const/4 v7, 0x0

    .line 125
    .local v7, "unsignedIntFrameSizeHack":Z
    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$000(Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v9

    const/4 v10, 0x0

    invoke-static {v3, v9, v1, v10}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->validateFrames(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;IIZ)Z

    move-result v9

    if-nez v9, :cond_2

    .line 126
    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$000(Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v9

    if-ne v9, v11, :cond_4

    const/4 v9, 0x1

    invoke-static {v3, v11, v1, v9}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->validateFrames(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;IIZ)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 127
    const/4 v7, 0x1

    .line 134
    :cond_2
    :goto_2
    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v8

    if-lt v8, v1, :cond_5

    .line 135
    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$000(Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v8

    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->framePredicate:Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;

    invoke-static {v8, v3, v7, v1, v9}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->decodeFrame(ILorg/telegram/messenger/exoplayer2/util/ParsableByteArray;ZILorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v0

    .line 137
    .local v0, "frame":Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    if-eqz v0, :cond_2

    .line 138
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 117
    .end local v0    # "frame":Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    .end local v1    # "frameHeaderSize":I
    .end local v2    # "framesSize":I
    .end local v7    # "unsignedIntFrameSizeHack":Z
    :cond_3
    const/16 v1, 0xa

    goto :goto_1

    .line 129
    .restart local v1    # "frameHeaderSize":I
    .restart local v2    # "framesSize":I
    .restart local v7    # "unsignedIntFrameSizeHack":Z
    :cond_4
    const-string/jumbo v9, "Id3Decoder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failed to validate ID3 tag with majorVersion="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$000(Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 142
    :cond_5
    new-instance v8, Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    invoke-direct {v8, v4}, Lorg/telegram/messenger/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    goto :goto_0
.end method
