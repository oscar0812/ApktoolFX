.class public final Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;
.super Ljava/lang/Object;
.source "H262Reader.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;
    }
.end annotation


# static fields
.field private static final FRAME_RATE_VALUES:[D

.field private static final START_EXTENSION:I = 0xb5

.field private static final START_GROUP:I = 0xb8

.field private static final START_PICTURE:I = 0x0

.field private static final START_SEQUENCE_HEADER:I = 0xb3


# instance fields
.field private final csdBuffer:Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;

.field private formatId:Ljava/lang/String;

.field private foundFirstFrameInGroup:Z

.field private frameDurationUs:J

.field private framePosition:J

.field private frameTimeUs:J

.field private hasOutputFormat:Z

.field private isKeyframe:Z

.field private output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

.field private pesPtsUsAvailable:Z

.field private pesTimeUs:J

.field private final prefixFlags:[Z

.field private totalBytesWritten:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0x8

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->FRAME_RATE_VALUES:[D

    return-void

    :array_0
    .array-data 8
        0x4037f9dcb5112287L    # 23.976023976023978
        0x4038000000000000L    # 24.0
        0x4039000000000000L    # 25.0
        0x403df853e2556b28L    # 29.97002997002997
        0x403e000000000000L    # 30.0
        0x4049000000000000L    # 50.0
        0x404df853e2556b28L    # 59.94005994005994
        0x404e000000000000L    # 60.0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->prefixFlags:[Z

    .line 68
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->csdBuffer:Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;

    .line 69
    return-void
.end method

.method private static parseCsdBuffer(Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;Ljava/lang/String;)Landroid/util/Pair;
    .locals 28
    .param p0, "csdBuffer"    # Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;
    .param p1, "formatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lorg/telegram/messenger/exoplayer2/Format;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->data:[B

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->length:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v15

    .line 179
    .local v15, "csdData":[B
    const/4 v2, 0x4

    aget-byte v2, v15, v2

    and-int/lit16 v0, v2, 0xff

    move/from16 v16, v0

    .line 180
    .local v16, "firstByte":I
    const/4 v2, 0x5

    aget-byte v2, v15, v2

    and-int/lit16 v0, v2, 0xff

    move/from16 v25, v0

    .line 181
    .local v25, "secondByte":I
    const/4 v2, 0x6

    aget-byte v2, v15, v2

    and-int/lit16 v0, v2, 0xff

    move/from16 v27, v0

    .line 182
    .local v27, "thirdByte":I
    shl-int/lit8 v2, v16, 0x4

    shr-int/lit8 v3, v25, 0x4

    or-int v7, v2, v3

    .line 183
    .local v7, "width":I
    and-int/lit8 v2, v25, 0xf

    shl-int/lit8 v2, v2, 0x8

    or-int v8, v2, v27

    .line 185
    .local v8, "height":I
    const/high16 v12, 0x3f800000    # 1.0f

    .line 186
    .local v12, "pixelWidthHeightRatio":F
    const/4 v2, 0x7

    aget-byte v2, v15, v2

    and-int/lit16 v2, v2, 0xf0

    shr-int/lit8 v14, v2, 0x4

    .line 187
    .local v14, "aspectRatioCode":I
    packed-switch v14, :pswitch_data_0

    .line 202
    :goto_0
    const-string/jumbo v3, "video/mpeg2"

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    .line 204
    invoke-static {v15}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const/4 v11, -0x1

    const/4 v13, 0x0

    move-object/from16 v2, p1

    .line 202
    invoke-static/range {v2 .. v13}, Lorg/telegram/messenger/exoplayer2/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v17

    .line 206
    .local v17, "format":Lorg/telegram/messenger/exoplayer2/Format;
    const-wide/16 v18, 0x0

    .line 207
    .local v18, "frameDurationUs":J
    const/4 v2, 0x7

    aget-byte v2, v15, v2

    and-int/lit8 v2, v2, 0xf

    add-int/lit8 v22, v2, -0x1

    .line 208
    .local v22, "frameRateCodeMinusOne":I
    if-ltz v22, :cond_1

    sget-object v2, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->FRAME_RATE_VALUES:[D

    array-length v2, v2

    move/from16 v0, v22

    if-ge v0, v2, :cond_1

    .line 209
    sget-object v2, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->FRAME_RATE_VALUES:[D

    aget-wide v20, v2, v22

    .line 210
    .local v20, "frameRate":D
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->sequenceExtensionPosition:I

    move/from16 v26, v0

    .line 211
    .local v26, "sequenceExtensionPosition":I
    add-int/lit8 v2, v26, 0x9

    aget-byte v2, v15, v2

    and-int/lit8 v2, v2, 0x60

    shr-int/lit8 v24, v2, 0x5

    .line 212
    .local v24, "frameRateExtensionN":I
    add-int/lit8 v2, v26, 0x9

    aget-byte v2, v15, v2

    and-int/lit8 v23, v2, 0x1f

    .line 213
    .local v23, "frameRateExtensionD":I
    move/from16 v0, v24

    move/from16 v1, v23

    if-eq v0, v1, :cond_0

    .line 214
    move/from16 v0, v24

    int-to-double v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    add-int/lit8 v4, v23, 0x1

    int-to-double v4, v4

    div-double/2addr v2, v4

    mul-double v20, v20, v2

    .line 216
    :cond_0
    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double v2, v2, v20

    double-to-long v0, v2

    move-wide/from16 v18, v0

    .line 219
    .end local v20    # "frameRate":D
    .end local v23    # "frameRateExtensionD":I
    .end local v24    # "frameRateExtensionN":I
    .end local v26    # "sequenceExtensionPosition":I
    :cond_1
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2

    .line 189
    .end local v17    # "format":Lorg/telegram/messenger/exoplayer2/Format;
    .end local v18    # "frameDurationUs":J
    .end local v22    # "frameRateCodeMinusOne":I
    :pswitch_0
    mul-int/lit8 v2, v8, 0x4

    int-to-float v2, v2

    mul-int/lit8 v3, v7, 0x3

    int-to-float v3, v3

    div-float v12, v2, v3

    .line 190
    goto :goto_0

    .line 192
    :pswitch_1
    mul-int/lit8 v2, v8, 0x10

    int-to-float v2, v2

    mul-int/lit8 v3, v7, 0x9

    int-to-float v3, v3

    div-float v12, v2, v3

    .line 193
    goto :goto_0

    .line 195
    :pswitch_2
    mul-int/lit8 v2, v8, 0x79

    int-to-float v2, v2

    mul-int/lit8 v3, v7, 0x64

    int-to-float v3, v3

    div-float v12, v2, v3

    .line 196
    goto :goto_0

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public consume(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V
    .locals 20
    .param p1, "data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    .line 97
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v13

    .line 98
    .local v13, "offset":I
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v12

    .line 99
    .local v12, "limit":I
    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    .line 102
    .local v10, "dataArray":[B
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->totalBytesWritten:J

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v18, v0

    add-long v4, v4, v18

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->totalBytesWritten:J

    .line 103
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v4}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V

    .line 105
    move v15, v13

    .line 107
    .local v15, "searchOffset":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->prefixFlags:[Z

    invoke-static {v10, v15, v12, v3}, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result v16

    .line 109
    .local v16, "startCodeOffset":I
    move/from16 v0, v16

    if-ne v0, v12, :cond_1

    .line 111
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->hasOutputFormat:Z

    if-nez v3, :cond_0

    .line 112
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->csdBuffer:Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;

    invoke-virtual {v3, v10, v13, v12}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->onData([BII)V

    .line 114
    :cond_0
    return-void

    .line 118
    :cond_1
    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    add-int/lit8 v4, v16, 0x3

    aget-byte v3, v3, v4

    and-int/lit16 v0, v3, 0xff

    move/from16 v17, v0

    .line 120
    .local v17, "startCodeValue":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->hasOutputFormat:Z

    if-nez v3, :cond_3

    .line 123
    sub-int v11, v16, v13

    .line 124
    .local v11, "lengthToStartCode":I
    if-lez v11, :cond_2

    .line 125
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->csdBuffer:Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;

    move/from16 v0, v16

    invoke-virtual {v3, v10, v13, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->onData([BII)V

    .line 129
    :cond_2
    if-gez v11, :cond_7

    neg-int v2, v11

    .line 130
    .local v2, "bytesAlreadyPassed":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->csdBuffer:Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;

    move/from16 v0, v17

    invoke-virtual {v3, v0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->onStartCode(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 132
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->csdBuffer:Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->formatId:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->parseCsdBuffer(Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v14

    .line 133
    .local v14, "result":Landroid/util/Pair;, "Landroid/util/Pair<Lorg/telegram/messenger/exoplayer2/Format;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    iget-object v3, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lorg/telegram/messenger/exoplayer2/Format;

    invoke-interface {v4, v3}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer2/Format;)V

    .line 134
    iget-object v3, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->frameDurationUs:J

    .line 135
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->hasOutputFormat:Z

    .line 139
    .end local v2    # "bytesAlreadyPassed":I
    .end local v11    # "lengthToStartCode":I
    .end local v14    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Lorg/telegram/messenger/exoplayer2/Format;Ljava/lang/Long;>;"
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->hasOutputFormat:Z

    if-eqz v3, :cond_6

    const/16 v3, 0xb8

    move/from16 v0, v17

    if-eq v0, v3, :cond_4

    if-nez v17, :cond_6

    .line 140
    :cond_4
    sub-int v8, v12, v16

    .line 141
    .local v8, "bytesWrittenPastStartCode":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->foundFirstFrameInGroup:Z

    if-eqz v3, :cond_5

    .line 142
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->isKeyframe:Z

    if-eqz v3, :cond_8

    const/4 v6, 0x1

    .line 143
    .local v6, "flags":I
    :goto_2
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->totalBytesWritten:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->framePosition:J

    move-wide/from16 v18, v0

    sub-long v4, v4, v18

    long-to-int v3, v4

    sub-int v7, v3, v8

    .line 144
    .local v7, "size":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->frameTimeUs:J

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    .line 145
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->isKeyframe:Z

    .line 147
    .end local v6    # "flags":I
    .end local v7    # "size":I
    :cond_5
    const/16 v3, 0xb8

    move/from16 v0, v17

    if-ne v0, v3, :cond_9

    .line 148
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->foundFirstFrameInGroup:Z

    .line 149
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->isKeyframe:Z

    .line 158
    .end local v8    # "bytesWrittenPastStartCode":I
    :cond_6
    :goto_3
    move/from16 v13, v16

    .line 159
    add-int/lit8 v15, v13, 0x3

    .line 160
    goto/16 :goto_0

    .line 129
    .restart local v11    # "lengthToStartCode":I
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 142
    .end local v11    # "lengthToStartCode":I
    .restart local v8    # "bytesWrittenPastStartCode":I
    :cond_8
    const/4 v6, 0x0

    goto :goto_2

    .line 151
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->pesPtsUsAvailable:Z

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->pesTimeUs:J

    :goto_4
    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->frameTimeUs:J

    .line 152
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->totalBytesWritten:J

    int-to-long v0, v8

    move-wide/from16 v18, v0

    sub-long v4, v4, v18

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->framePosition:J

    .line 153
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->pesPtsUsAvailable:Z

    .line 154
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->foundFirstFrameInGroup:Z

    goto :goto_3

    .line 151
    :cond_a
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->frameTimeUs:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->frameDurationUs:J

    move-wide/from16 v18, v0

    add-long v4, v4, v18

    goto :goto_4
.end method

.method public createTracks(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 2
    .param p1, "extractorOutput"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;
    .param p2, "idGenerator"    # Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .prologue
    .line 82
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 83
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->formatId:Ljava/lang/String;

    .line 84
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->track(II)Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    .line 85
    return-void
.end method

.method public packetFinished()V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method public packetStarted(JZ)V
    .locals 3
    .param p1, "pesTimeUs"    # J
    .param p3, "dataAlignmentIndicator"    # Z

    .prologue
    .line 89
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->pesPtsUsAvailable:Z

    .line 90
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->pesPtsUsAvailable:Z

    if-eqz v0, :cond_0

    .line 91
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->pesTimeUs:J

    .line 93
    :cond_0
    return-void

    .line 89
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public seek()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->prefixFlags:[Z

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 74
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->csdBuffer:Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->reset()V

    .line 75
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->pesPtsUsAvailable:Z

    .line 76
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->foundFirstFrameInGroup:Z

    .line 77
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->totalBytesWritten:J

    .line 78
    return-void
.end method
