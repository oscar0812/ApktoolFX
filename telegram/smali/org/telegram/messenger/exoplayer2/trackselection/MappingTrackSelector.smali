.class public abstract Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;
.super Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;
.source "MappingTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;,
        Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;
    }
.end annotation


# instance fields
.field private currentMappedTrackInfo:Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

.field private final rendererDisabledFlags:Landroid/util/SparseBooleanArray;

.field private final selectionOverrides:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Map",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;",
            "Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;",
            ">;>;"
        }
    .end annotation
.end field

.field private tunnelingAudioSessionId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;-><init>()V

    .line 91
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    .line 92
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->tunnelingAudioSessionId:I

    .line 94
    return-void
.end method

.method private static findRenderer([Lorg/telegram/messenger/exoplayer2/RendererCapabilities;Lorg/telegram/messenger/exoplayer2/source/TrackGroup;)I
    .locals 8
    .param p0, "rendererCapabilities"    # [Lorg/telegram/messenger/exoplayer2/RendererCapabilities;
    .param p1, "group"    # Lorg/telegram/messenger/exoplayer2/source/TrackGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 378
    array-length v1, p0

    .line 379
    .local v1, "bestRendererIndex":I
    const/4 v0, 0x0

    .line 380
    .local v0, "bestFormatSupportLevel":I
    const/4 v5, 0x0

    .local v5, "rendererIndex":I
    :goto_0
    array-length v7, p0

    if-ge v5, v7, :cond_2

    .line 381
    aget-object v4, p0, v5

    .line 382
    .local v4, "rendererCapability":Lorg/telegram/messenger/exoplayer2/RendererCapabilities;
    const/4 v6, 0x0

    .local v6, "trackIndex":I
    :goto_1
    iget v7, p1, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->length:I

    if-ge v6, v7, :cond_1

    .line 383
    invoke-virtual {p1, v6}, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->getFormat(I)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/telegram/messenger/exoplayer2/RendererCapabilities;->supportsFormat(Lorg/telegram/messenger/exoplayer2/Format;)I

    move-result v7

    and-int/lit8 v3, v7, 0x3

    .line 385
    .local v3, "formatSupportLevel":I
    if-le v3, v0, :cond_0

    .line 386
    move v1, v5

    .line 387
    move v0, v3

    .line 388
    const/4 v7, 0x3

    if-ne v0, v7, :cond_0

    move v2, v1

    .line 395
    .end local v1    # "bestRendererIndex":I
    .end local v3    # "formatSupportLevel":I
    .end local v4    # "rendererCapability":Lorg/telegram/messenger/exoplayer2/RendererCapabilities;
    .end local v6    # "trackIndex":I
    .local v2, "bestRendererIndex":I
    :goto_2
    return v2

    .line 382
    .end local v2    # "bestRendererIndex":I
    .restart local v1    # "bestRendererIndex":I
    .restart local v3    # "formatSupportLevel":I
    .restart local v4    # "rendererCapability":Lorg/telegram/messenger/exoplayer2/RendererCapabilities;
    .restart local v6    # "trackIndex":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 380
    .end local v3    # "formatSupportLevel":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v4    # "rendererCapability":Lorg/telegram/messenger/exoplayer2/RendererCapabilities;
    .end local v6    # "trackIndex":I
    :cond_2
    move v2, v1

    .line 395
    .end local v1    # "bestRendererIndex":I
    .restart local v2    # "bestRendererIndex":I
    goto :goto_2
.end method

.method private static getFormatSupport(Lorg/telegram/messenger/exoplayer2/RendererCapabilities;Lorg/telegram/messenger/exoplayer2/source/TrackGroup;)[I
    .locals 3
    .param p0, "rendererCapabilities"    # Lorg/telegram/messenger/exoplayer2/RendererCapabilities;
    .param p1, "group"    # Lorg/telegram/messenger/exoplayer2/source/TrackGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 410
    iget v2, p1, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->length:I

    new-array v0, v2, [I

    .line 411
    .local v0, "formatSupport":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p1, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->length:I

    if-ge v1, v2, :cond_0

    .line 412
    invoke-virtual {p1, v1}, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->getFormat(I)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v2

    invoke-interface {p0, v2}, Lorg/telegram/messenger/exoplayer2/RendererCapabilities;->supportsFormat(Lorg/telegram/messenger/exoplayer2/Format;)I

    move-result v2

    aput v2, v0, v1

    .line 411
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 414
    :cond_0
    return-object v0
.end method

.method private static getMixedMimeTypeAdaptationSupport([Lorg/telegram/messenger/exoplayer2/RendererCapabilities;)[I
    .locals 3
    .param p0, "rendererCapabilities"    # [Lorg/telegram/messenger/exoplayer2/RendererCapabilities;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 428
    array-length v2, p0

    new-array v1, v2, [I

    .line 429
    .local v1, "mixedMimeTypeAdaptationSupport":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 430
    aget-object v2, p0, v0

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/RendererCapabilities;->supportsMixedMimeTypeAdaptation()I

    move-result v2

    aput v2, v1, v0

    .line 429
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 432
    :cond_0
    return-object v1
.end method

.method private static maybeConfigureRenderersForTunneling([Lorg/telegram/messenger/exoplayer2/RendererCapabilities;[Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;[[[I[Lorg/telegram/messenger/exoplayer2/RendererConfiguration;[Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;I)V
    .locals 9
    .param p0, "rendererCapabilities"    # [Lorg/telegram/messenger/exoplayer2/RendererCapabilities;
    .param p1, "rendererTrackGroupArrays"    # [Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    .param p2, "rendererFormatSupports"    # [[[I
    .param p3, "rendererConfigurations"    # [Lorg/telegram/messenger/exoplayer2/RendererConfiguration;
    .param p4, "trackSelections"    # [Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    .param p5, "tunnelingAudioSessionId"    # I

    .prologue
    .line 456
    if-nez p5, :cond_1

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    const/4 v4, -0x1

    .line 462
    .local v4, "tunnelingAudioRendererIndex":I
    const/4 v6, -0x1

    .line 463
    .local v6, "tunnelingVideoRendererIndex":I
    const/4 v0, 0x1

    .line 464
    .local v0, "enableTunneling":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v7, p0

    if-ge v1, v7, :cond_3

    .line 465
    aget-object v7, p0, v1

    invoke-interface {v7}, Lorg/telegram/messenger/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v2

    .line 466
    .local v2, "rendererType":I
    aget-object v3, p4, v1

    .line 467
    .local v3, "trackSelection":Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    const/4 v7, 0x1

    if-eq v2, v7, :cond_2

    const/4 v7, 0x2

    if-ne v2, v7, :cond_5

    :cond_2
    if-eqz v3, :cond_5

    .line 469
    aget-object v7, p2, v1

    aget-object v8, p1, v1

    invoke-static {v7, v8, v3}, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->rendererSupportsTunneling([[ILorg/telegram/messenger/exoplayer2/source/TrackGroupArray;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 471
    const/4 v7, 0x1

    if-ne v2, v7, :cond_6

    .line 472
    const/4 v7, -0x1

    if-eq v4, v7, :cond_4

    .line 473
    const/4 v0, 0x0

    .line 489
    .end local v2    # "rendererType":I
    .end local v3    # "trackSelection":Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    :cond_3
    :goto_2
    const/4 v7, -0x1

    if-eq v4, v7, :cond_8

    const/4 v7, -0x1

    if-eq v6, v7, :cond_8

    const/4 v7, 0x1

    :goto_3
    and-int/2addr v0, v7

    .line 490
    if-eqz v0, :cond_0

    .line 491
    new-instance v5, Lorg/telegram/messenger/exoplayer2/RendererConfiguration;

    invoke-direct {v5, p5}, Lorg/telegram/messenger/exoplayer2/RendererConfiguration;-><init>(I)V

    .line 493
    .local v5, "tunnelingRendererConfiguration":Lorg/telegram/messenger/exoplayer2/RendererConfiguration;
    aput-object v5, p3, v4

    .line 494
    aput-object v5, p3, v6

    goto :goto_0

    .line 476
    .end local v5    # "tunnelingRendererConfiguration":Lorg/telegram/messenger/exoplayer2/RendererConfiguration;
    .restart local v2    # "rendererType":I
    .restart local v3    # "trackSelection":Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    :cond_4
    move v4, v1

    .line 464
    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 479
    :cond_6
    const/4 v7, -0x1

    if-eq v6, v7, :cond_7

    .line 480
    const/4 v0, 0x0

    .line 481
    goto :goto_2

    .line 483
    :cond_7
    move v6, v1

    goto :goto_4

    .line 489
    .end local v2    # "rendererType":I
    .end local v3    # "trackSelection":Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    :cond_8
    const/4 v7, 0x0

    goto :goto_3
.end method

.method private static rendererSupportsTunneling([[ILorg/telegram/messenger/exoplayer2/source/TrackGroupArray;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;)Z
    .locals 6
    .param p0, "formatSupport"    # [[I
    .param p1, "trackGroups"    # Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    .param p2, "selection"    # Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    .prologue
    const/4 v3, 0x0

    .line 509
    if-nez p2, :cond_1

    .line 520
    :cond_0
    :goto_0
    return v3

    .line 512
    :cond_1
    invoke-interface {p2}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->indexOf(Lorg/telegram/messenger/exoplayer2/source/TrackGroup;)I

    move-result v2

    .line 513
    .local v2, "trackGroupIndex":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p2}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 514
    aget-object v4, p0, v2

    invoke-interface {p2, v0}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v5

    aget v1, v4, v5

    .line 515
    .local v1, "trackFormatSupport":I
    and-int/lit8 v4, v1, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_0

    .line 513
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 520
    .end local v1    # "trackFormatSupport":I
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final clearSelectionOverride(ILorg/telegram/messenger/exoplayer2/source/TrackGroupArray;)V
    .locals 2
    .param p1, "rendererIndex"    # I
    .param p2, "groups"    # Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    .prologue
    .line 191
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 192
    .local v0, "overrides":Ljava/util/Map;, "Ljava/util/Map<Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 198
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 200
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->invalidate()V

    goto :goto_0
.end method

.method public final clearSelectionOverrides()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 228
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 227
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->invalidate()V

    goto :goto_0
.end method

.method public final clearSelectionOverrides(I)V
    .locals 2
    .param p1, "rendererIndex"    # I

    .prologue
    .line 209
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 210
    .local v0, "overrides":Ljava/util/Map;, "Ljava/util/Map<Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;*>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 215
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->invalidate()V

    goto :goto_0
.end method

.method public final getCurrentMappedTrackInfo()Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->currentMappedTrackInfo:Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    return-object v0
.end method

.method public final getRendererDisabled(I)Z
    .locals 1
    .param p1, "rendererIndex"    # I

    .prologue
    .line 126
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public final getSelectionOverride(ILorg/telegram/messenger/exoplayer2/source/TrackGroupArray;)Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;
    .locals 2
    .param p1, "rendererIndex"    # I
    .param p2, "groups"    # Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    .prologue
    .line 180
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 181
    .local v0, "overrides":Ljava/util/Map;, "Ljava/util/Map<Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final hasSelectionOverride(ILorg/telegram/messenger/exoplayer2/source/TrackGroupArray;)Z
    .locals 2
    .param p1, "rendererIndex"    # I
    .param p2, "groups"    # Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    .prologue
    .line 168
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 169
    .local v0, "overrides":Ljava/util/Map;, "Ljava/util/Map<Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final onSelectionActivated(Ljava/lang/Object;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 337
    check-cast p1, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    .end local p1    # "info":Ljava/lang/Object;
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->currentMappedTrackInfo:Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    .line 338
    return-void
.end method

.method public final selectTracks([Lorg/telegram/messenger/exoplayer2/RendererCapabilities;Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;)Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;
    .locals 26
    .param p1, "rendererCapabilities"    # [Lorg/telegram/messenger/exoplayer2/RendererCapabilities;
    .param p2, "trackGroups"    # Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 255
    move-object/from16 v0, p1

    array-length v8, v0

    add-int/lit8 v8, v8, 0x1

    new-array v0, v8, [I

    move-object/from16 v23, v0

    .line 256
    .local v23, "rendererTrackGroupCounts":[I
    move-object/from16 v0, p1

    array-length v8, v0

    add-int/lit8 v8, v8, 0x1

    new-array v0, v8, [[Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    move-object/from16 v24, v0

    .line 257
    .local v24, "rendererTrackGroups":[[Lorg/telegram/messenger/exoplayer2/source/TrackGroup;
    move-object/from16 v0, p1

    array-length v8, v0

    add-int/lit8 v8, v8, 0x1

    new-array v6, v8, [[[I

    .line 258
    .local v6, "rendererFormatSupports":[[[I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move-object/from16 v0, v24

    array-length v8, v0

    move/from16 v0, v16

    if-ge v0, v8, :cond_0

    .line 259
    move-object/from16 v0, p2

    iget v8, v0, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->length:I

    new-array v8, v8, [Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    aput-object v8, v24, v16

    .line 260
    move-object/from16 v0, p2

    iget v8, v0, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->length:I

    new-array v8, v8, [[I

    aput-object v8, v6, v16

    .line 258
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 264
    :cond_0
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->getMixedMimeTypeAdaptationSupport([Lorg/telegram/messenger/exoplayer2/RendererCapabilities;)[I

    move-result-object v5

    .line 268
    .local v5, "mixedMimeTypeAdaptationSupport":[I
    const/4 v15, 0x0

    .local v15, "groupIndex":I
    :goto_1
    move-object/from16 v0, p2

    iget v8, v0, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v15, v8, :cond_2

    .line 269
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->get(I)Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    move-result-object v14

    .line 271
    .local v14, "group":Lorg/telegram/messenger/exoplayer2/source/TrackGroup;
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->findRenderer([Lorg/telegram/messenger/exoplayer2/RendererCapabilities;Lorg/telegram/messenger/exoplayer2/source/TrackGroup;)I

    move-result v20

    .line 273
    .local v20, "rendererIndex":I
    move-object/from16 v0, p1

    array-length v8, v0

    move/from16 v0, v20

    if-ne v0, v8, :cond_1

    iget v8, v14, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->length:I

    new-array v0, v8, [I

    move-object/from16 v19, v0

    .line 276
    .local v19, "rendererFormatSupport":[I
    :goto_2
    aget v22, v23, v20

    .line 277
    .local v22, "rendererTrackGroupCount":I
    aget-object v8, v24, v20

    aput-object v14, v8, v22

    .line 278
    aget-object v8, v6, v20

    aput-object v19, v8, v22

    .line 279
    aget v8, v23, v20

    add-int/lit8 v8, v8, 0x1

    aput v8, v23, v20

    .line 268
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 273
    .end local v19    # "rendererFormatSupport":[I
    .end local v22    # "rendererTrackGroupCount":I
    :cond_1
    aget-object v8, p1, v20

    .line 274
    invoke-static {v8, v14}, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->getFormatSupport(Lorg/telegram/messenger/exoplayer2/RendererCapabilities;Lorg/telegram/messenger/exoplayer2/source/TrackGroup;)[I

    move-result-object v19

    goto :goto_2

    .line 283
    .end local v14    # "group":Lorg/telegram/messenger/exoplayer2/source/TrackGroup;
    .end local v20    # "rendererIndex":I
    :cond_2
    move-object/from16 v0, p1

    array-length v8, v0

    new-array v4, v8, [Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    .line 284
    .local v4, "rendererTrackGroupArrays":[Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    move-object/from16 v0, p1

    array-length v8, v0

    new-array v3, v8, [I

    .line 285
    .local v3, "rendererTrackTypes":[I
    const/16 v16, 0x0

    :goto_3
    move-object/from16 v0, p1

    array-length v8, v0

    move/from16 v0, v16

    if-ge v0, v8, :cond_3

    .line 286
    aget v22, v23, v16

    .line 287
    .restart local v22    # "rendererTrackGroupCount":I
    new-instance v9, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    aget-object v8, v24, v16

    .line 288
    move/from16 v0, v22

    invoke-static {v8, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    invoke-direct {v9, v8}, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;-><init>([Lorg/telegram/messenger/exoplayer2/source/TrackGroup;)V

    aput-object v9, v4, v16

    .line 289
    aget-object v8, v6, v16

    move/from16 v0, v22

    invoke-static {v8, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[I

    aput-object v8, v6, v16

    .line 290
    aget-object v8, p1, v16

    invoke-interface {v8}, Lorg/telegram/messenger/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v8

    aput v8, v3, v16

    .line 285
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 294
    .end local v22    # "rendererTrackGroupCount":I
    :cond_3
    move-object/from16 v0, p1

    array-length v8, v0

    aget v25, v23, v8

    .line 295
    .local v25, "unassociatedTrackGroupCount":I
    new-instance v7, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    move-object/from16 v0, p1

    array-length v8, v0

    aget-object v8, v24, v8

    move/from16 v0, v25

    invoke-static {v8, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    invoke-direct {v7, v8}, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;-><init>([Lorg/telegram/messenger/exoplayer2/source/TrackGroup;)V

    .line 298
    .local v7, "unassociatedTrackGroupArray":Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v6}, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->selectTracks([Lorg/telegram/messenger/exoplayer2/RendererCapabilities;[Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;[[[I)[Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    move-result-object v12

    .line 302
    .local v12, "trackSelections":[Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    const/16 v16, 0x0

    :goto_4
    move-object/from16 v0, p1

    array-length v8, v0

    move/from16 v0, v16

    if-ge v0, v8, :cond_7

    .line 303
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 304
    const/4 v8, 0x0

    aput-object v8, v12, v16

    .line 302
    :cond_4
    :goto_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 306
    :cond_5
    aget-object v21, v4, v16

    .line 307
    .local v21, "rendererTrackGroup":Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map;

    .line 308
    .local v18, "overrides":Ljava/util/Map;, "Ljava/util/Map<Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;>;"
    if-nez v18, :cond_6

    const/16 v17, 0x0

    .line 309
    .local v17, "override":Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;
    :goto_6
    if-eqz v17, :cond_4

    .line 310
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;->createTrackSelection(Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;)Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    move-result-object v8

    aput-object v8, v12, v16

    goto :goto_5

    .line 308
    .end local v17    # "override":Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;
    :cond_6
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;

    move-object/from16 v17, v8

    goto :goto_6

    .line 316
    .end local v18    # "overrides":Ljava/util/Map;, "Ljava/util/Map<Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;>;"
    .end local v21    # "rendererTrackGroup":Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    :cond_7
    new-instance v2, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;-><init>([I[Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;[I[[[ILorg/telegram/messenger/exoplayer2/source/TrackGroupArray;)V

    .line 322
    .local v2, "mappedTrackInfo":Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
    move-object/from16 v0, p1

    array-length v8, v0

    new-array v11, v8, [Lorg/telegram/messenger/exoplayer2/RendererConfiguration;

    .line 324
    .local v11, "rendererConfigurations":[Lorg/telegram/messenger/exoplayer2/RendererConfiguration;
    const/16 v16, 0x0

    :goto_7
    move-object/from16 v0, p1

    array-length v8, v0

    move/from16 v0, v16

    if-ge v0, v8, :cond_9

    .line 325
    aget-object v8, v12, v16

    if-eqz v8, :cond_8

    sget-object v8, Lorg/telegram/messenger/exoplayer2/RendererConfiguration;->DEFAULT:Lorg/telegram/messenger/exoplayer2/RendererConfiguration;

    :goto_8
    aput-object v8, v11, v16

    .line 324
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    .line 325
    :cond_8
    const/4 v8, 0x0

    goto :goto_8

    .line 328
    :cond_9
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->tunnelingAudioSessionId:I

    move-object/from16 v8, p1

    move-object v9, v4

    move-object v10, v6

    invoke-static/range {v8 .. v13}, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->maybeConfigureRenderersForTunneling([Lorg/telegram/messenger/exoplayer2/RendererCapabilities;[Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;[[[I[Lorg/telegram/messenger/exoplayer2/RendererConfiguration;[Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;I)V

    .line 331
    new-instance v8, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;

    new-instance v9, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    invoke-direct {v9, v12}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;-><init>([Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;)V

    move-object/from16 v0, p2

    invoke-direct {v8, v0, v9, v2, v11}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;-><init>(Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;Ljava/lang/Object;[Lorg/telegram/messenger/exoplayer2/RendererConfiguration;)V

    return-object v8
.end method

.method protected abstract selectTracks([Lorg/telegram/messenger/exoplayer2/RendererCapabilities;[Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;[[[I)[Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method

.method public final setRendererDisabled(IZ)V
    .locals 1
    .param p1, "rendererIndex"    # I
    .param p2, "disabled"    # Z

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-ne v0, p2, :cond_0

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 116
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->invalidate()V

    goto :goto_0
.end method

.method public final setSelectionOverride(ILorg/telegram/messenger/exoplayer2/source/TrackGroupArray;Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;)V
    .locals 2
    .param p1, "rendererIndex"    # I
    .param p2, "groups"    # Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    .param p3, "override"    # Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;

    .prologue
    .line 147
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 148
    .local v0, "overrides":Ljava/util/Map;, "Ljava/util/Map<Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;>;"
    if-nez v0, :cond_0

    .line 149
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "overrides":Ljava/util/Map;, "Ljava/util/Map<Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 150
    .restart local v0    # "overrides":Ljava/util/Map;, "Ljava/util/Map<Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;>;"
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 152
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p3}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_1
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->invalidate()V

    goto :goto_0
.end method

.method public setTunnelingAudioSessionId(I)V
    .locals 1
    .param p1, "tunnelingAudioSessionId"    # I

    .prologue
    .line 241
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->tunnelingAudioSessionId:I

    if-eq v0, p1, :cond_0

    .line 242
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->tunnelingAudioSessionId:I

    .line 243
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->invalidate()V

    .line 245
    :cond_0
    return-void
.end method
