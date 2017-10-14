.class public final Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;
.super Ljava/lang/Object;
.source "AssetDataSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/upstream/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;
    }
.end annotation


# instance fields
.field private final assetManager:Landroid/content/res/AssetManager;

.field private bytesRemaining:J

.field private inputStream:Ljava/io/InputStream;

.field private final listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener",
            "<-",
            "Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;",
            ">;"
        }
    .end annotation
.end field

.field private opened:Z

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;-><init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;)V

    .line 55
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
            "Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p2, "listener":Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;, "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener<-Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->assetManager:Landroid/content/res/AssetManager;

    .line 63
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    .line 64
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 145
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->uri:Landroid/net/Uri;

    .line 147
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :cond_0
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    .line 154
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->opened:Z

    if-eqz v1, :cond_1

    .line 155
    iput-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->opened:Z

    .line 156
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    if-eqz v1, :cond_1

    .line 157
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    invoke-interface {v1, p0}, Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;->onTransferEnd(Ljava/lang/Object;)V

    .line 161
    :cond_1
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    .line 154
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->opened:Z

    if-eqz v2, :cond_2

    .line 155
    iput-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->opened:Z

    .line 156
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    if-eqz v2, :cond_2

    .line 157
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    invoke-interface {v2, p0}, Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;->onTransferEnd(Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)J
    .locals 12
    .param p1, "dataSpec"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, -0x1

    const/4 v8, 0x1

    .line 69
    :try_start_0
    iget-object v4, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iput-object v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->uri:Landroid/net/Uri;

    .line 70
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "path":Ljava/lang/String;
    const-string/jumbo v4, "/android_asset/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 72
    const/16 v4, 0xf

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 76
    :cond_0
    :goto_0
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->assetManager:Landroid/content/res/AssetManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v1, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    .line 77
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    iget-wide v6, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->position:J

    invoke-virtual {v4, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    .line 78
    .local v2, "skipped":J
    iget-wide v4, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->position:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_2

    .line 81
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "skipped":J
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;

    invoke-direct {v4, v0}, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v4

    .line 73
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "path":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string/jumbo v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 74
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 83
    .restart local v2    # "skipped":J
    :cond_2
    iget-wide v4, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->length:J

    cmp-long v4, v4, v10

    if-eqz v4, :cond_5

    .line 84
    iget-wide v4, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->length:J

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->bytesRemaining:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 98
    :cond_3
    :goto_1
    iput-boolean v8, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->opened:Z

    .line 99
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    if-eqz v4, :cond_4

    .line 100
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    invoke-interface {v4, p0, p1}, Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;->onTransferStart(Ljava/lang/Object;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)V

    .line 102
    :cond_4
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->bytesRemaining:J

    return-wide v4

    .line 86
    :cond_5
    :try_start_2
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->bytesRemaining:J

    .line 87
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->bytesRemaining:J

    const-wide/32 v6, 0x7fffffff

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 91
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->bytesRemaining:J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public read([BII)I
    .locals 10
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "readLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, -0x1

    const/4 v3, -0x1

    .line 107
    if-nez p3, :cond_1

    .line 108
    const/4 v0, 0x0

    .line 135
    :cond_0
    :goto_0
    return v0

    .line 109
    :cond_1
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->bytesRemaining:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    move v0, v3

    .line 110
    goto :goto_0

    .line 115
    :cond_2
    :try_start_0
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->bytesRemaining:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_3

    move v1, p3

    .line 117
    .local v1, "bytesToRead":I
    :goto_1
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v4, p1, p2, v1}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 122
    .local v0, "bytesRead":I
    if-ne v0, v3, :cond_5

    .line 123
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->bytesRemaining:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_4

    .line 125
    new-instance v3, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;

    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    invoke-direct {v3, v4}, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3

    .line 115
    .end local v0    # "bytesRead":I
    .end local v1    # "bytesToRead":I
    :cond_3
    :try_start_1
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->bytesRemaining:J

    int-to-long v6, p3

    .line 116
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v4

    long-to-int v1, v4

    goto :goto_1

    .line 118
    :catch_0
    move-exception v2

    .line 119
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;

    invoke-direct {v3, v2}, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3

    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "bytesRead":I
    .restart local v1    # "bytesToRead":I
    :cond_4
    move v0, v3

    .line 127
    goto :goto_0

    .line 129
    :cond_5
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->bytesRemaining:J

    cmp-long v3, v4, v8

    if-eqz v3, :cond_6

    .line 130
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->bytesRemaining:J

    int-to-long v6, v0

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->bytesRemaining:J

    .line 132
    :cond_6
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    if-eqz v3, :cond_0

    .line 133
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    invoke-interface {v3, p0, v0}, Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;->onBytesTransferred(Ljava/lang/Object;I)V

    goto :goto_0
.end method
