.class public Lorg/telegram/messenger/voip/AudioTrackJNI;
.super Ljava/lang/Object;
.source "AudioTrackJNI.java"


# instance fields
.field private audioTrack:Landroid/media/AudioTrack;

.field private buffer:[B

.field private bufferSize:I

.field private nativeInst:J

.field private needResampling:Z

.field private running:Z

.field private thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "nativeInst"    # J

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/16 v0, 0x780

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->buffer:[B

    .line 31
    iput-wide p1, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->nativeInst:J

    .line 32
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/voip/AudioTrackJNI;)Landroid/media/AudioTrack;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/voip/AudioTrackJNI;

    .prologue
    .line 21
    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->audioTrack:Landroid/media/AudioTrack;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/voip/AudioTrackJNI;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/voip/AudioTrackJNI;

    .prologue
    .line 21
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->needResampling:Z

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/voip/AudioTrackJNI;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/voip/AudioTrackJNI;

    .prologue
    .line 21
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->running:Z

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/messenger/voip/AudioTrackJNI;)[B
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/voip/AudioTrackJNI;

    .prologue
    .line 21
    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->buffer:[B

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/messenger/voip/AudioTrackJNI;[B)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/voip/AudioTrackJNI;
    .param p1, "x1"    # [B

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/AudioTrackJNI;->nativeCallback([B)V

    return-void
.end method

.method private getBufferSize(II)I
    .locals 2
    .param p1, "min"    # I
    .param p2, "sampleRate"    # I

    .prologue
    .line 35
    const/4 v0, 0x4

    const/4 v1, 0x2

    invoke-static {p2, v0, v1}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private native nativeCallback([B)V
.end method

.method private startThread()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "thread already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->running:Z

    .line 90
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/telegram/messenger/voip/AudioTrackJNI$1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/voip/AudioTrackJNI$1;-><init>(Lorg/telegram/messenger/voip/AudioTrackJNI;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->thread:Ljava/lang/Thread;

    .line 126
    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 127
    return-void
.end method


# virtual methods
.method public init(IIII)V
    .locals 9
    .param p1, "sampleRate"    # I
    .param p2, "bitsPerSample"    # I
    .param p3, "channels"    # I
    .param p4, "bufferSize"    # I

    .prologue
    const/16 v8, 0xc

    const/4 v7, 0x4

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 39
    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "already inited"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    const v0, 0xbb80

    invoke-direct {p0, p4, v0}, Lorg/telegram/messenger/voip/AudioTrackJNI;->getBufferSize(II)I

    move-result v5

    .line 43
    .local v5, "size":I
    iput p4, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->bufferSize:I

    .line 44
    new-instance v0, Landroid/media/AudioTrack;

    const v2, 0xbb80

    if-ne p3, v6, :cond_2

    move v3, v7

    :goto_0
    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->audioTrack:Landroid/media/AudioTrack;

    .line 45
    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-eq v0, v6, :cond_1

    .line 47
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_1
    mul-int/lit8 v0, p4, 0x6

    const v2, 0xac44

    invoke-direct {p0, v0, v2}, Lorg/telegram/messenger/voip/AudioTrackJNI;->getBufferSize(II)I

    move-result v5

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "buffer size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 51
    new-instance v0, Landroid/media/AudioTrack;

    const v2, 0xac44

    if-ne p3, v6, :cond_3

    move v3, v7

    :goto_2
    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->audioTrack:Landroid/media/AudioTrack;

    .line 52
    iput-boolean v6, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->needResampling:Z

    .line 54
    :cond_1
    return-void

    :cond_2
    move v3, v8

    .line 44
    goto :goto_0

    :cond_3
    move v3, v8

    .line 51
    goto :goto_2

    .line 48
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 62
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->running:Z

    .line 63
    iget-object v1, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->thread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 65
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    iput-object v2, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->thread:Ljava/lang/Thread;

    .line 71
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_1

    .line 72
    iget-object v1, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    .line 73
    iput-object v2, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->audioTrack:Landroid/media/AudioTrack;

    .line 75
    :cond_1
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->thread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 79
    invoke-direct {p0}, Lorg/telegram/messenger/voip/AudioTrackJNI;->startThread()V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 59
    :cond_0
    return-void
.end method
