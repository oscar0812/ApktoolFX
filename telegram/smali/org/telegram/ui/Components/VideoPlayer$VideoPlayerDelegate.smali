.class public interface abstract Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;
.super Ljava/lang/Object;
.source "VideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VideoPlayerDelegate"
.end annotation


# virtual methods
.method public abstract onError(Ljava/lang/Exception;)V
.end method

.method public abstract onRenderedFirstFrame()V
.end method

.method public abstract onStateChanged(ZI)V
.end method

.method public abstract onSurfaceDestroyed(Landroid/graphics/SurfaceTexture;)Z
.end method

.method public abstract onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
.end method

.method public abstract onVideoSizeChanged(IIIF)V
.end method
