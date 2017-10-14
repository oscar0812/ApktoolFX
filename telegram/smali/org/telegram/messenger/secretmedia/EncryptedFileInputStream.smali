.class public Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;
.super Ljava/io/FileInputStream;
.source "EncryptedFileInputStream.java"


# instance fields
.field private fileOffset:I

.field private iv:[B

.field private key:[B


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 5
    .param p1, "file"    # Ljava/io/File;
    .param p2, "keyFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v4, 0x20

    const/16 v3, 0x10

    const/4 v2, 0x0

    .line 25
    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 20
    new-array v1, v4, [B

    iput-object v1, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->key:[B

    .line 21
    new-array v1, v3, [B

    iput-object v1, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->iv:[B

    .line 27
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p2, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 28
    .local v0, "randomAccessFile":Ljava/io/RandomAccessFile;
    iget-object v1, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->key:[B

    invoke-virtual {v0, v1, v2, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 29
    iget-object v1, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->iv:[B

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 30
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 31
    return-void
.end method

.method public static decryptBytesWithKeyFile([BIILjava/io/File;)V
    .locals 7
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "keyFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v4, 0x20

    const/16 v3, 0x10

    const/4 v5, 0x0

    .line 48
    new-array v1, v4, [B

    .line 49
    .local v1, "key":[B
    new-array v2, v3, [B

    .line 50
    .local v2, "iv":[B
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string/jumbo v0, "r"

    invoke-direct {v6, p3, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 51
    .local v6, "randomAccessFile":Ljava/io/RandomAccessFile;
    invoke-virtual {v6, v1, v5, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 52
    invoke-virtual {v6, v2, v5, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 53
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    move-object v0, p0

    move v3, p1

    move v4, p2

    .line 54
    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/Utilities;->aesCtrDecryptionByteArray([B[B[BIII)V

    .line 55
    return-void
.end method


# virtual methods
.method public read([BII)I
    .locals 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-super {p0, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    .line 36
    .local v6, "result":I
    iget-object v1, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->key:[B

    iget-object v2, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->iv:[B

    iget v5, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->fileOffset:I

    move-object v0, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/Utilities;->aesCtrDecryptionByteArray([B[B[BIII)V

    .line 37
    iget v0, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->fileOffset:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->fileOffset:I

    .line 38
    return v6
.end method

.method public skip(J)J
    .locals 3
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    iget v0, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->fileOffset:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->fileOffset:I

    .line 44
    invoke-super {p0, p1, p2}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
