.class public final Lorg/telegram/messenger/exoplayer2/ExoPlayerFactory;
.super Ljava/lang/Object;
.source "ExoPlayerFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance([Lorg/telegram/messenger/exoplayer2/Renderer;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;)Lorg/telegram/messenger/exoplayer2/ExoPlayer;
    .locals 1
    .param p0, "renderers"    # [Lorg/telegram/messenger/exoplayer2/Renderer;
    .param p1, "trackSelector"    # Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;

    .prologue
    .line 158
    new-instance v0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;-><init>()V

    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerFactory;->newInstance([Lorg/telegram/messenger/exoplayer2/Renderer;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;Lorg/telegram/messenger/exoplayer2/LoadControl;)Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance([Lorg/telegram/messenger/exoplayer2/Renderer;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;Lorg/telegram/messenger/exoplayer2/LoadControl;)Lorg/telegram/messenger/exoplayer2/ExoPlayer;
    .locals 1
    .param p0, "renderers"    # [Lorg/telegram/messenger/exoplayer2/Renderer;
    .param p1, "trackSelector"    # Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;
    .param p2, "loadControl"    # Lorg/telegram/messenger/exoplayer2/LoadControl;

    .prologue
    .line 171
    new-instance v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;-><init>([Lorg/telegram/messenger/exoplayer2/Renderer;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;Lorg/telegram/messenger/exoplayer2/LoadControl;)V

    return-object v0
.end method

.method public static newSimpleInstance(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;)Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "trackSelector"    # Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;

    .prologue
    .line 122
    new-instance v0, Lorg/telegram/messenger/exoplayer2/DefaultRenderersFactory;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    invoke-static {v0, p1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Lorg/telegram/messenger/exoplayer2/RenderersFactory;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;)Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static newSimpleInstance(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;Lorg/telegram/messenger/exoplayer2/LoadControl;)Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "trackSelector"    # Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;
    .param p2, "loadControl"    # Lorg/telegram/messenger/exoplayer2/LoadControl;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lorg/telegram/messenger/exoplayer2/DefaultRenderersFactory;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    .line 44
    .local v0, "renderersFactory":Lorg/telegram/messenger/exoplayer2/RenderersFactory;
    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Lorg/telegram/messenger/exoplayer2/RenderersFactory;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;Lorg/telegram/messenger/exoplayer2/LoadControl;)Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    move-result-object v1

    return-object v1
.end method

.method public static newSimpleInstance(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;Lorg/telegram/messenger/exoplayer2/LoadControl;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;)Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "trackSelector"    # Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;
    .param p2, "loadControl"    # Lorg/telegram/messenger/exoplayer2/LoadControl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;",
            "Lorg/telegram/messenger/exoplayer2/LoadControl;",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;)",
            "Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 61
    .local p3, "drmSessionManager":Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager<Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;>;"
    new-instance v0, Lorg/telegram/messenger/exoplayer2/DefaultRenderersFactory;

    invoke-direct {v0, p0, p3}, Lorg/telegram/messenger/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;)V

    .line 62
    .local v0, "renderersFactory":Lorg/telegram/messenger/exoplayer2/RenderersFactory;
    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Lorg/telegram/messenger/exoplayer2/RenderersFactory;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;Lorg/telegram/messenger/exoplayer2/LoadControl;)Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    move-result-object v1

    return-object v1
.end method

.method public static newSimpleInstance(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;Lorg/telegram/messenger/exoplayer2/LoadControl;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;I)Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "trackSelector"    # Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;
    .param p2, "loadControl"    # Lorg/telegram/messenger/exoplayer2/LoadControl;
    .param p4, "extensionRendererMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;",
            "Lorg/telegram/messenger/exoplayer2/LoadControl;",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;I)",
            "Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 83
    .local p3, "drmSessionManager":Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager<Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;>;"
    new-instance v0, Lorg/telegram/messenger/exoplayer2/DefaultRenderersFactory;

    invoke-direct {v0, p0, p3, p4}, Lorg/telegram/messenger/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;I)V

    .line 85
    .local v0, "renderersFactory":Lorg/telegram/messenger/exoplayer2/RenderersFactory;
    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Lorg/telegram/messenger/exoplayer2/RenderersFactory;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;Lorg/telegram/messenger/exoplayer2/LoadControl;)Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    move-result-object v1

    return-object v1
.end method

.method public static newSimpleInstance(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;Lorg/telegram/messenger/exoplayer2/LoadControl;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;IJ)Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "trackSelector"    # Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;
    .param p2, "loadControl"    # Lorg/telegram/messenger/exoplayer2/LoadControl;
    .param p4, "extensionRendererMode"    # I
    .param p5, "allowedVideoJoiningTimeMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;",
            "Lorg/telegram/messenger/exoplayer2/LoadControl;",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;IJ)",
            "Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 109
    .local p3, "drmSessionManager":Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager<Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;>;"
    new-instance v0, Lorg/telegram/messenger/exoplayer2/DefaultRenderersFactory;

    move-object v1, p0

    move-object v2, p3

    move v3, p4

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;IJ)V

    .line 111
    .local v0, "renderersFactory":Lorg/telegram/messenger/exoplayer2/RenderersFactory;
    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Lorg/telegram/messenger/exoplayer2/RenderersFactory;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;Lorg/telegram/messenger/exoplayer2/LoadControl;)Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    move-result-object v1

    return-object v1
.end method

.method public static newSimpleInstance(Lorg/telegram/messenger/exoplayer2/RenderersFactory;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;)Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;
    .locals 1
    .param p0, "renderersFactory"    # Lorg/telegram/messenger/exoplayer2/RenderersFactory;
    .param p1, "trackSelector"    # Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;

    .prologue
    .line 134
    new-instance v0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;-><init>()V

    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Lorg/telegram/messenger/exoplayer2/RenderersFactory;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;Lorg/telegram/messenger/exoplayer2/LoadControl;)Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static newSimpleInstance(Lorg/telegram/messenger/exoplayer2/RenderersFactory;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;Lorg/telegram/messenger/exoplayer2/LoadControl;)Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;
    .locals 1
    .param p0, "renderersFactory"    # Lorg/telegram/messenger/exoplayer2/RenderersFactory;
    .param p1, "trackSelector"    # Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;
    .param p2, "loadControl"    # Lorg/telegram/messenger/exoplayer2/LoadControl;

    .prologue
    .line 147
    new-instance v0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;-><init>(Lorg/telegram/messenger/exoplayer2/RenderersFactory;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;Lorg/telegram/messenger/exoplayer2/LoadControl;)V

    return-object v0
.end method
