.class public abstract Lorg/telegram/messenger/exoplayer2/decoder/Buffer;
.super Ljava/lang/Object;
.source "Buffer.java"


# instance fields
.field private flags:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addFlag(I)V
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 73
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/Buffer;->flags:I

    or-int/2addr v0, p1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/Buffer;->flags:I

    .line 74
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/Buffer;->flags:I

    .line 33
    return-void
.end method

.method public final clearFlag(I)V
    .locals 2
    .param p1, "flag"    # I

    .prologue
    .line 82
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/Buffer;->flags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/Buffer;->flags:I

    .line 83
    return-void
.end method

.method protected final getFlag(I)Z
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 92
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/Buffer;->flags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isDecodeOnly()Z
    .locals 1

    .prologue
    .line 39
    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/decoder/Buffer;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method public final isEndOfStream()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/decoder/Buffer;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method public final isKeyFrame()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/decoder/Buffer;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method public final setFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 63
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/decoder/Buffer;->flags:I

    .line 64
    return-void
.end method
