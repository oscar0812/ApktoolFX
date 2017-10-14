.class public abstract Lorg/telegram/messenger/exoplayer2/decoder/OutputBuffer;
.super Lorg/telegram/messenger/exoplayer2/decoder/Buffer;
.source "OutputBuffer.java"


# instance fields
.field public skippedOutputBufferCount:I

.field public timeUs:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/decoder/Buffer;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract release()V
.end method
