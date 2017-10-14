.class public interface abstract Lorg/telegram/messenger/exoplayer2/LoadControl;
.super Ljava/lang/Object;
.source "LoadControl.java"


# virtual methods
.method public abstract getAllocator()Lorg/telegram/messenger/exoplayer2/upstream/Allocator;
.end method

.method public abstract onPrepared()V
.end method

.method public abstract onReleased()V
.end method

.method public abstract onStopped()V
.end method

.method public abstract onTracksSelected([Lorg/telegram/messenger/exoplayer2/Renderer;Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;)V
.end method

.method public abstract shouldContinueLoading(J)Z
.end method

.method public abstract shouldStartPlayback(JZ)Z
.end method
