.class public final Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesFlushingCipher;
.super Ljava/lang/Object;
.source "AesFlushingCipher.java"


# instance fields
.field private final blockSize:I

.field private final cipher:Ljavax/crypto/Cipher;

.field private final flushedBlock:[B

.field private pendingXorBytes:I

.field private final zerosBlock:[B


# direct methods
.method public constructor <init>(I[BJJ)V
    .locals 9
    .param p1, "mode"    # I
    .param p2, "secretKey"    # [B
    .param p3, "nonce"    # J
    .param p5, "offset"    # J

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    :try_start_0
    const-string/jumbo v4, "AES/CTR/NoPadding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesFlushingCipher;->cipher:Ljavax/crypto/Cipher;

    .line 47
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesFlushingCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v4}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v4

    iput v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesFlushingCipher;->blockSize:I

    .line 48
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesFlushingCipher;->blockSize:I

    new-array v4, v4, [B

    iput-object v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesFlushingCipher;->zerosBlock:[B

    .line 49
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesFlushingCipher;->blockSize:I

    new-array v4, v4, [B

    iput-object v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesFlushingCipher;->flushedBlock:[B

    .line 50
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesFlushingCipher;->blockSize:I

    int-to-long v4, v4

    div-long v0, p5, v4

    .line 51
    .local v0, "counter":J
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesFlushingCipher;->blockSize:I

    int-to-long v4, v4

    rem-long v4, p5, v4

    long-to-int v3, v4

    .line 52
    .local v3, "startPadding":I
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesFlushingCipher;->cipher:Ljavax/crypto/Cipher;

    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesFlushingCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v6}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-direct {v5, p2, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    .line 53
    invoke-direct {p0, p3, p4, v0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesFlushingCipher;->getInitializationVector(JJ)[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 52
    invoke-virtual {v4, p1, v5, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 54
    if-eqz v3, :cond_0

    .line 55
    new-array v4, v3, [B

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5, v3}, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesFlushingCipher;->updateInPlace([BII)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :cond_0
    return-void

    .line 57
    .end local v0    # "counter":J
    .end local v3    # "startPadding":I
    :catch_0
    move-exception v2

    .line 60
    .local v2, "e":Ljava/security/GeneralSecurityException;
    :goto_0
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 57
    .end local v2    # "e":Ljava/security/GeneralSecurityException;
    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_0

    :catch_3
    move-exception v2

    goto :goto_0
.end method

.method private getInitializationVector(JJ)[B
    .locals 1
    .param p1, "nonce"    # J
    .param p3, "counter"    # J

    .prologue
    .line 117
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method private nonFlushingUpdate([BII[BI)I
    .locals 7
    .param p1, "in"    # [B
    .param p2, "inOffset"    # I
    .param p3, "length"    # I
    .param p4, "out"    # [B
    .param p5, "outOffset"    # I

    .prologue
    .line 109
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesFlushingCipher;->cipher:Ljavax/crypto/Cipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 110
    :catch_0
    move-exception v6

    .line 112
    .local v6, "e":Ljavax/crypto/ShortBufferException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public update([BII[BI)V
    .locals 10
    .param p1, "in"    # [B
    .param p2, "inOffset"    # I
    .param p3, "length"    # I
    .param p4, "out"    # [B
    .param p5, "outOffset"    # I

    .prologue
    .line 72
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesFlushingCipher;->pendingXorBytes:I

    if-lez v0, :cond_2

    .line 73
    aget-byte v0, p1, p2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesFlushingCipher;->flushedBlock:[B

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesFlushingCipher;->blockSize:I

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesFlushingCipher;->pendingXorBytes:I

    sub-int/2addr v2, v3

    aget-byte v1, v1, v2

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p4, p5

    .line 74
    add-int/lit8 p5, p5, 0x1

    .line 75
    add-int/lit8 p2, p2, 0x1

    .line 76
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesFlushingCipher;->pendingXorBytes:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesFlushingCipher;->pendingXorBytes:I

    .line 77
    add-int/lit8 p3, p3, -0x1

    .line 78
    if-nez p3, :cond_0

    .line 105
    :cond_1
    :goto_0
    return-void

    .line 84
    :cond_2
    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesFlushingCipher;->nonFlushingUpdate([BII[BI)I

    move-result v9

    .line 85
    .local v9, "written":I
    if-eq p3, v9, :cond_1

    .line 94
    sub-int v6, p3, v9

    .line 95
    .local v6, "bytesToFlush":I
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesFlushingCipher;->blockSize:I

    if-ge v6, v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 96
    add-int/2addr p5, v9

    .line 97
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesFlushingCipher;->blockSize:I

    sub-int/2addr v0, v6

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesFlushingCipher;->pendingXorBytes:I

    .line 98
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesFlushingCipher;->zerosBlock:[B

    const/4 v2, 0x0

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesFlushingCipher;->pendingXorBytes:I

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesFlushingCipher;->flushedBlock:[B

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesFlushingCipher;->nonFlushingUpdate([BII[BI)I

    move-result v9

    .line 99
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesFlushingCipher;->blockSize:I

    if-ne v9, v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 102
    const/4 v7, 0x0

    .local v7, "i":I
    move v8, p5

    .end local p5    # "outOffset":I
    .local v8, "outOffset":I
    :goto_3
    if-ge v7, v6, :cond_5

    .line 103
    add-int/lit8 p5, v8, 0x1

    .end local v8    # "outOffset":I
    .restart local p5    # "outOffset":I
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesFlushingCipher;->flushedBlock:[B

    aget-byte v0, v0, v7

    aput-byte v0, p4, v8

    .line 102
    add-int/lit8 v7, v7, 0x1

    move v8, p5

    .end local p5    # "outOffset":I
    .restart local v8    # "outOffset":I
    goto :goto_3

    .line 95
    .end local v7    # "i":I
    .end local v8    # "outOffset":I
    .restart local p5    # "outOffset":I
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 99
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .end local p5    # "outOffset":I
    .restart local v7    # "i":I
    .restart local v8    # "outOffset":I
    :cond_5
    move p5, v8

    .line 105
    .end local v8    # "outOffset":I
    .restart local p5    # "outOffset":I
    goto :goto_0
.end method

.method public updateInPlace([BII)V
    .locals 6
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/upstream/crypto/AesFlushingCipher;->update([BII[BI)V

    .line 66
    return-void
.end method
