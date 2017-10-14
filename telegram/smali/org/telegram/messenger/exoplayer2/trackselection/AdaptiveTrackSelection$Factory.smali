.class public final Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;
.super Ljava/lang/Object;
.source "AdaptiveTrackSelection.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveTrackSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final bandwidthFraction:F

.field private final bandwidthMeter:Lorg/telegram/messenger/exoplayer2/upstream/BandwidthMeter;

.field private final maxDurationForQualityDecreaseMs:I

.field private final maxInitialBitrate:I

.field private final minDurationForQualityIncreaseMs:I

.field private final minDurationToRetainAfterDiscardMs:I


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/BandwidthMeter;)V
    .locals 7
    .param p1, "bandwidthMeter"    # Lorg/telegram/messenger/exoplayer2/upstream/BandwidthMeter;

    .prologue
    const/16 v4, 0x61a8

    .line 48
    const v2, 0xc3500

    const/16 v3, 0x2710

    const/high16 v6, 0x3f400000    # 0.75f

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/BandwidthMeter;IIIIF)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/BandwidthMeter;IIIIF)V
    .locals 0
    .param p1, "bandwidthMeter"    # Lorg/telegram/messenger/exoplayer2/upstream/BandwidthMeter;
    .param p2, "maxInitialBitrate"    # I
    .param p3, "minDurationForQualityIncreaseMs"    # I
    .param p4, "maxDurationForQualityDecreaseMs"    # I
    .param p5, "minDurationToRetainAfterDiscardMs"    # I
    .param p6, "bandwidthFraction"    # F

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->bandwidthMeter:Lorg/telegram/messenger/exoplayer2/upstream/BandwidthMeter;

    .line 74
    iput p2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->maxInitialBitrate:I

    .line 75
    iput p3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->minDurationForQualityIncreaseMs:I

    .line 76
    iput p4, p0, Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->maxDurationForQualityDecreaseMs:I

    .line 77
    iput p5, p0, Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->minDurationToRetainAfterDiscardMs:I

    .line 78
    iput p6, p0, Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->bandwidthFraction:F

    .line 79
    return-void
.end method


# virtual methods
.method public varargs createTrackSelection(Lorg/telegram/messenger/exoplayer2/source/TrackGroup;[I)Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveTrackSelection;
    .locals 13
    .param p1, "group"    # Lorg/telegram/messenger/exoplayer2/source/TrackGroup;
    .param p2, "tracks"    # [I

    .prologue
    .line 83
    new-instance v1, Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveTrackSelection;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->bandwidthMeter:Lorg/telegram/messenger/exoplayer2/upstream/BandwidthMeter;

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->maxInitialBitrate:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->minDurationForQualityIncreaseMs:I

    int-to-long v6, v0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->maxDurationForQualityDecreaseMs:I

    int-to-long v8, v0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->minDurationToRetainAfterDiscardMs:I

    int-to-long v10, v0

    iget v12, p0, Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->bandwidthFraction:F

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v12}, Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveTrackSelection;-><init>(Lorg/telegram/messenger/exoplayer2/source/TrackGroup;[ILorg/telegram/messenger/exoplayer2/upstream/BandwidthMeter;IJJJF)V

    return-object v1
.end method

.method public bridge synthetic createTrackSelection(Lorg/telegram/messenger/exoplayer2/source/TrackGroup;[I)Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->createTrackSelection(Lorg/telegram/messenger/exoplayer2/source/TrackGroup;[I)Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveTrackSelection;

    move-result-object v0

    return-object v0
.end method
