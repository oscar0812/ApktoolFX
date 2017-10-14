.class public final Lorg/telegram/messenger/exoplayer2/audio/DtsUtil;
.super Ljava/lang/Object;
.source "DtsUtil.java"


# static fields
.field private static final CHANNELS_BY_AMODE:[I

.field private static final SAMPLE_RATE_BY_SFREQ:[I

.field private static final TWICE_BITRATE_KBPS_BY_RATE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 32
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/audio/DtsUtil;->CHANNELS_BY_AMODE:[I

    .line 38
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/telegram/messenger/exoplayer2/audio/DtsUtil;->SAMPLE_RATE_BY_SFREQ:[I

    .line 44
    const/16 v0, 0x1d

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/telegram/messenger/exoplayer2/audio/DtsUtil;->TWICE_BITRATE_KBPS_BY_RATE:[I

    return-void

    .line 32
    :array_0
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x6
        0x6
        0x6
        0x7
        0x8
        0x8
    .end array-data

    .line 38
    :array_1
    .array-data 4
        -0x1
        0x1f40
        0x3e80
        0x7d00
        -0x1
        -0x1
        0x2b11
        0x5622
        0xac44
        -0x1
        -0x1
        0x2ee0
        0x5dc0
        0xbb80
        -0x1
        -0x1
    .end array-data

    .line 44
    :array_2
    .array-data 4
        0x40
        0x70
        0x80
        0xc0
        0xe0
        0x100
        0x180
        0x1c0
        0x200
        0x280
        0x300
        0x380
        0x400
        0x480
        0x500
        0x600
        0x780
        0x800
        0x900
        0xa00
        0xa80
        0xb00
        0xb07
        0xb80
        0xc00
        0xf00
        0x1000
        0x1800
        0x1e00
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDtsFrameSize([B)I
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 109
    const/4 v0, 0x5

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x2

    shl-int/lit8 v0, v0, 0xc

    const/4 v1, 0x6

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    const/4 v1, 0x7

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xf0

    shr-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static parseDtsAudioSampleCount(Ljava/nio/ByteBuffer;)I
    .locals 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 96
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 97
    .local v1, "position":I
    add-int/lit8 v2, v1, 0x4

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit8 v2, v2, 0x1

    shl-int/lit8 v2, v2, 0x6

    add-int/lit8 v3, v1, 0x5

    .line 98
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xfc

    shr-int/lit8 v3, v3, 0x2

    or-int v0, v2, v3

    .line 99
    .local v0, "nblks":I
    add-int/lit8 v2, v0, 0x1

    mul-int/lit8 v2, v2, 0x20

    return v2
.end method

.method public static parseDtsAudioSampleCount([B)I
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 83
    const/4 v1, 0x4

    aget-byte v1, p0, v1

    and-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x6

    const/4 v2, 0x5

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xfc

    shr-int/lit8 v2, v2, 0x2

    or-int v0, v1, v2

    .line 84
    .local v0, "nblks":I
    add-int/lit8 v1, v0, 0x1

    mul-int/lit8 v1, v1, 0x20

    return v1
.end method

.method public static parseDtsFormat([BLjava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 15
    .param p0, "frame"    # [B
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "drmInitData"    # Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    .prologue
    .line 60
    new-instance v12, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-direct {v12, p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;-><init>([B)V

    .line 61
    .local v12, "frameBits":Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;
    const/16 v0, 0x3c

    invoke-virtual {v12, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 62
    const/4 v0, 0x6

    invoke-virtual {v12, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v11

    .line 63
    .local v11, "amode":I
    sget-object v0, Lorg/telegram/messenger/exoplayer2/audio/DtsUtil;->CHANNELS_BY_AMODE:[I

    aget v5, v0, v11

    .line 64
    .local v5, "channelCount":I
    const/4 v0, 0x4

    invoke-virtual {v12, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v14

    .line 65
    .local v14, "sfreq":I
    sget-object v0, Lorg/telegram/messenger/exoplayer2/audio/DtsUtil;->SAMPLE_RATE_BY_SFREQ:[I

    aget v6, v0, v14

    .line 66
    .local v6, "sampleRate":I
    const/4 v0, 0x5

    invoke-virtual {v12, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v13

    .line 67
    .local v13, "rate":I
    sget-object v0, Lorg/telegram/messenger/exoplayer2/audio/DtsUtil;->TWICE_BITRATE_KBPS_BY_RATE:[I

    array-length v0, v0

    if-lt v13, v0, :cond_0

    const/4 v3, -0x1

    .line 69
    .local v3, "bitrate":I
    :goto_0
    const/16 v0, 0xa

    invoke-virtual {v12, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 70
    const/4 v0, 0x2

    invoke-virtual {v12, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    add-int/2addr v5, v0

    .line 71
    const-string/jumbo v1, "audio/vnd.dts"

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p1

    move-object/from16 v8, p3

    move-object/from16 v10, p2

    invoke-static/range {v0 .. v10}, Lorg/telegram/messenger/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v0

    return-object v0

    .line 67
    .end local v3    # "bitrate":I
    :cond_0
    sget-object v0, Lorg/telegram/messenger/exoplayer2/audio/DtsUtil;->TWICE_BITRATE_KBPS_BY_RATE:[I

    aget v0, v0, v13

    mul-int/lit16 v0, v0, 0x3e8

    div-int/lit8 v3, v0, 0x2

    goto :goto_0

    .line 70
    .restart local v3    # "bitrate":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
