.class public final Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;
.super Ljava/lang/Object;
.source "AdtsReader.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;


# static fields
.field private static final CRC_SIZE:I = 0x2

.field private static final HEADER_SIZE:I = 0x5

.field private static final ID3_HEADER_SIZE:I = 0xa

.field private static final ID3_IDENTIFIER:[B

.field private static final ID3_SIZE_OFFSET:I = 0x6

.field private static final MATCH_STATE_FF:I = 0x200

.field private static final MATCH_STATE_I:I = 0x300

.field private static final MATCH_STATE_ID:I = 0x400

.field private static final MATCH_STATE_START:I = 0x100

.field private static final MATCH_STATE_VALUE_SHIFT:I = 0x8

.field private static final STATE_FINDING_SAMPLE:I = 0x0

.field private static final STATE_READING_ADTS_HEADER:I = 0x2

.field private static final STATE_READING_ID3_HEADER:I = 0x1

.field private static final STATE_READING_SAMPLE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AdtsReader"


# instance fields
.field private final adtsScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

.field private bytesRead:I

.field private currentOutput:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

.field private currentSampleDuration:J

.field private final exposeId3:Z

.field private formatId:Ljava/lang/String;

.field private hasCrc:Z

.field private hasOutputFormat:Z

.field private final id3HeaderBuffer:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private id3Output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

.field private final language:Ljava/lang/String;

.field private matchState:I

.field private output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

.field private sampleDurationUs:J

.field private sampleSize:I

.field private state:I

.field private timeUs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->ID3_IDENTIFIER:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "exposeId3"    # Z

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;-><init>(ZLjava/lang/String;)V

    .line 91
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 3
    .param p1, "exposeId3"    # Z
    .param p2, "language"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x7

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    .line 99
    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    sget-object v1, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->ID3_IDENTIFIER:[B

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->id3HeaderBuffer:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .line 100
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->setFindingSampleState()V

    .line 101
    iput-boolean p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->exposeId3:Z

    .line 102
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->language:Ljava/lang/String;

    .line 103
    return-void
.end method

.method private continueRead(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;[BI)Z
    .locals 3
    .param p1, "source"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p2, "target"    # [B
    .param p3, "targetLength"    # I

    .prologue
    .line 170
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    sub-int v2, p3, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 171
    .local v0, "bytesToRead":I
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 172
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    .line 173
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    if-ne v1, p3, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private findNextSample(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V
    .locals 8
    .param p1, "pesBuffer"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    const/16 v7, 0x200

    const/16 v6, 0x100

    .line 228
    iget-object v0, p1, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    .line 229
    .local v0, "adtsData":[B
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v3

    .line 230
    .local v3, "position":I
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v2

    .local v2, "endOffset":I
    move v4, v3

    .line 231
    .end local v3    # "position":I
    .local v4, "position":I
    :goto_0
    if-ge v4, v2, :cond_3

    .line 232
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "position":I
    .restart local v3    # "position":I
    aget-byte v5, v0, v4

    and-int/lit16 v1, v5, 0xff

    .line 233
    .local v1, "data":I
    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->matchState:I

    if-ne v5, v7, :cond_1

    const/16 v5, 0xf0

    if-lt v1, v5, :cond_1

    const/16 v5, 0xff

    if-eq v1, v5, :cond_1

    .line 234
    and-int/lit8 v5, v1, 0x1

    if-nez v5, :cond_0

    const/4 v5, 0x1

    :goto_1
    iput-boolean v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->hasCrc:Z

    .line 235
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->setReadingAdtsHeaderState()V

    .line 236
    invoke-virtual {p1, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 264
    .end local v1    # "data":I
    :goto_2
    return-void

    .line 234
    .restart local v1    # "data":I
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 239
    :cond_1
    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->matchState:I

    or-int/2addr v5, v1

    sparse-switch v5, :sswitch_data_0

    .line 254
    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->matchState:I

    if-eq v5, v6, :cond_2

    .line 257
    iput v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->matchState:I

    .line 258
    add-int/lit8 v3, v3, -0x1

    :cond_2
    :goto_3
    move v4, v3

    .line 262
    .end local v3    # "position":I
    .restart local v4    # "position":I
    goto :goto_0

    .line 241
    .end local v4    # "position":I
    .restart local v3    # "position":I
    :sswitch_0
    iput v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->matchState:I

    goto :goto_3

    .line 244
    :sswitch_1
    const/16 v5, 0x300

    iput v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->matchState:I

    goto :goto_3

    .line 247
    :sswitch_2
    const/16 v5, 0x400

    iput v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->matchState:I

    goto :goto_3

    .line 250
    :sswitch_3
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->setReadingId3HeaderState()V

    .line 251
    invoke-virtual {p1, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_2

    .line 263
    .end local v1    # "data":I
    .end local v3    # "position":I
    .restart local v4    # "position":I
    :cond_3
    invoke-virtual {p1, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    move v3, v4

    .line 264
    .end local v4    # "position":I
    .restart local v3    # "position":I
    goto :goto_2

    .line 239
    :sswitch_data_0
    .sparse-switch
        0x149 -> :sswitch_1
        0x1ff -> :sswitch_0
        0x344 -> :sswitch_2
        0x433 -> :sswitch_3
    .end sparse-switch
.end method

.method private parseAdtsHeader()V
    .locals 19

    .prologue
    .line 280
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 282
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->hasOutputFormat:Z

    if-nez v2, :cond_2

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    add-int/lit8 v13, v2, 0x1

    .line 284
    .local v13, "audioObjectType":I
    const/4 v2, 0x2

    if-eq v13, v2, :cond_0

    .line 294
    const-string/jumbo v2, "AdtsReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Detected audio object type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", but assuming AAC LC."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const/4 v13, 0x2

    .line 298
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v18

    .line 299
    .local v18, "sampleRateIndex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v16

    .line 302
    .local v16, "channelConfig":I
    move/from16 v0, v18

    move/from16 v1, v16

    invoke-static {v13, v0, v1}, Lorg/telegram/messenger/exoplayer2/util/CodecSpecificDataUtil;->buildAacAudioSpecificConfig(III)[B

    move-result-object v15

    .line 304
    .local v15, "audioSpecificConfig":[B
    invoke-static {v15}, Lorg/telegram/messenger/exoplayer2/util/CodecSpecificDataUtil;->parseAacAudioSpecificConfig([B)Landroid/util/Pair;

    move-result-object v14

    .line 307
    .local v14, "audioParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->formatId:Ljava/lang/String;

    const-string/jumbo v3, "audio/mp4a-latm"

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    iget-object v8, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    .line 308
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 309
    invoke-static {v15}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->language:Ljava/lang/String;

    .line 307
    invoke-static/range {v2 .. v12}, Lorg/telegram/messenger/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v17

    .line 312
    .local v17, "format":Lorg/telegram/messenger/exoplayer2/Format;
    const-wide/32 v2, 0x3d090000

    move-object/from16 v0, v17

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/Format;->sampleRate:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->sampleDurationUs:J

    .line 313
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer2/Format;)V

    .line 314
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->hasOutputFormat:Z

    .line 319
    .end local v13    # "audioObjectType":I
    .end local v14    # "audioParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v15    # "audioSpecificConfig":[B
    .end local v16    # "channelConfig":I
    .end local v17    # "format":Lorg/telegram/messenger/exoplayer2/Format;
    .end local v18    # "sampleRateIndex":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 320
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    add-int/lit8 v7, v2, -0x5

    .line 321
    .local v7, "sampleSize":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->hasCrc:Z

    if-eqz v2, :cond_1

    .line 322
    add-int/lit8 v7, v7, -0x2

    .line 325
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->sampleDurationUs:J

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->setReadingSampleState(Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;JII)V

    .line 326
    return-void

    .line 316
    .end local v7    # "sampleSize":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0
.end method

.method private parseId3Header()V
    .locals 6

    .prologue
    const/16 v4, 0xa

    .line 270
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->id3Output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->id3HeaderBuffer:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-interface {v0, v1, v4}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V

    .line 271
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->id3HeaderBuffer:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 272
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->id3Output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->id3HeaderBuffer:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .line 273
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v0

    add-int/lit8 v5, v0, 0xa

    move-object v0, p0

    .line 272
    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->setReadingSampleState(Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;JII)V

    .line 274
    return-void
.end method

.method private readSample(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V
    .locals 8
    .param p1, "data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    .line 332
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->sampleSize:I

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 333
    .local v0, "bytesToRead":I
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->currentOutput:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V

    .line 334
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    .line 335
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->sampleSize:I

    if-ne v1, v2, :cond_0

    .line 336
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->currentOutput:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->timeUs:J

    const/4 v4, 0x1

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->sampleSize:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    .line 337
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->timeUs:J

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->currentSampleDuration:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->timeUs:J

    .line 338
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->setFindingSampleState()V

    .line 340
    :cond_0
    return-void
.end method

.method private setFindingSampleState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 180
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->state:I

    .line 181
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    .line 182
    const/16 v0, 0x100

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->matchState:I

    .line 183
    return-void
.end method

.method private setReadingAdtsHeaderState()V
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->state:I

    .line 218
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    .line 219
    return-void
.end method

.method private setReadingId3HeaderState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 190
    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->state:I

    .line 191
    sget-object v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->ID3_IDENTIFIER:[B

    array-length v0, v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    .line 192
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->sampleSize:I

    .line 193
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->id3HeaderBuffer:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 194
    return-void
.end method

.method private setReadingSampleState(Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;JII)V
    .locals 2
    .param p1, "outputToUse"    # Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;
    .param p2, "currentSampleDuration"    # J
    .param p4, "priorReadBytes"    # I
    .param p5, "sampleSize"    # I

    .prologue
    .line 206
    const/4 v0, 0x3

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->state:I

    .line 207
    iput p4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    .line 208
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->currentOutput:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    .line 209
    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->currentSampleDuration:J

    .line 210
    iput p5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->sampleSize:I

    .line 211
    return-void
.end method


# virtual methods
.method public consume(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V
    .locals 3
    .param p1, "data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    .line 132
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-lez v1, :cond_2

    .line 133
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->state:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 135
    :pswitch_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->findNextSample(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V

    goto :goto_0

    .line 138
    :pswitch_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->id3HeaderBuffer:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v2, 0xa

    invoke-direct {p0, p1, v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->continueRead(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;[BI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->parseId3Header()V

    goto :goto_0

    .line 143
    :pswitch_2
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->hasCrc:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x7

    .line 144
    .local v0, "targetLength":I
    :goto_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->data:[B

    invoke-direct {p0, p1, v1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->continueRead(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;[BI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->parseAdtsHeader()V

    goto :goto_0

    .line 143
    .end local v0    # "targetLength":I
    :cond_1
    const/4 v0, 0x5

    goto :goto_1

    .line 149
    :pswitch_3
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->readSample(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V

    goto :goto_0

    .line 153
    :cond_2
    return-void

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public createTracks(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 5
    .param p1, "extractorOutput"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;
    .param p2, "idGenerator"    # Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .prologue
    const/4 v4, 0x0

    .line 112
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 113
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->formatId:Ljava/lang/String;

    .line 114
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->track(II)Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    .line 115
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->exposeId3:Z

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 117
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x4

    invoke-interface {p1, v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->track(II)Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->id3Output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    .line 118
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->id3Output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "application/id3"

    const/4 v3, -0x1

    invoke-static {v1, v2, v4, v3, v4}, Lorg/telegram/messenger/exoplayer2/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer2/Format;)V

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/DummyTrackOutput;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/extractor/DummyTrackOutput;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->id3Output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    goto :goto_0
.end method

.method public packetFinished()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method public packetStarted(JZ)V
    .locals 1
    .param p1, "pesTimeUs"    # J
    .param p3, "dataAlignmentIndicator"    # Z

    .prologue
    .line 127
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->timeUs:J

    .line 128
    return-void
.end method

.method public seek()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->setFindingSampleState()V

    .line 108
    return-void
.end method
