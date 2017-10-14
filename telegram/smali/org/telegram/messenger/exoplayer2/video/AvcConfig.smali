.class public final Lorg/telegram/messenger/exoplayer2/video/AvcConfig;
.super Ljava/lang/Object;
.source "AvcConfig.java"


# instance fields
.field public final height:I

.field public final initializationData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field public final nalUnitLengthFieldLength:I

.field public final pixelWidthAspectRatio:F

.field public final width:I


# direct methods
.method private constructor <init>(Ljava/util/List;IIIF)V
    .locals 0
    .param p2, "nalUnitLengthFieldLength"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "pixelWidthAspectRatio"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;IIIF)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/video/AvcConfig;->initializationData:Ljava/util/List;

    .line 84
    iput p2, p0, Lorg/telegram/messenger/exoplayer2/video/AvcConfig;->nalUnitLengthFieldLength:I

    .line 85
    iput p3, p0, Lorg/telegram/messenger/exoplayer2/video/AvcConfig;->width:I

    .line 86
    iput p4, p0, Lorg/telegram/messenger/exoplayer2/video/AvcConfig;->height:I

    .line 87
    iput p5, p0, Lorg/telegram/messenger/exoplayer2/video/AvcConfig;->pixelWidthAspectRatio:F

    .line 88
    return-void
.end method

.method private static buildNalUnitForChild(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)[B
    .locals 3
    .param p0, "data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    .line 91
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    .line 92
    .local v0, "length":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 93
    .local v1, "offset":I
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 94
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-static {v2, v1, v0}, Lorg/telegram/messenger/exoplayer2/util/CodecSpecificDataUtil;->buildNalUnit([BII)[B

    move-result-object v2

    return-object v2
.end method

.method public static parse(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/video/AvcConfig;
    .locals 13
    .param p0, "data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 48
    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 49
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    add-int/lit8 v2, v0, 0x1

    .line 50
    .local v2, "nalUnitLengthFieldLength":I
    const/4 v0, 0x3

    if-ne v2, v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v2    # "nalUnitLengthFieldLength":I
    :catch_0
    move-exception v6

    .line 77
    .local v6, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v12, "Error parsing AVC config"

    invoke-direct {v0, v12, v6}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 53
    .end local v6    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v2    # "nalUnitLengthFieldLength":I
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v9, v0, 0x1f

    .line 55
    .local v9, "numSequenceParameterSets":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_0
    if-ge v7, v9, :cond_1

    .line 56
    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/video/AvcConfig;->buildNalUnitForChild(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)[B

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    .line 59
    .local v8, "numPictureParameterSets":I
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_2

    .line 60
    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/video/AvcConfig;->buildNalUnitForChild(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)[B

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 63
    :cond_2
    const/4 v3, -0x1

    .line 64
    .local v3, "width":I
    const/4 v4, -0x1

    .line 65
    .local v4, "height":I
    const/high16 v5, 0x3f800000    # 1.0f

    .line 66
    .local v5, "pixelWidthAspectRatio":F
    if-lez v9, :cond_3

    .line 67
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    .line 68
    .local v10, "sps":[B
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v12, v10

    invoke-static {v0, v2, v12}, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->parseSpsNalUnit([BII)Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;

    move-result-object v11

    .line 70
    .local v11, "spsData":Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;
    iget v3, v11, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;->width:I

    .line 71
    iget v4, v11, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;->height:I

    .line 72
    iget v5, v11, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;->pixelWidthAspectRatio:F

    .line 74
    .end local v10    # "sps":[B
    .end local v11    # "spsData":Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;
    :cond_3
    new-instance v0, Lorg/telegram/messenger/exoplayer2/video/AvcConfig;

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/video/AvcConfig;-><init>(Ljava/util/List;IIIF)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0
.end method
