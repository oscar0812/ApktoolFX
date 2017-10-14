.class final Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;
.super Ljava/lang/Object;
.source "NalUnitTargetBuffer.java"


# instance fields
.field private isCompleted:Z

.field private isFilling:Z

.field public nalData:[B

.field public nalLength:I

.field private final targetType:I


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .param p1, "targetType"    # I
    .param p2, "initialCapacity"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->targetType:I

    .line 39
    add-int/lit8 v0, p2, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    .line 40
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    .line 41
    return-void
.end method


# virtual methods
.method public appendToNalUnit([BII)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "limit"    # I

    .prologue
    .line 81
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    if-nez v1, :cond_0

    .line 90
    :goto_0
    return-void

    .line 84
    :cond_0
    sub-int v0, p3, p2

    .line 85
    .local v0, "readLength":I
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    array-length v1, v1

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v2, v0

    if-ge v1, v2, :cond_1

    .line 86
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    .line 88
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    goto :goto_0
.end method

.method public endNalUnit(I)Z
    .locals 3
    .param p1, "discardPadding"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 100
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    if-nez v2, :cond_0

    .line 106
    :goto_0
    return v0

    .line 103
    :cond_0
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    sub-int/2addr v2, p1

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    .line 104
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    .line 105
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    move v0, v1

    .line 106
    goto :goto_0
.end method

.method public isCompleted()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    .line 48
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    .line 49
    return-void
.end method

.method public startNalUnit(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 64
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 65
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->targetType:I

    if-ne p1, v0, :cond_2

    :goto_1
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    .line 66
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    if-eqz v0, :cond_0

    .line 68
    const/4 v0, 0x3

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    .line 69
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    .line 71
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 64
    goto :goto_0

    :cond_2
    move v1, v2

    .line 65
    goto :goto_1
.end method
