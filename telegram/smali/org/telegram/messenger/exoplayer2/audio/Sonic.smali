.class final Lorg/telegram/messenger/exoplayer2/audio/Sonic;
.super Ljava/lang/Object;
.source "Sonic.java"


# static fields
.field private static final AMDF_FREQUENCY:I = 0xfa0

.field private static final MAXIMUM_PITCH:I = 0x190

.field private static final MINIMUM_PITCH:I = 0x41

.field private static final USE_CHORD_PITCH:Z


# instance fields
.field private final downSampleBuffer:[S

.field private inputBuffer:[S

.field private inputBufferSize:I

.field private maxDiff:I

.field private final maxPeriod:I

.field private final maxRequired:I

.field private minDiff:I

.field private final minPeriod:I

.field private newRatePosition:I

.field private final numChannels:I

.field private numInputSamples:I

.field private numOutputSamples:I

.field private numPitchSamples:I

.field private oldRatePosition:I

.field private outputBuffer:[S

.field private outputBufferSize:I

.field private pitch:F

.field private pitchBuffer:[S

.field private pitchBufferSize:I

.field private prevMinDiff:I

.field private prevPeriod:I

.field private remainingInputToCopy:I

.field private final sampleRate:I

.field private speed:F


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .param p1, "sampleRate"    # I
    .param p2, "numChannels"    # I

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->sampleRate:I

    .line 69
    iput p2, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numChannels:I

    .line 70
    div-int/lit16 v0, p1, 0x190

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->minPeriod:I

    .line 71
    div-int/lit8 v0, p1, 0x41

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->maxPeriod:I

    .line 72
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->maxPeriod:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->maxRequired:I

    .line 73
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->maxRequired:I

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->downSampleBuffer:[S

    .line 74
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->maxRequired:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->inputBufferSize:I

    .line 75
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->maxRequired:I

    mul-int/2addr v0, p2

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->inputBuffer:[S

    .line 76
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->maxRequired:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->outputBufferSize:I

    .line 77
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->maxRequired:I

    mul-int/2addr v0, p2

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->outputBuffer:[S

    .line 78
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->maxRequired:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->pitchBufferSize:I

    .line 79
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->maxRequired:I

    mul-int/2addr v0, p2

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->pitchBuffer:[S

    .line 80
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->oldRatePosition:I

    .line 81
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->newRatePosition:I

    .line 82
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->prevPeriod:I

    .line 83
    iput v2, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->speed:F

    .line 84
    iput v2, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->pitch:F

    .line 85
    return-void
.end method

.method private adjustPitch(I)V
    .locals 17
    .param p1, "originalNumOutputSamples"    # I

    .prologue
    .line 353
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numOutputSamples:I

    move/from16 v0, p1

    if-ne v2, v0, :cond_0

    .line 374
    :goto_0
    return-void

    .line 356
    :cond_0
    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->moveNewSamplesToPitchBuffer(I)V

    .line 357
    const/4 v6, 0x0

    .line 358
    .local v6, "position":I
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numPitchSamples:I

    sub-int/2addr v2, v6

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->maxRequired:I

    if-lt v2, v3, :cond_2

    .line 359
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->pitchBuffer:[S

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6, v3}, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->findPitchPeriod([SIZ)I

    move-result v16

    .line 360
    .local v16, "period":I
    move/from16 v0, v16

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->pitch:F

    div-float/2addr v2, v3

    float-to-int v1, v2

    .line 361
    .local v1, "newPeriod":I
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->enlargeOutputBufferIfNeeded(I)V

    .line 362
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->pitch:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    .line 363
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numChannels:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->outputBuffer:[S

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numOutputSamples:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->pitchBuffer:[S

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->pitchBuffer:[S

    add-int v8, v6, v16

    sub-int/2addr v8, v1

    invoke-static/range {v1 .. v8}, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->overlapAdd(II[SI[SI[SI)V

    .line 370
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numOutputSamples:I

    add-int/2addr v2, v1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numOutputSamples:I

    .line 371
    add-int v6, v6, v16

    .line 372
    goto :goto_1

    .line 366
    :cond_1
    sub-int v9, v1, v16

    .line 367
    .local v9, "separation":I
    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numChannels:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->outputBuffer:[S

    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numOutputSamples:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->pitchBuffer:[S

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->pitchBuffer:[S

    move/from16 v7, v16

    move v13, v6

    move v15, v6

    invoke-static/range {v7 .. v15}, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->overlapAddWithSeparation(III[SI[SI[SI)V

    goto :goto_2

    .line 373
    .end local v1    # "newPeriod":I
    .end local v9    # "separation":I
    .end local v16    # "period":I
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->removePitchSamples(I)V

    goto :goto_0
.end method

.method private adjustRate(FI)V
    .locals 10
    .param p1, "rate"    # F
    .param p2, "originalNumOutputSamples"    # I

    .prologue
    const/16 v7, 0x4000

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 388
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numOutputSamples:I

    if-ne v4, p2, :cond_0

    .line 418
    :goto_0
    return-void

    .line 391
    :cond_0
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->sampleRate:I

    int-to-float v4, v4

    div-float/2addr v4, p1

    float-to-int v1, v4

    .line 392
    .local v1, "newSampleRate":I
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->sampleRate:I

    .line 394
    .local v2, "oldSampleRate":I
    :goto_1
    if-gt v1, v7, :cond_1

    if-le v2, v7, :cond_2

    .line 395
    :cond_1
    div-int/lit8 v1, v1, 0x2

    .line 396
    div-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 398
    :cond_2
    invoke-direct {p0, p2}, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->moveNewSamplesToPitchBuffer(I)V

    .line 400
    const/4 v3, 0x0

    .local v3, "position":I
    :goto_2
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numPitchSamples:I

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_7

    .line 401
    :goto_3
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->oldRatePosition:I

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v4, v1

    iget v7, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->newRatePosition:I

    mul-int/2addr v7, v2

    if-le v4, v7, :cond_4

    .line 402
    invoke-direct {p0, v5}, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->enlargeOutputBufferIfNeeded(I)V

    .line 403
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numChannels:I

    if-ge v0, v4, :cond_3

    .line 404
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v7, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numOutputSamples:I

    iget v8, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numChannels:I

    mul-int/2addr v7, v8

    add-int/2addr v7, v0

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->pitchBuffer:[S

    add-int v9, v3, v0

    .line 405
    invoke-direct {p0, v8, v9, v2, v1}, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->interpolate([SIII)S

    move-result v8

    aput-short v8, v4, v7

    .line 403
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 407
    :cond_3
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->newRatePosition:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->newRatePosition:I

    .line 408
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numOutputSamples:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numOutputSamples:I

    goto :goto_3

    .line 410
    .end local v0    # "i":I
    :cond_4
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->oldRatePosition:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->oldRatePosition:I

    .line 411
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->oldRatePosition:I

    if-ne v4, v2, :cond_5

    .line 412
    iput v6, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->oldRatePosition:I

    .line 413
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->newRatePosition:I

    if-ne v4, v1, :cond_6

    move v4, v5

    :goto_5
    invoke-static {v4}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 414
    iput v6, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->newRatePosition:I

    .line 400
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    move v4, v6

    .line 413
    goto :goto_5

    .line 417
    :cond_7
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numPitchSamples:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4}, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->removePitchSamples(I)V

    goto :goto_0
.end method

.method private changeSpeed(F)V
    .locals 8
    .param p1, "speed"    # F

    .prologue
    .line 455
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numInputSamples:I

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->maxRequired:I

    if-ge v3, v4, :cond_0

    .line 473
    :goto_0
    return-void

    .line 458
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numInputSamples:I

    .line 459
    .local v0, "numSamples":I
    const/4 v2, 0x0

    .line 461
    .local v2, "position":I
    :cond_1
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->remainingInputToCopy:I

    if-lez v3, :cond_2

    .line 462
    invoke-direct {p0, v2}, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->copyInputToOutput(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 471
    :goto_1
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->maxRequired:I

    add-int/2addr v3, v2

    if-le v3, v0, :cond_1

    .line 472
    invoke-direct {p0, v2}, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->removeProcessedInputSamples(I)V

    goto :goto_0

    .line 464
    :cond_2
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->inputBuffer:[S

    const/4 v4, 0x1

    invoke-direct {p0, v3, v2, v4}, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->findPitchPeriod([SIZ)I

    move-result v1

    .line 465
    .local v1, "period":I
    float-to-double v4, p1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v4, v6

    if-lez v3, :cond_3

    .line 466
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->inputBuffer:[S

    invoke-direct {p0, v3, v2, p1, v1}, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->skipPitchPeriod([SIFI)I

    move-result v3

    add-int/2addr v3, v1

    add-int/2addr v2, v3

    goto :goto_1

    .line 468
    :cond_3
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->inputBuffer:[S

    invoke-direct {p0, v3, v2, p1, v1}, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->insertPitchPeriod([SIFI)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1
.end method

.method private copyInputToOutput(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 209
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->maxRequired:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->remainingInputToCopy:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 210
    .local v0, "numSamples":I
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->inputBuffer:[S

    invoke-direct {p0, v1, p1, v0}, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->copyToOutput([SII)V

    .line 211
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->remainingInputToCopy:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->remainingInputToCopy:I

    .line 212
    return v0
.end method

.method private copyToOutput([SII)V
    .locals 4
    .param p1, "samples"    # [S
    .param p2, "position"    # I
    .param p3, "numSamples"    # I

    .prologue
    .line 202
    invoke-direct {p0, p3}, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->enlargeOutputBufferIfNeeded(I)V

    .line 203
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numChannels:I

    mul-int/2addr v0, p2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numOutputSamples:I

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numChannels:I

    mul-int/2addr v2, v3

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numChannels:I

    mul-int/2addr v3, p3

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numOutputSamples:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numOutputSamples:I

    .line 206
    return-void
.end method

.method private downSampleInput([SII)V
    .locals 7
    .param p1, "samples"    # [S
    .param p2, "position"    # I
    .param p3, "skip"    # I

    .prologue
    .line 218
    iget v5, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->maxRequired:I

    div-int v2, v5, p3

    .line 219
    .local v2, "numSamples":I
    iget v5, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numChannels:I

    mul-int v3, v5, p3

    .line 220
    .local v3, "samplesPerValue":I
    iget v5, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numChannels:I

    mul-int/2addr p2, v5

    .line 221
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 222
    const/4 v4, 0x0

    .line 223
    .local v4, "value":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 224
    mul-int v5, v0, v3

    add-int/2addr v5, p2

    add-int/2addr v5, v1

    aget-short v5, p1, v5

    add-int/2addr v4, v5

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 226
    :cond_0
    div-int/2addr v4, v3

    .line 227
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->downSampleBuffer:[S

    int-to-short v6, v4

    aput-short v6, v5, v0

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 229
    .end local v1    # "j":I
    .end local v4    # "value":I
    :cond_1
    return-void
.end method

.method private enlargeInputBufferIfNeeded(I)V
    .locals 3
    .param p1, "numSamples"    # I

    .prologue
    .line 188
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numInputSamples:I

    add-int/2addr v0, p1

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->inputBufferSize:I

    if-le v0, v1, :cond_0

    .line 189
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->inputBufferSize:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->inputBufferSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->inputBufferSize:I

    .line 190
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->inputBuffer:[S

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->inputBufferSize:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numChannels:I

    mul-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->inputBuffer:[S

    .line 192
    :cond_0
    return-void
.end method

.method private enlargeOutputBufferIfNeeded(I)V
    .locals 3
    .param p1, "numSamples"    # I

    .prologue
    .line 181
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numOutputSamples:I

    add-int/2addr v0, p1

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->outputBufferSize:I

    if-le v0, v1, :cond_0

    .line 182
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->outputBufferSize:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->outputBufferSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->outputBufferSize:I

    .line 183
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->outputBufferSize:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numChannels:I

    mul-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->outputBuffer:[S

    .line 185
    :cond_0
    return-void
.end method

.method private findPitchPeriod([SIZ)I
    .locals 10
    .param p1, "samples"    # [S
    .param p2, "position"    # I
    .param p3, "preferNewPeriod"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    .line 295
    iget v6, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->sampleRate:I

    const/16 v7, 0xfa0

    if-le v6, v7, :cond_1

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->sampleRate:I

    div-int/lit16 v4, v6, 0xfa0

    .line 296
    .local v4, "skip":I
    :goto_0
    iget v6, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numChannels:I

    if-ne v6, v5, :cond_2

    if-ne v4, v5, :cond_2

    .line 297
    iget v5, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->minPeriod:I

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->maxPeriod:I

    invoke-direct {p0, p1, p2, v5, v6}, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->findPitchPeriodInRange([SIII)I

    move-result v2

    .line 319
    .local v2, "period":I
    :cond_0
    :goto_1
    iget v5, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->minDiff:I

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->maxDiff:I

    invoke-direct {p0, v5, v6, p3}, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->previousPeriodBetter(IIZ)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 320
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->prevPeriod:I

    .line 324
    .local v3, "retPeriod":I
    :goto_2
    iget v5, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->minDiff:I

    iput v5, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->prevMinDiff:I

    .line 325
    iput v2, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->prevPeriod:I

    .line 326
    return v3

    .end local v2    # "period":I
    .end local v3    # "retPeriod":I
    .end local v4    # "skip":I
    :cond_1
    move v4, v5

    .line 295
    goto :goto_0

    .line 299
    .restart local v4    # "skip":I
    :cond_2
    invoke-direct {p0, p1, p2, v4}, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->downSampleInput([SII)V

    .line 300
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->downSampleBuffer:[S

    iget v7, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->minPeriod:I

    div-int/2addr v7, v4

    iget v8, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->maxPeriod:I

    div-int/2addr v8, v4

    invoke-direct {p0, v6, v9, v7, v8}, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->findPitchPeriodInRange([SIII)I

    move-result v2

    .line 301
    .restart local v2    # "period":I
    if-eq v4, v5, :cond_0

    .line 302
    mul-int/2addr v2, v4

    .line 303
    mul-int/lit8 v6, v4, 0x4

    sub-int v1, v2, v6

    .line 304
    .local v1, "minP":I
    mul-int/lit8 v6, v4, 0x4

    add-int v0, v2, v6

    .line 305
    .local v0, "maxP":I
    iget v6, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->minPeriod:I

    if-ge v1, v6, :cond_3

    .line 306
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->minPeriod:I

    .line 308
    :cond_3
    iget v6, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->maxPeriod:I

    if-le v0, v6, :cond_4

    .line 309
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->maxPeriod:I

    .line 311
    :cond_4
    iget v6, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numChannels:I

    if-ne v6, v5, :cond_5

    .line 312
    invoke-direct {p0, p1, p2, v1, v0}, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->findPitchPeriodInRange([SIII)I

    move-result v2

    goto :goto_1

    .line 314
    :cond_5
    invoke-direct {p0, p1, p2, v5}, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->downSampleInput([SII)V

    .line 315
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->downSampleBuffer:[S

    invoke-direct {p0, v5, v9, v1, v0}, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->findPitchPeriodInRange([SIII)I

    move-result v2

    goto :goto_1

    .line 322
    .end local v0    # "maxP":I
    .end local v1    # "minP":I
    :cond_6
    move v3, v2

    .restart local v3    # "retPeriod":I
    goto :goto_2
.end method

.method private findPitchPeriodInRange([SIII)I
    .locals 11
    .param p1, "samples"    # [S
    .param p2, "position"    # I
    .param p3, "minPeriod"    # I
    .param p4, "maxPeriod"    # I

    .prologue
    .line 234
    const/4 v0, 0x0

    .line 235
    .local v0, "bestPeriod":I
    const/16 v8, 0xff

    .line 236
    .local v8, "worstPeriod":I
    const/4 v4, 0x1

    .line 237
    .local v4, "minDiff":I
    const/4 v3, 0x0

    .line 238
    .local v3, "maxDiff":I
    iget v9, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numChannels:I

    mul-int/2addr p2, v9

    .line 239
    move v6, p3

    .local v6, "period":I
    :goto_0
    if-gt v6, p4, :cond_4

    .line 240
    const/4 v1, 0x0

    .line 241
    .local v1, "diff":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v6, :cond_1

    .line 242
    add-int v9, p2, v2

    aget-short v7, p1, v9

    .line 243
    .local v7, "sVal":S
    add-int v9, p2, v6

    add-int/2addr v9, v2

    aget-short v5, p1, v9

    .line 244
    .local v5, "pVal":S
    if-lt v7, v5, :cond_0

    sub-int v9, v7, v5

    :goto_2
    add-int/2addr v1, v9

    .line 241
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 244
    :cond_0
    sub-int v9, v5, v7

    goto :goto_2

    .line 249
    .end local v5    # "pVal":S
    .end local v7    # "sVal":S
    :cond_1
    mul-int v9, v1, v0

    mul-int v10, v4, v6

    if-ge v9, v10, :cond_2

    .line 250
    move v4, v1

    .line 251
    move v0, v6

    .line 253
    :cond_2
    mul-int v9, v1, v8

    mul-int v10, v3, v6

    if-le v9, v10, :cond_3

    .line 254
    move v3, v1

    .line 255
    move v8, v6

    .line 239
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 258
    .end local v1    # "diff":I
    .end local v2    # "i":I
    :cond_4
    div-int v9, v4, v0

    iput v9, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->minDiff:I

    .line 259
    div-int v9, v3, v8

    iput v9, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->maxDiff:I

    .line 260
    return v0
.end method

.method private insertPitchPeriod([SIFI)I
    .locals 8
    .param p1, "samples"    # [S
    .param p2, "position"    # I
    .param p3, "speed"    # F
    .param p4, "period"    # I

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 439
    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v1, p3, v1

    if-gez v1, :cond_0

    .line 440
    int-to-float v1, p4

    mul-float/2addr v1, p3

    sub-float v2, v3, p3

    div-float/2addr v1, v2

    float-to-int v0, v1

    .line 445
    .local v0, "newSamples":I
    :goto_0
    add-int v1, p4, v0

    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->enlargeOutputBufferIfNeeded(I)V

    .line 446
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numChannels:I

    mul-int/2addr v1, p2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numOutputSamples:I

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numChannels:I

    mul-int/2addr v3, v4

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numChannels:I

    mul-int/2addr v4, p4

    invoke-static {p1, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 448
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numChannels:I

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numOutputSamples:I

    add-int/2addr v3, p4

    add-int v5, p2, p4

    move-object v4, p1

    move-object v6, p1

    move v7, p2

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->overlapAdd(II[SI[SI[SI)V

    .line 450
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numOutputSamples:I

    add-int v2, p4, v0

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numOutputSamples:I

    .line 451
    return v0

    .line 442
    .end local v0    # "newSamples":I
    :cond_0
    move v0, p4

    .line 443
    .restart local v0    # "newSamples":I
    int-to-float v1, p4

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, p3

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    sub-float v2, v3, p3

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->remainingInputToCopy:I

    goto :goto_0
.end method

.method private interpolate([SIII)S
    .locals 9
    .param p1, "in"    # [S
    .param p2, "inPos"    # I
    .param p3, "oldSampleRate"    # I
    .param p4, "newSampleRate"    # I

    .prologue
    .line 377
    iget v7, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numChannels:I

    mul-int/2addr v7, p2

    aget-short v0, p1, v7

    .line 378
    .local v0, "left":S
    iget v7, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numChannels:I

    mul-int/2addr v7, p2

    iget v8, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numChannels:I

    add-int/2addr v7, v8

    aget-short v4, p1, v7

    .line 379
    .local v4, "right":S
    iget v7, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->newRatePosition:I

    mul-int v2, v7, p3

    .line 380
    .local v2, "position":I
    iget v7, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->oldRatePosition:I

    mul-int v1, v7, p4

    .line 381
    .local v1, "leftPosition":I
    iget v7, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->oldRatePosition:I

    add-int/lit8 v7, v7, 0x1

    mul-int v5, v7, p4

    .line 382
    .local v5, "rightPosition":I
    sub-int v3, v5, v2

    .line 383
    .local v3, "ratio":I
    sub-int v6, v5, v1

    .line 384
    .local v6, "width":I
    mul-int v7, v3, v0

    sub-int v8, v6, v3

    mul-int/2addr v8, v4

    add-int/2addr v7, v8

    div-int/2addr v7, v6

    int-to-short v7, v7

    return v7
.end method

.method private moveNewSamplesToPitchBuffer(I)V
    .locals 6
    .param p1, "originalNumOutputSamples"    # I

    .prologue
    .line 330
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numOutputSamples:I

    sub-int v0, v1, p1

    .line 331
    .local v0, "numSamples":I
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numPitchSamples:I

    add-int/2addr v1, v0

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->pitchBufferSize:I

    if-le v1, v2, :cond_0

    .line 332
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->pitchBufferSize:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->pitchBufferSize:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->pitchBufferSize:I

    .line 333
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->pitchBuffer:[S

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->pitchBufferSize:I

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numChannels:I

    mul-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->pitchBuffer:[S

    .line 335
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numChannels:I

    mul-int/2addr v2, p1

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->pitchBuffer:[S

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numPitchSamples:I

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numChannels:I

    mul-int/2addr v4, v5

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numChannels:I

    mul-int/2addr v5, v0

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 337
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numOutputSamples:I

    .line 338
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numPitchSamples:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numPitchSamples:I

    .line 339
    return-void
.end method

.method private static overlapAdd(II[SI[SI[SI)V
    .locals 7
    .param p0, "numSamples"    # I
    .param p1, "numChannels"    # I
    .param p2, "out"    # [S
    .param p3, "outPos"    # I
    .param p4, "rampDown"    # [S
    .param p5, "rampDownPos"    # I
    .param p6, "rampUp"    # [S
    .param p7, "rampUpPos"    # I

    .prologue
    .line 496
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 497
    mul-int v5, p3, p1

    add-int v2, v5, v1

    .line 498
    .local v2, "o":I
    mul-int v5, p7, p1

    add-int v4, v5, v1

    .line 499
    .local v4, "u":I
    mul-int v5, p5, p1

    add-int v0, v5, v1

    .line 500
    .local v0, "d":I
    const/4 v3, 0x0

    .local v3, "t":I
    :goto_1
    if-ge v3, p0, :cond_0

    .line 501
    aget-short v5, p4, v0

    sub-int v6, p0, v3

    mul-int/2addr v5, v6

    aget-short v6, p6, v4

    mul-int/2addr v6, v3

    add-int/2addr v5, v6

    div-int/2addr v5, p0

    int-to-short v5, v5

    aput-short v5, p2, v2

    .line 502
    add-int/2addr v2, p1

    .line 503
    add-int/2addr v0, p1

    .line 504
    add-int/2addr v4, p1

    .line 500
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 496
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 507
    .end local v0    # "d":I
    .end local v2    # "o":I
    .end local v3    # "t":I
    .end local v4    # "u":I
    :cond_1
    return-void
.end method

.method private static overlapAddWithSeparation(III[SI[SI[SI)V
    .locals 8
    .param p0, "numSamples"    # I
    .param p1, "numChannels"    # I
    .param p2, "separation"    # I
    .param p3, "out"    # [S
    .param p4, "outPos"    # I
    .param p5, "rampDown"    # [S
    .param p6, "rampDownPos"    # I
    .param p7, "rampUp"    # [S
    .param p8, "rampUpPos"    # I

    .prologue
    .line 511
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_3

    .line 512
    mul-int v5, p4, p1

    add-int v2, v5, v1

    .line 513
    .local v2, "o":I
    mul-int v5, p8, p1

    add-int v4, v5, v1

    .line 514
    .local v4, "u":I
    mul-int v5, p6, p1

    add-int v0, v5, v1

    .line 515
    .local v0, "d":I
    const/4 v3, 0x0

    .local v3, "t":I
    :goto_1
    add-int v5, p0, p2

    if-ge v3, v5, :cond_2

    .line 516
    if-ge v3, p2, :cond_0

    .line 517
    aget-short v5, p5, v0

    sub-int v6, p0, v3

    mul-int/2addr v5, v6

    div-int/2addr v5, p0

    int-to-short v5, v5

    aput-short v5, p3, v2

    .line 518
    add-int/2addr v0, p1

    .line 529
    :goto_2
    add-int/2addr v2, p1

    .line 515
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 519
    :cond_0
    if-ge v3, p0, :cond_1

    .line 520
    aget-short v5, p5, v0

    sub-int v6, p0, v3

    mul-int/2addr v5, v6

    aget-short v6, p7, v4

    sub-int v7, v3, p2

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    div-int/2addr v5, p0

    int-to-short v5, v5

    aput-short v5, p3, v2

    .line 523
    add-int/2addr v0, p1

    .line 524
    add-int/2addr v4, p1

    goto :goto_2

    .line 526
    :cond_1
    aget-short v5, p7, v4

    sub-int v6, v3, p2

    mul-int/2addr v5, v6

    div-int/2addr v5, p0

    int-to-short v5, v5

    aput-short v5, p3, v2

    .line 527
    add-int/2addr v4, p1

    goto :goto_2

    .line 511
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 532
    .end local v0    # "d":I
    .end local v2    # "o":I
    .end local v3    # "t":I
    .end local v4    # "u":I
    :cond_3
    return-void
.end method

.method private previousPeriodBetter(IIZ)Z
    .locals 3
    .param p1, "minDiff"    # I
    .param p2, "maxDiff"    # I
    .param p3, "preferNewPeriod"    # Z

    .prologue
    const/4 v0, 0x0

    .line 268
    if-eqz p1, :cond_0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->prevPeriod:I

    if-nez v1, :cond_1

    .line 285
    :cond_0
    :goto_0
    return v0

    .line 271
    :cond_1
    if-eqz p3, :cond_3

    .line 272
    mul-int/lit8 v1, p1, 0x3

    if-gt p2, v1, :cond_0

    .line 276
    mul-int/lit8 v1, p1, 0x2

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->prevMinDiff:I

    mul-int/lit8 v2, v2, 0x3

    if-le v1, v2, :cond_0

    .line 285
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 281
    :cond_3
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->prevMinDiff:I

    if-gt p1, v1, :cond_2

    goto :goto_0
.end method

.method private processStreamInput()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 477
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numOutputSamples:I

    .line 478
    .local v0, "originalNumOutputSamples":I
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->speed:F

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->pitch:F

    div-float v1, v2, v3

    .line 479
    .local v1, "s":F
    float-to-double v2, v1

    const-wide v4, 0x3ff0000a7c5ac472L    # 1.00001

    cmpl-double v2, v2, v4

    if-gtz v2, :cond_0

    float-to-double v2, v1

    const-wide v4, 0x3fefffeb074a771dL    # 0.99999

    cmpg-double v2, v2, v4

    if-gez v2, :cond_2

    .line 480
    :cond_0
    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->changeSpeed(F)V

    .line 489
    :goto_0
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->pitch:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 490
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->pitch:F

    invoke-direct {p0, v2, v0}, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->adjustRate(FI)V

    .line 492
    :cond_1
    return-void

    .line 482
    :cond_2
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->inputBuffer:[S

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numInputSamples:I

    invoke-direct {p0, v2, v6, v3}, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->copyToOutput([SII)V

    .line 483
    iput v6, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numInputSamples:I

    goto :goto_0
.end method

.method private removePitchSamples(I)V
    .locals 6
    .param p1, "numSamples"    # I

    .prologue
    .line 342
    if-nez p1, :cond_0

    .line 348
    :goto_0
    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->pitchBuffer:[S

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numChannels:I

    mul-int/2addr v1, p1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->pitchBuffer:[S

    const/4 v3, 0x0

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numPitchSamples:I

    sub-int/2addr v4, p1

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numChannels:I

    mul-int/2addr v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 347
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numPitchSamples:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numPitchSamples:I

    goto :goto_0
.end method

.method private removeProcessedInputSamples(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 195
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numInputSamples:I

    sub-int v0, v1, p1

    .line 196
    .local v0, "remainingSamples":I
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->inputBuffer:[S

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numChannels:I

    mul-int/2addr v2, p1

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->inputBuffer:[S

    const/4 v4, 0x0

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numChannels:I

    mul-int/2addr v5, v0

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numInputSamples:I

    .line 199
    return-void
.end method

.method private skipPitchPeriod([SIFI)I
    .locals 8
    .param p1, "samples"    # [S
    .param p2, "position"    # I
    .param p3, "speed"    # F
    .param p4, "period"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 423
    cmpl-float v1, p3, v2

    if-ltz v1, :cond_0

    .line 424
    int-to-float v1, p4

    sub-float v2, p3, v3

    div-float/2addr v1, v2

    float-to-int v0, v1

    .line 429
    .local v0, "newSamples":I
    :goto_0
    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->enlargeOutputBufferIfNeeded(I)V

    .line 430
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numChannels:I

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numOutputSamples:I

    add-int v7, p2, p4

    move-object v4, p1

    move v5, p2

    move-object v6, p1

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->overlapAdd(II[SI[SI[SI)V

    .line 432
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numOutputSamples:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numOutputSamples:I

    .line 433
    return v0

    .line 426
    .end local v0    # "newSamples":I
    :cond_0
    move v0, p4

    .line 427
    .restart local v0    # "newSamples":I
    int-to-float v1, p4

    sub-float/2addr v2, p3

    mul-float/2addr v1, v2

    sub-float v2, p3, v3

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->remainingInputToCopy:I

    goto :goto_0
.end method


# virtual methods
.method public getOutput(Ljava/nio/ShortBuffer;)V
    .locals 7
    .param p1, "buffer"    # Ljava/nio/ShortBuffer;

    .prologue
    const/4 v6, 0x0

    .line 137
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v1

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numChannels:I

    div-int/2addr v1, v2

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numOutputSamples:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 138
    .local v0, "samplesToRead":I
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numChannels:I

    mul-int/2addr v2, v0

    invoke-virtual {p1, v1, v6, v2}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 139
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numOutputSamples:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numOutputSamples:I

    .line 140
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numChannels:I

    mul-int/2addr v2, v0

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numOutputSamples:I

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numChannels:I

    mul-int/2addr v4, v5

    invoke-static {v1, v2, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    return-void
.end method

.method public getPitch()F
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->pitch:F

    return v0
.end method

.method public getSamplesAvailable()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numOutputSamples:I

    return v0
.end method

.method public getSpeed()F
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->speed:F

    return v0
.end method

.method public queueEndOfStream()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 149
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numInputSamples:I

    .line 150
    .local v1, "remainingSamples":I
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->speed:F

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->pitch:F

    div-float v2, v4, v5

    .line 151
    .local v2, "s":F
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numOutputSamples:I

    int-to-float v5, v1

    div-float/2addr v5, v2

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numPitchSamples:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->pitch:F

    div-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    add-int v0, v4, v5

    .line 155
    .local v0, "expectedOutputSamples":I
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->maxRequired:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    invoke-direct {p0, v4}, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->enlargeInputBufferIfNeeded(I)V

    .line 156
    const/4 v3, 0x0

    .local v3, "xSample":I
    :goto_0
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->maxRequired:I

    mul-int/lit8 v4, v4, 0x2

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numChannels:I

    mul-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    .line 157
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->inputBuffer:[S

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numChannels:I

    mul-int/2addr v5, v1

    add-int/2addr v5, v3

    aput-short v7, v4, v5

    .line 156
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 159
    :cond_0
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numInputSamples:I

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->maxRequired:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iput v4, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numInputSamples:I

    .line 160
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->processStreamInput()V

    .line 162
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numOutputSamples:I

    if-le v4, v0, :cond_1

    .line 163
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numOutputSamples:I

    .line 166
    :cond_1
    iput v7, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numInputSamples:I

    .line 167
    iput v7, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->remainingInputToCopy:I

    .line 168
    iput v7, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numPitchSamples:I

    .line 169
    return-void
.end method

.method public queueInput(Ljava/nio/ShortBuffer;)V
    .locals 5
    .param p1, "buffer"    # Ljava/nio/ShortBuffer;

    .prologue
    .line 122
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v2

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numChannels:I

    div-int v1, v2, v3

    .line 123
    .local v1, "samplesToWrite":I
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numChannels:I

    mul-int/2addr v2, v1

    mul-int/lit8 v0, v2, 0x2

    .line 124
    .local v0, "bytesToWrite":I
    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->enlargeInputBufferIfNeeded(I)V

    .line 125
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->inputBuffer:[S

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numInputSamples:I

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numChannels:I

    mul-int/2addr v3, v4

    div-int/lit8 v4, v0, 0x2

    invoke-virtual {p1, v2, v3, v4}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    .line 126
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numInputSamples:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->numInputSamples:I

    .line 127
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->processStreamInput()V

    .line 128
    return-void
.end method

.method public setPitch(F)V
    .locals 0
    .param p1, "pitch"    # F

    .prologue
    .line 105
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->pitch:F

    .line 106
    return-void
.end method

.method public setSpeed(F)V
    .locals 0
    .param p1, "speed"    # F

    .prologue
    .line 91
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->speed:F

    .line 92
    return-void
.end method
