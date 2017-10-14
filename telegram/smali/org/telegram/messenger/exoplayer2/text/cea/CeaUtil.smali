.class public final Lorg/telegram/messenger/exoplayer2/text/cea/CeaUtil;
.super Ljava/lang/Object;
.source "CeaUtil.java"


# static fields
.field private static final COUNTRY_CODE:I = 0xb5

.field private static final PAYLOAD_TYPE_CC:I = 0x4

.field private static final PROVIDER_CODE:I = 0x31

.field private static final TAG:Ljava/lang/String; = "CeaUtil"

.field private static final USER_DATA_TYPE_CODE:I = 0x3

.field private static final USER_ID:I = 0x47413934


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static consume(JLorg/telegram/messenger/exoplayer2/util/ParsableByteArray;[Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;)V
    .locals 16
    .param p0, "presentationTimeUs"    # J
    .param p2, "seiBuffer"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p3, "outputs"    # [Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    .prologue
    .line 46
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_4

    .line 47
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/exoplayer2/text/cea/CeaUtil;->readNon255TerminatedValue(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)I

    move-result v11

    .line 48
    .local v11, "payloadType":I
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/exoplayer2/text/cea/CeaUtil;->readNon255TerminatedValue(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)I

    move-result v10

    .line 50
    .local v10, "payloadSize":I
    const/4 v4, -0x1

    if-eq v10, v4, :cond_0

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    if-le v10, v4, :cond_1

    .line 52
    :cond_0
    const-string/jumbo v4, "CeaUtil"

    const-string/jumbo v5, "Skipping remainder of malformed SEI NAL unit."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_0

    .line 54
    :cond_1
    move-object/from16 v0, p2

    invoke-static {v11, v10, v0}, Lorg/telegram/messenger/exoplayer2/text/cea/CeaUtil;->isSeiMessageCea608(IILorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 57
    const/16 v4, 0x8

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 59
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    and-int/lit8 v2, v4, 0x1f

    .line 61
    .local v2, "ccCount":I
    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 64
    mul-int/lit8 v7, v2, 0x3

    .line 65
    .local v7, "sampleLength":I
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v12

    .line 66
    .local v12, "sampleStartPosition":I
    move-object/from16 v0, p3

    array-length v14, v0

    const/4 v4, 0x0

    move v13, v4

    :goto_1
    if-ge v13, v14, :cond_2

    aget-object v3, p3, v13

    .line 67
    .local v3, "output":Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 68
    move-object/from16 v0, p2

    invoke-interface {v3, v0, v7}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V

    .line 69
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide/from16 v4, p0

    invoke-interface/range {v3 .. v9}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    .line 66
    add-int/lit8 v4, v13, 0x1

    move v13, v4

    goto :goto_1

    .line 72
    .end local v3    # "output":Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;
    :cond_2
    mul-int/lit8 v4, v2, 0x3

    add-int/lit8 v4, v4, 0xa

    sub-int v4, v10, v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    .line 74
    .end local v2    # "ccCount":I
    .end local v7    # "sampleLength":I
    .end local v12    # "sampleStartPosition":I
    :cond_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    .line 77
    .end local v10    # "payloadSize":I
    .end local v11    # "payloadType":I
    :cond_4
    return-void
.end method

.method private static isSeiMessageCea608(IILorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Z
    .locals 7
    .param p0, "payloadType"    # I
    .param p1, "payloadLength"    # I
    .param p2, "payload"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    const/4 v5, 0x0

    .line 112
    const/4 v6, 0x4

    if-ne p0, v6, :cond_0

    const/16 v6, 0x8

    if-ge p1, v6, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v5

    .line 115
    :cond_1
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v2

    .line 116
    .local v2, "startPosition":I
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 117
    .local v0, "countryCode":I
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    .line 118
    .local v1, "providerCode":I
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 119
    .local v4, "userIdentifier":I
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 120
    .local v3, "userDataTypeCode":I
    invoke-virtual {p2, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 121
    const/16 v6, 0xb5

    if-ne v0, v6, :cond_0

    const/16 v6, 0x31

    if-ne v1, v6, :cond_0

    const v6, 0x47413934

    if-ne v4, v6, :cond_0

    const/4 v6, 0x3

    if-ne v3, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0
.end method

.method private static readNon255TerminatedValue(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)I
    .locals 3
    .param p0, "buffer"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    .line 89
    const/4 v1, 0x0

    .line 91
    .local v1, "value":I
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-nez v2, :cond_1

    .line 92
    const/4 v2, -0x1

    .line 97
    :goto_0
    return v2

    .line 94
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 95
    .local v0, "b":I
    add-int/2addr v1, v0

    .line 96
    const/16 v2, 0xff

    if-eq v0, v2, :cond_0

    move v2, v1

    .line 97
    goto :goto_0
.end method
