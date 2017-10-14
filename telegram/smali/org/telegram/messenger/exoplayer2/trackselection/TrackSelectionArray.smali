.class public final Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;
.super Ljava/lang/Object;
.source "TrackSelectionArray.java"


# instance fields
.field private hashCode:I

.field public final length:I

.field private final trackSelections:[Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;


# direct methods
.method public varargs constructor <init>([Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;)V
    .locals 1
    .param p1, "trackSelections"    # [Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;->trackSelections:[Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    .line 40
    array-length v0, p1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;->length:I

    .line 41
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 72
    if-ne p0, p1, :cond_0

    .line 73
    const/4 v1, 0x1

    .line 79
    :goto_0
    return v1

    .line 75
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 76
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 78
    check-cast v0, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    .line 79
    .local v0, "other":Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;->trackSelections:[Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;->trackSelections:[Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public get(I)Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;->trackSelections:[Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getAll()[Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;->trackSelections:[Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    invoke-virtual {v0}, [Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 62
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;->hashCode:I

    if-nez v1, :cond_0

    .line 63
    const/16 v0, 0x11

    .line 64
    .local v0, "result":I
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;->trackSelections:[Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 65
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;->hashCode:I

    .line 67
    .end local v0    # "result":I
    :cond_0
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;->hashCode:I

    return v1
.end method
