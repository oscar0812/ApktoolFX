.class public Lorg/telegram/messenger/exoplayer2/DefaultRenderersFactory;
.super Ljava/lang/Object;
.source "DefaultRenderersFactory.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/RenderersFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/DefaultRenderersFactory$ExtensionRendererMode;
    }
.end annotation


# static fields
.field public static final DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS:J = 0x1388L

.field public static final EXTENSION_RENDERER_MODE_OFF:I = 0x0

.field public static final EXTENSION_RENDERER_MODE_ON:I = 0x1

.field public static final EXTENSION_RENDERER_MODE_PREFER:I = 0x2

.field protected static final MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY:I = 0x32

.field private static final TAG:Ljava/lang/String; = "DefaultRenderersFactory"


# instance fields
.field private final allowedVideoJoiningTimeMs:J

.field private final context:Landroid/content/Context;

.field private final drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private final extensionRendererMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p2, "drmSessionManager":Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager<Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;I)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "extensionRendererMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p2, "drmSessionManager":Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager<Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;>;"
    const-wide/16 v4, 0x1388

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;IJ)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;IJ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "extensionRendererMode"    # I
    .param p4, "allowedVideoJoiningTimeMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;IJ)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p2, "drmSessionManager":Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager<Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    .line 132
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/DefaultRenderersFactory;->drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;

    .line 133
    iput p3, p0, Lorg/telegram/messenger/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    .line 134
    iput-wide p4, p0, Lorg/telegram/messenger/exoplayer2/DefaultRenderersFactory;->allowedVideoJoiningTimeMs:J

    .line 135
    return-void
.end method


# virtual methods
.method protected buildAudioProcessors()[Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;
    .locals 1

    .prologue
    .line 324
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;

    return-object v0
.end method

.method protected buildAudioRenderers(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;[Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;ILjava/util/ArrayList;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "audioProcessors"    # [Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;
    .param p4, "eventHandler"    # Landroid/os/Handler;
    .param p5, "eventListener"    # Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;
    .param p6, "extensionRendererMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;[",
            "Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;",
            "Landroid/os/Handler;",
            "Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p2, "drmSessionManager":Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager<Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;>;"
    .local p7, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/Renderer;>;"
    new-instance v1, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;

    sget-object v2, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;->DEFAULT:Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;

    const/4 v4, 0x1

    .line 219
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;->getCapabilities(Landroid/content/Context;)Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;

    move-result-object v7

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;-><init>(Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;[Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;)V

    .line 218
    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    if-nez p6, :cond_0

    .line 273
    :goto_0
    return-void

    .line 224
    :cond_0
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 225
    .local v12, "extensionRendererIndex":I
    const/4 v1, 0x2

    move/from16 v0, p6

    if-ne v0, v1, :cond_1

    .line 226
    add-int/lit8 v12, v12, -0x1

    move v13, v12

    .line 230
    .end local v12    # "extensionRendererIndex":I
    .local v13, "extensionRendererIndex":I
    :goto_1
    :try_start_0
    const-string/jumbo v1, "org.telegram.messenger.exoplayer2.ext.opus.LibopusAudioRenderer"

    .line 231
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 232
    .local v9, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/os/Handler;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, [Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;

    aput-object v3, v1, v2

    invoke-virtual {v9, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    .line 234
    .local v10, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p4, v1, v2

    const/4 v2, 0x1

    aput-object p5, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-virtual {v10, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/messenger/exoplayer2/Renderer;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 236
    .local v14, "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "extensionRendererIndex":I
    .restart local v12    # "extensionRendererIndex":I
    :try_start_1
    move-object/from16 v0, p7

    invoke-virtual {v0, v13, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 237
    const-string/jumbo v1, "DefaultRenderersFactory"

    const-string/jumbo v2, "Loaded LibopusAudioRenderer."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a

    move v13, v12

    .line 245
    .end local v9    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v12    # "extensionRendererIndex":I
    .end local v14    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    .restart local v13    # "extensionRendererIndex":I
    :goto_2
    :try_start_2
    const-string/jumbo v1, "org.telegram.messenger.exoplayer2.ext.flac.LibflacAudioRenderer"

    .line 246
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 247
    .restart local v9    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/os/Handler;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, [Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;

    aput-object v3, v1, v2

    invoke-virtual {v9, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    .line 249
    .restart local v10    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p4, v1, v2

    const/4 v2, 0x1

    aput-object p5, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-virtual {v10, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/messenger/exoplayer2/Renderer;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 251
    .restart local v14    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "extensionRendererIndex":I
    .restart local v12    # "extensionRendererIndex":I
    :try_start_3
    move-object/from16 v0, p7

    invoke-virtual {v0, v13, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 252
    const-string/jumbo v1, "DefaultRenderersFactory"

    const-string/jumbo v2, "Loaded LibflacAudioRenderer."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    move v13, v12

    .line 260
    .end local v9    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v12    # "extensionRendererIndex":I
    .end local v14    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    .restart local v13    # "extensionRendererIndex":I
    :goto_3
    :try_start_4
    const-string/jumbo v1, "org.telegram.messenger.exoplayer2.ext.ffmpeg.FfmpegAudioRenderer"

    .line 261
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 262
    .restart local v9    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/os/Handler;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, [Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;

    aput-object v3, v1, v2

    invoke-virtual {v9, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    .line 264
    .restart local v10    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p4, v1, v2

    const/4 v2, 0x1

    aput-object p5, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-virtual {v10, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/messenger/exoplayer2/Renderer;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 266
    .restart local v14    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "extensionRendererIndex":I
    .restart local v12    # "extensionRendererIndex":I
    :try_start_5
    move-object/from16 v0, p7

    invoke-virtual {v0, v13, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 267
    const-string/jumbo v1, "DefaultRenderersFactory"

    const-string/jumbo v2, "Loaded FfmpegAudioRenderer."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    goto/16 :goto_0

    .line 268
    :catch_0
    move-exception v1

    goto/16 :goto_0

    .line 238
    .end local v9    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v12    # "extensionRendererIndex":I
    .end local v14    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    .restart local v13    # "extensionRendererIndex":I
    :catch_1
    move-exception v1

    move v12, v13

    .end local v13    # "extensionRendererIndex":I
    .restart local v12    # "extensionRendererIndex":I
    :goto_4
    move v13, v12

    .line 242
    .end local v12    # "extensionRendererIndex":I
    .restart local v13    # "extensionRendererIndex":I
    goto/16 :goto_2

    .line 240
    :catch_2
    move-exception v11

    move v12, v13

    .line 241
    .end local v13    # "extensionRendererIndex":I
    .local v11, "e":Ljava/lang/Exception;
    .restart local v12    # "extensionRendererIndex":I
    :goto_5
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 253
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v12    # "extensionRendererIndex":I
    .restart local v13    # "extensionRendererIndex":I
    :catch_3
    move-exception v1

    move v12, v13

    .end local v13    # "extensionRendererIndex":I
    .restart local v12    # "extensionRendererIndex":I
    :goto_6
    move v13, v12

    .line 257
    .end local v12    # "extensionRendererIndex":I
    .restart local v13    # "extensionRendererIndex":I
    goto :goto_3

    .line 255
    :catch_4
    move-exception v11

    move v12, v13

    .line 256
    .end local v13    # "extensionRendererIndex":I
    .restart local v11    # "e":Ljava/lang/Exception;
    .restart local v12    # "extensionRendererIndex":I
    :goto_7
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 270
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v12    # "extensionRendererIndex":I
    .restart local v13    # "extensionRendererIndex":I
    :catch_5
    move-exception v11

    move v12, v13

    .line 271
    .end local v13    # "extensionRendererIndex":I
    .restart local v11    # "e":Ljava/lang/Exception;
    .restart local v12    # "extensionRendererIndex":I
    :goto_8
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 270
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v9    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v10    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v14    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    :catch_6
    move-exception v11

    goto :goto_8

    .line 268
    .end local v9    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v12    # "extensionRendererIndex":I
    .end local v14    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    .restart local v13    # "extensionRendererIndex":I
    :catch_7
    move-exception v1

    move v12, v13

    .end local v13    # "extensionRendererIndex":I
    .restart local v12    # "extensionRendererIndex":I
    goto/16 :goto_0

    .line 255
    .restart local v9    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v10    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v14    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    :catch_8
    move-exception v11

    goto :goto_7

    .line 253
    :catch_9
    move-exception v1

    goto :goto_6

    .line 240
    :catch_a
    move-exception v11

    goto :goto_5

    .line 238
    :catch_b
    move-exception v1

    goto :goto_4

    .end local v9    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v14    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    :cond_1
    move v13, v12

    .end local v12    # "extensionRendererIndex":I
    .restart local v13    # "extensionRendererIndex":I
    goto/16 :goto_1
.end method

.method protected buildMetadataRenderers(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;Landroid/os/Looper;ILjava/util/ArrayList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "output"    # Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;
    .param p3, "outputLooper"    # Landroid/os/Looper;
    .param p4, "extensionRendererMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;",
            "Landroid/os/Looper;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p5, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/Renderer;>;"
    new-instance v0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;

    invoke-direct {v0, p2, p3}, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;-><init>(Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;Landroid/os/Looper;)V

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    return-void
.end method

.method protected buildMiscellaneousRenderers(Landroid/content/Context;Landroid/os/Handler;ILjava/util/ArrayList;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventHandler"    # Landroid/os/Handler;
    .param p3, "extensionRendererMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 318
    .local p4, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/Renderer;>;"
    return-void
.end method

.method protected buildTextRenderers(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;Landroid/os/Looper;ILjava/util/ArrayList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "output"    # Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;
    .param p3, "outputLooper"    # Landroid/os/Looper;
    .param p4, "extensionRendererMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;",
            "Landroid/os/Looper;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 288
    .local p5, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/Renderer;>;"
    new-instance v0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;

    invoke-direct {v0, p2, p3}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;-><init>(Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;Landroid/os/Looper;)V

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    return-void
.end method

.method protected buildVideoRenderers(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;JLandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;ILjava/util/ArrayList;)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "allowedVideoJoiningTimeMs"    # J
    .param p5, "eventHandler"    # Landroid/os/Handler;
    .param p6, "eventListener"    # Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;
    .param p7, "extensionRendererMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;J",
            "Landroid/os/Handler;",
            "Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p2, "drmSessionManager":Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager<Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;>;"
    .local p8, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/Renderer;>;"
    new-instance v5, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;

    sget-object v7, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;->DEFAULT:Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;

    const/4 v11, 0x0

    const/16 v14, 0x32

    move-object/from16 v6, p1

    move-wide/from16 v8, p3

    move-object/from16 v10, p2

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    invoke-direct/range {v5 .. v14}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;JLorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;I)V

    move-object/from16 v0, p8

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    if-nez p7, :cond_0

    .line 198
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-virtual/range {p8 .. p8}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 180
    .local v17, "extensionRendererIndex":I
    const/4 v5, 0x2

    move/from16 v0, p7

    if-ne v0, v5, :cond_1

    .line 181
    add-int/lit8 v17, v17, -0x1

    move/from16 v18, v17

    .line 185
    .end local v17    # "extensionRendererIndex":I
    .local v18, "extensionRendererIndex":I
    :goto_1
    :try_start_0
    const-string/jumbo v5, "org.telegram.messenger.exoplayer2.ext.vp9.LibvpxVideoRenderer"

    .line 186
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 187
    .local v4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Landroid/os/Handler;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-class v7, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v15

    .line 189
    .local v15, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p5, v5, v6

    const/4 v6, 0x3

    aput-object p6, v5, v6

    const/4 v6, 0x4

    const/16 v7, 0x32

    .line 190
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 189
    invoke-virtual {v15, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/telegram/messenger/exoplayer2/Renderer;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 191
    .local v19, "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "extensionRendererIndex":I
    .restart local v17    # "extensionRendererIndex":I
    :try_start_1
    move-object/from16 v0, p8

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 192
    const-string/jumbo v5, "DefaultRenderersFactory"

    const-string/jumbo v6, "Loaded LibvpxVideoRenderer."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 193
    :catch_0
    move-exception v5

    goto :goto_0

    .line 195
    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v15    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v17    # "extensionRendererIndex":I
    .end local v19    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    .restart local v18    # "extensionRendererIndex":I
    :catch_1
    move-exception v16

    move/from16 v17, v18

    .line 196
    .end local v18    # "extensionRendererIndex":I
    .local v16, "e":Ljava/lang/Exception;
    .restart local v17    # "extensionRendererIndex":I
    :goto_2
    new-instance v5, Ljava/lang/RuntimeException;

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 195
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v15    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v19    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    :catch_2
    move-exception v16

    goto :goto_2

    .line 193
    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v15    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v17    # "extensionRendererIndex":I
    .end local v19    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    .restart local v18    # "extensionRendererIndex":I
    :catch_3
    move-exception v5

    move/from16 v17, v18

    .end local v18    # "extensionRendererIndex":I
    .restart local v17    # "extensionRendererIndex":I
    goto/16 :goto_0

    :cond_1
    move/from16 v18, v17

    .end local v17    # "extensionRendererIndex":I
    .restart local v18    # "extensionRendererIndex":I
    goto :goto_1
.end method

.method public createRenderers(Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;)[Lorg/telegram/messenger/exoplayer2/Renderer;
    .locals 10
    .param p1, "eventHandler"    # Landroid/os/Handler;
    .param p2, "videoRendererEventListener"    # Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;
    .param p3, "audioRendererEventListener"    # Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;
    .param p4, "textRendererOutput"    # Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;
    .param p5, "metadataRendererOutput"    # Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;

    .prologue
    .line 142
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v9, "renderersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/Renderer;>;"
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/DefaultRenderersFactory;->drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/DefaultRenderersFactory;->allowedVideoJoiningTimeMs:J

    iget v8, p0, Lorg/telegram/messenger/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/messenger/exoplayer2/DefaultRenderersFactory;->buildVideoRenderers(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;JLandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;ILjava/util/ArrayList;)V

    .line 145
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/DefaultRenderersFactory;->drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/DefaultRenderersFactory;->buildAudioProcessors()[Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;

    move-result-object v5

    iget v8, p0, Lorg/telegram/messenger/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    move-object v2, p0

    move-object v6, p1

    move-object v7, p3

    invoke-virtual/range {v2 .. v9}, Lorg/telegram/messenger/exoplayer2/DefaultRenderersFactory;->buildAudioRenderers(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;[Lorg/telegram/messenger/exoplayer2/audio/AudioProcessor;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;ILjava/util/ArrayList;)V

    .line 147
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    iget v8, p0, Lorg/telegram/messenger/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    move-object v4, p0

    move-object v6, p4

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/exoplayer2/DefaultRenderersFactory;->buildTextRenderers(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;Landroid/os/Looper;ILjava/util/ArrayList;)V

    .line 149
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    iget v8, p0, Lorg/telegram/messenger/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    move-object v4, p0

    move-object v6, p5

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/exoplayer2/DefaultRenderersFactory;->buildMetadataRenderers(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;Landroid/os/Looper;ILjava/util/ArrayList;)V

    .line 151
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    invoke-virtual {p0, v0, p1, v1, v9}, Lorg/telegram/messenger/exoplayer2/DefaultRenderersFactory;->buildMiscellaneousRenderers(Landroid/content/Context;Landroid/os/Handler;ILjava/util/ArrayList;)V

    .line 152
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/telegram/messenger/exoplayer2/Renderer;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/messenger/exoplayer2/Renderer;

    return-object v0
.end method
