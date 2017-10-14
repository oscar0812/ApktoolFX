.class public final Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;
.super Ljava/lang/Object;
.source "MpegAudioHeader.java"


# static fields
.field private static final BITRATE_V1_L1:[I

.field private static final BITRATE_V1_L2:[I

.field private static final BITRATE_V1_L3:[I

.field private static final BITRATE_V2:[I

.field private static final BITRATE_V2_L1:[I

.field public static final MAX_FRAME_SIZE_BYTES:I = 0x1000

.field private static final MIME_TYPE_BY_LAYER:[Ljava/lang/String;

.field private static final SAMPLING_RATE_V1:[I


# instance fields
.field public bitrate:I

.field public channels:I

.field public frameSize:I

.field public mimeType:Ljava/lang/String;

.field public sampleRate:I

.field public samplesPerFrame:I

.field public version:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/16 v3, 0xe

    .line 34
    new-array v0, v4, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "audio/mpeg-L1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "audio/mpeg-L2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "audio/mpeg"

    aput-object v2, v0, v1

    sput-object v0, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->MIME_TYPE_BY_LAYER:[Ljava/lang/String;

    .line 36
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->SAMPLING_RATE_V1:[I

    .line 37
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L1:[I

    .line 39
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V2_L1:[I

    .line 41
    new-array v0, v3, [I

    fill-array-data v0, :array_3

    sput-object v0, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L2:[I

    .line 43
    new-array v0, v3, [I

    fill-array-data v0, :array_4

    sput-object v0, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L3:[I

    .line 45
    new-array v0, v3, [I

    fill-array-data v0, :array_5

    sput-object v0, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V2:[I

    return-void

    .line 36
    :array_0
    .array-data 4
        0xac44
        0xbb80
        0x7d00
    .end array-data

    .line 37
    :array_1
    .array-data 4
        0x20
        0x40
        0x60
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x120
        0x140
        0x160
        0x180
        0x1a0
        0x1c0
    .end array-data

    .line 39
    :array_2
    .array-data 4
        0x20
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0x90
        0xa0
        0xb0
        0xc0
        0xe0
        0x100
    .end array-data

    .line 41
    :array_3
    .array-data 4
        0x20
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
    .end array-data

    .line 43
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
    .end array-data

    .line 45
    :array_5
    .array-data 4
        0x8
        0x10
        0x18
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0x90
        0xa0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFrameSize(I)I
    .locals 13
    .param p0, "header"    # I

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/high16 v10, -0x200000

    const/4 v9, 0x3

    const/4 v7, -0x1

    .line 53
    and-int v8, p0, v10

    if-eq v8, v10, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v7

    .line 57
    :cond_1
    ushr-int/lit8 v8, p0, 0x13

    and-int/lit8 v6, v8, 0x3

    .line 58
    .local v6, "version":I
    if-eq v6, v11, :cond_0

    .line 62
    ushr-int/lit8 v8, p0, 0x11

    and-int/lit8 v2, v8, 0x3

    .line 63
    .local v2, "layer":I
    if-eqz v2, :cond_0

    .line 67
    ushr-int/lit8 v8, p0, 0xc

    and-int/lit8 v1, v8, 0xf

    .line 68
    .local v1, "bitrateIndex":I
    if-eqz v1, :cond_0

    const/16 v8, 0xf

    if-eq v1, v8, :cond_0

    .line 73
    ushr-int/lit8 v8, p0, 0xa

    and-int/lit8 v5, v8, 0x3

    .line 74
    .local v5, "samplingRateIndex":I
    if-eq v5, v9, :cond_0

    .line 78
    sget-object v7, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->SAMPLING_RATE_V1:[I

    aget v4, v7, v5

    .line 79
    .local v4, "samplingRate":I
    if-ne v6, v12, :cond_3

    .line 81
    div-int/lit8 v4, v4, 0x2

    .line 88
    :cond_2
    :goto_1
    ushr-int/lit8 v7, p0, 0x9

    and-int/lit8 v3, v7, 0x1

    .line 89
    .local v3, "padding":I
    if-ne v2, v9, :cond_5

    .line 91
    if-ne v6, v9, :cond_4

    sget-object v7, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L1:[I

    add-int/lit8 v8, v1, -0x1

    aget v0, v7, v8

    .line 92
    .local v0, "bitrate":I
    :goto_2
    mul-int/lit16 v7, v0, 0x2ee0

    div-int/2addr v7, v4

    add-int/2addr v7, v3

    mul-int/lit8 v7, v7, 0x4

    goto :goto_0

    .line 82
    .end local v0    # "bitrate":I
    .end local v3    # "padding":I
    :cond_3
    if-nez v6, :cond_2

    .line 84
    div-int/lit8 v4, v4, 0x4

    goto :goto_1

    .line 91
    .restart local v3    # "padding":I
    :cond_4
    sget-object v7, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V2_L1:[I

    add-int/lit8 v8, v1, -0x1

    aget v0, v7, v8

    goto :goto_2

    .line 95
    :cond_5
    if-ne v6, v9, :cond_7

    .line 96
    if-ne v2, v12, :cond_6

    sget-object v7, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L2:[I

    add-int/lit8 v8, v1, -0x1

    aget v0, v7, v8

    .line 103
    .restart local v0    # "bitrate":I
    :goto_3
    if-ne v6, v9, :cond_8

    .line 105
    const v7, 0x23280

    mul-int/2addr v7, v0

    div-int/2addr v7, v4

    add-int/2addr v7, v3

    goto :goto_0

    .line 96
    .end local v0    # "bitrate":I
    :cond_6
    sget-object v7, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L3:[I

    add-int/lit8 v8, v1, -0x1

    aget v0, v7, v8

    goto :goto_3

    .line 99
    :cond_7
    sget-object v7, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V2:[I

    add-int/lit8 v8, v1, -0x1

    aget v0, v7, v8

    .restart local v0    # "bitrate":I
    goto :goto_3

    .line 108
    :cond_8
    if-ne v2, v11, :cond_9

    const v7, 0x11940

    :goto_4
    mul-int/2addr v7, v0

    div-int/2addr v7, v4

    add-int/2addr v7, v3

    goto :goto_0

    :cond_9
    const v7, 0x23280

    goto :goto_4
.end method

.method public static populateHeader(ILorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;)Z
    .locals 13
    .param p0, "headerData"    # I
    .param p1, "header"    # Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

    .prologue
    .line 121
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    const/high16 v6, -0x200000

    if-eq v0, v6, :cond_0

    .line 122
    const/4 v0, 0x0

    .line 181
    :goto_0
    return v0

    .line 125
    :cond_0
    ushr-int/lit8 v0, p0, 0x13

    and-int/lit8 v1, v0, 0x3

    .line 126
    .local v1, "version":I
    const/4 v0, 0x1

    if-ne v1, v0, :cond_1

    .line 127
    const/4 v0, 0x0

    goto :goto_0

    .line 130
    :cond_1
    ushr-int/lit8 v0, p0, 0x11

    and-int/lit8 v10, v0, 0x3

    .line 131
    .local v10, "layer":I
    if-nez v10, :cond_2

    .line 132
    const/4 v0, 0x0

    goto :goto_0

    .line 135
    :cond_2
    ushr-int/lit8 v0, p0, 0xc

    and-int/lit8 v9, v0, 0xf

    .line 136
    .local v9, "bitrateIndex":I
    if-eqz v9, :cond_3

    const/16 v0, 0xf

    if-ne v9, v0, :cond_4

    .line 138
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 141
    :cond_4
    ushr-int/lit8 v0, p0, 0xa

    and-int/lit8 v12, v0, 0x3

    .line 142
    .local v12, "samplingRateIndex":I
    const/4 v0, 0x3

    if-ne v12, v0, :cond_5

    .line 143
    const/4 v0, 0x0

    goto :goto_0

    .line 146
    :cond_5
    sget-object v0, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->SAMPLING_RATE_V1:[I

    aget v4, v0, v12

    .line 147
    .local v4, "sampleRate":I
    const/4 v0, 0x2

    if-ne v1, v0, :cond_7

    .line 149
    div-int/lit8 v4, v4, 0x2

    .line 155
    :cond_6
    :goto_1
    ushr-int/lit8 v0, p0, 0x9

    and-int/lit8 v11, v0, 0x1

    .line 157
    .local v11, "padding":I
    const/4 v0, 0x3

    if-ne v10, v0, :cond_9

    .line 159
    const/4 v0, 0x3

    if-ne v1, v0, :cond_8

    sget-object v0, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L1:[I

    add-int/lit8 v6, v9, -0x1

    aget v8, v0, v6

    .line 160
    .local v8, "bitrate":I
    :goto_2
    mul-int/lit16 v0, v8, 0x2ee0

    div-int/2addr v0, v4

    add-int/2addr v0, v11

    mul-int/lit8 v3, v0, 0x4

    .line 161
    .local v3, "frameSize":I
    const/16 v7, 0x180

    .line 177
    .local v7, "samplesPerFrame":I
    :goto_3
    sget-object v0, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->MIME_TYPE_BY_LAYER:[Ljava/lang/String;

    rsub-int/lit8 v6, v10, 0x3

    aget-object v2, v0, v6

    .line 178
    .local v2, "mimeType":Ljava/lang/String;
    shr-int/lit8 v0, p0, 0x6

    and-int/lit8 v0, v0, 0x3

    const/4 v6, 0x3

    if-ne v0, v6, :cond_e

    const/4 v5, 0x1

    .line 179
    .local v5, "channels":I
    :goto_4
    mul-int/lit16 v6, v8, 0x3e8

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->setValues(ILjava/lang/String;IIIII)V

    .line 181
    const/4 v0, 0x1

    goto :goto_0

    .line 150
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v3    # "frameSize":I
    .end local v5    # "channels":I
    .end local v7    # "samplesPerFrame":I
    .end local v8    # "bitrate":I
    .end local v11    # "padding":I
    :cond_7
    if-nez v1, :cond_6

    .line 152
    div-int/lit8 v4, v4, 0x4

    goto :goto_1

    .line 159
    .restart local v11    # "padding":I
    :cond_8
    sget-object v0, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V2_L1:[I

    add-int/lit8 v6, v9, -0x1

    aget v8, v0, v6

    goto :goto_2

    .line 164
    :cond_9
    const/4 v0, 0x3

    if-ne v1, v0, :cond_b

    .line 166
    const/4 v0, 0x2

    if-ne v10, v0, :cond_a

    sget-object v0, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L2:[I

    add-int/lit8 v6, v9, -0x1

    aget v8, v0, v6

    .line 167
    .restart local v8    # "bitrate":I
    :goto_5
    const/16 v7, 0x480

    .line 168
    .restart local v7    # "samplesPerFrame":I
    const v0, 0x23280

    mul-int/2addr v0, v8

    div-int/2addr v0, v4

    add-int v3, v0, v11

    .restart local v3    # "frameSize":I
    goto :goto_3

    .line 166
    .end local v3    # "frameSize":I
    .end local v7    # "samplesPerFrame":I
    .end local v8    # "bitrate":I
    :cond_a
    sget-object v0, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L3:[I

    add-int/lit8 v6, v9, -0x1

    aget v8, v0, v6

    goto :goto_5

    .line 171
    :cond_b
    sget-object v0, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V2:[I

    add-int/lit8 v6, v9, -0x1

    aget v8, v0, v6

    .line 172
    .restart local v8    # "bitrate":I
    const/4 v0, 0x1

    if-ne v10, v0, :cond_c

    const/16 v7, 0x240

    .line 173
    .restart local v7    # "samplesPerFrame":I
    :goto_6
    const/4 v0, 0x1

    if-ne v10, v0, :cond_d

    const v0, 0x11940

    :goto_7
    mul-int/2addr v0, v8

    div-int/2addr v0, v4

    add-int v3, v0, v11

    .restart local v3    # "frameSize":I
    goto :goto_3

    .line 172
    .end local v3    # "frameSize":I
    .end local v7    # "samplesPerFrame":I
    :cond_c
    const/16 v7, 0x480

    goto :goto_6

    .line 173
    .restart local v7    # "samplesPerFrame":I
    :cond_d
    const v0, 0x23280

    goto :goto_7

    .line 178
    .restart local v2    # "mimeType":Ljava/lang/String;
    .restart local v3    # "frameSize":I
    :cond_e
    const/4 v5, 0x2

    goto :goto_4
.end method

.method private setValues(ILjava/lang/String;IIIII)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "frameSize"    # I
    .param p4, "sampleRate"    # I
    .param p5, "channels"    # I
    .param p6, "bitrate"    # I
    .param p7, "samplesPerFrame"    # I

    .prologue
    .line 201
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->version:I

    .line 202
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->mimeType:Ljava/lang/String;

    .line 203
    iput p3, p0, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->frameSize:I

    .line 204
    iput p4, p0, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->sampleRate:I

    .line 205
    iput p5, p0, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->channels:I

    .line 206
    iput p6, p0, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->bitrate:I

    .line 207
    iput p7, p0, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->samplesPerFrame:I

    .line 208
    return-void
.end method
