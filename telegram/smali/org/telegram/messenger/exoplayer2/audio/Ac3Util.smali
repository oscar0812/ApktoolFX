.class public final Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;
.super Ljava/lang/Object;
.source "Ac3Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/audio/Ac3Util$Ac3SyncFrameInfo;
    }
.end annotation


# static fields
.field private static final AC3_SYNCFRAME_AUDIO_SAMPLE_COUNT:I = 0x600

.field private static final AUDIO_SAMPLES_PER_AUDIO_BLOCK:I = 0x100

.field private static final BITRATE_BY_HALF_FRMSIZECOD:[I

.field private static final BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

.field private static final CHANNEL_COUNT_BY_ACMOD:[I

.field private static final SAMPLE_RATE_BY_FSCOD:[I

.field private static final SAMPLE_RATE_BY_FSCOD2:[I

.field private static final SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x13

    const/4 v1, 0x3

    .line 80
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    .line 84
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    .line 88
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD2:[I

    .line 92
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    .line 96
    new-array v0, v2, [I

    fill-array-data v0, :array_4

    sput-object v0, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->BITRATE_BY_HALF_FRMSIZECOD:[I

    .line 101
    new-array v0, v2, [I

    fill-array-data v0, :array_5

    sput-object v0, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I

    return-void

    .line 80
    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x6
    .end array-data

    .line 84
    :array_1
    .array-data 4
        0xbb80
        0xac44
        0x7d00
    .end array-data

    .line 88
    :array_2
    .array-data 4
        0x5dc0
        0x5622
        0x3e80
    .end array-data

    .line 92
    :array_3
    .array-data 4
        0x2
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
    .end array-data

    .line 96
    :array_4
    .array-data 4
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
        0x180
        0x1c0
        0x200
        0x240
        0x280
    .end array-data

    .line 101
    :array_5
    .array-data 4
        0x45
        0x57
        0x68
        0x79
        0x8b
        0xae
        0xd0
        0xf3
        0x116
        0x15c
        0x1a1
        0x1e7
        0x22d
        0x2b8
        0x343
        0x3cf
        0x45a
        0x4e5
        0x571
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAc3SyncframeAudioSampleCount()I
    .locals 1

    .prologue
    .line 231
    const/16 v0, 0x600

    return v0
.end method

.method private static getAc3SyncframeSize(II)I
    .locals 5
    .param p0, "fscod"    # I
    .param p1, "frmsizecod"    # I

    .prologue
    .line 249
    div-int/lit8 v1, p1, 0x2

    .line 250
    .local v1, "halfFrmsizecod":I
    if-ltz p0, :cond_0

    sget-object v3, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    array-length v3, v3

    if-ge p0, v3, :cond_0

    if-ltz p1, :cond_0

    sget-object v3, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I

    array-length v3, v3

    if-lt v1, v3, :cond_1

    .line 253
    :cond_0
    const/4 v3, -0x1

    .line 263
    :goto_0
    return v3

    .line 255
    :cond_1
    sget-object v3, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v2, v3, p0

    .line 256
    .local v2, "sampleRate":I
    const v3, 0xac44

    if-ne v2, v3, :cond_2

    .line 257
    sget-object v3, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I

    aget v3, v3, v1

    rem-int/lit8 v4, p1, 0x2

    add-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 259
    :cond_2
    sget-object v3, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->BITRATE_BY_HALF_FRMSIZECOD:[I

    aget v0, v3, v1

    .line 260
    .local v0, "bitrate":I
    const/16 v3, 0x7d00

    if-ne v2, v3, :cond_3

    .line 261
    mul-int/lit8 v3, v0, 0x6

    goto :goto_0

    .line 263
    :cond_3
    mul-int/lit8 v3, v0, 0x4

    goto :goto_0
.end method

.method public static parseAc3AnnexFFormat(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 13
    .param p0, "data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "drmInitData"    # Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    .prologue
    .line 116
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v11, v0, 0x6

    .line 117
    .local v11, "fscod":I
    sget-object v0, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v6, v0, v11

    .line 118
    .local v6, "sampleRate":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v12

    .line 119
    .local v12, "nextByte":I
    sget-object v0, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    and-int/lit8 v1, v12, 0x38

    shr-int/lit8 v1, v1, 0x3

    aget v5, v0, v1

    .line 120
    .local v5, "channelCount":I
    and-int/lit8 v0, v12, 0x4

    if-eqz v0, :cond_0

    .line 121
    add-int/lit8 v5, v5, 0x1

    .line 123
    :cond_0
    const-string/jumbo v1, "audio/ac3"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p1

    move-object/from16 v8, p3

    move-object v10, p2

    invoke-static/range {v0 .. v10}, Lorg/telegram/messenger/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static parseAc3SyncframeInfo(Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;)Lorg/telegram/messenger/exoplayer2/audio/Ac3Util$Ac3SyncFrameInfo;
    .locals 15
    .param p0, "data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    .prologue
    .line 162
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->getPosition()I

    move-result v11

    .line 163
    .local v11, "initialPosition":I
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 164
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    const/16 v6, 0x10

    if-ne v0, v6, :cond_0

    const/4 v12, 0x1

    .line 165
    .local v12, "isEac3":Z
    :goto_0
    invoke-virtual {p0, v11}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 171
    if-eqz v12, :cond_2

    .line 172
    const-string/jumbo v1, "audio/eac3"

    .line 173
    .local v1, "mimeType":Ljava/lang/String;
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 174
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v4, v0, 0x2

    .line 175
    .local v4, "frameSize":I
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v10

    .line 177
    .local v10, "fscod":I
    const/4 v0, 0x3

    if-ne v10, v0, :cond_1

    .line 178
    sget-object v0, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD2:[I

    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    aget v3, v0, v6

    .line 179
    .local v3, "sampleRate":I
    const/4 v8, 0x6

    .line 185
    .local v8, "audioBlocks":I
    :goto_1
    mul-int/lit16 v5, v8, 0x100

    .line 186
    .local v5, "sampleCount":I
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 207
    .end local v8    # "audioBlocks":I
    .local v7, "acmod":I
    :goto_2
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v13

    .line 208
    .local v13, "lfeon":Z
    sget-object v0, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    aget v6, v0, v7

    if-eqz v13, :cond_6

    const/4 v0, 0x1

    :goto_3
    add-int v2, v6, v0

    .line 209
    .local v2, "channelCount":I
    new-instance v0, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util$Ac3SyncFrameInfo;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util$Ac3SyncFrameInfo;-><init>(Ljava/lang/String;IIIILorg/telegram/messenger/exoplayer2/audio/Ac3Util$1;)V

    return-object v0

    .line 164
    .end local v1    # "mimeType":Ljava/lang/String;
    .end local v2    # "channelCount":I
    .end local v3    # "sampleRate":I
    .end local v4    # "frameSize":I
    .end local v5    # "sampleCount":I
    .end local v7    # "acmod":I
    .end local v10    # "fscod":I
    .end local v12    # "isEac3":Z
    .end local v13    # "lfeon":Z
    :cond_0
    const/4 v12, 0x0

    goto :goto_0

    .line 181
    .restart local v1    # "mimeType":Ljava/lang/String;
    .restart local v4    # "frameSize":I
    .restart local v10    # "fscod":I
    .restart local v12    # "isEac3":Z
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v14

    .line 182
    .local v14, "numblkscod":I
    sget-object v0, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    aget v8, v0, v14

    .line 183
    .restart local v8    # "audioBlocks":I
    sget-object v0, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v3, v0, v10

    .restart local v3    # "sampleRate":I
    goto :goto_1

    .line 188
    .end local v1    # "mimeType":Ljava/lang/String;
    .end local v3    # "sampleRate":I
    .end local v4    # "frameSize":I
    .end local v8    # "audioBlocks":I
    .end local v10    # "fscod":I
    .end local v14    # "numblkscod":I
    :cond_2
    const-string/jumbo v1, "audio/ac3"

    .line 189
    .restart local v1    # "mimeType":Ljava/lang/String;
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 190
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v10

    .line 191
    .restart local v10    # "fscod":I
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v9

    .line 192
    .local v9, "frmsizecod":I
    invoke-static {v10, v9}, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->getAc3SyncframeSize(II)I

    move-result v4

    .line 193
    .restart local v4    # "frameSize":I
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 194
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 195
    .restart local v7    # "acmod":I
    and-int/lit8 v0, v7, 0x1

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    if-eq v7, v0, :cond_3

    .line 196
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 198
    :cond_3
    and-int/lit8 v0, v7, 0x4

    if-eqz v0, :cond_4

    .line 199
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 201
    :cond_4
    const/4 v0, 0x2

    if-ne v7, v0, :cond_5

    .line 202
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 204
    :cond_5
    sget-object v0, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v3, v0, v10

    .line 205
    .restart local v3    # "sampleRate":I
    const/16 v5, 0x600

    .restart local v5    # "sampleCount":I
    goto :goto_2

    .line 208
    .end local v9    # "frmsizecod":I
    .restart local v13    # "lfeon":Z
    :cond_6
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static parseAc3SyncframeSize([B)I
    .locals 5
    .param p0, "data"    # [B

    .prologue
    const/4 v4, 0x4

    .line 219
    array-length v2, p0

    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    .line 220
    const/4 v2, -0x1

    .line 224
    :goto_0
    return v2

    .line 222
    :cond_0
    aget-byte v2, p0, v4

    and-int/lit16 v2, v2, 0xc0

    shr-int/lit8 v1, v2, 0x6

    .line 223
    .local v1, "fscod":I
    aget-byte v2, p0, v4

    and-int/lit8 v0, v2, 0x3f

    .line 224
    .local v0, "frmsizecod":I
    invoke-static {v1, v0}, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->getAc3SyncframeSize(II)I

    move-result v2

    goto :goto_0
.end method

.method public static parseEAc3AnnexFFormat(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 13
    .param p0, "data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "drmInitData"    # Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    .prologue
    .line 139
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 143
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v11, v0, 0x6

    .line 144
    .local v11, "fscod":I
    sget-object v0, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v6, v0, v11

    .line 145
    .local v6, "sampleRate":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v12

    .line 146
    .local v12, "nextByte":I
    sget-object v0, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    and-int/lit8 v1, v12, 0xe

    shr-int/lit8 v1, v1, 0x1

    aget v5, v0, v1

    .line 147
    .local v5, "channelCount":I
    and-int/lit8 v0, v12, 0x1

    if-eqz v0, :cond_0

    .line 148
    add-int/lit8 v5, v5, 0x1

    .line 150
    :cond_0
    const-string/jumbo v1, "audio/eac3"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p1

    move-object/from16 v8, p3

    move-object v10, p2

    invoke-static/range {v0 .. v10}, Lorg/telegram/messenger/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static parseEAc3SyncframeAudioSampleCount(Ljava/nio/ByteBuffer;)I
    .locals 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 243
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xc0

    shr-int/lit8 v0, v1, 0x6

    .line 244
    .local v0, "fscod":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v1, 0x6

    .line 245
    :goto_0
    mul-int/lit16 v1, v1, 0x100

    .line 244
    return v1

    :cond_0
    sget-object v1, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    .line 245
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit8 v2, v2, 0x30

    shr-int/lit8 v2, v2, 0x4

    aget v1, v1, v2

    goto :goto_0
.end method
