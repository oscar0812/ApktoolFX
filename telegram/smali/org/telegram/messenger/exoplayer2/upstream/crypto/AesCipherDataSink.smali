.class public final Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesCipherDataSink;
.super Ljava/lang/Object;
.source "AesCipherDataSink.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/upstream/DataSink;


# instance fields
.field private cipher:Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesFlushingCipher;

.field private final scratch:[B

.field private final secretKey:[B

.field private final wrappedDataSink:Lorg/telegram/messenger/exoplayer2/upstream/DataSink;


# direct methods
.method public constructor <init>([BLorg/telegram/messenger/exoplayer2/upstream/DataSink;)V
    .locals 1
    .param p1, "secretKey"    # [B
    .param p2, "wrappedDataSink"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSink;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesCipherDataSink;-><init>([BLorg/telegram/messenger/exoplayer2/upstream/DataSink;[B)V

    .line 44
    return-void
.end method

.method public constructor <init>([BLorg/telegram/messenger/exoplayer2/upstream/DataSink;[B)V
    .locals 0
    .param p1, "secretKey"    # [B
    .param p2, "wrappedDataSink"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSink;
    .param p3, "scratch"    # [B

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesCipherDataSink;->wrappedDataSink:Lorg/telegram/messenger/exoplayer2/upstream/DataSink;

    .line 59
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesCipherDataSink;->secretKey:[B

    .line 60
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesCipherDataSink;->scratch:[B

    .line 61
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesCipherDataSink;->cipher:Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesFlushingCipher;

    .line 92
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesCipherDataSink;->wrappedDataSink:Lorg/telegram/messenger/exoplayer2/upstream/DataSink;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/upstream/DataSink;->close()V

    .line 93
    return-void
.end method

.method public open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)V
    .locals 8
    .param p1, "dataSpec"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesCipherDataSink;->wrappedDataSink:Lorg/telegram/messenger/exoplayer2/upstream/DataSink;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/upstream/DataSink;->open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)V

    .line 66
    iget-object v0, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/upstream/crypto/CryptoUtil;->getFNV64Hash(Ljava/lang/String;)J

    move-result-wide v4

    .line 67
    .local v4, "nonce":J
    new-instance v1, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesFlushingCipher;

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesCipherDataSink;->secretKey:[B

    iget-wide v6, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesFlushingCipher;-><init>(I[BJJ)V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesCipherDataSink;->cipher:Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesFlushingCipher;

    .line 69
    return-void
.end method

.method public write([BII)V
    .locals 7
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 73
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesCipherDataSink;->scratch:[B

    if-nez v0, :cond_1

    .line 75
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesCipherDataSink;->cipher:Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesFlushingCipher;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesFlushingCipher;->updateInPlace([BII)V

    .line 76
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesCipherDataSink;->wrappedDataSink:Lorg/telegram/messenger/exoplayer2/upstream/DataSink;

    invoke-interface {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/upstream/DataSink;->write([BII)V

    .line 87
    :cond_0
    return-void

    .line 79
    :cond_1
    const/4 v6, 0x0

    .line 80
    .local v6, "bytesProcessed":I
    :goto_0
    if-ge v6, p3, :cond_0

    .line 81
    sub-int v0, p3, v6

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesCipherDataSink;->scratch:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 82
    .local v3, "bytesToProcess":I
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesCipherDataSink;->cipher:Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesFlushingCipher;

    add-int v2, p2, v6

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesCipherDataSink;->scratch:[B

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesFlushingCipher;->update([BII[BI)V

    .line 83
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesCipherDataSink;->wrappedDataSink:Lorg/telegram/messenger/exoplayer2/upstream/DataSink;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesCipherDataSink;->scratch:[B

    invoke-interface {v0, v1, v5, v3}, Lorg/telegram/messenger/exoplayer2/upstream/DataSink;->write([BII)V

    .line 84
    add-int/2addr v6, v3

    .line 85
    goto :goto_0
.end method
