.class public final Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;
.super Ljava/lang/Object;
.source "TrackSelectorResult.java"


# instance fields
.field public final groups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

.field public final info:Ljava/lang/Object;

.field public final rendererConfigurations:[Lorg/telegram/messenger/exoplayer2/RendererConfiguration;

.field public final selections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;Ljava/lang/Object;[Lorg/telegram/messenger/exoplayer2/RendererConfiguration;)V
    .locals 0
    .param p1, "groups"    # Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    .param p2, "selections"    # Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;
    .param p3, "info"    # Ljava/lang/Object;
    .param p4, "rendererConfigurations"    # [Lorg/telegram/messenger/exoplayer2/RendererConfiguration;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;->groups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    .line 56
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;->selections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    .line 57
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;->info:Ljava/lang/Object;

    .line 58
    iput-object p4, p0, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;->rendererConfigurations:[Lorg/telegram/messenger/exoplayer2/RendererConfiguration;

    .line 59
    return-void
.end method


# virtual methods
.method public isEquivalent(Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;)Z
    .locals 3
    .param p1, "other"    # Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;

    .prologue
    const/4 v1, 0x0

    .line 69
    if-nez p1, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v1

    .line 72
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;->selections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    iget v2, v2, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;->length:I

    if-ge v0, v2, :cond_2

    .line 73
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;->isEquivalent(Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 77
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isEquivalent(Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;I)Z
    .locals 3
    .param p1, "other"    # Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;
    .param p2, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 91
    if-nez p1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;->selections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    invoke-virtual {v1, p2}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;->selections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    invoke-virtual {v2, p2}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;->rendererConfigurations:[Lorg/telegram/messenger/exoplayer2/RendererConfiguration;

    aget-object v1, v1, p2

    iget-object v2, p1, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;->rendererConfigurations:[Lorg/telegram/messenger/exoplayer2/RendererConfiguration;

    aget-object v2, v2, p2

    .line 95
    invoke-static {v1, v2}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
