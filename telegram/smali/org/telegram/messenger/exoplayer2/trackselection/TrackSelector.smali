.class public abstract Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;
.super Ljava/lang/Object;
.source "TrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector$InvalidationListener;
    }
.end annotation


# instance fields
.field private listener:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector$InvalidationListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final init(Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector$InvalidationListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector$InvalidationListener;

    .prologue
    .line 45
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;->listener:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector$InvalidationListener;

    .line 46
    return-void
.end method

.method protected final invalidate()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;->listener:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector$InvalidationListener;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;->listener:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector$InvalidationListener;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector$InvalidationListener;->onTrackSelectionsInvalidated()V

    .line 75
    :cond_0
    return-void
.end method

.method public abstract onSelectionActivated(Ljava/lang/Object;)V
.end method

.method public abstract selectTracks([Lorg/telegram/messenger/exoplayer2/RendererCapabilities;Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;)Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectorResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method
