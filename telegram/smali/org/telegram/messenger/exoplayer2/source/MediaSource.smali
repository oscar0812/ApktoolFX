.class public interface abstract Lorg/telegram/messenger/exoplayer2/source/MediaSource;
.super Ljava/lang/Object;
.source "MediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;
    }
.end annotation


# virtual methods
.method public abstract createPeriod(ILorg/telegram/messenger/exoplayer2/upstream/Allocator;J)Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
.end method

.method public abstract maybeThrowSourceInfoRefreshError()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract prepareSource(Lorg/telegram/messenger/exoplayer2/ExoPlayer;ZLorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;)V
.end method

.method public abstract releasePeriod(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V
.end method

.method public abstract releaseSource()V
.end method
