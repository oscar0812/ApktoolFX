.class final Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;
.super Ljava/lang/Object;
.source "SingleSampleMediaPeriod.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/source/SampleStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SampleStreamImpl"
.end annotation


# static fields
.field private static final STREAM_STATE_END_OF_STREAM:I = 0x2

.field private static final STREAM_STATE_SEND_FORMAT:I = 0x0

.field private static final STREAM_STATE_SEND_SAMPLE:I = 0x1


# instance fields
.field private streamState:I

.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;


# direct methods
.method private constructor <init>(Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;
    .param p2, "x1"    # Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$1;

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;-><init>(Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;)V

    return-void
.end method


# virtual methods
.method public isReady()Z
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;

    iget-boolean v0, v0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->loadingFinished:Z

    return v0
.end method

.method public maybeThrowError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->maybeThrowError()V

    .line 210
    return-void
.end method

.method public readData(Lorg/telegram/messenger/exoplayer2/FormatHolder;Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;Z)I
    .locals 7
    .param p1, "formatHolder"    # Lorg/telegram/messenger/exoplayer2/FormatHolder;
    .param p2, "buffer"    # Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;
    .param p3, "requireFormat"    # Z

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x4

    const/4 v1, 0x1

    .line 215
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;->streamState:I

    if-ne v0, v6, :cond_0

    .line 216
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->addFlag(I)V

    move v0, v3

    .line 233
    :goto_0
    return v0

    .line 218
    :cond_0
    if-nez p3, :cond_1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;->streamState:I

    if-nez v0, :cond_2

    .line 219
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iput-object v0, p1, Lorg/telegram/messenger/exoplayer2/FormatHolder;->format:Lorg/telegram/messenger/exoplayer2/Format;

    .line 220
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;->streamState:I

    .line 221
    const/4 v0, -0x5

    goto :goto_0

    .line 224
    :cond_2
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;->streamState:I

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 225
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;

    iget-boolean v0, v0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->loadingFinished:Z

    if-nez v0, :cond_4

    .line 226
    const/4 v0, -0x3

    goto :goto_0

    :cond_3
    move v0, v2

    .line 224
    goto :goto_1

    .line 228
    :cond_4
    const-wide/16 v4, 0x0

    iput-wide v4, p2, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    .line 229
    invoke-virtual {p2, v1}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->addFlag(I)V

    .line 230
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->sampleSize:I

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    .line 231
    iget-object v0, p2, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->sampleData:[B

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;

    iget v4, v4, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->sampleSize:I

    invoke-virtual {v0, v1, v2, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 232
    iput v6, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;->streamState:I

    move v0, v3

    .line 233
    goto :goto_0
.end method

.method public seekToUs(J)V
    .locals 2
    .param p1, "positionUs"    # J

    .prologue
    .line 197
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;->streamState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 198
    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;->streamState:I

    .line 200
    :cond_0
    return-void
.end method

.method public skipData(J)V
    .locals 3
    .param p1, "positionUs"    # J

    .prologue
    .line 239
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 240
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;->streamState:I

    .line 242
    :cond_0
    return-void
.end method
