.class public Lorg/telegram/messenger/voip/AudioRecordJNI;
.super Ljava/lang/Object;
.source "AudioRecordJNI.java"


# instance fields
.field private aec:Landroid/media/audiofx/AcousticEchoCanceler;

.field private agc:Landroid/media/audiofx/AutomaticGainControl;

.field private audioRecord:Landroid/media/AudioRecord;

.field private buffer:Ljava/nio/ByteBuffer;

.field private bufferSize:I

.field private nativeInst:J

.field private needResampling:Z

.field private ns:Landroid/media/audiofx/NoiseSuppressor;

.field private running:Z

.field private thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "nativeInst"    # J

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->needResampling:Z

    .line 38
    iput-wide p1, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->nativeInst:J

    .line 39
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/voip/AudioRecordJNI;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/voip/AudioRecordJNI;

    .prologue
    .line 24
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->running:Z

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/voip/AudioRecordJNI;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/voip/AudioRecordJNI;

    .prologue
    .line 24
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->needResampling:Z

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/voip/AudioRecordJNI;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/voip/AudioRecordJNI;

    .prologue
    .line 24
    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->buffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/messenger/voip/AudioRecordJNI;)Landroid/media/AudioRecord;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/voip/AudioRecordJNI;

    .prologue
    .line 24
    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->audioRecord:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/messenger/voip/AudioRecordJNI;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/voip/AudioRecordJNI;
    .param p1, "x1"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/AudioRecordJNI;->nativeCallback(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private getBufferSize(II)I
    .locals 2
    .param p1, "min"    # I
    .param p2, "sampleRate"    # I

    .prologue
    .line 42
    const/16 v0, 0x10

    const/4 v1, 0x2

    invoke-static {p2, v0, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private native nativeCallback(Ljava/nio/ByteBuffer;)V
.end method

.method private startThread()V
    .locals 3

    .prologue
    .line 163
    iget-object v1, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->thread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 164
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "thread already started"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 166
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->running:Z

    .line 167
    iget-boolean v1, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->needResampling:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x6e4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 168
    .local v0, "tmpBuf":Ljava/nio/ByteBuffer;
    :goto_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lorg/telegram/messenger/voip/AudioRecordJNI$1;

    invoke-direct {v2, p0, v0}, Lorg/telegram/messenger/voip/AudioRecordJNI$1;-><init>(Lorg/telegram/messenger/voip/AudioRecordJNI;Ljava/nio/ByteBuffer;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->thread:Ljava/lang/Thread;

    .line 191
    iget-object v1, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 192
    return-void

    .line 167
    .end local v0    # "tmpBuf":Ljava/nio/ByteBuffer;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private tryInit(II)Z
    .locals 10
    .param p1, "source"    # I
    .param p2, "sampleRate"    # I

    .prologue
    const v9, 0xbb80

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 61
    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 63
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 66
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Trying to initialize AudioRecord with source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " and sample rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 67
    iget v0, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->bufferSize:I

    invoke-direct {p0, v0, v9}, Lorg/telegram/messenger/voip/AudioRecordJNI;->getBufferSize(II)I

    move-result v5

    .line 69
    .local v5, "size":I
    :try_start_1
    new-instance v0, Landroid/media/AudioRecord;

    const/16 v3, 0x10

    const/4 v4, 0x2

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->audioRecord:Landroid/media/AudioRecord;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 73
    :goto_1
    if-eq p2, v9, :cond_1

    move v0, v7

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->needResampling:Z

    .line 74
    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-ne v0, v7, :cond_2

    :goto_3
    return v7

    .line 70
    :catch_0
    move-exception v6

    .line 71
    .local v6, "x":Ljava/lang/Exception;
    const-string/jumbo v0, "AudioRecord init failed!"

    invoke-static {v0, v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v6    # "x":Ljava/lang/Exception;
    :cond_1
    move v0, v8

    .line 73
    goto :goto_2

    :cond_2
    move v7, v8

    .line 74
    goto :goto_3

    .line 64
    .end local v5    # "size":I
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public init(IIII)V
    .locals 6
    .param p1, "sampleRate"    # I
    .param p2, "bitsPerSample"    # I
    .param p3, "channels"    # I
    .param p4, "bufferSize"    # I

    .prologue
    const v5, 0xbb80

    const v4, 0xac44

    const/4 v3, 0x7

    const/4 v2, 0x1

    .line 46
    iget-object v1, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v1, :cond_0

    .line 47
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "already inited"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 49
    :cond_0
    iput p4, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->bufferSize:I

    .line 50
    invoke-direct {p0, v3, v5}, Lorg/telegram/messenger/voip/AudioRecordJNI;->tryInit(II)Z

    move-result v0

    .line 51
    .local v0, "res":Z
    if-nez v0, :cond_1

    .line 52
    invoke-direct {p0, v2, v5}, Lorg/telegram/messenger/voip/AudioRecordJNI;->tryInit(II)Z

    .line 53
    :cond_1
    if-nez v0, :cond_2

    .line 54
    invoke-direct {p0, v3, v4}, Lorg/telegram/messenger/voip/AudioRecordJNI;->tryInit(II)Z

    .line 55
    :cond_2
    if-nez v0, :cond_3

    .line 56
    invoke-direct {p0, v2, v4}, Lorg/telegram/messenger/voip/AudioRecordJNI;->tryInit(II)Z

    .line 57
    :cond_3
    invoke-static {p4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->buffer:Ljava/nio/ByteBuffer;

    .line 58
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 83
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->running:Z

    .line 84
    iget-object v1, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->thread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 86
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    iput-object v2, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->thread:Ljava/lang/Thread;

    .line 92
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v1, :cond_1

    .line 93
    iget-object v1, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    .line 94
    iput-object v2, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->audioRecord:Landroid/media/AudioRecord;

    .line 96
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->agc:Landroid/media/audiofx/AutomaticGainControl;

    if-eqz v1, :cond_2

    .line 97
    iget-object v1, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->agc:Landroid/media/audiofx/AutomaticGainControl;

    invoke-virtual {v1}, Landroid/media/audiofx/AutomaticGainControl;->release()V

    .line 98
    iput-object v2, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->agc:Landroid/media/audiofx/AutomaticGainControl;

    .line 100
    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->ns:Landroid/media/audiofx/NoiseSuppressor;

    if-eqz v1, :cond_3

    .line 101
    iget-object v1, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->ns:Landroid/media/audiofx/NoiseSuppressor;

    invoke-virtual {v1}, Landroid/media/audiofx/NoiseSuppressor;->release()V

    .line 102
    iput-object v2, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->ns:Landroid/media/audiofx/NoiseSuppressor;

    .line 104
    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v1, :cond_4

    .line 105
    iget-object v1, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    invoke-virtual {v1}, Landroid/media/audiofx/AcousticEchoCanceler;->release()V

    .line 106
    iput-object v2, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 108
    :cond_4
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public start()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 112
    :try_start_0
    iget-object v3, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->thread:Ljava/lang/Thread;

    if-nez v3, :cond_7

    .line 113
    iget-object v3, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->audioRecord:Landroid/media/AudioRecord;

    if-nez v3, :cond_0

    .line 159
    :goto_0
    return v1

    .line 115
    :cond_0
    iget-object v3, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->startRecording()V

    .line 116
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v4, 0x10

    if-lt v3, v4, :cond_3

    .line 118
    :try_start_1
    invoke-static {}, Landroid/media/audiofx/AutomaticGainControl;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 119
    iget-object v3, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v3

    invoke-static {v3}, Landroid/media/audiofx/AutomaticGainControl;->create(I)Landroid/media/audiofx/AutomaticGainControl;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->agc:Landroid/media/audiofx/AutomaticGainControl;

    .line 120
    iget-object v3, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->agc:Landroid/media/audiofx/AutomaticGainControl;

    if-eqz v3, :cond_1

    .line 121
    iget-object v3, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->agc:Landroid/media/audiofx/AutomaticGainControl;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/audiofx/AutomaticGainControl;->setEnabled(Z)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 129
    :cond_1
    :goto_1
    :try_start_2
    invoke-static {}, Landroid/media/audiofx/NoiseSuppressor;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 130
    iget-object v3, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v3

    invoke-static {v3}, Landroid/media/audiofx/NoiseSuppressor;->create(I)Landroid/media/audiofx/NoiseSuppressor;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->ns:Landroid/media/audiofx/NoiseSuppressor;

    .line 131
    iget-object v3, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->ns:Landroid/media/audiofx/NoiseSuppressor;

    if-eqz v3, :cond_2

    .line 132
    iget-object v3, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->ns:Landroid/media/audiofx/NoiseSuppressor;

    const-string/jumbo v4, "user_system_ns"

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lorg/telegram/messenger/voip/VoIPServerConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/audiofx/NoiseSuppressor;->setEnabled(Z)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 140
    :cond_2
    :goto_2
    :try_start_3
    invoke-static {}, Landroid/media/audiofx/AcousticEchoCanceler;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 141
    iget-object v3, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v3

    invoke-static {v3}, Landroid/media/audiofx/AcousticEchoCanceler;->create(I)Landroid/media/audiofx/AcousticEchoCanceler;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 142
    iget-object v3, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v3, :cond_3

    .line 143
    iget-object v3, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    const-string/jumbo v4, "use_system_aec"

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lorg/telegram/messenger/voip/VoIPServerConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/audiofx/AcousticEchoCanceler;->setEnabled(Z)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 151
    :cond_3
    :goto_3
    :try_start_4
    invoke-direct {p0}, Lorg/telegram/messenger/voip/AudioRecordJNI;->startThread()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    move v1, v2

    .line 155
    goto :goto_0

    .line 123
    :cond_4
    :try_start_5
    const-string/jumbo v3, "AutomaticGainControl is not available on this device :("

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "x":Ljava/lang/Throwable;
    :try_start_6
    const-string/jumbo v3, "error creating AutomaticGainControl"

    invoke-static {v3, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 156
    .end local v0    # "x":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 157
    .local v0, "x":Ljava/lang/Exception;
    const-string/jumbo v2, "Error initializing AudioRecord"

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 134
    .end local v0    # "x":Ljava/lang/Exception;
    :cond_5
    :try_start_7
    const-string/jumbo v3, "NoiseSuppressor is not available on this device :("

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 136
    :catch_2
    move-exception v0

    .line 137
    .local v0, "x":Ljava/lang/Throwable;
    :try_start_8
    const-string/jumbo v3, "error creating NoiseSuppressor"

    invoke-static {v3, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_2

    .line 145
    .end local v0    # "x":Ljava/lang/Throwable;
    :cond_6
    :try_start_9
    const-string/jumbo v3, "AcousticEchoCanceler is not available on this device"

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_3

    .line 147
    :catch_3
    move-exception v0

    .line 148
    .restart local v0    # "x":Ljava/lang/Throwable;
    :try_start_a
    const-string/jumbo v3, "error creating AcousticEchoCanceler"

    invoke-static {v3, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 153
    .end local v0    # "x":Ljava/lang/Throwable;
    :cond_7
    iget-object v3, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_4
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 80
    :cond_0
    return-void
.end method
