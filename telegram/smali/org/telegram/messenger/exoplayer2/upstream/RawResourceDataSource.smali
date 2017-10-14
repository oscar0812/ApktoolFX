.class public final Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;
.super Ljava/lang/Object;
.source "RawResourceDataSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/upstream/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;
    }
.end annotation


# static fields
.field private static final RAW_RESOURCE_SCHEME:Ljava/lang/String; = "rawresource"


# instance fields
.field private assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

.field private bytesRemaining:J

.field private inputStream:Ljava/io/InputStream;

.field private final listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener",
            "<-",
            "Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;",
            ">;"
        }
    .end annotation
.end field

.field private opened:Z

.field private final resources:Landroid/content/res/Resources;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;-><init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;)V

    .line 77
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
            "Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p2, "listener":Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;, "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener<-Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->resources:Landroid/content/res/Resources;

    .line 86
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    .line 87
    return-void
.end method

.method public static buildRawResourceUri(I)Landroid/net/Uri;
    .locals 2
    .param p0, "rawResourceId"    # I

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "rawresource:///"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 173
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->uri:Landroid/net/Uri;

    .line 175
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 181
    :cond_0
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    .line 183
    :try_start_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v1, :cond_1

    .line 184
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    :cond_1
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 190
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->opened:Z

    if-eqz v1, :cond_2

    .line 191
    iput-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->opened:Z

    .line 192
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    if-eqz v1, :cond_2

    .line 193
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    invoke-interface {v1, p0}, Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;->onTransferEnd(Ljava/lang/Object;)V

    .line 198
    :cond_2
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v1, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 190
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->opened:Z

    if-eqz v2, :cond_3

    .line 191
    iput-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->opened:Z

    .line 192
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    if-eqz v2, :cond_3

    .line 193
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    invoke-interface {v2, p0}, Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;->onTransferEnd(Ljava/lang/Object;)V

    :cond_3
    throw v1

    .line 178
    :catch_1
    move-exception v0

    .line 179
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_3
    new-instance v1, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 181
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v1

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    .line 183
    :try_start_4
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v2, :cond_4

    .line 184
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 189
    :cond_4
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 190
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->opened:Z

    if-eqz v2, :cond_5

    .line 191
    iput-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->opened:Z

    .line 192
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    if-eqz v2, :cond_5

    .line 193
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    invoke-interface {v2, p0}, Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;->onTransferEnd(Ljava/lang/Object;)V

    :cond_5
    throw v1

    .line 186
    :catch_2
    move-exception v0

    .line 187
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_5
    new-instance v1, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 189
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v1

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 190
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->opened:Z

    if-eqz v2, :cond_6

    .line 191
    iput-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->opened:Z

    .line 192
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    if-eqz v2, :cond_6

    .line 193
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    invoke-interface {v2, p0}, Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;->onTransferEnd(Ljava/lang/Object;)V

    :cond_6
    throw v1
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)J
    .locals 12
    .param p1, "dataSpec"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    .line 92
    :try_start_0
    iget-object v8, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iput-object v8, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->uri:Landroid/net/Uri;

    .line 93
    const-string/jumbo v8, "rawresource"

    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->uri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 94
    new-instance v6, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    const-string/jumbo v7, "URI must use scheme rawresource"

    invoke-direct {v6, v7}, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :catch_0
    move-exception v2

    .line 122
    .local v2, "e":Ljava/io/IOException;
    new-instance v6, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v6, v2}, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v6

    .line 99
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :try_start_1
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->uri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    .line 104
    .local v3, "resourceId":I
    :try_start_2
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->resources:Landroid/content/res/Resources;

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v8

    iput-object v8, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 105
    new-instance v8, Ljava/io/FileInputStream;

    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v9}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v8, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    .line 106
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v9}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/io/InputStream;->skip(J)J

    .line 107
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    iget-wide v10, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->position:J

    invoke-virtual {v8, v10, v11}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    .line 108
    .local v4, "skipped":J
    iget-wide v8, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->position:J

    cmp-long v8, v4, v8

    if-gez v8, :cond_1

    .line 111
    new-instance v6, Ljava/io/EOFException;

    invoke-direct {v6}, Ljava/io/EOFException;-><init>()V

    throw v6

    .line 100
    .end local v3    # "resourceId":I
    .end local v4    # "skipped":J
    :catch_1
    move-exception v2

    .line 101
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    const-string/jumbo v7, "Resource identifier must be an integer."

    invoke-direct {v6, v7}, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 113
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "resourceId":I
    .restart local v4    # "skipped":J
    :cond_1
    iget-wide v8, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->length:J

    cmp-long v8, v8, v6

    if-eqz v8, :cond_3

    .line 114
    iget-wide v6, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->length:J

    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->bytesRemaining:J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 125
    :goto_0
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->opened:Z

    .line 126
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    if-eqz v6, :cond_2

    .line 127
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    invoke-interface {v6, p0, p1}, Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;->onTransferStart(Ljava/lang/Object;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)V

    .line 130
    :cond_2
    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->bytesRemaining:J

    return-wide v6

    .line 116
    :cond_3
    :try_start_3
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v0

    .line 118
    .local v0, "assetFileDescriptorLength":J
    cmp-long v8, v0, v6

    if-nez v8, :cond_4

    :goto_1
    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->bytesRemaining:J

    goto :goto_0

    :cond_4
    iget-wide v6, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->position:J
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    sub-long v6, v0, v6

    goto :goto_1
.end method

.method public read([BII)I
    .locals 10
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "readLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, -0x1

    const/4 v3, -0x1

    .line 135
    if-nez p3, :cond_1

    .line 136
    const/4 v0, 0x0

    .line 163
    :cond_0
    :goto_0
    return v0

    .line 137
    :cond_1
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->bytesRemaining:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    move v0, v3

    .line 138
    goto :goto_0

    .line 143
    :cond_2
    :try_start_0
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->bytesRemaining:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_3

    move v1, p3

    .line 145
    .local v1, "bytesToRead":I
    :goto_1
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v4, p1, p2, v1}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 150
    .local v0, "bytesRead":I
    if-ne v0, v3, :cond_5

    .line 151
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->bytesRemaining:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_4

    .line 153
    new-instance v3, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    invoke-direct {v3, v4}, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3

    .line 143
    .end local v0    # "bytesRead":I
    .end local v1    # "bytesToRead":I
    :cond_3
    :try_start_1
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->bytesRemaining:J

    int-to-long v6, p3

    .line 144
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v4

    long-to-int v1, v4

    goto :goto_1

    .line 146
    :catch_0
    move-exception v2

    .line 147
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v3, v2}, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3

    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "bytesRead":I
    .restart local v1    # "bytesToRead":I
    :cond_4
    move v0, v3

    .line 155
    goto :goto_0

    .line 157
    :cond_5
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->bytesRemaining:J

    cmp-long v3, v4, v8

    if-eqz v3, :cond_6

    .line 158
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->bytesRemaining:J

    int-to-long v6, v0

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->bytesRemaining:J

    .line 160
    :cond_6
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    if-eqz v3, :cond_0

    .line 161
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    invoke-interface {v3, p0, v0}, Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;->onBytesTransferred(Ljava/lang/Object;I)V

    goto :goto_0
.end method
