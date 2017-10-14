.class public final Lorg/telegram/messenger/secretmedia/ExtendedDefaultDataSource;
.super Ljava/lang/Object;
.source "ExtendedDefaultDataSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/upstream/DataSource;


# static fields
.field private static final SCHEME_ASSET:Ljava/lang/String; = "asset"

.field private static final SCHEME_CONTENT:Ljava/lang/String; = "content"


# instance fields
.field private final assetDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

.field private final baseDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

.field private final contentDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

.field private dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

.field private final encryptedFileDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

.field private final fileDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;Ljava/lang/String;IIZ)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "userAgent"    # Ljava/lang/String;
    .param p4, "connectTimeoutMillis"    # I
    .param p5, "readTimeoutMillis"    # I
    .param p6, "allowCrossProtocolRedirects"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener",
            "<-",
            "Lorg/telegram/messenger/exoplayer2/upstream/DataSource;",
            ">;",
            "Ljava/lang/String;",
            "IIZ)V"
        }
    .end annotation

    .prologue
    .local p2, "listener":Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;, "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener<-Lorg/telegram/messenger/exoplayer2/upstream/DataSource;>;"
    const/4 v2, 0x0

    .line 70
    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;

    move-object v1, p3

    move-object v3, p2

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;-><init>(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/util/Predicate;Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;IIZLorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$RequestProperties;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/secretmedia/ExtendedDefaultDataSource;-><init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "userAgent"    # Ljava/lang/String;
    .param p4, "allowCrossProtocolRedirects"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener",
            "<-",
            "Lorg/telegram/messenger/exoplayer2/upstream/DataSource;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p2, "listener":Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;, "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener<-Lorg/telegram/messenger/exoplayer2/upstream/DataSource;>;"
    const/16 v4, 0x1f40

    .line 50
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/secretmedia/ExtendedDefaultDataSource;-><init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;Ljava/lang/String;IIZ)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "baseDataSource"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener",
            "<-",
            "Lorg/telegram/messenger/exoplayer2/upstream/DataSource;",
            ">;",
            "Lorg/telegram/messenger/exoplayer2/upstream/DataSource;",
            ")V"
        }
    .end annotation

    .prologue
    .line 85
    .local p2, "listener":Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;, "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener<-Lorg/telegram/messenger/exoplayer2/upstream/DataSource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-static {p3}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iput-object v0, p0, Lorg/telegram/messenger/secretmedia/ExtendedDefaultDataSource;->baseDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    .line 87
    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource;

    invoke-direct {v0, p2}, Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;)V

    iput-object v0, p0, Lorg/telegram/messenger/secretmedia/ExtendedDefaultDataSource;->fileDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    .line 88
    new-instance v0, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;

    invoke-direct {v0, p2}, Lorg/telegram/messenger/secretmedia/EncryptedFileDataSource;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;)V

    iput-object v0, p0, Lorg/telegram/messenger/secretmedia/ExtendedDefaultDataSource;->encryptedFileDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    .line 89
    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;

    invoke-direct {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;-><init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;)V

    iput-object v0, p0, Lorg/telegram/messenger/secretmedia/ExtendedDefaultDataSource;->assetDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    .line 90
    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;

    invoke-direct {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;-><init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;)V

    iput-object v0, p0, Lorg/telegram/messenger/secretmedia/ExtendedDefaultDataSource;->contentDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    .line 91
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 131
    iget-object v0, p0, Lorg/telegram/messenger/secretmedia/ExtendedDefaultDataSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    if-eqz v0, :cond_0

    .line 133
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/secretmedia/ExtendedDefaultDataSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    iput-object v1, p0, Lorg/telegram/messenger/secretmedia/ExtendedDefaultDataSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    .line 138
    :cond_0
    return-void

    .line 135
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lorg/telegram/messenger/secretmedia/ExtendedDefaultDataSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    throw v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/telegram/messenger/secretmedia/ExtendedDefaultDataSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/secretmedia/ExtendedDefaultDataSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)J
    .locals 4
    .param p1, "dataSpec"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v1, p0, Lorg/telegram/messenger/secretmedia/ExtendedDefaultDataSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 97
    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "scheme":Ljava/lang/String;
    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Util;->isLocalFileUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 99
    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "/android_asset/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    iget-object v1, p0, Lorg/telegram/messenger/secretmedia/ExtendedDefaultDataSource;->assetDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iput-object v1, p0, Lorg/telegram/messenger/secretmedia/ExtendedDefaultDataSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    .line 116
    :goto_1
    iget-object v1, p0, Lorg/telegram/messenger/secretmedia/ExtendedDefaultDataSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v1, p1}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)J

    move-result-wide v2

    return-wide v2

    .line 95
    .end local v0    # "scheme":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 102
    .restart local v0    # "scheme":Ljava/lang/String;
    :cond_1
    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ".enc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 103
    iget-object v1, p0, Lorg/telegram/messenger/secretmedia/ExtendedDefaultDataSource;->encryptedFileDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iput-object v1, p0, Lorg/telegram/messenger/secretmedia/ExtendedDefaultDataSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    goto :goto_1

    .line 105
    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/secretmedia/ExtendedDefaultDataSource;->fileDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iput-object v1, p0, Lorg/telegram/messenger/secretmedia/ExtendedDefaultDataSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    goto :goto_1

    .line 108
    :cond_3
    const-string/jumbo v1, "asset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 109
    iget-object v1, p0, Lorg/telegram/messenger/secretmedia/ExtendedDefaultDataSource;->assetDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iput-object v1, p0, Lorg/telegram/messenger/secretmedia/ExtendedDefaultDataSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    goto :goto_1

    .line 110
    :cond_4
    const-string/jumbo v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 111
    iget-object v1, p0, Lorg/telegram/messenger/secretmedia/ExtendedDefaultDataSource;->contentDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iput-object v1, p0, Lorg/telegram/messenger/secretmedia/ExtendedDefaultDataSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    goto :goto_1

    .line 113
    :cond_5
    iget-object v1, p0, Lorg/telegram/messenger/secretmedia/ExtendedDefaultDataSource;->baseDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iput-object v1, p0, Lorg/telegram/messenger/secretmedia/ExtendedDefaultDataSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    goto :goto_1
.end method

.method public read([BII)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "readLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lorg/telegram/messenger/secretmedia/ExtendedDefaultDataSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->read([BII)I

    move-result v0

    return v0
.end method
