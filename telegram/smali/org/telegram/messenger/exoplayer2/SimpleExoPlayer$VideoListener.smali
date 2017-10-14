.class public interface abstract Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;
.super Ljava/lang/Object;
.source "SimpleExoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VideoListener"
.end annotation


# virtual methods
.method public abstract onRenderedFirstFrame()V
.end method

.method public abstract onSurfaceDestroyed(Landroid/graphics/SurfaceTexture;)Z
.end method

.method public abstract onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
.end method

.method public abstract onVideoSizeChanged(IIIF)V
.end method
