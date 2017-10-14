.class public Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;
.super Lorg/telegram/messenger/exoplayer2/decoder/OutputBuffer;
.source "SimpleOutputBuffer.java"


# instance fields
.field public data:Ljava/nio/ByteBuffer;

.field private final owner:Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder",
            "<*",
            "Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder",
            "<*",
            "Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "owner":Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;, "Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder<*Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;*>;"
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/decoder/OutputBuffer;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;->owner:Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;

    .line 31
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lorg/telegram/messenger/exoplayer2/decoder/OutputBuffer;->clear()V

    .line 53
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 56
    :cond_0
    return-void
.end method

.method public init(JI)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "timeUs"    # J
    .param p3, "size"    # I

    .prologue
    .line 41
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;->timeUs:J

    .line 42
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, p3, :cond_1

    .line 43
    :cond_0
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 45
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;->data:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 46
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 47
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;->data:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;->owner:Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->releaseOutputBuffer(Lorg/telegram/messenger/exoplayer2/decoder/OutputBuffer;)V

    .line 61
    return-void
.end method
