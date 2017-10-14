.class public final Lorg/telegram/messenger/exoplayer2/Format;
.super Ljava/lang/Object;
.source "Format.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/telegram/messenger/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_VALUE:I = -0x1

.field public static final OFFSET_SAMPLE_RELATIVE:J = 0x7fffffffffffffffL


# instance fields
.field public final accessibilityChannel:I

.field public final bitrate:I

.field public final channelCount:I

.field public final codecs:Ljava/lang/String;

.field public final colorInfo:Lorg/telegram/messenger/exoplayer2/video/ColorInfo;

.field public final containerMimeType:Ljava/lang/String;

.field public final drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

.field public final encoderDelay:I

.field public final encoderPadding:I

.field public final frameRate:F

.field private hashCode:I

.field public final height:I

.field public final id:Ljava/lang/String;

.field public final initializationData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field public final language:Ljava/lang/String;

.field public final maxInputSize:I

.field public final metadata:Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

.field public final pcmEncoding:I

.field public final pixelWidthHeightRatio:F

.field public final projectionData:[B

.field public final rotationDegrees:I

.field public final sampleMimeType:Ljava/lang/String;

.field public final sampleRate:I

.field public final selectionFlags:I

.field public final stereoMode:I

.field public final subsampleOffsetUs:J

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 709
    new-instance v0, Lorg/telegram/messenger/exoplayer2/Format$1;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/Format$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/Format;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->id:Ljava/lang/String;

    .line 393
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    .line 394
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 395
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->codecs:Ljava/lang/String;

    .line 396
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->bitrate:I

    .line 397
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->maxInputSize:I

    .line 398
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    .line 399
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    .line 400
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->frameRate:F

    .line 401
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->rotationDegrees:I

    .line 402
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->pixelWidthHeightRatio:F

    .line 403
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 404
    .local v0, "hasProjectionData":Z
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    :goto_1
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->projectionData:[B

    .line 405
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->stereoMode:I

    .line 406
    const-class v3, Lorg/telegram/messenger/exoplayer2/video/ColorInfo;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/exoplayer2/video/ColorInfo;

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->colorInfo:Lorg/telegram/messenger/exoplayer2/video/ColorInfo;

    .line 407
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->channelCount:I

    .line 408
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->sampleRate:I

    .line 409
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->pcmEncoding:I

    .line 410
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->encoderDelay:I

    .line 411
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->encoderPadding:I

    .line 412
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->selectionFlags:I

    .line 413
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->language:Ljava/lang/String;

    .line 414
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->accessibilityChannel:I

    .line 415
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/Format;->subsampleOffsetUs:J

    .line 416
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 417
    .local v2, "initializationDataSize":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->initializationData:Ljava/util/List;

    .line 418
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_2

    .line 419
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 403
    .end local v0    # "hasProjectionData":Z
    .end local v1    # "i":I
    .end local v2    # "initializationDataSize":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 404
    .restart local v0    # "hasProjectionData":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 421
    .restart local v1    # "i":I
    .restart local v2    # "initializationDataSize":I
    :cond_2
    const-class v3, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    .line 422
    const-class v3, Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->metadata:Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    .line 423
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILorg/telegram/messenger/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "containerMimeType"    # Ljava/lang/String;
    .param p3, "sampleMimeType"    # Ljava/lang/String;
    .param p4, "codecs"    # Ljava/lang/String;
    .param p5, "bitrate"    # I
    .param p6, "maxInputSize"    # I
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "frameRate"    # F
    .param p10, "rotationDegrees"    # I
    .param p11, "pixelWidthHeightRatio"    # F
    .param p12, "projectionData"    # [B
    .param p13, "stereoMode"    # I
    .param p14, "colorInfo"    # Lorg/telegram/messenger/exoplayer2/video/ColorInfo;
    .param p15, "channelCount"    # I
    .param p16, "sampleRate"    # I
    .param p17, "pcmEncoding"    # I
    .param p18, "encoderDelay"    # I
    .param p19, "encoderPadding"    # I
    .param p20, "selectionFlags"    # I
    .param p21, "language"    # Ljava/lang/String;
    .param p22, "accessibilityChannel"    # I
    .param p23, "subsampleOffsetUs"    # J
    .param p26, "drmInitData"    # Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;
    .param p27, "metadata"    # Lorg/telegram/messenger/exoplayer2/metadata/Metadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIFIF[BI",
            "Lorg/telegram/messenger/exoplayer2/video/ColorInfo;",
            "IIIIII",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/util/List",
            "<[B>;",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;",
            "Lorg/telegram/messenger/exoplayer2/metadata/Metadata;",
            ")V"
        }
    .end annotation

    .prologue
    .line 360
    .local p25, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/Format;->id:Ljava/lang/String;

    .line 362
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    .line 363
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 364
    iput-object p4, p0, Lorg/telegram/messenger/exoplayer2/Format;->codecs:Ljava/lang/String;

    .line 365
    iput p5, p0, Lorg/telegram/messenger/exoplayer2/Format;->bitrate:I

    .line 366
    iput p6, p0, Lorg/telegram/messenger/exoplayer2/Format;->maxInputSize:I

    .line 367
    iput p7, p0, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    .line 368
    iput p8, p0, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    .line 369
    iput p9, p0, Lorg/telegram/messenger/exoplayer2/Format;->frameRate:F

    .line 370
    iput p10, p0, Lorg/telegram/messenger/exoplayer2/Format;->rotationDegrees:I

    .line 371
    iput p11, p0, Lorg/telegram/messenger/exoplayer2/Format;->pixelWidthHeightRatio:F

    .line 372
    iput-object p12, p0, Lorg/telegram/messenger/exoplayer2/Format;->projectionData:[B

    .line 373
    move/from16 v0, p13

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->stereoMode:I

    .line 374
    move-object/from16 v0, p14

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->colorInfo:Lorg/telegram/messenger/exoplayer2/video/ColorInfo;

    .line 375
    move/from16 v0, p15

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->channelCount:I

    .line 376
    move/from16 v0, p16

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->sampleRate:I

    .line 377
    move/from16 v0, p17

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->pcmEncoding:I

    .line 378
    move/from16 v0, p18

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->encoderDelay:I

    .line 379
    move/from16 v0, p19

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->encoderPadding:I

    .line 380
    move/from16 v0, p20

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->selectionFlags:I

    .line 381
    move-object/from16 v0, p21

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->language:Ljava/lang/String;

    .line 382
    move/from16 v0, p22

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->accessibilityChannel:I

    .line 383
    move-wide/from16 v0, p23

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->subsampleOffsetUs:J

    .line 384
    if-nez p25, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p25

    .end local p25    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_0
    move-object/from16 v0, p25

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->initializationData:Ljava/util/List;

    .line 386
    move-object/from16 v0, p26

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    .line 387
    move-object/from16 v0, p27

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->metadata:Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    .line 388
    return-void
.end method

.method public static createAudioContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 29
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "containerMimeType"    # Ljava/lang/String;
    .param p2, "sampleMimeType"    # Ljava/lang/String;
    .param p3, "codecs"    # Ljava/lang/String;
    .param p4, "bitrate"    # I
    .param p5, "channelCount"    # I
    .param p6, "sampleRate"    # I
    .param p8, "selectionFlags"    # I
    .param p9, "language"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List",
            "<[B>;I",
            "Ljava/lang/String;",
            ")",
            "Lorg/telegram/messenger/exoplayer2/Format;"
        }
    .end annotation

    .prologue
    .line 237
    .local p7, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-instance v1, Lorg/telegram/messenger/exoplayer2/Format;

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v11, -0x1

    const/high16 v12, -0x40800000    # -1.0f

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v23, -0x1

    const-wide v24, 0x7fffffffffffffffL

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v16, p5

    move/from16 v17, p6

    move/from16 v21, p8

    move-object/from16 v22, p9

    move-object/from16 v26, p7

    invoke-direct/range {v1 .. v28}, Lorg/telegram/messenger/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILorg/telegram/messenger/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V

    return-object v1
.end method

.method public static createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;ILjava/lang/String;Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 29
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "sampleMimeType"    # Ljava/lang/String;
    .param p2, "codecs"    # Ljava/lang/String;
    .param p3, "bitrate"    # I
    .param p4, "maxInputSize"    # I
    .param p5, "channelCount"    # I
    .param p6, "sampleRate"    # I
    .param p7, "pcmEncoding"    # I
    .param p8, "encoderDelay"    # I
    .param p9, "encoderPadding"    # I
    .param p11, "drmInitData"    # Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;
    .param p12, "selectionFlags"    # I
    .param p13, "language"    # Ljava/lang/String;
    .param p14, "metadata"    # Lorg/telegram/messenger/exoplayer2/metadata/Metadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIIII",
            "Ljava/util/List",
            "<[B>;",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;",
            "I",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/exoplayer2/metadata/Metadata;",
            ")",
            "Lorg/telegram/messenger/exoplayer2/Format;"
        }
    .end annotation

    .prologue
    .line 265
    .local p10, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-instance v1, Lorg/telegram/messenger/exoplayer2/Format;

    const/4 v3, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v11, -0x1

    const/high16 v12, -0x40800000    # -1.0f

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v23, -0x1

    const-wide v24, 0x7fffffffffffffffL

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v16, p5

    move/from16 v17, p6

    move/from16 v18, p7

    move/from16 v19, p8

    move/from16 v20, p9

    move/from16 v21, p12

    move-object/from16 v22, p13

    move-object/from16 v26, p10

    move-object/from16 v27, p11

    move-object/from16 v28, p14

    invoke-direct/range {v1 .. v28}, Lorg/telegram/messenger/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILorg/telegram/messenger/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V

    return-object v1
.end method

.method public static createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 15
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "sampleMimeType"    # Ljava/lang/String;
    .param p2, "codecs"    # Ljava/lang/String;
    .param p3, "bitrate"    # I
    .param p4, "maxInputSize"    # I
    .param p5, "channelCount"    # I
    .param p6, "sampleRate"    # I
    .param p7, "pcmEncoding"    # I
    .param p9, "drmInitData"    # Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;
    .param p10, "selectionFlags"    # I
    .param p11, "language"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIII",
            "Ljava/util/List",
            "<[B>;",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lorg/telegram/messenger/exoplayer2/Format;"
        }
    .end annotation

    .prologue
    .line 255
    .local p8, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    invoke-static/range {v0 .. v14}, Lorg/telegram/messenger/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;ILjava/lang/String;Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 12
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "sampleMimeType"    # Ljava/lang/String;
    .param p2, "codecs"    # Ljava/lang/String;
    .param p3, "bitrate"    # I
    .param p4, "maxInputSize"    # I
    .param p5, "channelCount"    # I
    .param p6, "sampleRate"    # I
    .param p8, "drmInitData"    # Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;
    .param p9, "selectionFlags"    # I
    .param p10, "language"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/util/List",
            "<[B>;",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lorg/telegram/messenger/exoplayer2/Format;"
        }
    .end annotation

    .prologue
    .line 247
    .local p7, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    invoke-static/range {v0 .. v11}, Lorg/telegram/messenger/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static createContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 29
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "containerMimeType"    # Ljava/lang/String;
    .param p2, "sampleMimeType"    # Ljava/lang/String;
    .param p3, "codecs"    # Ljava/lang/String;
    .param p4, "bitrate"    # I
    .param p5, "selectionFlags"    # I
    .param p6, "language"    # Ljava/lang/String;

    .prologue
    .line 334
    new-instance v1, Lorg/telegram/messenger/exoplayer2/Format;

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v11, -0x1

    const/high16 v12, -0x40800000    # -1.0f

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v23, -0x1

    const-wide v24, 0x7fffffffffffffffL

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v21, p5

    move-object/from16 v22, p6

    invoke-direct/range {v1 .. v28}, Lorg/telegram/messenger/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILorg/telegram/messenger/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V

    return-object v1
.end method

.method public static createImageSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 29
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "sampleMimeType"    # Ljava/lang/String;
    .param p2, "codecs"    # Ljava/lang/String;
    .param p3, "bitrate"    # I
    .param p5, "language"    # Ljava/lang/String;
    .param p6, "drmInitData"    # Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;",
            ")",
            "Lorg/telegram/messenger/exoplayer2/Format;"
        }
    .end annotation

    .prologue
    .line 323
    .local p4, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-instance v1, Lorg/telegram/messenger/exoplayer2/Format;

    const/4 v3, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v11, -0x1

    const/high16 v12, -0x40800000    # -1.0f

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, 0x0

    const/16 v23, -0x1

    const-wide v24, 0x7fffffffffffffffL

    const/16 v28, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v22, p5

    move-object/from16 v26, p4

    move-object/from16 v27, p6

    invoke-direct/range {v1 .. v28}, Lorg/telegram/messenger/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILorg/telegram/messenger/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V

    return-object v1
.end method

.method public static createSampleFormat(Ljava/lang/String;Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 30
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "sampleMimeType"    # Ljava/lang/String;
    .param p2, "subsampleOffsetUs"    # J

    .prologue
    .line 342
    new-instance v1, Lorg/telegram/messenger/exoplayer2/Format;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v11, -0x1

    const/high16 v12, -0x40800000    # -1.0f

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, -0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-wide/from16 v24, p2

    invoke-direct/range {v1 .. v28}, Lorg/telegram/messenger/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILorg/telegram/messenger/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V

    return-object v1
.end method

.method public static createSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 29
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "sampleMimeType"    # Ljava/lang/String;
    .param p2, "codecs"    # Ljava/lang/String;
    .param p3, "bitrate"    # I
    .param p4, "drmInitData"    # Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    .prologue
    .line 349
    new-instance v1, Lorg/telegram/messenger/exoplayer2/Format;

    const/4 v3, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v11, -0x1

    const/high16 v12, -0x40800000    # -1.0f

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, -0x1

    const-wide v24, 0x7fffffffffffffffL

    const/16 v26, 0x0

    const/16 v28, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v27, p4

    invoke-direct/range {v1 .. v28}, Lorg/telegram/messenger/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILorg/telegram/messenger/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V

    return-object v1
.end method

.method public static createTextContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 8
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "containerMimeType"    # Ljava/lang/String;
    .param p2, "sampleMimeType"    # Ljava/lang/String;
    .param p3, "codecs"    # Ljava/lang/String;
    .param p4, "bitrate"    # I
    .param p5, "selectionFlags"    # I
    .param p6, "language"    # Ljava/lang/String;

    .prologue
    .line 276
    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer2/Format;->createTextContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static createTextContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 29
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "containerMimeType"    # Ljava/lang/String;
    .param p2, "sampleMimeType"    # Ljava/lang/String;
    .param p3, "codecs"    # Ljava/lang/String;
    .param p4, "bitrate"    # I
    .param p5, "selectionFlags"    # I
    .param p6, "language"    # Ljava/lang/String;
    .param p7, "accessibilityChannel"    # I

    .prologue
    .line 283
    new-instance v1, Lorg/telegram/messenger/exoplayer2/Format;

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v11, -0x1

    const/high16 v12, -0x40800000    # -1.0f

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const-wide v24, 0x7fffffffffffffffL

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v21, p5

    move-object/from16 v22, p6

    move/from16 v23, p7

    invoke-direct/range {v1 .. v28}, Lorg/telegram/messenger/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILorg/telegram/messenger/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V

    return-object v1
.end method

.method public static createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 11
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "sampleMimeType"    # Ljava/lang/String;
    .param p2, "codecs"    # Ljava/lang/String;
    .param p3, "bitrate"    # I
    .param p4, "selectionFlags"    # I
    .param p5, "language"    # Ljava/lang/String;
    .param p6, "accessibilityChannel"    # I
    .param p7, "drmInitData"    # Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    .prologue
    .line 298
    const-wide v8, 0x7fffffffffffffffL

    .line 299
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    .line 298
    invoke-static/range {v0 .. v10}, Lorg/telegram/messenger/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILorg/telegram/messenger/exoplayer2/drm/DrmInitData;JLjava/util/List;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILorg/telegram/messenger/exoplayer2/drm/DrmInitData;JLjava/util/List;)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 30
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "sampleMimeType"    # Ljava/lang/String;
    .param p2, "codecs"    # Ljava/lang/String;
    .param p3, "bitrate"    # I
    .param p4, "selectionFlags"    # I
    .param p5, "language"    # Ljava/lang/String;
    .param p6, "accessibilityChannel"    # I
    .param p7, "drmInitData"    # Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;
    .param p8, "subsampleOffsetUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "I",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;",
            "J",
            "Ljava/util/List",
            "<[B>;)",
            "Lorg/telegram/messenger/exoplayer2/Format;"
        }
    .end annotation

    .prologue
    .line 313
    .local p10, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-instance v1, Lorg/telegram/messenger/exoplayer2/Format;

    const/4 v3, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v11, -0x1

    const/high16 v12, -0x40800000    # -1.0f

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v28, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v21, p4

    move-object/from16 v22, p5

    move/from16 v23, p6

    move-wide/from16 v24, p8

    move-object/from16 v26, p10

    move-object/from16 v27, p7

    invoke-direct/range {v1 .. v28}, Lorg/telegram/messenger/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILorg/telegram/messenger/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V

    return-object v1
.end method

.method public static createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 11
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "sampleMimeType"    # Ljava/lang/String;
    .param p2, "codecs"    # Ljava/lang/String;
    .param p3, "bitrate"    # I
    .param p4, "selectionFlags"    # I
    .param p5, "language"    # Ljava/lang/String;
    .param p6, "drmInitData"    # Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    .prologue
    .line 291
    const/4 v6, -0x1

    const-wide v8, 0x7fffffffffffffffL

    .line 292
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    .line 291
    invoke-static/range {v0 .. v10}, Lorg/telegram/messenger/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILorg/telegram/messenger/exoplayer2/drm/DrmInitData;JLjava/util/List;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;J)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 11
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "sampleMimeType"    # Ljava/lang/String;
    .param p2, "codecs"    # Ljava/lang/String;
    .param p3, "bitrate"    # I
    .param p4, "selectionFlags"    # I
    .param p5, "language"    # Ljava/lang/String;
    .param p6, "drmInitData"    # Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;
    .param p7, "subsampleOffsetUs"    # J

    .prologue
    .line 305
    const/4 v6, -0x1

    .line 306
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    .line 305
    invoke-static/range {v0 .. v10}, Lorg/telegram/messenger/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILorg/telegram/messenger/exoplayer2/drm/DrmInitData;JLjava/util/List;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static createVideoContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFLjava/util/List;I)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 29
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "containerMimeType"    # Ljava/lang/String;
    .param p2, "sampleMimeType"    # Ljava/lang/String;
    .param p3, "codecs"    # Ljava/lang/String;
    .param p4, "bitrate"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "frameRate"    # F
    .param p9, "selectionFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIF",
            "Ljava/util/List",
            "<[B>;I)",
            "Lorg/telegram/messenger/exoplayer2/Format;"
        }
    .end annotation

    .prologue
    .line 199
    .local p8, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-instance v1, Lorg/telegram/messenger/exoplayer2/Format;

    const/4 v7, -0x1

    const/4 v11, -0x1

    const/high16 v12, -0x40800000    # -1.0f

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v22, 0x0

    const/16 v23, -0x1

    const-wide v24, 0x7fffffffffffffffL

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v21, p9

    move-object/from16 v26, p8

    invoke-direct/range {v1 .. v28}, Lorg/telegram/messenger/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILorg/telegram/messenger/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V

    return-object v1
.end method

.method public static createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 15
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "sampleMimeType"    # Ljava/lang/String;
    .param p2, "codecs"    # Ljava/lang/String;
    .param p3, "bitrate"    # I
    .param p4, "maxInputSize"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "frameRate"    # F
    .param p9, "rotationDegrees"    # I
    .param p10, "pixelWidthHeightRatio"    # F
    .param p11, "drmInitData"    # Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIF",
            "Ljava/util/List",
            "<[B>;IF",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;",
            ")",
            "Lorg/telegram/messenger/exoplayer2/Format;"
        }
    .end annotation

    .prologue
    .line 216
    .local p8, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v14, p11

    invoke-static/range {v0 .. v14}, Lorg/telegram/messenger/exoplayer2/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILorg/telegram/messenger/exoplayer2/video/ColorInfo;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILorg/telegram/messenger/exoplayer2/video/ColorInfo;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 29
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "sampleMimeType"    # Ljava/lang/String;
    .param p2, "codecs"    # Ljava/lang/String;
    .param p3, "bitrate"    # I
    .param p4, "maxInputSize"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "frameRate"    # F
    .param p9, "rotationDegrees"    # I
    .param p10, "pixelWidthHeightRatio"    # F
    .param p11, "projectionData"    # [B
    .param p12, "stereoMode"    # I
    .param p13, "colorInfo"    # Lorg/telegram/messenger/exoplayer2/video/ColorInfo;
    .param p14, "drmInitData"    # Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIF",
            "Ljava/util/List",
            "<[B>;IF[BI",
            "Lorg/telegram/messenger/exoplayer2/video/ColorInfo;",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;",
            ")",
            "Lorg/telegram/messenger/exoplayer2/Format;"
        }
    .end annotation

    .prologue
    .line 226
    .local p8, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-instance v1, Lorg/telegram/messenger/exoplayer2/Format;

    const/4 v3, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, -0x1

    const-wide v24, 0x7fffffffffffffffL

    const/16 v28, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v26, p8

    move-object/from16 v27, p14

    invoke-direct/range {v1 .. v28}, Lorg/telegram/messenger/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILorg/telegram/messenger/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V

    return-object v1
.end method

.method public static createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 12
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "sampleMimeType"    # Ljava/lang/String;
    .param p2, "codecs"    # Ljava/lang/String;
    .param p3, "bitrate"    # I
    .param p4, "maxInputSize"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "frameRate"    # F
    .param p9, "drmInitData"    # Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIF",
            "Ljava/util/List",
            "<[B>;",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;",
            ")",
            "Lorg/telegram/messenger/exoplayer2/Format;"
        }
    .end annotation

    .prologue
    .line 208
    .local p8, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v9, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v11, p9

    invoke-static/range {v0 .. v11}, Lorg/telegram/messenger/exoplayer2/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method private static maybeSetByteBufferV16(Landroid/media/MediaFormat;Ljava/lang/String;[B)V
    .locals 1
    .param p0, "format"    # Landroid/media/MediaFormat;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 628
    if-eqz p2, :cond_0

    .line 629
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 631
    :cond_0
    return-void
.end method

.method private static maybeSetColorInfoV24(Landroid/media/MediaFormat;Lorg/telegram/messenger/exoplayer2/video/ColorInfo;)V
    .locals 2
    .param p0, "format"    # Landroid/media/MediaFormat;
    .param p1, "colorInfo"    # Lorg/telegram/messenger/exoplayer2/video/ColorInfo;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    .line 596
    if-nez p1, :cond_0

    .line 603
    :goto_0
    return-void

    .line 599
    :cond_0
    const-string/jumbo v0, "color-transfer"

    iget v1, p1, Lorg/telegram/messenger/exoplayer2/video/ColorInfo;->colorTransfer:I

    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/Format;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 600
    const-string/jumbo v0, "color-standard"

    iget v1, p1, Lorg/telegram/messenger/exoplayer2/video/ColorInfo;->colorSpace:I

    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/Format;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 601
    const-string/jumbo v0, "color-range"

    iget v1, p1, Lorg/telegram/messenger/exoplayer2/video/ColorInfo;->colorRange:I

    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/Format;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 602
    const-string/jumbo v0, "hdr-static-info"

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/video/ColorInfo;->hdrStaticInfo:[B

    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/Format;->maybeSetByteBufferV16(Landroid/media/MediaFormat;Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method private static maybeSetFloatV16(Landroid/media/MediaFormat;Ljava/lang/String;F)V
    .locals 1
    .param p0, "format"    # Landroid/media/MediaFormat;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 621
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_0

    .line 622
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 624
    :cond_0
    return-void
.end method

.method private static maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V
    .locals 1
    .param p0, "format"    # Landroid/media/MediaFormat;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 614
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 615
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 617
    :cond_0
    return-void
.end method

.method private static maybeSetStringV16(Landroid/media/MediaFormat;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "format"    # Landroid/media/MediaFormat;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 607
    if-eqz p2, :cond_0

    .line 608
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    :cond_0
    return-void
.end method

.method public static toLogString(Lorg/telegram/messenger/exoplayer2/Format;)Ljava/lang/String;
    .locals 4
    .param p0, "format"    # Lorg/telegram/messenger/exoplayer2/Format;

    .prologue
    const/4 v3, -0x1

    .line 639
    if-nez p0, :cond_0

    .line 640
    const-string/jumbo v1, "null"

    .line 662
    :goto_0
    return-object v1

    .line 642
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 643
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mimeType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->bitrate:I

    if-eq v1, v3, :cond_1

    .line 645
    const-string/jumbo v1, ", bitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->bitrate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 647
    :cond_1
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    if-eq v1, v3, :cond_2

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    if-eq v1, v3, :cond_2

    .line 648
    const-string/jumbo v1, ", res="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 650
    :cond_2
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->frameRate:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    .line 651
    const-string/jumbo v1, ", fps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->frameRate:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 653
    :cond_3
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->channelCount:I

    if-eq v1, v3, :cond_4

    .line 654
    const-string/jumbo v1, ", channels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->channelCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 656
    :cond_4
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->sampleRate:I

    if-eq v1, v3, :cond_5

    .line 657
    const-string/jumbo v1, ", sample_rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->sampleRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 659
    :cond_5
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->language:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 660
    const-string/jumbo v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method


# virtual methods
.method public copyWithContainerInfo(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 31
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "codecs"    # Ljava/lang/String;
    .param p3, "bitrate"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "selectionFlags"    # I
    .param p7, "language"    # Ljava/lang/String;

    .prologue
    .line 443
    new-instance v3, Lorg/telegram/messenger/exoplayer2/Format;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/Format;->maxInputSize:I

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/exoplayer2/Format;->frameRate:F

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/exoplayer2/Format;->rotationDegrees:I

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/exoplayer2/Format;->pixelWidthHeightRatio:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/Format;->projectionData:[B

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->stereoMode:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->colorInfo:Lorg/telegram/messenger/exoplayer2/video/ColorInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->channelCount:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->sampleRate:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->pcmEncoding:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->encoderDelay:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->encoderPadding:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->accessibilityChannel:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->subsampleOffsetUs:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->initializationData:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->metadata:Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    move-object/from16 v30, v0

    move-object/from16 v4, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v23, p6

    move-object/from16 v24, p7

    invoke-direct/range {v3 .. v30}, Lorg/telegram/messenger/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILorg/telegram/messenger/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V

    return-object v3
.end method

.method public copyWithDrmInitData(Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 31
    .param p1, "drmInitData"    # Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    .prologue
    .line 480
    new-instance v3, Lorg/telegram/messenger/exoplayer2/Format;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/Format;->id:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/Format;->codecs:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/exoplayer2/Format;->bitrate:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/Format;->maxInputSize:I

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/exoplayer2/Format;->frameRate:F

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/exoplayer2/Format;->rotationDegrees:I

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/exoplayer2/Format;->pixelWidthHeightRatio:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/Format;->projectionData:[B

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->stereoMode:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->colorInfo:Lorg/telegram/messenger/exoplayer2/video/ColorInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->channelCount:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->sampleRate:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->pcmEncoding:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->encoderDelay:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->encoderPadding:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->selectionFlags:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->language:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->accessibilityChannel:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->subsampleOffsetUs:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->initializationData:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->metadata:Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    move-object/from16 v30, v0

    move-object/from16 v29, p1

    invoke-direct/range {v3 .. v30}, Lorg/telegram/messenger/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILorg/telegram/messenger/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V

    return-object v3
.end method

.method public copyWithGaplessInfo(II)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 31
    .param p1, "encoderDelay"    # I
    .param p2, "encoderPadding"    # I

    .prologue
    .line 472
    new-instance v3, Lorg/telegram/messenger/exoplayer2/Format;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/Format;->id:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/Format;->codecs:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/exoplayer2/Format;->bitrate:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/Format;->maxInputSize:I

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/exoplayer2/Format;->frameRate:F

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/exoplayer2/Format;->rotationDegrees:I

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/exoplayer2/Format;->pixelWidthHeightRatio:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/Format;->projectionData:[B

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->stereoMode:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->colorInfo:Lorg/telegram/messenger/exoplayer2/video/ColorInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->channelCount:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->sampleRate:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->pcmEncoding:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->selectionFlags:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->language:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->accessibilityChannel:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->subsampleOffsetUs:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->initializationData:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->metadata:Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    move-object/from16 v30, v0

    move/from16 v21, p1

    move/from16 v22, p2

    invoke-direct/range {v3 .. v30}, Lorg/telegram/messenger/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILorg/telegram/messenger/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V

    return-object v3
.end method

.method public copyWithManifestFormatInfo(Lorg/telegram/messenger/exoplayer2/Format;)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 31
    .param p1, "manifestFormat"    # Lorg/telegram/messenger/exoplayer2/Format;

    .prologue
    .line 452
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_0

    .line 464
    .end local p0    # "this":Lorg/telegram/messenger/exoplayer2/Format;
    :goto_0
    return-object p0

    .line 456
    .restart local p0    # "this":Lorg/telegram/messenger/exoplayer2/Format;
    :cond_0
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/Format;->id:Ljava/lang/String;

    .line 457
    .local v4, "id":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/Format;->codecs:Ljava/lang/String;

    if-nez v2, :cond_1

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/Format;->codecs:Ljava/lang/String;

    .line 458
    .local v7, "codecs":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/Format;->bitrate:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    move-object/from16 v0, p1

    iget v8, v0, Lorg/telegram/messenger/exoplayer2/Format;->bitrate:I

    .line 459
    .local v8, "bitrate":I
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/Format;->frameRate:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    move-object/from16 v0, p1

    iget v12, v0, Lorg/telegram/messenger/exoplayer2/Format;->frameRate:F

    .line 460
    .local v12, "frameRate":F
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/Format;->selectionFlags:I

    move-object/from16 v0, p1

    iget v3, v0, Lorg/telegram/messenger/exoplayer2/Format;->selectionFlags:I

    or-int v23, v2, v3

    .line 461
    .local v23, "selectionFlags":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/Format;->language:Ljava/lang/String;

    if-nez v2, :cond_4

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->language:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 462
    .local v24, "language":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/Format;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    if-eqz v2, :cond_5

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    move-object/from16 v29, v0

    .line 464
    .local v29, "drmInitData":Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;
    :goto_5
    new-instance v3, Lorg/telegram/messenger/exoplayer2/Format;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/Format;->maxInputSize:I

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/exoplayer2/Format;->rotationDegrees:I

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/exoplayer2/Format;->pixelWidthHeightRatio:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/Format;->projectionData:[B

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->stereoMode:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->colorInfo:Lorg/telegram/messenger/exoplayer2/video/ColorInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->channelCount:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->sampleRate:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->pcmEncoding:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->encoderDelay:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->encoderPadding:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->accessibilityChannel:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->subsampleOffsetUs:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->initializationData:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->metadata:Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    move-object/from16 v30, v0

    invoke-direct/range {v3 .. v30}, Lorg/telegram/messenger/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILorg/telegram/messenger/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V

    move-object/from16 p0, v3

    goto/16 :goto_0

    .line 457
    .end local v7    # "codecs":Ljava/lang/String;
    .end local v8    # "bitrate":I
    .end local v12    # "frameRate":F
    .end local v23    # "selectionFlags":I
    .end local v24    # "language":Ljava/lang/String;
    .end local v29    # "drmInitData":Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/Format;->codecs:Ljava/lang/String;

    goto/16 :goto_1

    .line 458
    .restart local v7    # "codecs":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/exoplayer2/Format;->bitrate:I

    goto/16 :goto_2

    .line 459
    .restart local v8    # "bitrate":I
    :cond_3
    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/exoplayer2/Format;->frameRate:F

    goto/16 :goto_3

    .line 461
    .restart local v12    # "frameRate":F
    .restart local v23    # "selectionFlags":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->language:Ljava/lang/String;

    move-object/from16 v24, v0

    goto/16 :goto_4

    .line 462
    .restart local v24    # "language":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    move-object/from16 v29, v0

    goto/16 :goto_5
.end method

.method public copyWithMaxInputSize(I)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 31
    .param p1, "maxInputSize"    # I

    .prologue
    .line 426
    new-instance v3, Lorg/telegram/messenger/exoplayer2/Format;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/Format;->id:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/Format;->codecs:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/exoplayer2/Format;->bitrate:I

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/exoplayer2/Format;->frameRate:F

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/exoplayer2/Format;->rotationDegrees:I

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/exoplayer2/Format;->pixelWidthHeightRatio:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/Format;->projectionData:[B

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->stereoMode:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->colorInfo:Lorg/telegram/messenger/exoplayer2/video/ColorInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->channelCount:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->sampleRate:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->pcmEncoding:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->encoderDelay:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->encoderPadding:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->selectionFlags:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->language:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->accessibilityChannel:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->subsampleOffsetUs:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->initializationData:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->metadata:Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    move-object/from16 v30, v0

    move/from16 v9, p1

    invoke-direct/range {v3 .. v30}, Lorg/telegram/messenger/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILorg/telegram/messenger/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V

    return-object v3
.end method

.method public copyWithMetadata(Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 31
    .param p1, "metadata"    # Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    .prologue
    .line 488
    new-instance v3, Lorg/telegram/messenger/exoplayer2/Format;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/Format;->id:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/Format;->codecs:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/exoplayer2/Format;->bitrate:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/Format;->maxInputSize:I

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/exoplayer2/Format;->frameRate:F

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/exoplayer2/Format;->rotationDegrees:I

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/exoplayer2/Format;->pixelWidthHeightRatio:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/Format;->projectionData:[B

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->stereoMode:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->colorInfo:Lorg/telegram/messenger/exoplayer2/video/ColorInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->channelCount:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->sampleRate:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->pcmEncoding:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->encoderDelay:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->encoderPadding:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->selectionFlags:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->language:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->accessibilityChannel:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->subsampleOffsetUs:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->initializationData:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    move-object/from16 v29, v0

    move-object/from16 v30, p1

    invoke-direct/range {v3 .. v30}, Lorg/telegram/messenger/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILorg/telegram/messenger/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V

    return-object v3
.end method

.method public copyWithSubsampleOffsetUs(J)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 31
    .param p1, "subsampleOffsetUs"    # J

    .prologue
    .line 434
    new-instance v3, Lorg/telegram/messenger/exoplayer2/Format;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/Format;->id:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/Format;->codecs:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/exoplayer2/Format;->bitrate:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/Format;->maxInputSize:I

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/exoplayer2/Format;->frameRate:F

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/exoplayer2/Format;->rotationDegrees:I

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/exoplayer2/Format;->pixelWidthHeightRatio:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/Format;->projectionData:[B

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->stereoMode:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->colorInfo:Lorg/telegram/messenger/exoplayer2/video/ColorInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->channelCount:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->sampleRate:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->pcmEncoding:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->encoderDelay:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->encoderPadding:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->selectionFlags:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->language:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->accessibilityChannel:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->initializationData:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->metadata:Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    move-object/from16 v30, v0

    move-wide/from16 v26, p1

    invoke-direct/range {v3 .. v30}, Lorg/telegram/messenger/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILorg/telegram/messenger/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V

    return-object v3
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 669
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 559
    if-ne p0, p1, :cond_0

    move v2, v4

    .line 591
    :goto_0
    return v2

    .line 562
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    :cond_1
    move v2, v5

    .line 563
    goto :goto_0

    :cond_2
    move-object v1, p1

    .line 565
    check-cast v1, Lorg/telegram/messenger/exoplayer2/Format;

    .line 566
    .local v1, "other":Lorg/telegram/messenger/exoplayer2/Format;
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->bitrate:I

    iget v3, v1, Lorg/telegram/messenger/exoplayer2/Format;->bitrate:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->maxInputSize:I

    iget v3, v1, Lorg/telegram/messenger/exoplayer2/Format;->maxInputSize:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    iget v3, v1, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    iget v3, v1, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->frameRate:F

    iget v3, v1, Lorg/telegram/messenger/exoplayer2/Format;->frameRate:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->rotationDegrees:I

    iget v3, v1, Lorg/telegram/messenger/exoplayer2/Format;->rotationDegrees:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->pixelWidthHeightRatio:F

    iget v3, v1, Lorg/telegram/messenger/exoplayer2/Format;->pixelWidthHeightRatio:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->stereoMode:I

    iget v3, v1, Lorg/telegram/messenger/exoplayer2/Format;->stereoMode:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->channelCount:I

    iget v3, v1, Lorg/telegram/messenger/exoplayer2/Format;->channelCount:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->sampleRate:I

    iget v3, v1, Lorg/telegram/messenger/exoplayer2/Format;->sampleRate:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->pcmEncoding:I

    iget v3, v1, Lorg/telegram/messenger/exoplayer2/Format;->pcmEncoding:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->encoderDelay:I

    iget v3, v1, Lorg/telegram/messenger/exoplayer2/Format;->encoderDelay:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->encoderPadding:I

    iget v3, v1, Lorg/telegram/messenger/exoplayer2/Format;->encoderPadding:I

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->subsampleOffsetUs:J

    iget-wide v6, v1, Lorg/telegram/messenger/exoplayer2/Format;->subsampleOffsetUs:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_3

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->selectionFlags:I

    iget v3, v1, Lorg/telegram/messenger/exoplayer2/Format;->selectionFlags:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->id:Ljava/lang/String;

    iget-object v3, v1, Lorg/telegram/messenger/exoplayer2/Format;->id:Ljava/lang/String;

    .line 573
    invoke-static {v2, v3}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->language:Ljava/lang/String;

    iget-object v3, v1, Lorg/telegram/messenger/exoplayer2/Format;->language:Ljava/lang/String;

    .line 574
    invoke-static {v2, v3}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->accessibilityChannel:I

    iget v3, v1, Lorg/telegram/messenger/exoplayer2/Format;->accessibilityChannel:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    iget-object v3, v1, Lorg/telegram/messenger/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    .line 576
    invoke-static {v2, v3}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v3, v1, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 577
    invoke-static {v2, v3}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->codecs:Ljava/lang/String;

    iget-object v3, v1, Lorg/telegram/messenger/exoplayer2/Format;->codecs:Ljava/lang/String;

    .line 578
    invoke-static {v2, v3}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    iget-object v3, v1, Lorg/telegram/messenger/exoplayer2/Format;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    .line 579
    invoke-static {v2, v3}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->metadata:Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    iget-object v3, v1, Lorg/telegram/messenger/exoplayer2/Format;->metadata:Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    .line 580
    invoke-static {v2, v3}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->colorInfo:Lorg/telegram/messenger/exoplayer2/video/ColorInfo;

    iget-object v3, v1, Lorg/telegram/messenger/exoplayer2/Format;->colorInfo:Lorg/telegram/messenger/exoplayer2/video/ColorInfo;

    .line 581
    invoke-static {v2, v3}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->projectionData:[B

    iget-object v3, v1, Lorg/telegram/messenger/exoplayer2/Format;->projectionData:[B

    .line 582
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->initializationData:Ljava/util/List;

    .line 583
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, v1, Lorg/telegram/messenger/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_4

    :cond_3
    move v2, v5

    .line 584
    goto/16 :goto_0

    .line 586
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 587
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iget-object v3, v1, Lorg/telegram/messenger/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v5

    .line 588
    goto/16 :goto_0

    .line 586
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    move v2, v4

    .line 591
    goto/16 :goto_0
.end method

.method public final getFrameworkMediaFormatV16()Landroid/media/MediaFormat;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 509
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 510
    .local v0, "format":Landroid/media/MediaFormat;
    const-string/jumbo v2, "mime"

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    const-string/jumbo v2, "language"

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/Format;->maybeSetStringV16(Landroid/media/MediaFormat;Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const-string/jumbo v2, "max-input-size"

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->maxInputSize:I

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/Format;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 513
    const-string/jumbo v2, "width"

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/Format;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 514
    const-string/jumbo v2, "height"

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/Format;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 515
    const-string/jumbo v2, "frame-rate"

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->frameRate:F

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/Format;->maybeSetFloatV16(Landroid/media/MediaFormat;Ljava/lang/String;F)V

    .line 516
    const-string/jumbo v2, "rotation-degrees"

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->rotationDegrees:I

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/Format;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 517
    const-string/jumbo v2, "channel-count"

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->channelCount:I

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/Format;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 518
    const-string/jumbo v2, "sample-rate"

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->sampleRate:I

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/Format;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 519
    const-string/jumbo v2, "encoder-delay"

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->encoderDelay:I

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/Format;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 520
    const-string/jumbo v2, "encoder-padding"

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->encoderPadding:I

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/Format;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 521
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 522
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "csd-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 521
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 524
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->colorInfo:Lorg/telegram/messenger/exoplayer2/video/ColorInfo;

    invoke-static {v0, v2}, Lorg/telegram/messenger/exoplayer2/Format;->maybeSetColorInfoV24(Landroid/media/MediaFormat;Lorg/telegram/messenger/exoplayer2/video/ColorInfo;)V

    .line 525
    return-object v0
.end method

.method public getPixelCount()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 500
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 537
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->hashCode:I

    if-nez v1, :cond_0

    .line 538
    const/16 v0, 0x11

    .line 539
    .local v0, "result":I
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->id:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 540
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 541
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    if-nez v1, :cond_3

    move v1, v2

    :goto_2
    add-int v0, v3, v1

    .line 542
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->codecs:Ljava/lang/String;

    if-nez v1, :cond_4

    move v1, v2

    :goto_3
    add-int v0, v3, v1

    .line 543
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->bitrate:I

    add-int v0, v1, v3

    .line 544
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    add-int v0, v1, v3

    .line 545
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    add-int v0, v1, v3

    .line 546
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->channelCount:I

    add-int v0, v1, v3

    .line 547
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->sampleRate:I

    add-int v0, v1, v3

    .line 548
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->language:Ljava/lang/String;

    if-nez v1, :cond_5

    move v1, v2

    :goto_4
    add-int v0, v3, v1

    .line 549
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->accessibilityChannel:I

    add-int v0, v1, v3

    .line 550
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    if-nez v1, :cond_6

    move v1, v2

    :goto_5
    add-int v0, v3, v1

    .line 551
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->metadata:Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    if-nez v3, :cond_7

    :goto_6
    add-int v0, v1, v2

    .line 552
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->hashCode:I

    .line 554
    .end local v0    # "result":I
    :cond_0
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->hashCode:I

    return v1

    .line 539
    .restart local v0    # "result":I
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 540
    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    .line 541
    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    .line 542
    :cond_4
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    .line 548
    :cond_5
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    .line 550
    :cond_6
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;->hashCode()I

    move-result v1

    goto :goto_5

    .line 551
    :cond_7
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->metadata:Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/metadata/Metadata;->hashCode()I

    move-result v2

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Format("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->bitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->frameRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "], ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->channelCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->sampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "])"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x0

    .line 674
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 675
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 676
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 677
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 678
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->bitrate:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 679
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->maxInputSize:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 680
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 681
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 682
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->frameRate:F

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 683
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->rotationDegrees:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 684
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->pixelWidthHeightRatio:F

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 685
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->projectionData:[B

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 686
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->projectionData:[B

    if-eqz v2, :cond_0

    .line 687
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->projectionData:[B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 689
    :cond_0
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->stereoMode:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 690
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->colorInfo:Lorg/telegram/messenger/exoplayer2/video/ColorInfo;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 691
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->channelCount:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 692
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->sampleRate:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 693
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->pcmEncoding:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 694
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->encoderDelay:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 695
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->encoderPadding:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 696
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->selectionFlags:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 697
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 698
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->accessibilityChannel:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 699
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/Format;->subsampleOffsetUs:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 700
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 701
    .local v1, "initializationDataSize":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 702
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 703
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 702
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "initializationDataSize":I
    :cond_1
    move v2, v3

    .line 685
    goto :goto_0

    .line 705
    .restart local v0    # "i":I
    .restart local v1    # "initializationDataSize":I
    :cond_2
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 706
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->metadata:Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 707
    return-void
.end method
