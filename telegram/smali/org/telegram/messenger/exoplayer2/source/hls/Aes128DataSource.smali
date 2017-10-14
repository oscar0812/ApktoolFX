.class final Lorg/telegram/messenger/exoplayer2/source/hls/Aes128DataSource;
.super Ljava/lang/Object;
.source "Aes128DataSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/upstream/DataSource;


# instance fields
.field private cipherInputStream:Ljavax/crypto/CipherInputStream;

.field private final encryptionIv:[B

.field private final encryptionKey:[B

.field private final upstream:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;[B[B)V
    .locals 0
    .param p1, "upstream"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    .param p2, "encryptionKey"    # [B
    .param p3, "encryptionIv"    # [B

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/Aes128DataSource;->upstream:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    .line 59
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/Aes128DataSource;->encryptionKey:[B

    .line 60
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/Aes128DataSource;->encryptionIv:[B

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
    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/Aes128DataSource;->cipherInputStream:Ljavax/crypto/CipherInputStream;

    .line 90
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/Aes128DataSource;->upstream:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->close()V

    .line 91
    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/Aes128DataSource;->upstream:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)J
    .locals 7
    .param p1, "dataSpec"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    :try_start_0
    const-string/jumbo v4, "AES/CBC/PKCS7Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 72
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/hls/Aes128DataSource;->encryptionKey:[B

    const-string/jumbo v5, "AES"

    invoke-direct {v2, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 73
    .local v2, "cipherKey":Ljava/security/Key;
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/hls/Aes128DataSource;->encryptionIv:[B

    invoke-direct {v1, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 76
    .local v1, "cipherIV":Ljava/security/spec/AlgorithmParameterSpec;
    const/4 v4, 0x2

    :try_start_1
    invoke-virtual {v0, v4, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_2

    .line 81
    new-instance v4, Ljavax/crypto/CipherInputStream;

    new-instance v5, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/hls/Aes128DataSource;->upstream:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-direct {v5, v6, p1}, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)V

    invoke-direct {v4, v5, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    iput-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/hls/Aes128DataSource;->cipherInputStream:Ljavax/crypto/CipherInputStream;

    .line 84
    const-wide/16 v4, -0x1

    return-wide v4

    .line 68
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "cipherIV":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v2    # "cipherKey":Ljava/security/Key;
    :catch_0
    move-exception v3

    .line 69
    .local v3, "e":Ljava/security/GeneralSecurityException;
    :goto_0
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 77
    .end local v3    # "e":Ljava/security/GeneralSecurityException;
    .restart local v0    # "cipher":Ljavax/crypto/Cipher;
    .restart local v1    # "cipherIV":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local v2    # "cipherKey":Ljava/security/Key;
    :catch_1
    move-exception v3

    .line 78
    .restart local v3    # "e":Ljava/security/GeneralSecurityException;
    :goto_1
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 77
    .end local v3    # "e":Ljava/security/GeneralSecurityException;
    :catch_2
    move-exception v3

    goto :goto_1

    .line 68
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "cipherIV":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v2    # "cipherKey":Ljava/security/Key;
    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "readLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/Aes128DataSource;->cipherInputStream:Ljavax/crypto/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 96
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/Aes128DataSource;->cipherInputStream:Ljavax/crypto/CipherInputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljavax/crypto/CipherInputStream;->read([BII)I

    move-result v0

    .line 97
    .local v0, "bytesRead":I
    if-gez v0, :cond_0

    .line 98
    const/4 v0, -0x1

    .line 100
    .end local v0    # "bytesRead":I
    :cond_0
    return v0

    .line 95
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
