.class public final Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesCipherDataSource;
.super Ljava/lang/Object;
.source "AesCipherDataSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/upstream/DataSource;


# instance fields
.field private cipher:Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesFlushingCipher;

.field private final secretKey:[B

.field private final upstream:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;


# direct methods
.method public constructor <init>([BLorg/telegram/messenger/exoplayer2/upstream/DataSource;)V
    .locals 0
    .param p1, "secretKey"    # [B
    .param p2, "upstream"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesCipherDataSource;->upstream:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    .line 37
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesCipherDataSource;->secretKey:[B

    .line 38
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
    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesCipherDataSource;->cipher:Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesFlushingCipher;

    .line 65
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesCipherDataSource;->upstream:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->close()V

    .line 66
    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesCipherDataSource;->upstream:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)J
    .locals 10
    .param p1, "dataSpec"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesCipherDataSource;->upstream:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)J

    move-result-wide v8

    .line 43
    .local v8, "dataLength":J
    iget-object v0, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/upstream/crypto/CryptoUtil;->getFNV64Hash(Ljava/lang/String;)J

    move-result-wide v4

    .line 44
    .local v4, "nonce":J
    new-instance v1, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesFlushingCipher;

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesCipherDataSource;->secretKey:[B

    iget-wide v6, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesFlushingCipher;-><init>(I[BJJ)V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesCipherDataSource;->cipher:Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesFlushingCipher;

    .line 46
    return-wide v8
.end method

.method public read([BII)I
    .locals 3
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "readLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 51
    if-nez p3, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 59
    :goto_0
    return v0

    .line 54
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesCipherDataSource;->upstream:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v2, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->read([BII)I

    move-result v0

    .line 55
    .local v0, "read":I
    if-ne v0, v1, :cond_1

    move v0, v1

    .line 56
    goto :goto_0

    .line 58
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesCipherDataSource;->cipher:Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesFlushingCipher;

    invoke-virtual {v1, p1, p2, v0}, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesFlushingCipher;->updateInPlace([BII)V

    goto :goto_0
.end method
