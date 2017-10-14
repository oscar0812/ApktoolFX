.class public final Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;
.super Ljava/lang/Object;
.source "EncryptedFileDataSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/upstream/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource$EncryptedFileDataSourceException;
    }
.end annotation


# instance fields
.field private bytesRemaining:J

.field private file:Ljava/io/RandomAccessFile;

.field private fileOffset:I

.field private iv:[B

.field private key:[B

.field private final listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener",
            "<-",
            "Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;",
            ">;"
        }
    .end annotation
.end field

.field private opened:Z

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener",
            "<-",
            "Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "listener":Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;, "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener<-Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->key:[B

    .line 45
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->iv:[B

    .line 53
    iput-object p1, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    .line 54
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource$EncryptedFileDataSourceException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 121
    iput-object v2, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->uri:Landroid/net/Uri;

    .line 122
    iput v3, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->fileOffset:I

    .line 124
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->file:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :cond_0
    iput-object v2, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->file:Ljava/io/RandomAccessFile;

    .line 131
    iget-boolean v1, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->opened:Z

    if-eqz v1, :cond_1

    .line 132
    iput-boolean v3, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->opened:Z

    .line 133
    iget-object v1, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    if-eqz v1, :cond_1

    .line 134
    iget-object v1, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    invoke-interface {v1, p0}, Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;->onTransferEnd(Ljava/lang/Object;)V

    .line 138
    :cond_1
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource$EncryptedFileDataSourceException;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource$EncryptedFileDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    iput-object v2, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->file:Ljava/io/RandomAccessFile;

    .line 131
    iget-boolean v2, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->opened:Z

    if-eqz v2, :cond_2

    .line 132
    iput-boolean v3, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->opened:Z

    .line 133
    iget-object v2, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    if-eqz v2, :cond_2

    .line 134
    iget-object v2, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    invoke-interface {v2, p0}, Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;->onTransferEnd(Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)J
    .locals 10
    .param p1, "dataSpec"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource$EncryptedFileDataSourceException;
        }
    .end annotation

    .prologue
    .line 59
    :try_start_0
    iget-object v5, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iput-object v5, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->uri:Landroid/net/Uri;

    .line 60
    new-instance v4, Ljava/io/File;

    iget-object v5, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    .local v4, "path":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, "name":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInternalCacheDir()Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".key"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    .local v2, "keyPath":Ljava/io/File;
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "r"

    invoke-direct {v1, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 64
    .local v1, "keyFile":Ljava/io/RandomAccessFile;
    iget-object v5, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->key:[B

    invoke-virtual {v1, v5}, Ljava/io/RandomAccessFile;->read([B)I

    .line 65
    iget-object v5, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->iv:[B

    invoke-virtual {v1, v5}, Ljava/io/RandomAccessFile;->read([B)I

    .line 66
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 68
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string/jumbo v6, "r"

    invoke-direct {v5, v4, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->file:Ljava/io/RandomAccessFile;

    .line 69
    iget-object v5, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->file:Ljava/io/RandomAccessFile;

    iget-wide v6, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->position:J

    invoke-virtual {v5, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 70
    iget-wide v6, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->position:J

    long-to-int v5, v6

    iput v5, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->fileOffset:I

    .line 71
    iget-wide v6, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    iget-wide v8, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->position:J

    sub-long/2addr v6, v8

    :goto_0
    iput-wide v6, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->bytesRemaining:J

    .line 72
    iget-wide v6, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->bytesRemaining:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gez v5, :cond_1

    .line 73
    new-instance v5, Ljava/io/EOFException;

    invoke-direct {v5}, Ljava/io/EOFException;-><init>()V

    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v1    # "keyFile":Ljava/io/RandomAccessFile;
    .end local v2    # "keyPath":Ljava/io/File;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "path":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource$EncryptedFileDataSourceException;

    invoke-direct {v5, v0}, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource$EncryptedFileDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v5

    .line 71
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "keyFile":Ljava/io/RandomAccessFile;
    .restart local v2    # "keyPath":Ljava/io/File;
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "path":Ljava/io/File;
    :cond_0
    :try_start_1
    iget-wide v6, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->length:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 79
    :cond_1
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->opened:Z

    .line 80
    iget-object v5, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    if-eqz v5, :cond_2

    .line 81
    iget-object v5, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    invoke-interface {v5, p0, p1}, Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;->onTransferStart(Ljava/lang/Object;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)V

    .line 84
    :cond_2
    iget-wide v6, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->bytesRemaining:J

    return-wide v6
.end method

.method public read([BII)I
    .locals 10
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "readLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource$EncryptedFileDataSourceException;
        }
    .end annotation

    .prologue
    .line 89
    if-nez p3, :cond_1

    .line 90
    const/4 v4, 0x0

    .line 110
    :cond_0
    :goto_0
    return v4

    .line 91
    :cond_1
    iget-wide v0, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 92
    const/4 v4, -0x1

    goto :goto_0

    .line 96
    :cond_2
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->file:Ljava/io/RandomAccessFile;

    iget-wide v2, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->bytesRemaining:J

    int-to-long v8, p3

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {v0, p1, p2, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v4

    .line 97
    .local v4, "bytesRead":I
    iget-object v1, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->key:[B

    iget-object v2, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->iv:[B

    iget v5, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->fileOffset:I

    move-object v0, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/Utilities;->aesCtrDecryptionByteArray([B[B[BIII)V

    .line 98
    iget v0, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->fileOffset:I

    add-int/2addr v0, v4

    iput v0, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->fileOffset:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    if-lez v4, :cond_0

    .line 104
    iget-wide v0, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->bytesRemaining:J

    int-to-long v2, v4

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->bytesRemaining:J

    .line 105
    iget-object v0, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    invoke-interface {v0, p0, v4}, Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;->onBytesTransferred(Ljava/lang/Object;I)V

    goto :goto_0

    .line 99
    .end local v4    # "bytesRead":I
    :catch_0
    move-exception v6

    .line 100
    .local v6, "e":Ljava/io/IOException;
    new-instance v0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource$EncryptedFileDataSourceException;

    invoke-direct {v0, v6}, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource$EncryptedFileDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method
