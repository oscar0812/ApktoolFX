.class public final Lorg/telegram/messenger/exoplayer2/util/CodecSpecificDataUtil;
.super Ljava/lang/Object;
.source "CodecSpecificDataUtil.java"


# static fields
.field private static final AUDIO_OBJECT_TYPE_AAC_LC:I = 0x2

.field private static final AUDIO_OBJECT_TYPE_ER_BSAC:I = 0x16

.field private static final AUDIO_OBJECT_TYPE_ESCAPE:I = 0x1f

.field private static final AUDIO_OBJECT_TYPE_PS:I = 0x1d

.field private static final AUDIO_OBJECT_TYPE_SBR:I = 0x5

.field private static final AUDIO_SPECIFIC_CONFIG_CHANNEL_CONFIGURATION_INVALID:I = -0x1

.field private static final AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

.field private static final AUDIO_SPECIFIC_CONFIG_FREQUENCY_INDEX_ARBITRARY:I = 0xf

.field private static final AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

.field private static final NAL_START_CODE:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    .line 32
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/telegram/messenger/exoplayer2/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    .line 50
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/telegram/messenger/exoplayer2/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

    return-void

    .line 28
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 32
    :array_1
    .array-data 4
        0x17700
        0x15888
        0xfa00
        0xbb80
        0xac44
        0x7d00
        0x5dc0
        0x5622
        0x3e80
        0x2ee0
        0x2b11
        0x1f40
        0x1cb6
    .end array-data

    .line 50
    :array_2
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x8
        -0x1
        -0x1
        -0x1
        0x7
        0x8
        -0x1
        0x8
        -0x1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildAacAudioSpecificConfig(III)[B
    .locals 4
    .param p0, "audioObjectType"    # I
    .param p1, "sampleRateIndex"    # I
    .param p2, "channelConfig"    # I

    .prologue
    .line 149
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 150
    .local v0, "specificConfig":[B
    const/4 v1, 0x0

    shl-int/lit8 v2, p0, 0x3

    and-int/lit16 v2, v2, 0xf8

    shr-int/lit8 v3, p1, 0x1

    and-int/lit8 v3, v3, 0x7

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 151
    const/4 v1, 0x1

    shl-int/lit8 v2, p1, 0x7

    and-int/lit16 v2, v2, 0x80

    shl-int/lit8 v3, p2, 0x3

    and-int/lit8 v3, v3, 0x78

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 152
    return-object v0
.end method

.method public static buildAacLcAudioSpecificConfig(II)[B
    .locals 6
    .param p0, "sampleRate"    # I
    .param p1, "numChannels"    # I

    .prologue
    const/4 v4, -0x1

    .line 120
    const/4 v2, -0x1

    .line 121
    .local v2, "sampleRateIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lorg/telegram/messenger/exoplayer2/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 122
    sget-object v3, Lorg/telegram/messenger/exoplayer2/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    aget v3, v3, v1

    if-ne p0, v3, :cond_0

    .line 123
    move v2, v1

    .line 121
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    :cond_1
    const/4 v0, -0x1

    .line 127
    .local v0, "channelConfig":I
    const/4 v1, 0x0

    :goto_1
    sget-object v3, Lorg/telegram/messenger/exoplayer2/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 128
    sget-object v3, Lorg/telegram/messenger/exoplayer2/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

    aget v3, v3, v1

    if-ne p1, v3, :cond_2

    .line 129
    move v0, v1

    .line 127
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 132
    :cond_3
    if-eq p0, v4, :cond_4

    if-ne v0, v4, :cond_5

    .line 133
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid sample rate or number of channels: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 136
    :cond_5
    const/4 v3, 0x2

    invoke-static {v3, v2, v0}, Lorg/telegram/messenger/exoplayer2/util/CodecSpecificDataUtil;->buildAacAudioSpecificConfig(III)[B

    move-result-object v3

    return-object v3
.end method

.method public static buildNalUnit([BII)[B
    .locals 4
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    const/4 v3, 0x0

    .line 164
    sget-object v1, Lorg/telegram/messenger/exoplayer2/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v1, v1

    add-int/2addr v1, p2

    new-array v0, v1, [B

    .line 165
    .local v0, "nalUnit":[B
    sget-object v1, Lorg/telegram/messenger/exoplayer2/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    sget-object v2, Lorg/telegram/messenger/exoplayer2/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    sget-object v1, Lorg/telegram/messenger/exoplayer2/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v1, v1

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    return-object v0
.end method

.method private static findNalStartCode([BI)I
    .locals 4
    .param p0, "data"    # [B
    .param p1, "index"    # I

    .prologue
    .line 211
    array-length v2, p0

    sget-object v3, Lorg/telegram/messenger/exoplayer2/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v3, v3

    sub-int v0, v2, v3

    .line 212
    .local v0, "endIndex":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 213
    invoke-static {p0, v1}, Lorg/telegram/messenger/exoplayer2/util/CodecSpecificDataUtil;->isNalStartCode([BI)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 212
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private static getAacAudioObjectType(Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;)I
    .locals 2
    .param p0, "bitArray"    # Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    .prologue
    .line 246
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 247
    .local v0, "audioObjectType":I
    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    .line 248
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    add-int/lit8 v0, v1, 0x20

    .line 250
    :cond_0
    return v0
.end method

.method private static getAacSamplingFrequency(Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;)I
    .locals 3
    .param p0, "bitArray"    # Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    .prologue
    .line 262
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 263
    .local v0, "frequencyIndex":I
    const/16 v2, 0xf

    if-ne v0, v2, :cond_0

    .line 264
    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 269
    .local v1, "samplingFrequency":I
    :goto_0
    return v1

    .line 266
    .end local v1    # "samplingFrequency":I
    :cond_0
    const/16 v2, 0xd

    if-ge v0, v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 267
    sget-object v2, Lorg/telegram/messenger/exoplayer2/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    aget v1, v2, v0

    .restart local v1    # "samplingFrequency":I
    goto :goto_0

    .line 266
    .end local v1    # "samplingFrequency":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static isNalStartCode([BI)Z
    .locals 4
    .param p0, "data"    # [B
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 228
    array-length v2, p0

    sub-int/2addr v2, p1

    sget-object v3, Lorg/telegram/messenger/exoplayer2/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v3, v3

    if-gt v2, v3, :cond_1

    .line 236
    :cond_0
    :goto_0
    return v1

    .line 231
    :cond_1
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    sget-object v2, Lorg/telegram/messenger/exoplayer2/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 232
    add-int v2, p1, v0

    aget-byte v2, p0, v2

    sget-object v3, Lorg/telegram/messenger/exoplayer2/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    aget-byte v3, v3, v0

    if-ne v2, v3, :cond_0

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 236
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static parseAacAudioSpecificConfig([B)Landroid/util/Pair;
    .locals 7
    .param p0, "audioSpecificConfig"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    .line 90
    new-instance v1, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;-><init>([B)V

    .line 91
    .local v1, "bitArray":Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/CodecSpecificDataUtil;->getAacAudioObjectType(Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;)I

    move-result v0

    .line 92
    .local v0, "audioObjectType":I
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/CodecSpecificDataUtil;->getAacSamplingFrequency(Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;)I

    move-result v4

    .line 93
    .local v4, "sampleRate":I
    invoke-virtual {v1, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 94
    .local v2, "channelConfiguration":I
    const/4 v5, 0x5

    if-eq v0, v5, :cond_0

    const/16 v5, 0x1d

    if-ne v0, v5, :cond_1

    .line 100
    :cond_0
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/CodecSpecificDataUtil;->getAacSamplingFrequency(Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;)I

    move-result v4

    .line 101
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/CodecSpecificDataUtil;->getAacAudioObjectType(Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;)I

    move-result v0

    .line 102
    const/16 v5, 0x16

    if-ne v0, v5, :cond_1

    .line 104
    invoke-virtual {v1, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 107
    :cond_1
    sget-object v5, Lorg/telegram/messenger/exoplayer2/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

    aget v3, v5, v2

    .line 108
    .local v3, "channelCount":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    const/4 v5, 0x1

    :goto_0
    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 109
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    return-object v5

    .line 108
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static splitNalUnits([B)[[B
    .locals 9
    .param p0, "data"    # [B

    .prologue
    const/4 v8, 0x0

    .line 182
    invoke-static {p0, v8}, Lorg/telegram/messenger/exoplayer2/util/CodecSpecificDataUtil;->isNalStartCode([BI)Z

    move-result v7

    if-nez v7, :cond_0

    .line 184
    const/4 v7, 0x0

    check-cast v7, [[B

    .line 200
    :goto_0
    return-object v7

    .line 186
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v6, "starts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 189
    .local v3, "nalUnitIndex":I
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    sget-object v7, Lorg/telegram/messenger/exoplayer2/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v7, v7

    add-int/2addr v7, v3

    invoke-static {p0, v7}, Lorg/telegram/messenger/exoplayer2/util/CodecSpecificDataUtil;->findNalStartCode([BI)I

    move-result v3

    .line 191
    const/4 v7, -0x1

    if-ne v3, v7, :cond_1

    .line 192
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    new-array v4, v7, [[B

    .line 193
    .local v4, "split":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_3

    .line 194
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 195
    .local v5, "startIndex":I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_2

    add-int/lit8 v7, v1, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 196
    .local v0, "endIndex":I
    :goto_2
    sub-int v7, v0, v5

    new-array v2, v7, [B

    .line 197
    .local v2, "nal":[B
    array-length v7, v2

    invoke-static {p0, v5, v2, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    aput-object v2, v4, v1

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 195
    .end local v0    # "endIndex":I
    .end local v2    # "nal":[B
    :cond_2
    array-length v0, p0

    goto :goto_2

    .end local v5    # "startIndex":I
    :cond_3
    move-object v7, v4

    .line 200
    goto :goto_0
.end method
