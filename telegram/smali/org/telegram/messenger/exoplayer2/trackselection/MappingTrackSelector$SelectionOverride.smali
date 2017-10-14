.class public final Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;
.super Ljava/lang/Object;
.source "MappingTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SelectionOverride"
.end annotation


# instance fields
.field public final factory:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection$Factory;

.field public final groupIndex:I

.field public final length:I

.field public final tracks:[I


# direct methods
.method public varargs constructor <init>(Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection$Factory;I[I)V
    .locals 1
    .param p1, "factory"    # Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection$Factory;
    .param p2, "groupIndex"    # I
    .param p3, "tracks"    # [I

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;->factory:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection$Factory;

    .line 55
    iput p2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;->groupIndex:I

    .line 56
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;->tracks:[I

    .line 57
    array-length v0, p3

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;->length:I

    .line 58
    return-void
.end method


# virtual methods
.method public containsTrack(I)Z
    .locals 5
    .param p1, "track"    # I

    .prologue
    const/4 v1, 0x0

    .line 74
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;->tracks:[I

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget v0, v3, v2

    .line 75
    .local v0, "overrideTrack":I
    if-ne v0, p1, :cond_1

    .line 76
    const/4 v1, 0x1

    .line 79
    .end local v0    # "overrideTrack":I
    :cond_0
    return v1

    .line 74
    .restart local v0    # "overrideTrack":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public createTrackSelection(Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;)Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    .locals 3
    .param p1, "groups"    # Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;->factory:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection$Factory;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;->groupIndex:I

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->get(I)Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;->tracks:[I

    invoke-interface {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection$Factory;->createTrackSelection(Lorg/telegram/messenger/exoplayer2/source/TrackGroup;[I)Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    move-result-object v0

    return-object v0
.end method
