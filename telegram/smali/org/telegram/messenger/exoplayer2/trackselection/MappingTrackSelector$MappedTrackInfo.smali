.class public final Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
.super Ljava/lang/Object;
.source "MappingTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MappedTrackInfo"
.end annotation


# static fields
.field public static final RENDERER_SUPPORT_EXCEEDS_CAPABILITIES_TRACKS:I = 0x2

.field public static final RENDERER_SUPPORT_NO_TRACKS:I = 0x0

.field public static final RENDERER_SUPPORT_PLAYABLE_TRACKS:I = 0x3

.field public static final RENDERER_SUPPORT_UNSUPPORTED_TRACKS:I = 0x1


# instance fields
.field private final formatSupport:[[[I

.field public final length:I

.field private final mixedMimeTypeAdaptiveSupport:[I

.field private final rendererTrackTypes:[I

.field private final trackGroups:[Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

.field private final unassociatedTrackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;


# direct methods
.method constructor <init>([I[Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;[I[[[ILorg/telegram/messenger/exoplayer2/source/TrackGroupArray;)V
    .locals 1
    .param p1, "rendererTrackTypes"    # [I
    .param p2, "trackGroups"    # [Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    .param p3, "mixedMimeTypeAdaptiveSupport"    # [I
    .param p4, "formatSupport"    # [[[I
    .param p5, "unassociatedTrackGroups"    # Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    .prologue
    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 569
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackTypes:[I

    .line 570
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->trackGroups:[Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    .line 571
    iput-object p4, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->formatSupport:[[[I

    .line 572
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->mixedMimeTypeAdaptiveSupport:[I

    .line 573
    iput-object p5, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->unassociatedTrackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    .line 574
    array-length v0, p2

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->length:I

    .line 575
    return-void
.end method


# virtual methods
.method public getAdaptiveSupport(IIZ)I
    .locals 7
    .param p1, "rendererIndex"    # I
    .param p2, "groupIndex"    # I
    .param p3, "includeCapabilitiesExceededTracks"    # Z

    .prologue
    .line 676
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->trackGroups:[Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    aget-object v6, v6, p1

    invoke-virtual {v6, p2}, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->get(I)Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    move-result-object v6

    iget v2, v6, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->length:I

    .line 678
    .local v2, "trackCount":I
    new-array v5, v2, [I

    .line 679
    .local v5, "trackIndices":[I
    const/4 v3, 0x0

    .line 680
    .local v3, "trackIndexCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v4, v3

    .end local v3    # "trackIndexCount":I
    .local v4, "trackIndexCount":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 681
    invoke-virtual {p0, p1, p2, v1}, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackFormatSupport(III)I

    move-result v0

    .line 682
    .local v0, "fixedSupport":I
    const/4 v6, 0x3

    if-eq v0, v6, :cond_0

    if-eqz p3, :cond_2

    const/4 v6, 0x2

    if-ne v0, v6, :cond_2

    .line 685
    :cond_0
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "trackIndexCount":I
    .restart local v3    # "trackIndexCount":I
    aput v1, v5, v4

    .line 680
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v4, v3

    .end local v3    # "trackIndexCount":I
    .restart local v4    # "trackIndexCount":I
    goto :goto_0

    .line 688
    .end local v0    # "fixedSupport":I
    :cond_1
    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    .line 689
    invoke-virtual {p0, p1, p2, v5}, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getAdaptiveSupport(II[I)I

    move-result v6

    return v6

    .restart local v0    # "fixedSupport":I
    :cond_2
    move v3, v4

    .end local v4    # "trackIndexCount":I
    .restart local v3    # "trackIndexCount":I
    goto :goto_1
.end method

.method public getAdaptiveSupport(II[I)I
    .locals 9
    .param p1, "rendererIndex"    # I
    .param p2, "groupIndex"    # I
    .param p3, "trackIndices"    # [I

    .prologue
    .line 703
    const/4 v2, 0x0

    .line 704
    .local v2, "handledTrackCount":I
    const/16 v0, 0x8

    .line 705
    .local v0, "adaptiveSupport":I
    const/4 v5, 0x0

    .line 706
    .local v5, "multipleMimeTypes":Z
    const/4 v1, 0x0

    .line 707
    .local v1, "firstSampleMimeType":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v8, p3

    if-ge v4, v8, :cond_2

    .line 708
    aget v7, p3, v4

    .line 709
    .local v7, "trackIndex":I
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->trackGroups:[Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    aget-object v8, v8, p1

    invoke-virtual {v8, p2}, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->get(I)Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    move-result-object v8

    invoke-virtual {v8, v7}, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->getFormat(I)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v8

    iget-object v6, v8, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 711
    .local v6, "sampleMimeType":Ljava/lang/String;
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "handledTrackCount":I
    .local v3, "handledTrackCount":I
    if-nez v2, :cond_0

    .line 712
    move-object v1, v6

    .line 716
    :goto_1
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->formatSupport:[[[I

    aget-object v8, v8, p1

    aget-object v8, v8, p2

    aget v8, v8, v4

    and-int/lit8 v8, v8, 0xc

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 707
    add-int/lit8 v4, v4, 0x1

    move v2, v3

    .end local v3    # "handledTrackCount":I
    .restart local v2    # "handledTrackCount":I
    goto :goto_0

    .line 714
    .end local v2    # "handledTrackCount":I
    .restart local v3    # "handledTrackCount":I
    :cond_0
    invoke-static {v1, v6}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v8, 0x1

    :goto_2
    or-int/2addr v5, v8

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    goto :goto_2

    .line 719
    .end local v3    # "handledTrackCount":I
    .end local v6    # "sampleMimeType":Ljava/lang/String;
    .end local v7    # "trackIndex":I
    .restart local v2    # "handledTrackCount":I
    :cond_2
    if-eqz v5, :cond_3

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->mixedMimeTypeAdaptiveSupport:[I

    aget v8, v8, p1

    .line 720
    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 719
    .end local v0    # "adaptiveSupport":I
    :cond_3
    return v0
.end method

.method public getRendererSupport(I)I
    .locals 6
    .param p1, "rendererIndex"    # I

    .prologue
    .line 596
    const/4 v0, 0x0

    .line 597
    .local v0, "bestRendererSupport":I
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->formatSupport:[[[I

    aget-object v3, v5, p1

    .line 598
    .local v3, "rendererFormatSupport":[[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_1

    .line 599
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    aget-object v5, v3, v1

    array-length v5, v5

    if-ge v2, v5, :cond_0

    .line 601
    aget-object v5, v3, v1

    aget v5, v5, v2

    and-int/lit8 v5, v5, 0x3

    packed-switch v5, :pswitch_data_0

    .line 608
    const/4 v4, 0x1

    .line 611
    .local v4, "trackRendererSupport":I
    :goto_2
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 599
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 603
    .end local v4    # "trackRendererSupport":I
    :pswitch_0
    const/4 v5, 0x3

    .line 614
    .end local v2    # "j":I
    :goto_3
    return v5

    .line 605
    .restart local v2    # "j":I
    :pswitch_1
    const/4 v4, 0x2

    .line 606
    .restart local v4    # "trackRendererSupport":I
    goto :goto_2

    .line 598
    .end local v4    # "trackRendererSupport":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "j":I
    :cond_1
    move v5, v0

    .line 614
    goto :goto_3

    .line 601
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTrackFormatSupport(III)I
    .locals 1
    .param p1, "rendererIndex"    # I
    .param p2, "groupIndex"    # I
    .param p3, "trackIndex"    # I

    .prologue
    .line 649
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->formatSupport:[[[I

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    aget v0, v0, p3

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getTrackGroups(I)Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    .locals 1
    .param p1, "rendererIndex"    # I

    .prologue
    .line 584
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->trackGroups:[Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getTrackTypeRendererSupport(I)I
    .locals 3
    .param p1, "trackType"    # I

    .prologue
    .line 628
    const/4 v0, 0x0

    .line 629
    .local v0, "bestRendererSupport":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->length:I

    if-ge v1, v2, :cond_1

    .line 630
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackTypes:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    .line 631
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererSupport(I)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 629
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 634
    :cond_1
    return v0
.end method

.method public getUnassociatedTrackGroups()Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->unassociatedTrackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method
