.class Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;
.super Ljava/lang/Object;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;,
        Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;,
        Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;
    }
.end annotation


# instance fields
.field private final encryptionDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

.field private encryptionIv:[B

.field private encryptionIvString:Ljava/lang/String;

.field private encryptionKey:[B

.field private encryptionKeyUri:Landroid/net/Uri;

.field private fatalError:Ljava/io/IOException;

.field private isTimestampMaster:Z

.field private final mediaDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

.field private final muxedCaptionFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field private final playlistTracker:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

.field private scratchSpace:[B

.field private final timestampAdjusterProvider:Lorg/telegram/messenger/exoplayer2/source/hls/TimestampAdjusterProvider;

.field private final trackGroup:Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

.field private trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

.field private final variants:[Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;[Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lorg/telegram/messenger/exoplayer2/source/hls/HlsDataSourceFactory;Lorg/telegram/messenger/exoplayer2/source/hls/TimestampAdjusterProvider;Ljava/util/List;)V
    .locals 5
    .param p1, "playlistTracker"    # Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;
    .param p2, "variants"    # [Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .param p3, "dataSourceFactory"    # Lorg/telegram/messenger/exoplayer2/source/hls/HlsDataSourceFactory;
    .param p4, "timestampAdjusterProvider"    # Lorg/telegram/messenger/exoplayer2/source/hls/TimestampAdjusterProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;",
            "[",
            "Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;",
            "Lorg/telegram/messenger/exoplayer2/source/hls/HlsDataSourceFactory;",
            "Lorg/telegram/messenger/exoplayer2/source/hls/TimestampAdjusterProvider;",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/Format;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p5, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/Format;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->playlistTracker:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 120
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->variants:[Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 121
    iput-object p4, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->timestampAdjusterProvider:Lorg/telegram/messenger/exoplayer2/source/hls/TimestampAdjusterProvider;

    .line 122
    iput-object p5, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->muxedCaptionFormats:Ljava/util/List;

    .line 123
    array-length v3, p2

    new-array v2, v3, [Lorg/telegram/messenger/exoplayer2/Format;

    .line 124
    .local v2, "variantFormats":[Lorg/telegram/messenger/exoplayer2/Format;
    array-length v3, p2

    new-array v1, v3, [I

    .line 125
    .local v1, "initialTrackSelection":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_0

    .line 126
    aget-object v3, p2, v0

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lorg/telegram/messenger/exoplayer2/Format;

    aput-object v3, v2, v0

    .line 127
    aput v0, v1, v0

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :cond_0
    const/4 v3, 0x1

    invoke-interface {p3, v3}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsDataSourceFactory;->createDataSource(I)Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->mediaDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    .line 130
    const/4 v3, 0x3

    invoke-interface {p3, v3}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsDataSourceFactory;->createDataSource(I)Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->encryptionDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    .line 131
    new-instance v3, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    invoke-direct {v3, v2}, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;-><init>([Lorg/telegram/messenger/exoplayer2/Format;)V

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->trackGroup:Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    .line 132
    new-instance v3, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->trackGroup:Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    invoke-direct {v3, v4, v1}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;-><init>(Lorg/telegram/messenger/exoplayer2/source/TrackGroup;[I)V

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    .line 133
    return-void
.end method

.method private clearEncryptionData()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 372
    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->encryptionKeyUri:Landroid/net/Uri;

    .line 373
    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->encryptionKey:[B

    .line 374
    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->encryptionIvString:Ljava/lang/String;

    .line 375
    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->encryptionIv:[B

    .line 376
    return-void
.end method

.method private newEncryptionKeyChunk(Landroid/net/Uri;Ljava/lang/String;IILjava/lang/Object;)Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;
    .locals 9
    .param p1, "keyUri"    # Landroid/net/Uri;
    .param p2, "iv"    # Ljava/lang/String;
    .param p3, "variantIndex"    # I
    .param p4, "trackSelectionReason"    # I
    .param p5, "trackSelectionData"    # Ljava/lang/Object;

    .prologue
    .line 346
    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 347
    .local v0, "dataSpec":Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    new-instance v1, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->encryptionDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->variants:[Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    aget-object v3, v3, p3

    iget-object v4, v3, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->scratchSpace:[B

    move-object v3, v0

    move v5, p4

    move-object v6, p5

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;Lorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;[BLjava/lang/String;)V

    return-object v1
.end method

.method private setEncryptionData(Landroid/net/Uri;Ljava/lang/String;[B)V
    .locals 7
    .param p1, "keyUri"    # Landroid/net/Uri;
    .param p2, "iv"    # Ljava/lang/String;
    .param p3, "secretKey"    # [B

    .prologue
    const/16 v6, 0x10

    .line 353
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "0x"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 354
    const/4 v4, 0x2

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 359
    .local v3, "trimmedIv":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v3, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 360
    .local v0, "ivData":[B
    new-array v1, v6, [B

    .line 361
    .local v1, "ivDataWithPadding":[B
    array-length v4, v0

    if-le v4, v6, :cond_1

    array-length v4, v0

    add-int/lit8 v2, v4, -0x10

    .line 362
    .local v2, "offset":I
    :goto_1
    array-length v4, v1

    array-length v5, v0

    sub-int/2addr v4, v5

    add-int/2addr v4, v2

    array-length v5, v0

    sub-int/2addr v5, v2

    invoke-static {v0, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 365
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->encryptionKeyUri:Landroid/net/Uri;

    .line 366
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->encryptionKey:[B

    .line 367
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->encryptionIvString:Ljava/lang/String;

    .line 368
    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->encryptionIv:[B

    .line 369
    return-void

    .line 356
    .end local v0    # "ivData":[B
    .end local v1    # "ivDataWithPadding":[B
    .end local v2    # "offset":I
    .end local v3    # "trimmedIv":Ljava/lang/String;
    :cond_0
    move-object v3, p2

    .restart local v3    # "trimmedIv":Ljava/lang/String;
    goto :goto_0

    .line 361
    .restart local v0    # "ivData":[B
    .restart local v1    # "ivDataWithPadding":[B
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getNextChunk(Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;JLorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;)V
    .locals 40
    .param p1, "previous"    # Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;
    .param p2, "playbackPositionUs"    # J
    .param p4, "out"    # Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

    .prologue
    .line 195
    if-nez p1, :cond_0

    const/16 v34, -0x1

    .line 199
    .local v34, "oldVariantIndex":I
    :goto_0
    if-nez p1, :cond_1

    const-wide/16 v30, 0x0

    .line 203
    .local v30, "bufferedDurationUs":J
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    move-wide/from16 v0, v30

    invoke-interface {v2, v0, v1}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->updateSelectedTrack(J)V

    .line 204
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getSelectedIndexInTrackGroup()I

    move-result v5

    .line 206
    .local v5, "selectedVariantIndex":I
    move/from16 v0, v34

    if-eq v0, v5, :cond_2

    const/16 v37, 0x1

    .line 207
    .local v37, "switchingVariant":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->variants:[Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    aget-object v36, v2, v5

    .line 208
    .local v36, "selectedUrl":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->playlistTracker:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->isSnapshotValid(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 209
    move-object/from16 v0, v36

    move-object/from16 v1, p4

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->playlist:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 295
    :goto_3
    return-void

    .line 195
    .end local v5    # "selectedVariantIndex":I
    .end local v30    # "bufferedDurationUs":J
    .end local v34    # "oldVariantIndex":I
    .end local v36    # "selectedUrl":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .end local v37    # "switchingVariant":Z
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->trackGroup:Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->trackFormat:Lorg/telegram/messenger/exoplayer2/Format;

    .line 196
    invoke-virtual {v2, v4}, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->indexOf(Lorg/telegram/messenger/exoplayer2/Format;)I

    move-result v34

    goto :goto_0

    .line 199
    .restart local v34    # "oldVariantIndex":I
    :cond_1
    const-wide/16 v10, 0x0

    move-object/from16 v0, p1

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->startTimeUs:J

    sub-long v12, v12, p2

    .line 200
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v30

    goto :goto_1

    .line 206
    .restart local v5    # "selectedVariantIndex":I
    .restart local v30    # "bufferedDurationUs":J
    :cond_2
    const/16 v37, 0x0

    goto :goto_2

    .line 213
    .restart local v36    # "selectedUrl":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .restart local v37    # "switchingVariant":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->playlistTracker:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->getPlaylistSnapshot(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-result-object v33

    .line 217
    .local v33, "mediaPlaylist":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    if-eqz p1, :cond_4

    if-eqz v37, :cond_a

    .line 218
    :cond_4
    if-nez p1, :cond_6

    move-wide/from16 v38, p2

    .line 219
    .local v38, "targetPositionUs":J
    :goto_4
    move-object/from16 v0, v33

    iget-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-nez v2, :cond_7

    invoke-virtual/range {v33 .. v33}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->getEndTimeUs()J

    move-result-wide v10

    cmp-long v2, v38, v10

    if-lez v2, :cond_7

    .line 221
    move-object/from16 v0, v33

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:I

    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int v22, v2, v4

    .line 238
    .end local v38    # "targetPositionUs":J
    .local v22, "chunkMediaSequence":I
    :cond_5
    :goto_5
    move-object/from16 v0, v33

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:I

    move/from16 v0, v22

    if-ge v0, v2, :cond_b

    .line 239
    new-instance v2, Lorg/telegram/messenger/exoplayer2/source/BehindLiveWindowException;

    invoke-direct {v2}, Lorg/telegram/messenger/exoplayer2/source/BehindLiveWindowException;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    goto :goto_3

    .line 218
    .end local v22    # "chunkMediaSequence":I
    :cond_6
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->startTimeUs:J

    move-wide/from16 v38, v0

    goto :goto_4

    .line 223
    .restart local v38    # "targetPositionUs":J
    :cond_7
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    move-object/from16 v0, v33

    iget-wide v10, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    sub-long v10, v38, v10

    .line 224
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->playlistTracker:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 225
    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->isLive()Z

    move-result v2

    if-eqz v2, :cond_8

    if-nez p1, :cond_9

    :cond_8
    const/4 v2, 0x1

    .line 223
    :goto_6
    invoke-static {v4, v10, v11, v2}, Lorg/telegram/messenger/exoplayer2/util/Util;->binarySearchFloor(Ljava/util/List;Ljava/lang/Object;ZZ)I

    move-result v2

    move-object/from16 v0, v33

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:I

    add-int v22, v2, v4

    .line 226
    .restart local v22    # "chunkMediaSequence":I
    move-object/from16 v0, v33

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:I

    move/from16 v0, v22

    if-ge v0, v2, :cond_5

    if-eqz p1, :cond_5

    .line 229
    move/from16 v5, v34

    .line 230
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->variants:[Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    aget-object v36, v2, v5

    .line 231
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->playlistTracker:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->getPlaylistSnapshot(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-result-object v33

    .line 232
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->getNextChunkIndex()I

    move-result v22

    goto :goto_5

    .line 225
    .end local v22    # "chunkMediaSequence":I
    :cond_9
    const/4 v2, 0x0

    goto :goto_6

    .line 236
    .end local v38    # "targetPositionUs":J
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->getNextChunkIndex()I

    move-result v22

    .restart local v22    # "chunkMediaSequence":I
    goto :goto_5

    .line 243
    :cond_b
    move-object/from16 v0, v33

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:I

    sub-int v29, v22, v2

    .line 244
    .local v29, "chunkIndex":I
    move-object/from16 v0, v33

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v29

    if-lt v0, v2, :cond_d

    .line 245
    move-object/from16 v0, v33

    iget-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-eqz v2, :cond_c

    .line 246
    const/4 v2, 0x1

    move-object/from16 v0, p4

    iput-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->endOfStream:Z

    goto/16 :goto_3

    .line 248
    :cond_c
    move-object/from16 v0, v36

    move-object/from16 v1, p4

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->playlist:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    goto/16 :goto_3

    .line 254
    :cond_d
    move-object/from16 v0, v33

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    move/from16 v0, v29

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    .line 257
    .local v35, "segment":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    move-object/from16 v0, v35

    iget-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->isEncrypted:Z

    if-eqz v2, :cond_11

    .line 258
    move-object/from16 v0, v33

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->encryptionKeyUri:Ljava/lang/String;

    invoke-static {v2, v4}, Lorg/telegram/messenger/exoplayer2/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 259
    .local v3, "keyUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->encryptionKeyUri:Landroid/net/Uri;

    invoke-virtual {v3, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 261
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    .line 262
    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getSelectionReason()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v2, p0

    .line 261
    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->newEncryptionKeyChunk(Landroid/net/Uri;Ljava/lang/String;IILjava/lang/Object;)Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;

    move-result-object v2

    move-object/from16 v0, p4

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->chunk:Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;

    goto/16 :goto_3

    .line 265
    :cond_e
    move-object/from16 v0, v35

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->encryptionIvString:Ljava/lang/String;

    invoke-static {v2, v4}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 266
    move-object/from16 v0, v35

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->encryptionKey:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v4}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->setEncryptionData(Landroid/net/Uri;Ljava/lang/String;[B)V

    .line 272
    .end local v3    # "keyUri":Landroid/net/Uri;
    :cond_f
    :goto_7
    const/4 v6, 0x0

    .line 273
    .local v6, "initDataSpec":Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->initializationSegment:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    move-object/from16 v32, v0

    .line 274
    .local v32, "initSegment":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    if-eqz v32, :cond_10

    .line 275
    move-object/from16 v0, v33

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->url:Ljava/lang/String;

    invoke-static {v2, v4}, Lorg/telegram/messenger/exoplayer2/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 276
    .local v7, "initSegmentUri":Landroid/net/Uri;
    new-instance v6, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    .end local v6    # "initDataSpec":Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    move-object/from16 v0, v32

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->byterangeOffset:J

    move-object/from16 v0, v32

    iget-wide v10, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->byterangeLength:J

    const/4 v12, 0x0

    invoke-direct/range {v6 .. v12}, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 281
    .end local v7    # "initSegmentUri":Landroid/net/Uri;
    .restart local v6    # "initDataSpec":Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    :cond_10
    move-object/from16 v0, v33

    iget-wide v10, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    move-object/from16 v0, v35

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->relativeStartTimeUs:J

    add-long v18, v10, v12

    .line 282
    .local v18, "startTimeUs":J
    move-object/from16 v0, v33

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->discontinuitySequence:I

    move-object/from16 v0, v35

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->relativeDiscontinuitySequence:I

    add-int v23, v2, v4

    .line 284
    .local v23, "discontinuitySequence":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->timestampAdjusterProvider:Lorg/telegram/messenger/exoplayer2/source/hls/TimestampAdjusterProvider;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/exoplayer2/source/hls/TimestampAdjusterProvider;->getAdjuster(I)Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;

    move-result-object v25

    .line 288
    .local v25, "timestampAdjuster":Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;
    move-object/from16 v0, v33

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->url:Ljava/lang/String;

    invoke-static {v2, v4}, Lorg/telegram/messenger/exoplayer2/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 289
    .local v9, "chunkUri":Landroid/net/Uri;
    new-instance v8, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    move-object/from16 v0, v35

    iget-wide v10, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->byterangeOffset:J

    move-object/from16 v0, v35

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->byterangeLength:J

    const/4 v14, 0x0

    invoke-direct/range {v8 .. v14}, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 291
    .local v8, "dataSpec":Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    new-instance v10, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->mediaDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->muxedCaptionFormats:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    .line 292
    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getSelectionReason()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v35

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->durationUs:J

    add-long v20, v18, v12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->isTimestampMaster:Z

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->encryptionKey:[B

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->encryptionIv:[B

    move-object/from16 v28, v0

    move-object v12, v8

    move-object v13, v6

    move-object/from16 v14, v36

    move-object/from16 v26, p1

    invoke-direct/range {v10 .. v28}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Ljava/util/List;ILjava/lang/Object;JJIIZLorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;[B[B)V

    move-object/from16 v0, p4

    iput-object v10, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->chunk:Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;

    goto/16 :goto_3

    .line 269
    .end local v6    # "initDataSpec":Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    .end local v8    # "dataSpec":Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    .end local v9    # "chunkUri":Landroid/net/Uri;
    .end local v18    # "startTimeUs":J
    .end local v23    # "discontinuitySequence":I
    .end local v25    # "timestampAdjuster":Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;
    .end local v32    # "initSegment":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    :cond_11
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->clearEncryptionData()V

    goto/16 :goto_7
.end method

.method public getTrackGroup()Lorg/telegram/messenger/exoplayer2/source/TrackGroup;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->trackGroup:Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    return-object v0
.end method

.method public maybeThrowError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    throw v0

    .line 145
    :cond_0
    return-void
.end method

.method public onChunkLoadCompleted(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;)V
    .locals 4
    .param p1, "chunk"    # Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;

    .prologue
    .line 304
    instance-of v1, p1, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 305
    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;

    .line 306
    .local v0, "encryptionKeyChunk":Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;->getDataHolder()[B

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->scratchSpace:[B

    .line 307
    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;->iv:Ljava/lang/String;

    .line 308
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;->getResult()[B

    move-result-object v3

    .line 307
    invoke-direct {p0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->setEncryptionData(Landroid/net/Uri;Ljava/lang/String;[B)V

    .line 310
    .end local v0    # "encryptionKeyChunk":Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;
    :cond_0
    return-void
.end method

.method public onChunkLoadError(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;ZLjava/io/IOException;)Z
    .locals 4
    .param p1, "chunk"    # Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;
    .param p2, "cancelable"    # Z
    .param p3, "error"    # Ljava/io/IOException;

    .prologue
    .line 322
    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->trackGroup:Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    iget-object v3, p1, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->trackFormat:Lorg/telegram/messenger/exoplayer2/Format;

    .line 323
    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->indexOf(Lorg/telegram/messenger/exoplayer2/Format;)I

    move-result v2

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->indexOf(I)I

    move-result v1

    .line 322
    invoke-static {v0, v1, p3}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkedTrackBlacklistUtil;->maybeBlacklistTrack(Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;ILjava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPlaylistBlacklisted(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;J)V
    .locals 6
    .param p1, "url"    # Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .param p2, "blacklistMs"    # J

    .prologue
    const/4 v4, -0x1

    .line 333
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->trackGroup:Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    iget-object v3, p1, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lorg/telegram/messenger/exoplayer2/Format;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->indexOf(Lorg/telegram/messenger/exoplayer2/Format;)I

    move-result v0

    .line 334
    .local v0, "trackGroupIndex":I
    if-eq v0, v4, :cond_0

    .line 335
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v2, v0}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->indexOf(I)I

    move-result v1

    .line 336
    .local v1, "trackSelectionIndex":I
    if-eq v1, v4, :cond_0

    .line 337
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v2, v1, p2, p3}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->blacklist(IJ)Z

    .line 340
    .end local v1    # "trackSelectionIndex":I
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    .line 168
    return-void
.end method

.method public selectTracks(Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;)V
    .locals 0
    .param p1, "trackSelection"    # Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    .prologue
    .line 160
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    .line 161
    return-void
.end method

.method public setIsTimestampMaster(Z)V
    .locals 0
    .param p1, "isTimestampMaster"    # Z

    .prologue
    .line 177
    iput-boolean p1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->isTimestampMaster:Z

    .line 178
    return-void
.end method
