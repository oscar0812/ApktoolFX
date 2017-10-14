.class public final Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;
.super Ljava/lang/Object;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$PlaybackParametersCheckpoint;,
        Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtilV19;,
        Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;,
        Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$InvalidAudioTrackTimestampException;,
        Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$WriteException;,
        Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$InitializationException;,
        Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$ConfigurationException;,
        Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$Listener;
    }
.end annotation


# static fields
.field private static final BUFFER_MULTIPLICATION_FACTOR:I = 0x4

.field public static final CURRENT_POSITION_NOT_SET:J = -0x8000000000000000L

.field private static final ERROR_BAD_VALUE:I = -0x2

.field private static final MAX_AUDIO_TIMESTAMP_OFFSET_US:J = 0x4c4b40L

.field private static final MAX_BUFFER_DURATION_US:J = 0xb71b0L

.field private static final MAX_LATENCY_US:J = 0x4c4b40L

.field private static final MAX_PLAYHEAD_OFFSET_COUNT:I = 0xa

.field private static final MIN_BUFFER_DURATION_US:J = 0x3d090L

.field private static final MIN_PLAYHEAD_OFFSET_SAMPLE_INTERVAL_US:I = 0x7530

.field private static final MIN_TIMESTAMP_SAMPLE_INTERVAL_US:I = 0x7a120

.field private static final MODE_STATIC:I = 0x0

.field private static final MODE_STREAM:I = 0x1

.field private static final PASSTHROUGH_BUFFER_DURATION_US:J = 0x3d090L

.field private static final PLAYSTATE_PAUSED:I = 0x2

.field private static final PLAYSTATE_PLAYING:I = 0x3

.field private static final PLAYSTATE_STOPPED:I = 0x1

.field private static final SONIC_MIN_BYTES_FOR_SPEEDUP:I = 0x400

.field private static final START_IN_SYNC:I = 0x1

.field private static final START_NEED_SYNC:I = 0x2

.field private static final START_NOT_SET:I = 0x0

.field private static final STATE_INITIALIZED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AudioTrack"

.field private static final WRITE_NON_BLOCKING:I = 0x1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field public static enablePreV21AudioSessionWorkaround:Z

.field public static failOnSpuriousAudioTimestamp:Z


# instance fields
.field private final audioCapabilities:Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;

.field private audioProcessors:[Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;

.field private audioSessionId:I

.field private audioTimestampSet:Z

.field private audioTrack:Landroid/media/AudioTrack;

.field private final audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

.field private avSyncHeader:Ljava/nio/ByteBuffer;

.field private final availableAudioProcessors:[Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;

.field private bufferSize:I

.field private bufferSizeUs:J

.field private bytesUntilNextAvSync:I

.field private channelConfig:I

.field private final channelMappingAudioProcessor:Lorg/telegram/messenger/exoplayer2/audio/ChannelMappingAudioProcessor;

.field private drainingAudioProcessorIndex:I

.field private drainingPlaybackParameters:Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

.field private encoding:I

.field private framesPerEncodedSample:I

.field private getLatencyMethod:Ljava/lang/reflect/Method;

.field private handledEndOfStream:Z

.field private hasData:Z

.field private inputBuffer:Ljava/nio/ByteBuffer;

.field private keepSessionIdAudioTrack:Landroid/media/AudioTrack;

.field private lastFeedElapsedRealtimeMs:J

.field private lastPlayheadSampleTimeUs:J

.field private lastTimestampSampleTimeUs:J

.field private latencyUs:J

.field private final listener:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$Listener;

.field private nextPlayheadOffsetIndex:I

.field private outputBuffer:Ljava/nio/ByteBuffer;

.field private outputBuffers:[Ljava/nio/ByteBuffer;

.field private outputEncoding:I

.field private outputPcmFrameSize:I

.field private passthrough:Z

.field private pcmFrameSize:I

.field private playbackParameters:Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

.field private final playbackParametersCheckpoints:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$PlaybackParametersCheckpoint;",
            ">;"
        }
    .end annotation
.end field

.field private playbackParametersOffsetUs:J

.field private playbackParametersPositionUs:J

.field private playheadOffsetCount:I

.field private final playheadOffsets:[J

.field private playing:Z

.field private preV21OutputBuffer:[B

.field private preV21OutputBufferOffset:I

.field private final releasingConditionVariable:Landroid/os/ConditionVariable;

.field private resumeSystemTimeUs:J

.field private sampleRate:I

.field private smoothedPlayheadOffsetUs:J

.field private final sonicAudioProcessor:Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;

.field private startMediaTimeState:I

.field private startMediaTimeUs:J

.field private streamType:I

.field private submittedEncodedFrames:J

.field private submittedPcmBytes:J

.field private tunneling:Z

.field private volume:F

.field private writtenEncodedFrames:J

.field private writtenPcmBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 269
    sput-boolean v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->enablePreV21AudioSessionWorkaround:Z

    .line 278
    sput-boolean v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->failOnSpuriousAudioTimestamp:Z

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;[Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$Listener;)V
    .locals 6
    .param p1, "audioCapabilities"    # Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;
    .param p2, "audioProcessors"    # [Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;
    .param p3, "listener"    # Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$Listener;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioCapabilities:Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;

    .line 362
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->listener:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$Listener;

    .line 363
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0, v4}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->releasingConditionVariable:Landroid/os/ConditionVariable;

    .line 364
    sget v0, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 366
    :try_start_0
    const-class v1, Landroid/media/AudioTrack;

    const-string/jumbo v2, "getLatency"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    .line 367
    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->getLatencyMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :cond_0
    :goto_0
    sget v0, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 373
    new-instance v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtilV19;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtilV19;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    .line 377
    :goto_1
    new-instance v0, Lorg/telegram/messenger/exoplayer2/audio/ChannelMappingAudioProcessor;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/audio/ChannelMappingAudioProcessor;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->channelMappingAudioProcessor:Lorg/telegram/messenger/exoplayer2/audio/ChannelMappingAudioProcessor;

    .line 378
    new-instance v0, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->sonicAudioProcessor:Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;

    .line 379
    array-length v0, p2

    add-int/lit8 v0, v0, 0x3

    new-array v0, v0, [Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->availableAudioProcessors:[Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;

    .line 380
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->availableAudioProcessors:[Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/audio/ResamplingAudioProcessor;

    invoke-direct {v1}, Lorg/telegram/messenger/exoplayer2/audio/ResamplingAudioProcessor;-><init>()V

    aput-object v1, v0, v3

    .line 381
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->availableAudioProcessors:[Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->channelMappingAudioProcessor:Lorg/telegram/messenger/exoplayer2/audio/ChannelMappingAudioProcessor;

    aput-object v1, v0, v4

    .line 382
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->availableAudioProcessors:[Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;

    const/4 v1, 0x2

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 383
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->availableAudioProcessors:[Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;

    array-length v1, p2

    add-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->sonicAudioProcessor:Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;

    aput-object v2, v0, v1

    .line 384
    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playheadOffsets:[J

    .line 385
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->volume:F

    .line 386
    iput v3, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    .line 387
    const/4 v0, 0x3

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->streamType:I

    .line 388
    iput v3, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioSessionId:I

    .line 389
    sget-object v0, Lorg/telegram/messenger/exoplayer2/PlaybackParameters;->DEFAULT:Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playbackParameters:Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    .line 390
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->drainingAudioProcessorIndex:I

    .line 391
    new-array v0, v3, [Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioProcessors:[Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;

    .line 392
    new-array v0, v3, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 393
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playbackParametersCheckpoints:Ljava/util/LinkedList;

    .line 394
    return-void

    .line 375
    :cond_1
    new-instance v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-direct {v0, v5}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;-><init>(Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$1;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    goto :goto_1

    .line 368
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$300(Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;)Landroid/os/ConditionVariable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->releasingConditionVariable:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method private applySpeedup(J)J
    .locals 11
    .param p1, "positionUs"    # J

    .prologue
    .line 1226
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playbackParametersCheckpoints:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playbackParametersCheckpoints:Ljava/util/LinkedList;

    .line 1227
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$PlaybackParametersCheckpoint;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$PlaybackParametersCheckpoint;->access$400(Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$PlaybackParametersCheckpoint;)J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 1229
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playbackParametersCheckpoints:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$PlaybackParametersCheckpoint;

    .line 1230
    .local v6, "checkpoint":Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$PlaybackParametersCheckpoint;
    invoke-static {v6}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$PlaybackParametersCheckpoint;->access$200(Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$PlaybackParametersCheckpoint;)Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playbackParameters:Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    .line 1231
    invoke-static {v6}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$PlaybackParametersCheckpoint;->access$400(Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$PlaybackParametersCheckpoint;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playbackParametersPositionUs:J

    .line 1232
    invoke-static {v6}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$PlaybackParametersCheckpoint;->access$500(Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$PlaybackParametersCheckpoint;)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->startMediaTimeUs:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playbackParametersOffsetUs:J

    goto :goto_0

    .line 1235
    .end local v6    # "checkpoint":Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$PlaybackParametersCheckpoint;
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playbackParameters:Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/PlaybackParameters;->speed:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 1236
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playbackParametersOffsetUs:J

    add-long/2addr v0, p1

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playbackParametersPositionUs:J

    sub-long/2addr v0, v2

    .line 1248
    :goto_1
    return-wide v0

    .line 1239
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playbackParametersCheckpoints:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->sonicAudioProcessor:Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;

    .line 1240
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->getOutputByteCount()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 1241
    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playbackParametersOffsetUs:J

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playbackParametersPositionUs:J

    sub-long v0, p1, v0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->sonicAudioProcessor:Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;

    .line 1243
    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->getInputByteCount()J

    move-result-wide v2

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->sonicAudioProcessor:Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->getOutputByteCount()J

    move-result-wide v4

    .line 1242
    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    add-long/2addr v0, v8

    .line 1241
    goto :goto_1

    .line 1248
    :cond_2
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playbackParametersOffsetUs:J

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playbackParameters:Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    iget v2, v2, Lorg/telegram/messenger/exoplayer2/PlaybackParameters;->speed:F

    float-to-double v2, v2

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playbackParametersPositionUs:J

    sub-long v4, p1, v4

    long-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_1
.end method

.method private checkAudioTrackInitialized()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$InitializationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1344
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    .line 1345
    .local v0, "state":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1346
    return-void

    .line 1350
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1355
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 1358
    :goto_0
    new-instance v1, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$InitializationException;

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->sampleRate:I

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->channelConfig:I

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->bufferSize:I

    invoke-direct {v1, v0, v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$InitializationException;-><init>(IIII)V

    throw v1

    .line 1351
    :catch_0
    move-exception v1

    .line 1355
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    throw v1
.end method

.method private static createHwAvSyncAudioTrackV21(IIIII)Landroid/media/AudioTrack;
    .locals 6
    .param p0, "sampleRate"    # I
    .param p1, "channelConfig"    # I
    .param p2, "encoding"    # I
    .param p3, "bufferSize"    # I
    .param p4, "sessionId"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 1417
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 1418
    invoke-virtual {v0, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v3, 0x3

    .line 1419
    invoke-virtual {v0, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v3, 0x10

    .line 1420
    invoke-virtual {v0, v3}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 1421
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 1422
    .local v1, "attributesBuilder":Landroid/media/AudioAttributes;
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 1423
    invoke-virtual {v0, p1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 1424
    invoke-virtual {v0, p2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 1425
    invoke-virtual {v0, p0}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 1426
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v2

    .line 1427
    .local v2, "format":Landroid/media/AudioFormat;
    new-instance v0, Landroid/media/AudioTrack;

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    return-object v0
.end method

.method private drainAudioProcessorsToEndOfStream()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$WriteException;
        }
    .end annotation

    .prologue
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 937
    const/4 v1, 0x0

    .line 938
    .local v1, "audioProcessorNeedsEndOfStream":Z
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->drainingAudioProcessorIndex:I

    if-ne v2, v5, :cond_0

    .line 939
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->passthrough:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioProcessors:[Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;

    array-length v2, v2

    :goto_0
    iput v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->drainingAudioProcessorIndex:I

    .line 940
    const/4 v1, 0x1

    .line 942
    :cond_0
    :goto_1
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->drainingAudioProcessorIndex:I

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioProcessors:[Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;

    array-length v4, v4

    if-ge v2, v4, :cond_5

    .line 943
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioProcessors:[Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->drainingAudioProcessorIndex:I

    aget-object v0, v2, v4

    .line 944
    .local v0, "audioProcessor":Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;
    if-eqz v1, :cond_1

    .line 945
    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;->queueEndOfStream()V

    .line 947
    :cond_1
    invoke-direct {p0, v6, v7}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->processBuffers(J)V

    .line 948
    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;->isEnded()Z

    move-result v2

    if-nez v2, :cond_4

    .line 963
    .end local v0    # "audioProcessor":Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;
    :cond_2
    :goto_2
    return v3

    :cond_3
    move v2, v3

    .line 939
    goto :goto_0

    .line 951
    .restart local v0    # "audioProcessor":Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;
    :cond_4
    const/4 v1, 0x1

    .line 952
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->drainingAudioProcessorIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->drainingAudioProcessorIndex:I

    goto :goto_1

    .line 956
    .end local v0    # "audioProcessor":Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;
    :cond_5
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->outputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_6

    .line 957
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->outputBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v2, v6, v7}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->writeBuffer(Ljava/nio/ByteBuffer;J)Z

    .line 958
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->outputBuffer:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_2

    .line 962
    :cond_6
    iput v5, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->drainingAudioProcessorIndex:I

    .line 963
    const/4 v3, 0x1

    goto :goto_2
.end method

.method private durationUsToFrames(J)J
    .locals 5
    .param p1, "durationUs"    # J

    .prologue
    .line 1370
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->sampleRate:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private framesToDurationUs(J)J
    .locals 5
    .param p1, "frameCount"    # J

    .prologue
    .line 1366
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p1

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private static getEncodingForMimeType(Ljava/lang/String;)I
    .locals 3
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1433
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 1443
    :goto_1
    return v0

    .line 1433
    :sswitch_0
    const-string/jumbo v2, "audio/ac3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "audio/eac3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "audio/vnd.dts"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "audio/vnd.dts.hd"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    .line 1435
    :pswitch_0
    const/4 v0, 0x5

    goto :goto_1

    .line 1437
    :pswitch_1
    const/4 v0, 0x6

    goto :goto_1

    .line 1439
    :pswitch_2
    const/4 v0, 0x7

    goto :goto_1

    .line 1441
    :pswitch_3
    const/16 v0, 0x8

    goto :goto_1

    .line 1433
    :sswitch_data_0
    .sparse-switch
        -0x41455b98 -> :sswitch_2
        0xb269698 -> :sswitch_0
        0x59ae0c65 -> :sswitch_1
        0x59c2dc42 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getFramesPerEncodedSample(ILjava/nio/ByteBuffer;)I
    .locals 3
    .param p0, "encoding"    # I
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1448
    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    .line 1449
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/audio/DtsUtil;->parseDtsAudioSampleCount(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 1453
    :goto_0
    return v0

    .line 1450
    :cond_1
    const/4 v0, 0x5

    if-ne p0, v0, :cond_2

    .line 1451
    invoke-static {}, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->getAc3SyncframeAudioSampleCount()I

    move-result v0

    goto :goto_0

    .line 1452
    :cond_2
    const/4 v0, 0x6

    if-ne p0, v0, :cond_3

    .line 1453
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->parseEAc3SyncframeAudioSampleCount(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_0

    .line 1455
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected audio encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSubmittedFrames()J
    .locals 4

    .prologue
    .line 1374
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->passthrough:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->submittedEncodedFrames:J

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->submittedPcmBytes:J

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->pcmFrameSize:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    goto :goto_0
.end method

.method private getWrittenFrames()J
    .locals 4

    .prologue
    .line 1378
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->passthrough:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->writtenEncodedFrames:J

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->writtenPcmBytes:J

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->outputPcmFrameSize:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    goto :goto_0
.end method

.method private hasCurrentPositionUs()Z
    .locals 1

    .prologue
    .line 1219
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initialize()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$InitializationException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v10, 0x0

    .line 635
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->releasingConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 637
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->tunneling:Z

    if-eqz v0, :cond_3

    .line 638
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->sampleRate:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->channelConfig:I

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->outputEncoding:I

    iget v8, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->bufferSize:I

    iget v9, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioSessionId:I

    invoke-static {v0, v1, v6, v8, v9}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->createHwAvSyncAudioTrackV21(IIIII)Landroid/media/AudioTrack;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 648
    :goto_0
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->checkAudioTrackInitialized()V

    .line 650
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v7

    .line 651
    .local v7, "audioSessionId":I
    sget-boolean v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->enablePreV21AudioSessionWorkaround:Z

    if-eqz v0, :cond_1

    .line 652
    sget v0, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 655
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 656
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    if-eq v7, v0, :cond_0

    .line 657
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->releaseKeepSessionIdAudioTrack()V

    .line 659
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_1

    .line 660
    const/16 v2, 0xfa0

    .line 661
    .local v2, "sampleRate":I
    const/4 v3, 0x4

    .line 662
    .local v3, "channelConfig":I
    const/4 v4, 0x2

    .line 663
    .local v4, "encoding":I
    const/4 v5, 0x2

    .line 664
    .local v5, "bufferSize":I
    new-instance v0, Landroid/media/AudioTrack;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->streamType:I

    move v6, v10

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 669
    .end local v2    # "sampleRate":I
    .end local v3    # "channelConfig":I
    .end local v4    # "encoding":I
    .end local v5    # "bufferSize":I
    :cond_1
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioSessionId:I

    if-eq v0, v7, :cond_2

    .line 670
    iput v7, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioSessionId:I

    .line 671
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->listener:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$Listener;

    invoke-interface {v0, v7}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$Listener;->onAudioSessionId(I)V

    .line 674
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->needsPassthroughWorkarounds()Z

    move-result v6

    invoke-virtual {v0, v1, v6}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->reconfigure(Landroid/media/AudioTrack;Z)V

    .line 675
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->setVolumeInternal()V

    .line 676
    iput-boolean v10, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->hasData:Z

    .line 677
    return-void

    .line 640
    .end local v7    # "audioSessionId":I
    :cond_3
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioSessionId:I

    if-nez v0, :cond_4

    .line 641
    new-instance v0, Landroid/media/AudioTrack;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->streamType:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->sampleRate:I

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->channelConfig:I

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->outputEncoding:I

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->bufferSize:I

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    goto :goto_0

    .line 645
    :cond_4
    new-instance v0, Landroid/media/AudioTrack;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->streamType:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->sampleRate:I

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->channelConfig:I

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->outputEncoding:I

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->bufferSize:I

    iget v7, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioSessionId:I

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    goto :goto_0
.end method

.method private isInitialized()Z
    .locals 1

    .prologue
    .line 1362
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeSampleSyncParams()V
    .locals 20

    .prologue
    .line 1256
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v9}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getPositionUs()J

    move-result-wide v10

    .line 1257
    .local v10, "playbackPositionUs":J
    const-wide/16 v14, 0x0

    cmp-long v9, v10, v14

    if-nez v9, :cond_1

    .line 1334
    :cond_0
    :goto_0
    return-void

    .line 1261
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v12, v14, v16

    .line 1262
    .local v12, "systemClockUs":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->lastPlayheadSampleTimeUs:J

    sub-long v14, v12, v14

    const-wide/16 v16, 0x7530

    cmp-long v9, v14, v16

    if-ltz v9, :cond_3

    .line 1264
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playheadOffsets:[J

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->nextPlayheadOffsetIndex:I

    sub-long v16, v10, v12

    aput-wide v16, v9, v14

    .line 1265
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->nextPlayheadOffsetIndex:I

    add-int/lit8 v9, v9, 0x1

    rem-int/lit8 v9, v9, 0xa

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->nextPlayheadOffsetIndex:I

    .line 1266
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playheadOffsetCount:I

    const/16 v14, 0xa

    if-ge v9, v14, :cond_2

    .line 1267
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playheadOffsetCount:I

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playheadOffsetCount:I

    .line 1269
    :cond_2
    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->lastPlayheadSampleTimeUs:J

    .line 1270
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    .line 1271
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playheadOffsetCount:I

    if-ge v7, v9, :cond_3

    .line 1272
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playheadOffsets:[J

    aget-wide v16, v9, v7

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playheadOffsetCount:I

    int-to-long v0, v9

    move-wide/from16 v18, v0

    div-long v16, v16, v18

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    .line 1271
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1276
    .end local v7    # "i":I
    :cond_3
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->needsPassthroughWorkarounds()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1282
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->lastTimestampSampleTimeUs:J

    sub-long v14, v12, v14

    const-wide/32 v16, 0x7a120

    cmp-long v9, v14, v16

    if-ltz v9, :cond_0

    .line 1283
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v9}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->updateTimestamp()Z

    move-result v9

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTimestampSet:Z

    .line 1284
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTimestampSet:Z

    if-eqz v9, :cond_4

    .line 1286
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v9}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getTimestampNanoTime()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v4, v14, v16

    .line 1287
    .local v4, "audioTimestampUs":J
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v9}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getTimestampFramePosition()J

    move-result-wide v2

    .line 1288
    .local v2, "audioTimestampFramePosition":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->resumeSystemTimeUs:J

    cmp-long v9, v4, v14

    if-gez v9, :cond_6

    .line 1290
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTimestampSet:Z

    .line 1314
    .end local v2    # "audioTimestampFramePosition":J
    .end local v4    # "audioTimestampUs":J
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->getLatencyMethod:Ljava/lang/reflect/Method;

    if-eqz v9, :cond_5

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->passthrough:Z

    if-nez v9, :cond_5

    .line 1318
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->getLatencyMethod:Ljava/lang/reflect/Method;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    const/4 v9, 0x0

    check-cast v9, [Ljava/lang/Object;

    invoke-virtual {v14, v15, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-long v14, v9

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->bufferSizeUs:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->latencyUs:J

    .line 1321
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->latencyUs:J

    const-wide/16 v16, 0x0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->latencyUs:J

    .line 1323
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->latencyUs:J

    const-wide/32 v16, 0x4c4b40

    cmp-long v9, v14, v16

    if-lez v9, :cond_5

    .line 1324
    const-string/jumbo v9, "AudioTrack"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Ignoring impossibly large audio latency: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->latencyUs:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->latencyUs:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1332
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->lastTimestampSampleTimeUs:J

    goto/16 :goto_0

    .line 1291
    .restart local v2    # "audioTimestampFramePosition":J
    .restart local v4    # "audioTimestampUs":J
    :cond_6
    sub-long v14, v4, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    const-wide/32 v16, 0x4c4b40

    cmp-long v9, v14, v16

    if-lez v9, :cond_8

    .line 1293
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Spurious audio timestamp (system clock mismatch): "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v14, ", "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v14, ", "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v14, ", "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1296
    .local v8, "message":Ljava/lang/String;
    sget-boolean v9, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->failOnSpuriousAudioTimestamp:Z

    if-eqz v9, :cond_7

    .line 1297
    new-instance v9, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$InvalidAudioTrackTimestampException;

    invoke-direct {v9, v8}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$InvalidAudioTrackTimestampException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1299
    :cond_7
    const-string/jumbo v9, "AudioTrack"

    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTimestampSet:Z

    goto/16 :goto_2

    .line 1301
    .end local v8    # "message":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->framesToDurationUs(J)J

    move-result-wide v14

    sub-long/2addr v14, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    const-wide/32 v16, 0x4c4b40

    cmp-long v9, v14, v16

    if-lez v9, :cond_4

    .line 1304
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Spurious audio timestamp (frame position mismatch): "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v14, ", "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v14, ", "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v14, ", "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1307
    .restart local v8    # "message":Ljava/lang/String;
    sget-boolean v9, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->failOnSpuriousAudioTimestamp:Z

    if-eqz v9, :cond_9

    .line 1308
    new-instance v9, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$InvalidAudioTrackTimestampException;

    invoke-direct {v9, v8}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$InvalidAudioTrackTimestampException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1310
    :cond_9
    const-string/jumbo v9, "AudioTrack"

    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTimestampSet:Z

    goto/16 :goto_2

    .line 1327
    .end local v2    # "audioTimestampFramePosition":J
    .end local v4    # "audioTimestampUs":J
    .end local v8    # "message":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 1329
    .local v6, "e":Ljava/lang/Exception;
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-object v9, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->getLatencyMethod:Ljava/lang/reflect/Method;

    goto/16 :goto_3
.end method

.method private needsPassthroughWorkarounds()Z
    .locals 2

    .prologue
    .line 1395
    sget v0, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->outputEncoding:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->outputEncoding:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private overrideHasPendingData()Z
    .locals 2

    .prologue
    .line 1406
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->needsPassthroughWorkarounds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 1407
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 1408
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1406
    :goto_0
    return v0

    .line 1408
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processBuffers(J)V
    .locals 7
    .param p1, "avSyncPresentationTimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$WriteException;
        }
    .end annotation

    .prologue
    .line 826
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioProcessors:[Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;

    array-length v1, v5

    .line 827
    .local v1, "count":I
    move v2, v1

    .line 828
    .local v2, "index":I
    :goto_0
    if-ltz v2, :cond_1

    .line 829
    if-lez v2, :cond_2

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->outputBuffers:[Ljava/nio/ByteBuffer;

    add-int/lit8 v6, v2, -0x1

    aget-object v3, v5, v6

    .line 831
    .local v3, "input":Ljava/nio/ByteBuffer;
    :goto_1
    if-ne v2, v1, :cond_4

    .line 832
    invoke-direct {p0, v3, p1, p2}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->writeBuffer(Ljava/nio/ByteBuffer;J)Z

    .line 845
    :cond_0
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 853
    .end local v3    # "input":Ljava/nio/ByteBuffer;
    :cond_1
    return-void

    .line 829
    :cond_2
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->inputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v5, :cond_3

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->inputBuffer:Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_3
    sget-object v3, Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 834
    .restart local v3    # "input":Ljava/nio/ByteBuffer;
    :cond_4
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioProcessors:[Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;

    aget-object v0, v5, v2

    .line 835
    .local v0, "audioProcessor":Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;
    invoke-interface {v0, v3}, Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;->queueInput(Ljava/nio/ByteBuffer;)V

    .line 836
    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;->getOutput()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 837
    .local v4, "output":Ljava/nio/ByteBuffer;
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->outputBuffers:[Ljava/nio/ByteBuffer;

    aput-object v4, v5, v2

    .line 838
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 840
    add-int/lit8 v2, v2, 0x1

    .line 841
    goto :goto_0

    .line 851
    .end local v0    # "audioProcessor":Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;
    .end local v4    # "output":Ljava/nio/ByteBuffer;
    :cond_5
    add-int/lit8 v2, v2, -0x1

    .line 852
    goto :goto_0
.end method

.method private releaseKeepSessionIdAudioTrack()V
    .locals 2

    .prologue
    .line 1200
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-nez v1, :cond_0

    .line 1213
    :goto_0
    return-void

    .line 1205
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 1206
    .local v0, "toRelease":Landroid/media/AudioTrack;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 1207
    new-instance v1, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$2;

    invoke-direct {v1, p0, v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$2;-><init>(Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;Landroid/media/AudioTrack;)V

    .line 1212
    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$2;->start()V

    goto :goto_0
.end method

.method private resetAudioProcessors()V
    .locals 8

    .prologue
    .line 611
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 612
    .local v3, "newAudioProcessors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;>;"
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->availableAudioProcessors:[Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v0, v5, v4

    .line 613
    .local v0, "audioProcessor":Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;
    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;->isActive()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 614
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 616
    :cond_0
    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;->flush()V

    goto :goto_1

    .line 619
    .end local v0    # "audioProcessor":Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 620
    .local v1, "count":I
    new-array v4, v1, [Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;

    iput-object v4, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioProcessors:[Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;

    .line 621
    new-array v4, v1, [Ljava/nio/ByteBuffer;

    iput-object v4, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 622
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_2

    .line 623
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioProcessors:[Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;

    aget-object v0, v4, v2

    .line 624
    .restart local v0    # "audioProcessor":Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;
    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;->flush()V

    .line 625
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->outputBuffers:[Ljava/nio/ByteBuffer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;->getOutput()Ljava/nio/ByteBuffer;

    move-result-object v5

    aput-object v5, v4, v2

    .line 622
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 627
    .end local v0    # "audioProcessor":Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;
    :cond_2
    return-void
.end method

.method private resetSyncParams()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 1382
    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    .line 1383
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playheadOffsetCount:I

    .line 1384
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->nextPlayheadOffsetIndex:I

    .line 1385
    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->lastPlayheadSampleTimeUs:J

    .line 1386
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTimestampSet:Z

    .line 1387
    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->lastTimestampSampleTimeUs:J

    .line 1388
    return-void
.end method

.method private setVolumeInternal()V
    .locals 2

    .prologue
    .line 1103
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1110
    :goto_0
    return-void

    .line 1105
    :cond_0
    sget v0, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 1106
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->volume:F

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->setVolumeInternalV21(Landroid/media/AudioTrack;F)V

    goto :goto_0

    .line 1108
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->volume:F

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->setVolumeInternalV3(Landroid/media/AudioTrack;F)V

    goto :goto_0
.end method

.method private static setVolumeInternalV21(Landroid/media/AudioTrack;F)V
    .locals 0
    .param p0, "audioTrack"    # Landroid/media/AudioTrack;
    .param p1, "volume"    # F
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 1506
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->setVolume(F)I

    .line 1507
    return-void
.end method

.method private static setVolumeInternalV3(Landroid/media/AudioTrack;F)V
    .locals 0
    .param p0, "audioTrack"    # Landroid/media/AudioTrack;
    .param p1, "volume"    # F

    .prologue
    .line 1511
    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 1512
    return-void
.end method

.method private writeBuffer(Ljava/nio/ByteBuffer;J)Z
    .locals 12
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "avSyncPresentationTimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$WriteException;
        }
    .end annotation

    .prologue
    .line 858
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 859
    const/4 v0, 0x1

    .line 915
    :goto_0
    return v0

    .line 861
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->outputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    .line 862
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->outputBuffer:Ljava/nio/ByteBuffer;

    if-ne v0, p1, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 876
    :cond_1
    :goto_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 877
    .local v3, "bytesRemaining":I
    const/4 v8, 0x0

    .line 878
    .local v8, "bytesWritten":I
    sget v0, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_7

    .line 880
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->writtenPcmBytes:J

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    .line 881
    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPosition()J

    move-result-wide v4

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->outputPcmFrameSize:I

    int-to-long v10, v2

    mul-long/2addr v4, v10

    sub-long/2addr v0, v4

    long-to-int v6, v0

    .line 882
    .local v6, "bytesPending":I
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->bufferSize:I

    sub-int v7, v0, v6

    .line 883
    .local v7, "bytesToWrite":I
    if-lez v7, :cond_2

    .line 884
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 885
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->preV21OutputBuffer:[B

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->preV21OutputBufferOffset:I

    invoke-virtual {v0, v1, v2, v7}, Landroid/media/AudioTrack;->write([BII)I

    move-result v8

    .line 886
    if-lez v8, :cond_2

    .line 887
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->preV21OutputBufferOffset:I

    add-int/2addr v0, v8

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->preV21OutputBufferOffset:I

    .line 888
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v8

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 899
    .end local v6    # "bytesPending":I
    .end local v7    # "bytesToWrite":I
    :cond_2
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->lastFeedElapsedRealtimeMs:J

    .line 901
    if-gez v8, :cond_a

    .line 902
    new-instance v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$WriteException;

    invoke-direct {v0, v8}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$WriteException;-><init>(I)V

    throw v0

    .line 862
    .end local v3    # "bytesRemaining":I
    .end local v8    # "bytesWritten":I
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 864
    :cond_4
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 865
    sget v0, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 866
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 867
    .restart local v3    # "bytesRemaining":I
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->preV21OutputBuffer:[B

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->preV21OutputBuffer:[B

    array-length v0, v0

    if-ge v0, v3, :cond_6

    .line 868
    :cond_5
    new-array v0, v3, [B

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->preV21OutputBuffer:[B

    .line 870
    :cond_6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    .line 871
    .local v9, "originalPosition":I
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->preV21OutputBuffer:[B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 872
    invoke-virtual {p1, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 873
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->preV21OutputBufferOffset:I

    goto :goto_2

    .line 891
    .end local v9    # "originalPosition":I
    .restart local v8    # "bytesWritten":I
    :cond_7
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->tunneling:Z

    if-eqz v0, :cond_9

    .line 892
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p2, v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_4
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 893
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    move-object v0, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->writeNonBlockingWithAvSyncV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I

    move-result v8

    goto :goto_3

    .line 892
    :cond_8
    const/4 v0, 0x0

    goto :goto_4

    .line 896
    :cond_9
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v0, p1, v3}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->writeNonBlockingV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result v8

    goto :goto_3

    .line 905
    :cond_a
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->passthrough:Z

    if-nez v0, :cond_b

    .line 906
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->writtenPcmBytes:J

    int-to-long v4, v8

    add-long/2addr v0, v4

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->writtenPcmBytes:J

    .line 908
    :cond_b
    if-ne v8, v3, :cond_d

    .line 909
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->passthrough:Z

    if-eqz v0, :cond_c

    .line 910
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->writtenEncodedFrames:J

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->framesPerEncodedSample:I

    int-to-long v4, v2

    add-long/2addr v0, v4

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->writtenEncodedFrames:J

    .line 912
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 913
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 915
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private static writeNonBlockingV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I
    .locals 1
    .param p0, "audioTrack"    # Landroid/media/AudioTrack;
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "size"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 1462
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method

.method private writeNonBlockingWithAvSyncV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I
    .locals 8
    .param p1, "audioTrack"    # Landroid/media/AudioTrack;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "size"    # I
    .param p4, "presentationTimeUs"    # J
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1473
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->avSyncHeader:Ljava/nio/ByteBuffer;

    if-nez v3, :cond_0

    .line 1474
    const/16 v3, 0x10

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->avSyncHeader:Ljava/nio/ByteBuffer;

    .line 1475
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->avSyncHeader:Ljava/nio/ByteBuffer;

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1476
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->avSyncHeader:Ljava/nio/ByteBuffer;

    const v4, 0x55550001

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1478
    :cond_0
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->bytesUntilNextAvSync:I

    if-nez v3, :cond_1

    .line 1479
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->avSyncHeader:Ljava/nio/ByteBuffer;

    const/4 v4, 0x4

    invoke-virtual {v3, v4, p3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 1480
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->avSyncHeader:Ljava/nio/ByteBuffer;

    const/16 v4, 0x8

    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, p4

    invoke-virtual {v3, v4, v6, v7}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 1481
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->avSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1482
    iput p3, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->bytesUntilNextAvSync:I

    .line 1484
    :cond_1
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->avSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 1485
    .local v0, "avSyncHeaderBytesRemaining":I
    if-lez v0, :cond_4

    .line 1486
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->avSyncHeader:Ljava/nio/ByteBuffer;

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v0, v4}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v1

    .line 1487
    .local v1, "result":I
    if-gez v1, :cond_3

    .line 1488
    iput v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->bytesUntilNextAvSync:I

    move v2, v1

    .line 1501
    :cond_2
    :goto_0
    return v2

    .line 1491
    :cond_3
    if-lt v1, v0, :cond_2

    .line 1495
    .end local v1    # "result":I
    :cond_4
    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->writeNonBlockingV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result v1

    .line 1496
    .restart local v1    # "result":I
    if-gez v1, :cond_5

    .line 1497
    iput v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->bytesUntilNextAvSync:I

    move v2, v1

    .line 1498
    goto :goto_0

    .line 1500
    :cond_5
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->bytesUntilNextAvSync:I

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->bytesUntilNextAvSync:I

    move v2, v1

    .line 1501
    goto :goto_0
.end method


# virtual methods
.method public configure(Ljava/lang/String;IIII)V
    .locals 7
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "channelCount"    # I
    .param p3, "sampleRate"    # I
    .param p4, "pcmEncoding"    # I
    .param p5, "specifiedBufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$ConfigurationException;
        }
    .end annotation

    .prologue
    .line 468
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->configure(Ljava/lang/String;IIII[I)V

    .line 469
    return-void
.end method

.method public configure(Ljava/lang/String;IIII[I)V
    .locals 18
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "channelCount"    # I
    .param p3, "sampleRate"    # I
    .param p4, "pcmEncoding"    # I
    .param p5, "specifiedBufferSize"    # I
    .param p6, "outputChannels"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$ConfigurationException;
        }
    .end annotation

    .prologue
    .line 492
    const-string/jumbo v12, "audio/raw"

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    const/4 v11, 0x1

    .line 493
    .local v11, "passthrough":Z
    :goto_0
    if-eqz v11, :cond_2

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->getEncodingForMimeType(Ljava/lang/String;)I

    move-result v5

    .line 494
    .local v5, "encoding":I
    :goto_1
    const/4 v6, 0x0

    .line 495
    .local v6, "flush":Z
    if-nez v11, :cond_4

    .line 496
    move/from16 v0, p4

    move/from16 v1, p2

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/Util;->getPcmFrameSize(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->pcmFrameSize:I

    .line 497
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->channelMappingAudioProcessor:Lorg/telegram/messenger/exoplayer2/audio/ChannelMappingAudioProcessor;

    move-object/from16 v0, p6

    invoke-virtual {v12, v0}, Lorg/telegram/messenger/exoplayer2/audio/ChannelMappingAudioProcessor;->setChannelMap([I)V

    .line 498
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->availableAudioProcessors:[Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;

    array-length v14, v13

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v14, :cond_3

    aget-object v2, v13, v12

    .line 500
    .local v2, "audioProcessor":Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;
    :try_start_0
    move/from16 v0, p3

    move/from16 v1, p2

    invoke-interface {v2, v0, v1, v5}, Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;->configure(III)Z
    :try_end_0
    .catch Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor$UnhandledFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    or-int/2addr v6, v15

    .line 504
    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;->isActive()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 505
    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;->getOutputChannelCount()I

    move-result p2

    .line 506
    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;->getOutputEncoding()I

    move-result v5

    .line 498
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 492
    .end local v2    # "audioProcessor":Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;
    .end local v5    # "encoding":I
    .end local v6    # "flush":Z
    .end local v11    # "passthrough":Z
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .restart local v11    # "passthrough":Z
    :cond_2
    move/from16 v5, p4

    .line 493
    goto :goto_1

    .line 501
    .restart local v2    # "audioProcessor":Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;
    .restart local v5    # "encoding":I
    .restart local v6    # "flush":Z
    :catch_0
    move-exception v4

    .line 502
    .local v4, "e":Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor$UnhandledFormatException;
    new-instance v12, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$ConfigurationException;

    invoke-direct {v12, v4}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$ConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 509
    .end local v2    # "audioProcessor":Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;
    .end local v4    # "e":Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor$UnhandledFormatException;
    :cond_3
    if-eqz v6, :cond_4

    .line 510
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->resetAudioProcessors()V

    .line 515
    :cond_4
    packed-switch p2, :pswitch_data_0

    .line 541
    new-instance v12, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$ConfigurationException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Unsupported channel count: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 517
    :pswitch_0
    const/4 v3, 0x4

    .line 545
    .local v3, "channelConfig":I
    :goto_3
    sget v12, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v13, 0x17

    if-gt v12, v13, :cond_5

    const-string/jumbo v12, "foster"

    sget-object v13, Lorg/telegram/messenger/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    const-string/jumbo v12, "NVIDIA"

    sget-object v13, Lorg/telegram/messenger/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 546
    packed-switch p2, :pswitch_data_1

    .line 561
    :cond_5
    :goto_4
    :pswitch_1
    sget v12, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v13, 0x19

    if-gt v12, v13, :cond_6

    const-string/jumbo v12, "fugu"

    sget-object v13, Lorg/telegram/messenger/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    if-eqz v11, :cond_6

    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_6

    .line 562
    const/16 v3, 0xc

    .line 565
    :cond_6
    if-nez v6, :cond_7

    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v12

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->encoding:I

    if-ne v12, v5, :cond_7

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->sampleRate:I

    move/from16 v0, p3

    if-ne v12, v0, :cond_7

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->channelConfig:I

    if-ne v12, v3, :cond_7

    .line 608
    .end local v5    # "encoding":I
    :goto_5
    return-void

    .line 520
    .end local v3    # "channelConfig":I
    .restart local v5    # "encoding":I
    :pswitch_2
    const/16 v3, 0xc

    .line 521
    .restart local v3    # "channelConfig":I
    goto :goto_3

    .line 523
    .end local v3    # "channelConfig":I
    :pswitch_3
    const/16 v3, 0x1c

    .line 524
    .restart local v3    # "channelConfig":I
    goto :goto_3

    .line 526
    .end local v3    # "channelConfig":I
    :pswitch_4
    const/16 v3, 0xcc

    .line 527
    .restart local v3    # "channelConfig":I
    goto :goto_3

    .line 529
    .end local v3    # "channelConfig":I
    :pswitch_5
    const/16 v3, 0xdc

    .line 530
    .restart local v3    # "channelConfig":I
    goto :goto_3

    .line 532
    .end local v3    # "channelConfig":I
    :pswitch_6
    const/16 v3, 0xfc

    .line 533
    .restart local v3    # "channelConfig":I
    goto :goto_3

    .line 535
    .end local v3    # "channelConfig":I
    :pswitch_7
    const/16 v3, 0x4fc

    .line 536
    .restart local v3    # "channelConfig":I
    goto :goto_3

    .line 538
    .end local v3    # "channelConfig":I
    :pswitch_8
    sget v3, Lorg/telegram/messenger/exoplayer2/C;->CHANNEL_OUT_7POINT1_SURROUND:I

    .line 539
    .restart local v3    # "channelConfig":I
    goto :goto_3

    .line 548
    :pswitch_9
    sget v3, Lorg/telegram/messenger/exoplayer2/C;->CHANNEL_OUT_7POINT1_SURROUND:I

    .line 549
    goto :goto_4

    .line 552
    :pswitch_a
    const/16 v3, 0xfc

    .line 553
    goto :goto_4

    .line 571
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->reset()V

    .line 573
    move-object/from16 v0, p0

    iput v5, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->encoding:I

    .line 574
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->passthrough:Z

    .line 575
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->sampleRate:I

    .line 576
    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->channelConfig:I

    .line 577
    if-eqz v11, :cond_8

    .end local v5    # "encoding":I
    :goto_6
    move-object/from16 v0, p0

    iput v5, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->outputEncoding:I

    .line 578
    const/4 v12, 0x2

    move/from16 v0, p2

    invoke-static {v12, v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getPcmFrameSize(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->outputPcmFrameSize:I

    .line 580
    if-eqz p5, :cond_9

    .line 581
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->bufferSize:I

    .line 604
    :goto_7
    if-eqz v11, :cond_10

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    :goto_8
    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->bufferSizeUs:J

    .line 607
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playbackParameters:Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->setPlaybackParameters(Lorg/telegram/messenger/exoplayer2/PlaybackParameters;)Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    goto :goto_5

    .line 577
    .restart local v5    # "encoding":I
    :cond_8
    const/4 v5, 0x2

    goto :goto_6

    .line 582
    .end local v5    # "encoding":I
    :cond_9
    if-eqz v11, :cond_c

    .line 585
    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->outputEncoding:I

    const/4 v13, 0x5

    if-eq v12, v13, :cond_a

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->outputEncoding:I

    const/4 v13, 0x6

    if-ne v12, v13, :cond_b

    .line 587
    :cond_a
    const/16 v12, 0x5000

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->bufferSize:I

    goto :goto_7

    .line 590
    :cond_b
    const v12, 0xc000

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->bufferSize:I

    goto :goto_7

    .line 593
    :cond_c
    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->outputEncoding:I

    .line 594
    move/from16 v0, p3

    invoke-static {v0, v3, v12}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v9

    .line 595
    .local v9, "minBufferSize":I
    const/4 v12, -0x2

    if-eq v9, v12, :cond_d

    const/4 v12, 0x1

    :goto_9
    invoke-static {v12}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 596
    mul-int/lit8 v10, v9, 0x4

    .line 597
    .local v10, "multipliedBufferSize":I
    const-wide/32 v12, 0x3d090

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->durationUsToFrames(J)J

    move-result-wide v12

    long-to-int v12, v12

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->outputPcmFrameSize:I

    mul-int v8, v12, v13

    .line 598
    .local v8, "minAppBufferSize":I
    int-to-long v12, v9

    const-wide/32 v14, 0xb71b0

    .line 599
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->durationUsToFrames(J)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->outputPcmFrameSize:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    mul-long v14, v14, v16

    .line 598
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    long-to-int v7, v12

    .line 600
    .local v7, "maxAppBufferSize":I
    if-ge v10, v8, :cond_e

    .end local v8    # "minAppBufferSize":I
    :goto_a
    move-object/from16 v0, p0

    iput v8, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->bufferSize:I

    goto :goto_7

    .line 595
    .end local v7    # "maxAppBufferSize":I
    .end local v10    # "multipliedBufferSize":I
    :cond_d
    const/4 v12, 0x0

    goto :goto_9

    .line 600
    .restart local v7    # "maxAppBufferSize":I
    .restart local v8    # "minAppBufferSize":I
    .restart local v10    # "multipliedBufferSize":I
    :cond_e
    if-le v10, v7, :cond_f

    move v8, v7

    goto :goto_a

    :cond_f
    move v8, v10

    goto :goto_a

    .line 604
    .end local v7    # "maxAppBufferSize":I
    .end local v8    # "minAppBufferSize":I
    .end local v9    # "minBufferSize":I
    .end local v10    # "multipliedBufferSize":I
    :cond_10
    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->bufferSize:I

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->outputPcmFrameSize:I

    div-int/2addr v12, v13

    int-to-long v12, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->framesToDurationUs(J)J

    move-result-wide v12

    goto/16 :goto_8

    .line 515
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 546
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_a
        :pswitch_1
        :pswitch_a
        :pswitch_1
        :pswitch_9
    .end packed-switch
.end method

.method public disableTunneling()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1083
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->tunneling:Z

    if-eqz v0, :cond_0

    .line 1084
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->tunneling:Z

    .line 1085
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioSessionId:I

    .line 1086
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->reset()V

    .line 1088
    :cond_0
    return-void
.end method

.method public enableTunnelingV21(I)V
    .locals 3
    .param p1, "tunnelingAudioSessionId"    # I

    .prologue
    const/4 v1, 0x1

    .line 1070
    sget v0, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1071
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->tunneling:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioSessionId:I

    if-eq v0, p1, :cond_1

    .line 1072
    :cond_0
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->tunneling:Z

    .line 1073
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioSessionId:I

    .line 1074
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->reset()V

    .line 1076
    :cond_1
    return-void

    .line 1070
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPositionUs(Z)J
    .locals 14
    .param p1, "sourceEnded"    # Z

    .prologue
    const-wide/16 v12, 0x3e8

    .line 419
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->hasCurrentPositionUs()Z

    move-result v10

    if-nez v10, :cond_0

    .line 420
    const-wide/high16 v10, -0x8000000000000000L

    .line 450
    :goto_0
    return-wide v10

    .line 423
    :cond_0
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v10}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_1

    .line 424
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->maybeSampleSyncParams()V

    .line 427
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    div-long v8, v10, v12

    .line 429
    .local v8, "systemClockUs":J
    iget-boolean v10, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTimestampSet:Z

    if-eqz v10, :cond_3

    .line 431
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v10}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getTimestampNanoTime()J

    move-result-wide v10

    div-long/2addr v10, v12

    sub-long v4, v8, v10

    .line 432
    .local v4, "elapsedSinceTimestampUs":J
    invoke-direct {p0, v4, v5}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->durationUsToFrames(J)J

    move-result-wide v2

    .line 433
    .local v2, "elapsedSinceTimestampFrames":J
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v10}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getTimestampFramePosition()J

    move-result-wide v10

    add-long v0, v10, v2

    .line 434
    .local v0, "elapsedFrames":J
    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->framesToDurationUs(J)J

    move-result-wide v6

    .line 450
    .end local v0    # "elapsedFrames":J
    .end local v2    # "elapsedSinceTimestampFrames":J
    .end local v4    # "elapsedSinceTimestampUs":J
    .local v6, "positionUs":J
    :cond_2
    :goto_1
    iget-wide v10, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->startMediaTimeUs:J

    invoke-direct {p0, v6, v7}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->applySpeedup(J)J

    move-result-wide v12

    add-long/2addr v10, v12

    goto :goto_0

    .line 436
    .end local v6    # "positionUs":J
    :cond_3
    iget v10, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playheadOffsetCount:I

    if-nez v10, :cond_4

    .line 438
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v10}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getPositionUs()J

    move-result-wide v6

    .line 445
    .restart local v6    # "positionUs":J
    :goto_2
    if-nez p1, :cond_2

    .line 446
    iget-wide v10, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->latencyUs:J

    sub-long/2addr v6, v10

    goto :goto_1

    .line 443
    .end local v6    # "positionUs":J
    :cond_4
    iget-wide v10, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    add-long v6, v8, v10

    .restart local v6    # "positionUs":J
    goto :goto_2
.end method

.method public getPlaybackParameters()Lorg/telegram/messenger/exoplayer2/PlaybackParameters;
    .locals 1

    .prologue
    .line 1020
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playbackParameters:Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    return-object v0
.end method

.method public handleBuffer(Ljava/nio/ByteBuffer;J)Z
    .locals 20
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "presentationTimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$InitializationException;,
            Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$WriteException;
        }
    .end annotation

    .prologue
    .line 720
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->inputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->inputBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p1

    if-ne v0, v4, :cond_2

    :cond_0
    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 721
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_1

    .line 722
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->initialize()V

    .line 723
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playing:Z

    if-eqz v4, :cond_1

    .line 724
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->play()V

    .line 728
    :cond_1
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->needsPassthroughWorkarounds()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 731
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 733
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->hasData:Z

    .line 734
    const/4 v4, 0x0

    .line 822
    :goto_1
    return v4

    .line 720
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 740
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    .line 741
    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPosition()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    .line 742
    const/4 v4, 0x0

    goto :goto_1

    .line 746
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->hasData:Z

    move/from16 v17, v0

    .line 747
    .local v17, "hadData":Z
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->hasPendingData()Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->hasData:Z

    .line 748
    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->hasData:Z

    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5

    .line 749
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->lastFeedElapsedRealtimeMs:J

    sub-long v8, v4, v6

    .line 750
    .local v8, "elapsedSinceLastFeedMs":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->listener:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$Listener;

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->bufferSize:I

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->bufferSizeUs:J

    invoke-static {v6, v7}, Lorg/telegram/messenger/exoplayer2/C;->usToMs(J)J

    move-result-wide v6

    invoke-interface/range {v4 .. v9}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$Listener;->onUnderrun(IJJ)V

    .line 753
    .end local v8    # "elapsedSinceLastFeedMs":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->inputBuffer:Ljava/nio/ByteBuffer;

    if-nez v4, :cond_b

    .line 755
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_6

    .line 757
    const/4 v4, 0x1

    goto :goto_1

    .line 760
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->passthrough:Z

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->framesPerEncodedSample:I

    if-nez v4, :cond_7

    .line 762
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->outputEncoding:I

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->getFramesPerEncodedSample(ILjava/nio/ByteBuffer;)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->framesPerEncodedSample:I

    .line 765
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->drainingPlaybackParameters:Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    if-eqz v4, :cond_9

    .line 766
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->drainAudioProcessorsToEndOfStream()Z

    move-result v4

    if-nez v4, :cond_8

    .line 768
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 771
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playbackParametersCheckpoints:Ljava/util/LinkedList;

    new-instance v10, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$PlaybackParametersCheckpoint;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->drainingPlaybackParameters:Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    const-wide/16 v6, 0x0

    .line 772
    move-wide/from16 v0, p2

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 773
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->getWrittenFrames()J

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->framesToDurationUs(J)J

    move-result-wide v14

    const/16 v16, 0x0

    invoke-direct/range {v10 .. v16}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$PlaybackParametersCheckpoint;-><init>(Lorg/telegram/messenger/exoplayer2/PlaybackParameters;JJLorg/telegram/messenger/exoplayer2/audio/AudioTrack$1;)V

    .line 771
    invoke-virtual {v4, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 774
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->drainingPlaybackParameters:Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    .line 777
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->resetAudioProcessors()V

    .line 780
    :cond_9
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    if-nez v4, :cond_c

    .line 781
    const-wide/16 v4, 0x0

    move-wide/from16 v0, p2

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->startMediaTimeUs:J

    .line 782
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    .line 802
    :cond_a
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->passthrough:Z

    if-eqz v4, :cond_e

    .line 803
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->submittedEncodedFrames:J

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->framesPerEncodedSample:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->submittedEncodedFrames:J

    .line 808
    :goto_3
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->inputBuffer:Ljava/nio/ByteBuffer;

    .line 811
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->passthrough:Z

    if-eqz v4, :cond_f

    .line 813
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->inputBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v4, v1, v2}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->writeBuffer(Ljava/nio/ByteBuffer;J)Z

    .line 818
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_10

    .line 819
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->inputBuffer:Ljava/nio/ByteBuffer;

    .line 820
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 785
    :cond_c
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->startMediaTimeUs:J

    .line 786
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->getSubmittedFrames()J

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->framesToDurationUs(J)J

    move-result-wide v6

    add-long v18, v4, v6

    .line 787
    .local v18, "expectedPresentationTimeUs":J
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_d

    sub-long v4, v18, p2

    .line 788
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v6, 0x30d40

    cmp-long v4, v4, v6

    if-lez v4, :cond_d

    .line 789
    const-string/jumbo v4, "AudioTrack"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Discontinuity detected [expected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    .line 793
    :cond_d
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_a

    .line 796
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->startMediaTimeUs:J

    sub-long v6, p2, v18

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->startMediaTimeUs:J

    .line 797
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    .line 798
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->listener:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$Listener;

    invoke-interface {v4}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$Listener;->onPositionDiscontinuity()V

    goto/16 :goto_2

    .line 805
    .end local v18    # "expectedPresentationTimeUs":J
    :cond_e
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->submittedPcmBytes:J

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->submittedPcmBytes:J

    goto/16 :goto_3

    .line 815
    :cond_f
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->processBuffers(J)V

    goto/16 :goto_4

    .line 822
    :cond_10
    const/4 v4, 0x0

    goto/16 :goto_1
.end method

.method public handleDiscontinuity()V
    .locals 2

    .prologue
    .line 695
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 696
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    .line 698
    :cond_0
    return-void
.end method

.method public hasPendingData()Z
    .locals 4

    .prologue
    .line 978
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 979
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->getWrittenFrames()J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPosition()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 980
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->overrideHasPendingData()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 978
    :goto_0
    return v0

    .line 980
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnded()Z
    .locals 1

    .prologue
    .line 971
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->handledEndOfStream:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->hasPendingData()Z

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

.method public isPassthroughSupported(Ljava/lang/String;)Z
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 403
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioCapabilities:Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioCapabilities:Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;

    .line 404
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->getEncodingForMimeType(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;->supportsEncoding(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 403
    :goto_0
    return v0

    .line 404
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 1116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playing:Z

    .line 1117
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1118
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->resetSyncParams()V

    .line 1119
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->pause()V

    .line 1121
    :cond_0
    return-void
.end method

.method public play()V
    .locals 4

    .prologue
    .line 683
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playing:Z

    .line 684
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->resumeSystemTimeUs:J

    .line 686
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 688
    :cond_0
    return-void
.end method

.method public playToEndOfStream()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$WriteException;
        }
    .end annotation

    .prologue
    .line 924
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->handledEndOfStream:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 934
    :cond_0
    :goto_0
    return-void

    .line 928
    :cond_1
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->drainAudioProcessorsToEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 930
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->getWrittenFrames()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->handleEndOfStream(J)V

    .line 931
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->bytesUntilNextAvSync:I

    .line 932
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->handledEndOfStream:Z

    goto :goto_0
.end method

.method public release()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1187
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->reset()V

    .line 1188
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->releaseKeepSessionIdAudioTrack()V

    .line 1189
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->availableAudioProcessors:[Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v0, v3, v1

    .line 1190
    .local v0, "audioProcessor":Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;
    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;->reset()V

    .line 1189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1192
    .end local v0    # "audioProcessor":Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;
    :cond_0
    iput v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioSessionId:I

    .line 1193
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playing:Z

    .line 1194
    return-void
.end method

.method public reset()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    .line 1131
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1132
    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->submittedPcmBytes:J

    .line 1133
    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->submittedEncodedFrames:J

    .line 1134
    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->writtenPcmBytes:J

    .line 1135
    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->writtenEncodedFrames:J

    .line 1136
    iput v9, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->framesPerEncodedSample:I

    .line 1137
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->drainingPlaybackParameters:Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    if-eqz v4, :cond_1

    .line 1138
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->drainingPlaybackParameters:Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    iput-object v4, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playbackParameters:Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    .line 1139
    iput-object v8, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->drainingPlaybackParameters:Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    .line 1143
    :cond_0
    :goto_0
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playbackParametersCheckpoints:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V

    .line 1144
    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playbackParametersOffsetUs:J

    .line 1145
    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playbackParametersPositionUs:J

    .line 1146
    iput-object v8, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->inputBuffer:Ljava/nio/ByteBuffer;

    .line 1147
    iput-object v8, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 1148
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioProcessors:[Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 1149
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioProcessors:[Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;

    aget-object v0, v4, v1

    .line 1150
    .local v0, "audioProcessor":Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;
    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;->flush()V

    .line 1151
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->outputBuffers:[Ljava/nio/ByteBuffer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;->getOutput()Ljava/nio/ByteBuffer;

    move-result-object v5

    aput-object v5, v4, v1

    .line 1148
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1140
    .end local v0    # "audioProcessor":Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;
    .end local v1    # "i":I
    :cond_1
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playbackParametersCheckpoints:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1141
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playbackParametersCheckpoints:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$PlaybackParametersCheckpoint;

    invoke-static {v4}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$PlaybackParametersCheckpoint;->access$200(Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$PlaybackParametersCheckpoint;)Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playbackParameters:Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    goto :goto_0

    .line 1153
    .restart local v1    # "i":I
    :cond_2
    iput-boolean v9, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->handledEndOfStream:Z

    .line 1154
    const/4 v4, -0x1

    iput v4, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->drainingAudioProcessorIndex:I

    .line 1155
    iput-object v8, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->avSyncHeader:Ljava/nio/ByteBuffer;

    .line 1156
    iput v9, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->bytesUntilNextAvSync:I

    .line 1157
    iput v9, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    .line 1158
    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->latencyUs:J

    .line 1159
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->resetSyncParams()V

    .line 1160
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    .line 1161
    .local v2, "playState":I
    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    .line 1162
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->pause()V

    .line 1165
    :cond_3
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 1166
    .local v3, "toRelease":Landroid/media/AudioTrack;
    iput-object v8, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 1167
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v4, v8, v9}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->reconfigure(Landroid/media/AudioTrack;Z)V

    .line 1168
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->releasingConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v4}, Landroid/os/ConditionVariable;->close()V

    .line 1169
    new-instance v4, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$1;

    invoke-direct {v4, p0, v3}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$1;-><init>(Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;Landroid/media/AudioTrack;)V

    .line 1179
    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$1;->start()V

    .line 1181
    .end local v1    # "i":I
    .end local v2    # "playState":I
    .end local v3    # "toRelease":Landroid/media/AudioTrack;
    :cond_4
    return-void
.end method

.method public setAudioSessionId(I)V
    .locals 1
    .param p1, "audioSessionId"    # I

    .prologue
    .line 1051
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioSessionId:I

    if-eq v0, p1, :cond_0

    .line 1052
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioSessionId:I

    .line 1053
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->reset()V

    .line 1055
    :cond_0
    return-void
.end method

.method public setPlaybackParameters(Lorg/telegram/messenger/exoplayer2/PlaybackParameters;)Lorg/telegram/messenger/exoplayer2/PlaybackParameters;
    .locals 5
    .param p1, "playbackParameters"    # Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    .prologue
    .line 991
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->passthrough:Z

    if-eqz v2, :cond_0

    .line 993
    sget-object v2, Lorg/telegram/messenger/exoplayer2/PlaybackParameters;->DEFAULT:Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playbackParameters:Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    .line 994
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playbackParameters:Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    .line 1013
    :goto_0
    return-object v2

    .line 996
    :cond_0
    new-instance v1, Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->sonicAudioProcessor:Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;

    iget v3, p1, Lorg/telegram/messenger/exoplayer2/PlaybackParameters;->speed:F

    .line 997
    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->setSpeed(F)F

    move-result v2

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->sonicAudioProcessor:Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;

    iget v4, p1, Lorg/telegram/messenger/exoplayer2/PlaybackParameters;->pitch:F

    .line 998
    invoke-virtual {v3, v4}, Lorg/telegram/messenger/exoplayer2/audio/SonicAudioProcessor;->setPitch(F)F

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/PlaybackParameters;-><init>(FF)V

    .line 999
    .end local p1    # "playbackParameters":Lorg/telegram/messenger/exoplayer2/PlaybackParameters;
    .local v1, "playbackParameters":Lorg/telegram/messenger/exoplayer2/PlaybackParameters;
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->drainingPlaybackParameters:Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->drainingPlaybackParameters:Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    .line 1004
    .local v0, "lastSetPlaybackParameters":Lorg/telegram/messenger/exoplayer2/PlaybackParameters;
    :goto_1
    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer2/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1005
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1008
    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->drainingPlaybackParameters:Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    .line 1013
    :cond_1
    :goto_2
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playbackParameters:Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    move-object p1, v1

    .end local v1    # "playbackParameters":Lorg/telegram/messenger/exoplayer2/PlaybackParameters;
    .restart local p1    # "playbackParameters":Lorg/telegram/messenger/exoplayer2/PlaybackParameters;
    goto :goto_0

    .line 999
    .end local v0    # "lastSetPlaybackParameters":Lorg/telegram/messenger/exoplayer2/PlaybackParameters;
    .end local p1    # "playbackParameters":Lorg/telegram/messenger/exoplayer2/PlaybackParameters;
    .restart local v1    # "playbackParameters":Lorg/telegram/messenger/exoplayer2/PlaybackParameters;
    :cond_2
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playbackParametersCheckpoints:Ljava/util/LinkedList;

    .line 1001
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playbackParametersCheckpoints:Ljava/util/LinkedList;

    .line 1002
    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$PlaybackParametersCheckpoint;

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$PlaybackParametersCheckpoint;->access$200(Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$PlaybackParametersCheckpoint;)Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playbackParameters:Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    goto :goto_1

    .line 1010
    .restart local v0    # "lastSetPlaybackParameters":Lorg/telegram/messenger/exoplayer2/PlaybackParameters;
    :cond_4
    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playbackParameters:Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    goto :goto_2
.end method

.method public setStreamType(I)V
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 1035
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->streamType:I

    if-ne v0, p1, :cond_1

    .line 1045
    :cond_0
    :goto_0
    return-void

    .line 1038
    :cond_1
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->streamType:I

    .line 1039
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->tunneling:Z

    if-nez v0, :cond_0

    .line 1043
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->reset()V

    .line 1044
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioSessionId:I

    goto :goto_0
.end method

.method public setVolume(F)V
    .locals 1
    .param p1, "volume"    # F

    .prologue
    .line 1096
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->volume:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1097
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->volume:F

    .line 1098
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->setVolumeInternal()V

    .line 1100
    :cond_0
    return-void
.end method
