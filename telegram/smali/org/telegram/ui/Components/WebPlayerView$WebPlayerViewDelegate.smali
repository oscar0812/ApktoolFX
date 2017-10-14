.class public interface abstract Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;
.super Ljava/lang/Object;
.source "WebPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/WebPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WebPlayerViewDelegate"
.end annotation


# virtual methods
.method public abstract checkInlinePermissons()Z
.end method

.method public abstract getTextureViewContainer()Landroid/view/ViewGroup;
.end method

.method public abstract onInitFailed()V
.end method

.method public abstract onInlineSurfaceTextureReady()V
.end method

.method public abstract onPlayStateChanged(Lorg/telegram/ui/Components/WebPlayerView;Z)V
.end method

.method public abstract onSharePressed()V
.end method

.method public abstract onSwitchInlineMode(Landroid/view/View;ZFIZ)Landroid/view/TextureView;
.end method

.method public abstract onSwitchToFullscreen(Landroid/view/View;ZFIZ)Landroid/view/TextureView;
.end method

.method public abstract onVideoSizeChanged(FI)V
.end method

.method public abstract prepareToSwitchInlineMode(ZLjava/lang/Runnable;FZ)V
.end method
