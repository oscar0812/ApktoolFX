.class final Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;
.super Ljava/lang/Object;
.source "H264Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SliceHeaderData"
.end annotation


# static fields
.field private static final SLICE_TYPE_ALL_I:I = 0x7

.field private static final SLICE_TYPE_I:I = 0x2


# instance fields
.field private bottomFieldFlag:Z

.field private bottomFieldFlagPresent:Z

.field private deltaPicOrderCnt0:I

.field private deltaPicOrderCnt1:I

.field private deltaPicOrderCntBottom:I

.field private fieldPicFlag:Z

.field private frameNum:I

.field private hasSliceType:Z

.field private idrPicFlag:Z

.field private idrPicId:I

.field private isComplete:Z

.field private nalRefIdc:I

.field private picOrderCntLsb:I

.field private picParameterSetId:I

.field private sliceType:I

.field private spsData:Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$1;

    .prologue
    .line 441
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;
    .param p1, "x1"    # Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .prologue
    .line 441
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->isFirstVclNalUnitOfPicture(Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;)Z

    move-result v0

    return v0
.end method

.method private isFirstVclNalUnitOfPicture(Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;)Z
    .locals 3
    .param p1, "other"    # Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .prologue
    const/4 v0, 0x1

    .line 502
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->isComplete:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p1, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->isComplete:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->frameNum:I

    iget v2, p1, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->frameNum:I

    if-ne v1, v2, :cond_4

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->picParameterSetId:I

    iget v2, p1, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->picParameterSetId:I

    if-ne v1, v2, :cond_4

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->fieldPicFlag:Z

    iget-boolean v2, p1, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->fieldPicFlag:Z

    if-ne v1, v2, :cond_4

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->bottomFieldFlagPresent:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->bottomFieldFlagPresent:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->bottomFieldFlag:Z

    iget-boolean v2, p1, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->bottomFieldFlag:Z

    if-ne v1, v2, :cond_4

    :cond_0
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->nalRefIdc:I

    iget v2, p1, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->nalRefIdc:I

    if-eq v1, v2, :cond_1

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->nalRefIdc:I

    if-eqz v1, :cond_4

    iget v1, p1, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->nalRefIdc:I

    if-eqz v1, :cond_4

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->spsData:Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;

    iget v1, v1, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;->picOrderCountType:I

    if-nez v1, :cond_2

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->spsData:Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;

    iget v1, v1, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;->picOrderCountType:I

    if-nez v1, :cond_2

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->picOrderCntLsb:I

    iget v2, p1, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->picOrderCntLsb:I

    if-ne v1, v2, :cond_4

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCntBottom:I

    iget v2, p1, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCntBottom:I

    if-ne v1, v2, :cond_4

    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->spsData:Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;

    iget v1, v1, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;->picOrderCountType:I

    if-ne v1, v0, :cond_3

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->spsData:Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;

    iget v1, v1, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;->picOrderCountType:I

    if-ne v1, v0, :cond_3

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCnt0:I

    iget v2, p1, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCnt0:I

    if-ne v1, v2, :cond_4

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCnt1:I

    iget v2, p1, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCnt1:I

    if-ne v1, v2, :cond_4

    :cond_3
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->idrPicFlag:Z

    iget-boolean v2, p1, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->idrPicFlag:Z

    if-ne v1, v2, :cond_4

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->idrPicFlag:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p1, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->idrPicFlag:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->idrPicId:I

    iget v2, p1, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->idrPicId:I

    if-eq v1, v2, :cond_5

    :cond_4
    :goto_0
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 465
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->hasSliceType:Z

    .line 466
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->isComplete:Z

    .line 467
    return-void
.end method

.method public isISlice()Z
    .locals 2

    .prologue
    .line 497
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->hasSliceType:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->sliceType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->sliceType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAll(Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;IIIIZZZZIIIII)V
    .locals 1
    .param p1, "spsData"    # Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;
    .param p2, "nalRefIdc"    # I
    .param p3, "sliceType"    # I
    .param p4, "frameNum"    # I
    .param p5, "picParameterSetId"    # I
    .param p6, "fieldPicFlag"    # Z
    .param p7, "bottomFieldFlagPresent"    # Z
    .param p8, "bottomFieldFlag"    # Z
    .param p9, "idrPicFlag"    # Z
    .param p10, "idrPicId"    # I
    .param p11, "picOrderCntLsb"    # I
    .param p12, "deltaPicOrderCntBottom"    # I
    .param p13, "deltaPicOrderCnt0"    # I
    .param p14, "deltaPicOrderCnt1"    # I

    .prologue
    const/4 v0, 0x1

    .line 478
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->spsData:Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;

    .line 479
    iput p2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->nalRefIdc:I

    .line 480
    iput p3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->sliceType:I

    .line 481
    iput p4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->frameNum:I

    .line 482
    iput p5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->picParameterSetId:I

    .line 483
    iput-boolean p6, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->fieldPicFlag:Z

    .line 484
    iput-boolean p7, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->bottomFieldFlagPresent:Z

    .line 485
    iput-boolean p8, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->bottomFieldFlag:Z

    .line 486
    iput-boolean p9, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->idrPicFlag:Z

    .line 487
    iput p10, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->idrPicId:I

    .line 488
    iput p11, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->picOrderCntLsb:I

    .line 489
    iput p12, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCntBottom:I

    .line 490
    iput p13, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCnt0:I

    .line 491
    iput p14, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCnt1:I

    .line 492
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->isComplete:Z

    .line 493
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->hasSliceType:Z

    .line 494
    return-void
.end method

.method public setSliceType(I)V
    .locals 1
    .param p1, "sliceType"    # I

    .prologue
    .line 470
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->sliceType:I

    .line 471
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->hasSliceType:Z

    .line 472
    return-void
.end method
