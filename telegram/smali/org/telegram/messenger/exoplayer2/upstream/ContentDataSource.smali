.class public final Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;
.super Ljava/lang/Object;
.source "ContentDataSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/upstream/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;
    }
.end annotation


# instance fields
.field private assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

.field private bytesRemaining:J

.field private inputStream:Ljava/io/InputStream;

.field private final listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener",
            "<-",
            "Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;",
            ">;"
        }
    .end annotation
.end field

.field private opened:Z

.field private final resolver:Landroid/content/ContentResolver;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;-><init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener",
            "<-",
            "Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p2, "listener":Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;, "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener<-Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->resolver:Landroid/content/ContentResolver;

    .line 66
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    .line 67
    return-void
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 144
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->uri:Landroid/net/Uri;

    .line 146
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->inputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 152
    :cond_0
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->inputStream:Ljava/io/InputStream;

    .line 154
    :try_start_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v1, :cond_1

    .line 155
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    :cond_1
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 161
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->opened:Z

    if-eqz v1, :cond_2

    .line 162
    iput-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->opened:Z

    .line 163
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    if-eqz v1, :cond_2

    .line 164
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    invoke-interface {v1, p0}, Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;->onTransferEnd(Ljava/lang/Object;)V

    .line 169
    :cond_2
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v1, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 160
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 161
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->opened:Z

    if-eqz v2, :cond_3

    .line 162
    iput-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->opened:Z

    .line 163
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    if-eqz v2, :cond_3

    .line 164
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    invoke-interface {v2, p0}, Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;->onTransferEnd(Ljava/lang/Object;)V

    :cond_3
    throw v1

    .line 149
    :catch_1
    move-exception v0

    .line 150
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_3
    new-instance v1, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 152
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v1

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->inputStream:Ljava/io/InputStream;

    .line 154
    :try_start_4
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v2, :cond_4

    .line 155
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 160
    :cond_4
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 161
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->opened:Z

    if-eqz v2, :cond_5

    .line 162
    iput-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->opened:Z

    .line 163
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    if-eqz v2, :cond_5

    .line 164
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    invoke-interface {v2, p0}, Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;->onTransferEnd(Ljava/lang/Object;)V

    :cond_5
    throw v1

    .line 157
    :catch_2
    move-exception v0

    .line 158
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_5
    new-instance v1, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 160
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v1

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 161
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->opened:Z

    if-eqz v2, :cond_6

    .line 162
    iput-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->opened:Z

    .line 163
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    if-eqz v2, :cond_6

    .line 164
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    invoke-interface {v2, p0}, Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;->onTransferEnd(Ljava/lang/Object;)V

    :cond_6
    throw v1
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)J
    .locals 8
    .param p1, "dataSpec"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    .line 72
    :try_start_0
    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->uri:Landroid/net/Uri;

    .line 73
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->resolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->uri:Landroid/net/Uri;

    const-string/jumbo v5, "r"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 74
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->inputStream:Ljava/io/InputStream;

    .line 75
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->inputStream:Ljava/io/InputStream;

    iget-wide v4, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->position:J

    invoke-virtual {v1, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    .line 76
    .local v2, "skipped":J
    iget-wide v4, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->position:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 79
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v2    # "skipped":J
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 81
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "skipped":J
    :cond_0
    :try_start_1
    iget-wide v4, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->length:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_3

    .line 82
    iget-wide v4, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->length:J

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    :cond_1
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->opened:Z

    .line 97
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    if-eqz v1, :cond_2

    .line 98
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    invoke-interface {v1, p0, p1}, Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;->onTransferStart(Ljava/lang/Object;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)V

    .line 101
    :cond_2
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    return-wide v4

    .line 84
    :cond_3
    :try_start_2
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    int-to-long v4, v1

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    .line 85
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    .line 89
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 10
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "readLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, -0x1

    const/4 v3, -0x1

    .line 106
    if-nez p3, :cond_1

    .line 107
    const/4 v0, 0x0

    .line 134
    :cond_0
    :goto_0
    return v0

    .line 108
    :cond_1
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    move v0, v3

    .line 109
    goto :goto_0

    .line 114
    :cond_2
    :try_start_0
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_3

    move v1, p3

    .line 116
    .local v1, "bytesToRead":I
    :goto_1
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v4, p1, p2, v1}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 121
    .local v0, "bytesRead":I
    if-ne v0, v3, :cond_5

    .line 122
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_4

    .line 124
    new-instance v3, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    invoke-direct {v3, v4}, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3

    .line 114
    .end local v0    # "bytesRead":I
    .end local v1    # "bytesToRead":I
    :cond_3
    :try_start_1
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    int-to-long v6, p3

    .line 115
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v4

    long-to-int v1, v4

    goto :goto_1

    .line 117
    :catch_0
    move-exception v2

    .line 118
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v3, v2}, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3

    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "bytesRead":I
    .restart local v1    # "bytesToRead":I
    :cond_4
    move v0, v3

    .line 126
    goto :goto_0

    .line 128
    :cond_5
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    cmp-long v3, v4, v8

    if-eqz v3, :cond_6

    .line 129
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    int-to-long v6, v0

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    .line 131
    :cond_6
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    if-eqz v3, :cond_0

    .line 132
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    invoke-interface {v3, p0, v0}, Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;->onBytesTransferred(Ljava/lang/Object;I)V

    goto :goto_0
.end method
