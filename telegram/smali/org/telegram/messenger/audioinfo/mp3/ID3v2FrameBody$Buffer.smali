.class final Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody$Buffer;
.super Ljava/lang/Object;
.source "ID3v2FrameBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Buffer"
.end annotation


# instance fields
.field bytes:[B


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "initialLength"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody$Buffer;->bytes:[B

    .line 30
    return-void
.end method


# virtual methods
.method bytes(I)[B
    .locals 2
    .param p1, "minLength"    # I

    .prologue
    .line 33
    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody$Buffer;->bytes:[B

    array-length v1, v1

    if-le p1, v1, :cond_1

    .line 34
    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody$Buffer;->bytes:[B

    array-length v1, v1

    mul-int/lit8 v0, v1, 0x2

    .line 35
    .local v0, "length":I
    :goto_0
    if-le p1, v0, :cond_0

    .line 36
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 38
    :cond_0
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody$Buffer;->bytes:[B

    .line 40
    .end local v0    # "length":I
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody$Buffer;->bytes:[B

    return-object v1
.end method
