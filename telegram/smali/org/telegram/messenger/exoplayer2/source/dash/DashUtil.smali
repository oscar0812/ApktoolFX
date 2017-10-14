.class public final Lorg/telegram/messenger/exoplayer2/source/dash/DashUtil;
.super Ljava/lang/Object;
.source "DashUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getFirstRepresentation(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;I)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;
    .locals 4
    .param p0, "period"    # Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x0

    .line 231
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;->getAdaptationSetIndex(I)I

    move-result v0

    .line 232
    .local v0, "index":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 236
    :goto_0
    return-object v3

    .line 235
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object v1, v2, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    .line 236
    .local v1, "representations":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v3

    :goto_1
    move-object v3, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;

    goto :goto_1
.end method

.method public static loadChunkIndex(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;)Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;
    .locals 2
    .param p0, "dataSource"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    .param p1, "representation"    # Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 166
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/DashUtil;->loadInitializationData(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;Z)Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

    move-result-object v0

    .line 168
    .local v0, "extractorWrapper":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;->getSeekMap()Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;

    goto :goto_0
.end method

.method public static loadDrmInitData(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;)Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;
    .locals 11
    .param p0, "dataSource"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    .param p1, "dashManifest"    # Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v6, 0x0

    .line 79
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v7

    if-ge v7, v10, :cond_1

    move-object v2, v6

    .line 105
    :cond_0
    :goto_0
    return-object v2

    .line 82
    :cond_1
    invoke-virtual {p1, v9}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;

    move-result-object v3

    .line 83
    .local v3, "period":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;
    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;->getAdaptationSetIndex(I)I

    move-result v1

    .line 84
    .local v1, "adaptationSetIndex":I
    if-ne v1, v8, :cond_2

    .line 85
    invoke-virtual {v3, v10}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;->getAdaptationSetIndex(I)I

    move-result v1

    .line 86
    if-ne v1, v8, :cond_2

    move-object v2, v6

    .line 87
    goto :goto_0

    .line 90
    :cond_2
    iget-object v7, v3, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;

    .line 91
    .local v0, "adaptationSet":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;
    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v2, v6

    .line 92
    goto :goto_0

    .line 94
    :cond_3
    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;

    .line 95
    .local v4, "representation":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;
    iget-object v7, v4, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iget-object v2, v7, Lorg/telegram/messenger/exoplayer2/Format;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    .line 96
    .local v2, "drmInitData":Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;
    if-nez v2, :cond_0

    .line 97
    invoke-static {p0, v4}, Lorg/telegram/messenger/exoplayer2/source/dash/DashUtil;->loadSampleFormat(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v5

    .line 98
    .local v5, "sampleFormat":Lorg/telegram/messenger/exoplayer2/Format;
    if-eqz v5, :cond_4

    .line 99
    iget-object v2, v5, Lorg/telegram/messenger/exoplayer2/Format;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    .line 101
    :cond_4
    if-nez v2, :cond_0

    move-object v2, v6

    .line 102
    goto :goto_0
.end method

.method public static loadDrmInitData(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;)Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;
    .locals 5
    .param p0, "dataSource"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    .param p1, "period"    # Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 121
    const/4 v4, 0x2

    invoke-static {p1, v4}, Lorg/telegram/messenger/exoplayer2/source/dash/DashUtil;->getFirstRepresentation(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;I)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;

    move-result-object v1

    .line 122
    .local v1, "representation":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;
    if-nez v1, :cond_1

    .line 123
    const/4 v4, 0x1

    invoke-static {p1, v4}, Lorg/telegram/messenger/exoplayer2/source/dash/DashUtil;->getFirstRepresentation(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;I)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;

    move-result-object v1

    .line 124
    if-nez v1, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-object v3

    .line 128
    :cond_1
    iget-object v4, v1, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iget-object v0, v4, Lorg/telegram/messenger/exoplayer2/Format;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    .line 129
    .local v0, "drmInitData":Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;
    if-eqz v0, :cond_2

    move-object v3, v0

    .line 132
    goto :goto_0

    .line 134
    :cond_2
    invoke-static {p0, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/DashUtil;->loadSampleFormat(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v2

    .line 135
    .local v2, "sampleFormat":Lorg/telegram/messenger/exoplayer2/Format;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lorg/telegram/messenger/exoplayer2/Format;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    goto :goto_0
.end method

.method private static loadInitializationData(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;Z)Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;
    .locals 6
    .param p0, "dataSource"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    .param p1, "representation"    # Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;
    .param p2, "loadIndex"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 186
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->getInitializationUri()Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v2

    .line 187
    .local v2, "initializationUri":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;
    if-nez v2, :cond_0

    move-object v0, v4

    .line 208
    :goto_0
    return-object v0

    .line 190
    :cond_0
    iget-object v5, p1, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->format:Lorg/telegram/messenger/exoplayer2/Format;

    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/source/dash/DashUtil;->newWrappedExtractor(Lorg/telegram/messenger/exoplayer2/Format;)Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

    move-result-object v0

    .line 192
    .local v0, "extractorWrapper":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;
    if-eqz p2, :cond_3

    .line 193
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->getIndexUri()Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v1

    .line 194
    .local v1, "indexUri":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;
    if-nez v1, :cond_1

    move-object v0, v4

    .line 195
    goto :goto_0

    .line 199
    :cond_1
    iget-object v4, p1, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->baseUrl:Ljava/lang/String;

    invoke-virtual {v2, v1, v4}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->attemptMerge(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v3

    .line 200
    .local v3, "requestUri":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;
    if-nez v3, :cond_2

    .line 201
    invoke-static {p0, p1, v0, v2}, Lorg/telegram/messenger/exoplayer2/source/dash/DashUtil;->loadInitializationData(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;)V

    .line 202
    move-object v3, v1

    .line 207
    .end local v1    # "indexUri":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;
    :cond_2
    :goto_1
    invoke-static {p0, p1, v0, v3}, Lorg/telegram/messenger/exoplayer2/source/dash/DashUtil;->loadInitializationData(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;)V

    goto :goto_0

    .line 205
    .end local v3    # "requestUri":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;
    :cond_3
    move-object v3, v2

    .restart local v3    # "requestUri":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;
    goto :goto_1
.end method

.method private static loadInitializationData(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;)V
    .locals 8
    .param p0, "dataSource"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    .param p1, "representation"    # Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;
    .param p2, "extractorWrapper"    # Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;
    .param p3, "requestUri"    # Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 214
    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget-object v2, p1, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->baseUrl:Ljava/lang/String;

    invoke-virtual {p3, v2}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->resolveUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-wide v2, p3, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->start:J

    iget-wide v4, p3, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->length:J

    .line 215
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->getCacheKey()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 216
    .local v0, "dataSpec":Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    new-instance v1, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;

    iget-object v4, p1, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->format:Lorg/telegram/messenger/exoplayer2/Format;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, v0

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;Lorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;)V

    .line 219
    .local v1, "initializationChunk":Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;
    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;->load()V

    .line 220
    return-void
.end method

.method public static loadManifest(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;
    .locals 5
    .param p0, "dataSource"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    .param p1, "manifestUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;

    new-instance v2, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    .line 58
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;I)V

    invoke-direct {v0, p0, v2}, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)V

    .line 60
    .local v0, "inputStream":Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;
    :try_start_0
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->open()V

    .line 61
    new-instance v1, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;

    invoke-direct {v1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;-><init>()V

    .line 62
    .local v1, "parser":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;
    invoke-interface {p0}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 64
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->close()V

    .line 62
    return-object v2

    .line 64
    .end local v1    # "parser":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->close()V

    throw v2
.end method

.method public static loadSampleFormat(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 3
    .param p0, "dataSource"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    .param p1, "representation"    # Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 149
    invoke-static {p0, p1, v2}, Lorg/telegram/messenger/exoplayer2/source/dash/DashUtil;->loadInitializationData(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;Z)Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

    move-result-object v0

    .line 151
    .local v0, "extractorWrapper":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;->getSampleFormats()[Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v1

    aget-object v1, v1, v2

    goto :goto_0
.end method

.method private static newWrappedExtractor(Lorg/telegram/messenger/exoplayer2/Format;)Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;
    .locals 4
    .param p0, "format"    # Lorg/telegram/messenger/exoplayer2/Format;

    .prologue
    .line 223
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    .line 224
    .local v2, "mimeType":Ljava/lang/String;
    const-string/jumbo v3, "video/webm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "audio/webm"

    .line 225
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 226
    .local v1, "isWebm":Z
    :goto_0
    if-eqz v1, :cond_2

    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;-><init>()V

    .line 227
    .local v0, "extractor":Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    :goto_1
    new-instance v3, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

    invoke-direct {v3, v0, p0}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/Extractor;Lorg/telegram/messenger/exoplayer2/Format;)V

    return-object v3

    .line 225
    .end local v0    # "extractor":Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    .end local v1    # "isWebm":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 226
    .restart local v1    # "isWebm":Z
    :cond_2
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>()V

    goto :goto_1
.end method
