.class public interface abstract Lorg/telegram/messenger/exoplayer2/ExoPlayer;
.super Ljava/lang/Object;
.source "ExoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;,
        Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerComponent;,
        Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    }
.end annotation


# static fields
.field public static final STATE_BUFFERING:I = 0x2

.field public static final STATE_ENDED:I = 0x4

.field public static final STATE_IDLE:I = 0x1

.field public static final STATE_READY:I = 0x3


# virtual methods
.method public abstract addListener(Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;)V
.end method

.method public varargs abstract blockingSendMessages([Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
.end method

.method public abstract getBufferedPercentage()I
.end method

.method public abstract getBufferedPosition()J
.end method

.method public abstract getCurrentManifest()Ljava/lang/Object;
.end method

.method public abstract getCurrentPeriodIndex()I
.end method

.method public abstract getCurrentPosition()J
.end method

.method public abstract getCurrentTimeline()Lorg/telegram/messenger/exoplayer2/Timeline;
.end method

.method public abstract getCurrentTrackGroups()Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
.end method

.method public abstract getCurrentTrackSelections()Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;
.end method

.method public abstract getCurrentWindowIndex()I
.end method

.method public abstract getDuration()J
.end method

.method public abstract getPlayWhenReady()Z
.end method

.method public abstract getPlaybackParameters()Lorg/telegram/messenger/exoplayer2/PlaybackParameters;
.end method

.method public abstract getPlaybackState()I
.end method

.method public abstract getRendererCount()I
.end method

.method public abstract getRendererType(I)I
.end method

.method public abstract isCurrentWindowDynamic()Z
.end method

.method public abstract isCurrentWindowSeekable()Z
.end method

.method public abstract isLoading()Z
.end method

.method public abstract prepare(Lorg/telegram/messenger/exoplayer2/source/MediaSource;)V
.end method

.method public abstract prepare(Lorg/telegram/messenger/exoplayer2/source/MediaSource;ZZ)V
.end method

.method public abstract release()V
.end method

.method public abstract removeListener(Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;)V
.end method

.method public abstract seekTo(IJ)V
.end method

.method public abstract seekTo(J)V
.end method

.method public abstract seekToDefaultPosition()V
.end method

.method public abstract seekToDefaultPosition(I)V
.end method

.method public varargs abstract sendMessages([Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
.end method

.method public abstract setPlayWhenReady(Z)V
.end method

.method public abstract setPlaybackParameters(Lorg/telegram/messenger/exoplayer2/PlaybackParameters;)V
    .param p1    # Lorg/telegram/messenger/exoplayer2/PlaybackParameters;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract stop()V
.end method
