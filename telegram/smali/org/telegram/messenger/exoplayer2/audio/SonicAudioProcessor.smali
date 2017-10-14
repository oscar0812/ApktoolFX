.class public final Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;
.super Ljava/lang/Object;
.source "SonicAudioProcessor.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;


# static fields
.field private static final CLOSE_THRESHOLD:F = 0.01f

.field public static final MAXIMUM_PITCH:F = 8.0f

.field public static final MAXIMUM_SPEED:F = 8.0f

.field public static final MINIMUM_PITCH:F = 0.1f

.field public static final MINIMUM_SPEED:F = 0.1f


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private channelCount:I

.field private inputBytes:J

.field private inputEnded:Z

.field private outputBuffer:Ljava/nio/ByteBuffer;

.field private outputBytes:J

.field private pitch:F

.field private sampleRateHz:I

.field private shortBuffer:Ljava/nio/ShortBuffer;

.field private sonic:Lorg/telegram/messenger/exoplayer2/audio/Sonic;

.field private speed:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->speed:F

    .line 72
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->pitch:F

    .line 73
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->channelCount:I

    .line 74
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->sampleRateHz:I

    .line 75
    sget-object v0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    .line 76
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->shortBuffer:Ljava/nio/ShortBuffer;

    .line 77
    sget-object v0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 78
    return-void
.end method


# virtual methods
.method public configure(III)Z
    .locals 1
    .param p1, "sampleRateHz"    # I
    .param p2, "channelCount"    # I
    .param p3, "encoding"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor$UnhandledFormatException;
        }
    .end annotation

    .prologue
    .line 119
    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    .line 120
    new-instance v0, Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor$UnhandledFormatException;

    invoke-direct {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor$UnhandledFormatException;-><init>(III)V

    throw v0

    .line 122
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->sampleRateHz:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->channelCount:I

    if-ne v0, p2, :cond_1

    .line 123
    const/4 v0, 0x0

    .line 127
    :goto_0
    return v0

    .line 125
    :cond_1
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->sampleRateHz:I

    .line 126
    iput p2, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->channelCount:I

    .line 127
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public flush()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 190
    new-instance v0, Lorg/telegram/messenger/exoplayer2/audio/Sonic;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->sampleRateHz:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->channelCount:I

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/audio/Sonic;-><init>(II)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->sonic:Lorg/telegram/messenger/exoplayer2/audio/Sonic;

    .line 191
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->sonic:Lorg/telegram/messenger/exoplayer2/audio/Sonic;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->speed:F

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->setSpeed(F)V

    .line 192
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->sonic:Lorg/telegram/messenger/exoplayer2/audio/Sonic;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->pitch:F

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->setPitch(F)V

    .line 193
    sget-object v0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 194
    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->inputBytes:J

    .line 195
    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->outputBytes:J

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->inputEnded:Z

    .line 197
    return-void
.end method

.method public getInputByteCount()J
    .locals 2

    .prologue
    .line 106
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->inputBytes:J

    return-wide v0
.end method

.method public getOutput()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 179
    .local v0, "outputBuffer":Ljava/nio/ByteBuffer;
    sget-object v1, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 180
    return-object v0
.end method

.method public getOutputByteCount()J
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->outputBytes:J

    return-wide v0
.end method

.method public getOutputChannelCount()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->channelCount:I

    return v0
.end method

.method public getOutputEncoding()I
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x2

    return v0
.end method

.method public isActive()Z
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const v1, 0x3c23d70a    # 0.01f

    .line 132
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->speed:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->pitch:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnded()Z
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->inputEnded:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->sonic:Lorg/telegram/messenger/exoplayer2/audio/Sonic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->sonic:Lorg/telegram/messenger/exoplayer2/audio/Sonic;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->getSamplesAvailable()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public queueEndOfStream()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->sonic:Lorg/telegram/messenger/exoplayer2/audio/Sonic;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->queueEndOfStream()V

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->inputEnded:Z

    .line 174
    return-void
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .locals 8
    .param p1, "inputBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 147
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 148
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    .line 149
    .local v2, "shortBuffer":Ljava/nio/ShortBuffer;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 150
    .local v0, "inputSize":I
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->inputBytes:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->inputBytes:J

    .line 151
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->sonic:Lorg/telegram/messenger/exoplayer2/audio/Sonic;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->queueInput(Ljava/nio/ShortBuffer;)V

    .line 152
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 154
    .end local v0    # "inputSize":I
    .end local v2    # "shortBuffer":Ljava/nio/ShortBuffer;
    :cond_0
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->sonic:Lorg/telegram/messenger/exoplayer2/audio/Sonic;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->getSamplesAvailable()I

    move-result v3

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->channelCount:I

    mul-int/2addr v3, v4

    mul-int/lit8 v1, v3, 0x2

    .line 155
    .local v1, "outputSize":I
    if-lez v1, :cond_1

    .line 156
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ge v3, v1, :cond_2

    .line 157
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    .line 158
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->shortBuffer:Ljava/nio/ShortBuffer;

    .line 163
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->sonic:Lorg/telegram/messenger/exoplayer2/audio/Sonic;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->shortBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/exoplayer2/audio/Sonic;->getOutput(Ljava/nio/ShortBuffer;)V

    .line 164
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->outputBytes:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->outputBytes:J

    .line 165
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 166
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 168
    :cond_1
    return-void

    .line 160
    :cond_2
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 161
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->shortBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v3}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, -0x1

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->sonic:Lorg/telegram/messenger/exoplayer2/audio/Sonic;

    .line 202
    sget-object v0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    .line 203
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->shortBuffer:Ljava/nio/ShortBuffer;

    .line 204
    sget-object v0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 205
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->channelCount:I

    .line 206
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->sampleRateHz:I

    .line 207
    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->inputBytes:J

    .line 208
    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->outputBytes:J

    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->inputEnded:Z

    .line 210
    return-void
.end method

.method public setPitch(F)F
    .locals 2
    .param p1, "pitch"    # F

    .prologue
    .line 98
    const v0, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/exoplayer2/util/Util;->constrainValue(FFF)F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->pitch:F

    .line 99
    return p1
.end method

.method public setSpeed(F)F
    .locals 2
    .param p1, "speed"    # F

    .prologue
    .line 87
    const v0, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/exoplayer2/util/Util;->constrainValue(FFF)F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->speed:F

    .line 88
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->speed:F

    return v0
.end method
