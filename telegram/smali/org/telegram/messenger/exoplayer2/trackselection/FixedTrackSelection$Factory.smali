.class public final Lorg/telegram/messenger/exoplayer2/trackselection/FixedTrackSelection$Factory;
.super Ljava/lang/Object;
.source "FixedTrackSelection.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/trackselection/FixedTrackSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final data:Ljava/lang/Object;

.field private final reason:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/FixedTrackSelection$Factory;->reason:I

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/FixedTrackSelection$Factory;->data:Ljava/lang/Object;

    .line 38
    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/FixedTrackSelection$Factory;->reason:I

    .line 46
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/FixedTrackSelection$Factory;->data:Ljava/lang/Object;

    .line 47
    return-void
.end method


# virtual methods
.method public varargs createTrackSelection(Lorg/telegram/messenger/exoplayer2/source/TrackGroup;[I)Lorg/telegram/messenger/exoplayer2/trackselection/FixedTrackSelection;
    .locals 4
    .param p1, "group"    # Lorg/telegram/messenger/exoplayer2/source/TrackGroup;
    .param p2, "tracks"    # [I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 51
    array-length v2, p2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 52
    new-instance v0, Lorg/telegram/messenger/exoplayer2/trackselection/FixedTrackSelection;

    aget v1, p2, v1

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/FixedTrackSelection$Factory;->reason:I

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/FixedTrackSelection$Factory;->data:Ljava/lang/Object;

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/trackselection/FixedTrackSelection;-><init>(Lorg/telegram/messenger/exoplayer2/source/TrackGroup;IILjava/lang/Object;)V

    return-object v0

    :cond_0
    move v0, v1

    .line 51
    goto :goto_0
.end method

.method public bridge synthetic createTrackSelection(Lorg/telegram/messenger/exoplayer2/source/TrackGroup;[I)Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/trackselection/FixedTrackSelection$Factory;->createTrackSelection(Lorg/telegram/messenger/exoplayer2/source/TrackGroup;[I)Lorg/telegram/messenger/exoplayer2/trackselection/FixedTrackSelection;

    move-result-object v0

    return-object v0
.end method
