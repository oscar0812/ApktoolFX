.class public Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;
.super Ljava/lang/Object;
.source "SimpleExoPlayer.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/ExoPlayer;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;,
        Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SimpleExoPlayer"


# instance fields
.field private audioDebugListener:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

.field private audioDecoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

.field private audioFormat:Lorg/telegram/messenger/exoplayer2/Format;

.field private final audioRendererCount:I

.field private audioSessionId:I

.field private audioStreamType:I

.field private audioVolume:F

.field private final componentListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;

.field private metadataOutput:Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;

.field private needSetSurface:Z

.field private ownsSurface:Z

.field private final player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

.field protected final renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

.field private surface:Landroid/view/Surface;

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private textOutput:Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;

.field private textureView:Landroid/view/TextureView;

.field private videoDebugListener:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

.field private videoDecoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

.field private videoFormat:Lorg/telegram/messenger/exoplayer2/Format;

.field private videoListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;

.field private final videoRendererCount:I

.field private videoScalingMode:I


# direct methods
.method protected constructor <init>(Lorg/telegram/messenger/exoplayer2/RenderersFactory;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;Lorg/telegram/messenger/exoplayer2/LoadControl;)V
    .locals 11
    .param p1, "renderersFactory"    # Lorg/telegram/messenger/exoplayer2/RenderersFactory;
    .param p2, "trackSelector"    # Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;
    .param p3, "loadControl"    # Lorg/telegram/messenger/exoplayer2/LoadControl;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-boolean v10, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->needSetSurface:Z

    .line 117
    new-instance v0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;-><init>(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$1;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->componentListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;

    .line 118
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->componentListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->componentListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->componentListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->componentListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/RenderersFactory;->createRenderers(Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;)[Lorg/telegram/messenger/exoplayer2/Renderer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    .line 122
    const/4 v8, 0x0

    .line 123
    .local v8, "videoRendererCount":I
    const/4 v6, 0x0

    .line 124
    .local v6, "audioRendererCount":I
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v2, v1

    move v0, v9

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v7, v1, v0

    .line 125
    .local v7, "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    invoke-interface {v7}, Lorg/telegram/messenger/exoplayer2/Renderer;->getTrackType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 124
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :pswitch_0
    add-int/lit8 v8, v8, 0x1

    .line 128
    goto :goto_1

    .line 130
    :pswitch_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 134
    .end local v7    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    :cond_0
    iput v8, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoRendererCount:I

    .line 135
    iput v6, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioRendererCount:I

    .line 138
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioVolume:F

    .line 139
    iput v9, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioSessionId:I

    .line 140
    const/4 v0, 0x3

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioStreamType:I

    .line 141
    iput v10, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoScalingMode:I

    .line 144
    new-instance v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    invoke-direct {v0, v1, p2, p3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;-><init>([Lorg/telegram/messenger/exoplayer2/Renderer;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;Lorg/telegram/messenger/exoplayer2/LoadControl;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    .line 145
    return-void

    .line 125
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->textOutput:Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;

    return-object v0
.end method

.method static synthetic access$102(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;
    .param p1, "x1"    # Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    .prologue
    .line 47
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoDecoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->metadataOutput:Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Landroid/view/Surface;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;
    .param p1, "x1"    # Landroid/view/Surface;
    .param p2, "x2"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    .prologue
    .line 47
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->needSetSurface:Z

    return v0
.end method

.method static synthetic access$1302(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->needSetSurface:Z

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoDebugListener:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    return-object v0
.end method

.method static synthetic access$302(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Lorg/telegram/messenger/exoplayer2/Format;)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;
    .param p1, "x1"    # Lorg/telegram/messenger/exoplayer2/Format;

    .prologue
    .line 47
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoFormat:Lorg/telegram/messenger/exoplayer2/Format;

    return-object p1
.end method

.method static synthetic access$400(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Landroid/view/Surface;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->surface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$602(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;
    .param p1, "x1"    # Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    .prologue
    .line 47
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioDecoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    return-object p1
.end method

.method static synthetic access$700(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioDebugListener:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    return-object v0
.end method

.method static synthetic access$802(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioSessionId:I

    return p1
.end method

.method static synthetic access$902(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Lorg/telegram/messenger/exoplayer2/Format;)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;
    .param p1, "x1"    # Lorg/telegram/messenger/exoplayer2/Format;

    .prologue
    .line 47
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioFormat:Lorg/telegram/messenger/exoplayer2/Format;

    return-object p1
.end method

.method private removeSurfaceCallbacks()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 657
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->textureView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->componentListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;

    if-eq v0, v1, :cond_2

    .line 659
    const-string/jumbo v0, "SimpleExoPlayer"

    const-string/jumbo v1, "SurfaceTextureListener already unset or replaced."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :goto_0
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->textureView:Landroid/view/TextureView;

    .line 665
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    .line 666
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->componentListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 667
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 669
    :cond_1
    return-void

    .line 661
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    goto :goto_0
.end method

.method private setVideoSurfaceInternal(Landroid/view/Surface;Z)V
    .locals 9
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "ownsSurface"    # Z

    .prologue
    .line 674
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoRendererCount:I

    new-array v2, v4, [Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;

    .line 675
    .local v2, "messages":[Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;
    const/4 v0, 0x0

    .line 676
    .local v0, "count":I
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v6, v5

    const/4 v4, 0x0

    move v1, v0

    .end local v0    # "count":I
    .local v1, "count":I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v3, v5, v4

    .line 677
    .local v3, "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    invoke-interface {v3}, Lorg/telegram/messenger/exoplayer2/Renderer;->getTrackType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 678
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    new-instance v7, Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;

    const/4 v8, 0x1

    invoke-direct {v7, v3, v8, p1}, Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;-><init>(Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    aput-object v7, v2, v1

    .line 676
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_0

    .line 681
    .end local v3    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    :cond_0
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->surface:Landroid/view/Surface;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->surface:Landroid/view/Surface;

    if-eq v4, p1, :cond_2

    .line 683
    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->ownsSurface:Z

    if-eqz v4, :cond_1

    .line 684
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->surface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->release()V

    .line 687
    :cond_1
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v4, v2}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->blockingSendMessages([Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    .line 691
    :goto_2
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->surface:Landroid/view/Surface;

    .line 692
    iput-boolean p2, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->ownsSurface:Z

    .line 693
    return-void

    .line 689
    :cond_2
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v4, v2}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->sendMessages([Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    goto :goto_2

    .restart local v3    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    :cond_3
    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_1
.end method


# virtual methods
.method public addListener(Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;

    .prologue
    .line 489
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->addListener(Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;)V

    .line 490
    return-void
.end method

.method public varargs blockingSendMessages([Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    .locals 1
    .param p1, "messages"    # [Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;

    .prologue
    .line 581
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->blockingSendMessages([Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    .line 582
    return-void
.end method

.method public clearMetadataOutput(Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;)V
    .locals 1
    .param p1, "output"    # Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;

    .prologue
    .line 462
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->metadataOutput:Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;

    if-ne v0, p1, :cond_0

    .line 463
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->metadataOutput:Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;

    .line 465
    :cond_0
    return-void
.end method

.method public clearTextOutput(Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;)V
    .locals 1
    .param p1, "output"    # Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;

    .prologue
    .line 442
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->textOutput:Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;

    if-ne v0, p1, :cond_0

    .line 443
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->textOutput:Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;

    .line 445
    :cond_0
    return-void
.end method

.method public clearVideoListener(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;

    .prologue
    .line 422
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;

    if-ne v0, p1, :cond_0

    .line 423
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;

    .line 425
    :cond_0
    return-void
.end method

.method public clearVideoSurface()V
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->setVideoSurface(Landroid/view/Surface;)V

    .line 181
    return-void
.end method

.method public clearVideoSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 208
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->surface:Landroid/view/Surface;

    if-ne p1, v0, :cond_0

    .line 209
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->setVideoSurface(Landroid/view/Surface;)V

    .line 211
    :cond_0
    return-void
.end method

.method public clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 237
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_0

    .line 238
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 240
    :cond_0
    return-void
.end method

.method public clearVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 1
    .param p1, "surfaceView"    # Landroid/view/SurfaceView;

    .prologue
    .line 259
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 260
    return-void

    .line 259
    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    goto :goto_0
.end method

.method public clearVideoTextureView(Landroid/view/TextureView;)V
    .locals 1
    .param p1, "textureView"    # Landroid/view/TextureView;

    .prologue
    .line 294
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->textureView:Landroid/view/TextureView;

    if-ne p1, v0, :cond_0

    .line 295
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->setVideoTextureView(Landroid/view/TextureView;)V

    .line 297
    :cond_0
    return-void
.end method

.method public getAudioDecoderCounters()Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioDecoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    return-object v0
.end method

.method public getAudioFormat()Lorg/telegram/messenger/exoplayer2/Format;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioFormat:Lorg/telegram/messenger/exoplayer2/Format;

    return-object v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 390
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioSessionId:I

    return v0
.end method

.method public getAudioStreamType()I
    .locals 1

    .prologue
    .line 326
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioStreamType:I

    return v0
.end method

.method public getBufferedPercentage()I
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->getBufferedPercentage()I

    move-result v0

    return v0
.end method

.method public getBufferedPosition()J
    .locals 2

    .prologue
    .line 636
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->getBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentManifest()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->getCurrentManifest()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPeriodIndex()I
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->getCurrentPeriodIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .prologue
    .line 631
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentTimeline()Lorg/telegram/messenger/exoplayer2/Timeline;
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->getCurrentTimeline()Lorg/telegram/messenger/exoplayer2/Timeline;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTrackGroups()Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->getCurrentTrackGroups()Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTrackSelections()Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->getCurrentTrackSelections()Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentWindowIndex()I
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->getCurrentWindowIndex()I

    move-result v0

    return v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 626
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->getPlayWhenReady()Z

    move-result v0

    return v0
.end method

.method public getPlaybackParameters()Lorg/telegram/messenger/exoplayer2/PlaybackParameters;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->getPlaybackParameters()Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackState()I
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->getPlaybackState()I

    move-result v0

    return v0
.end method

.method public getRendererCount()I
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->getRendererCount()I

    move-result v0

    return v0
.end method

.method public getRendererType(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 591
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->getRendererType(I)I

    move-result v0

    return v0
.end method

.method public getVideoDecoderCounters()Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoDecoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    return-object v0
.end method

.method public getVideoFormat()Lorg/telegram/messenger/exoplayer2/Format;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoFormat:Lorg/telegram/messenger/exoplayer2/Format;

    return-object v0
.end method

.method public getVideoScalingMode()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoScalingMode:I

    return v0
.end method

.method public getVolume()F
    .locals 1

    .prologue
    .line 350
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioVolume:F

    return v0
.end method

.method public isCurrentWindowDynamic()Z
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->isCurrentWindowDynamic()Z

    move-result v0

    return v0
.end method

.method public isCurrentWindowSeekable()Z
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->isCurrentWindowSeekable()Z

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->isLoading()Z

    move-result v0

    return v0
.end method

.method public prepare(Lorg/telegram/messenger/exoplayer2/source/MediaSource;)V
    .locals 1
    .param p1, "mediaSource"    # Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    .prologue
    .line 504
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->prepare(Lorg/telegram/messenger/exoplayer2/source/MediaSource;)V

    .line 505
    return-void
.end method

.method public prepare(Lorg/telegram/messenger/exoplayer2/source/MediaSource;ZZ)V
    .locals 1
    .param p1, "mediaSource"    # Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    .param p2, "resetPosition"    # Z
    .param p3, "resetState"    # Z

    .prologue
    .line 509
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->prepare(Lorg/telegram/messenger/exoplayer2/source/MediaSource;ZZ)V

    .line 510
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->release()V

    .line 565
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->removeSurfaceCallbacks()V

    .line 566
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 567
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->ownsSurface:Z

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 570
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->surface:Landroid/view/Surface;

    .line 572
    :cond_1
    return-void
.end method

.method public removeListener(Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;

    .prologue
    .line 494
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->removeListener(Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;)V

    .line 495
    return-void
.end method

.method public seekTo(IJ)V
    .locals 2
    .param p1, "windowIndex"    # I
    .param p2, "positionMs"    # J

    .prologue
    .line 544
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->seekTo(IJ)V

    .line 545
    return-void
.end method

.method public seekTo(J)V
    .locals 1
    .param p1, "positionMs"    # J

    .prologue
    .line 539
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->seekTo(J)V

    .line 540
    return-void
.end method

.method public seekToDefaultPosition()V
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->seekToDefaultPosition()V

    .line 530
    return-void
.end method

.method public seekToDefaultPosition(I)V
    .locals 1
    .param p1, "windowIndex"    # I

    .prologue
    .line 534
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->seekToDefaultPosition(I)V

    .line 535
    return-void
.end method

.method public varargs sendMessages([Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    .locals 1
    .param p1, "messages"    # [Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;

    .prologue
    .line 576
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->sendMessages([Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    .line 577
    return-void
.end method

.method public setAudioDebugListener(Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    .prologue
    .line 482
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioDebugListener:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    .line 483
    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 10
    .param p1, "audioStreamType"    # I

    .prologue
    .line 311
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioStreamType:I

    .line 312
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioRendererCount:I

    new-array v2, v4, [Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;

    .line 313
    .local v2, "messages":[Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;
    const/4 v0, 0x0

    .line 314
    .local v0, "count":I
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v6, v5

    const/4 v4, 0x0

    move v1, v0

    .end local v0    # "count":I
    .local v1, "count":I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v3, v5, v4

    .line 315
    .local v3, "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    invoke-interface {v3}, Lorg/telegram/messenger/exoplayer2/Renderer;->getTrackType()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 316
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    new-instance v7, Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;

    const/4 v8, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v3, v8, v9}, Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;-><init>(Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    aput-object v7, v2, v1

    .line 314
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_0

    .line 319
    .end local v3    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    :cond_0
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v4, v2}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->sendMessages([Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    .line 320
    return-void

    .restart local v3    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    :cond_1
    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_1
.end method

.method public setMetadataOutput(Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;)V
    .locals 0
    .param p1, "output"    # Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;

    .prologue
    .line 453
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->metadataOutput:Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;

    .line 454
    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 1
    .param p1, "playWhenReady"    # Z

    .prologue
    .line 514
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->setPlayWhenReady(Z)V

    .line 515
    return-void
.end method

.method public setPlaybackParameters(Lorg/telegram/messenger/exoplayer2/PlaybackParameters;)V
    .locals 1
    .param p1, "playbackParameters"    # Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    .prologue
    .line 549
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->setPlaybackParameters(Lorg/telegram/messenger/exoplayer2/PlaybackParameters;)V

    .line 550
    return-void
.end method

.method public setPlaybackParams(Landroid/media/PlaybackParams;)V
    .locals 3
    .param p1, "params"    # Landroid/media/PlaybackParams;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 363
    if-eqz p1, :cond_0

    .line 364
    invoke-virtual {p1}, Landroid/media/PlaybackParams;->allowDefaults()Landroid/media/PlaybackParams;

    .line 365
    new-instance v0, Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    invoke-virtual {p1}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result v1

    invoke-virtual {p1}, Landroid/media/PlaybackParams;->getPitch()F

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/PlaybackParameters;-><init>(FF)V

    .line 369
    .local v0, "playbackParameters":Lorg/telegram/messenger/exoplayer2/PlaybackParameters;
    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->setPlaybackParameters(Lorg/telegram/messenger/exoplayer2/PlaybackParameters;)V

    .line 370
    return-void

    .line 367
    .end local v0    # "playbackParameters":Lorg/telegram/messenger/exoplayer2/PlaybackParameters;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "playbackParameters":Lorg/telegram/messenger/exoplayer2/PlaybackParameters;
    goto :goto_0
.end method

.method public setTextOutput(Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;)V
    .locals 0
    .param p1, "output"    # Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;

    .prologue
    .line 433
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->textOutput:Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;

    .line 434
    return-void
.end method

.method public setVideoDebugListener(Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    .prologue
    .line 473
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoDebugListener:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    .line 474
    return-void
.end method

.method public setVideoListener(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;

    .prologue
    .line 413
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;

    .line 414
    return-void
.end method

.method public setVideoScalingMode(I)V
    .locals 10
    .param p1, "videoScalingMode"    # I

    .prologue
    .line 156
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoScalingMode:I

    .line 157
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoRendererCount:I

    new-array v2, v4, [Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;

    .line 158
    .local v2, "messages":[Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;
    const/4 v0, 0x0

    .line 159
    .local v0, "count":I
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v6, v5

    const/4 v4, 0x0

    move v1, v0

    .end local v0    # "count":I
    .local v1, "count":I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v3, v5, v4

    .line 160
    .local v3, "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    invoke-interface {v3}, Lorg/telegram/messenger/exoplayer2/Renderer;->getTrackType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 161
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    new-instance v7, Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;

    const/4 v8, 0x4

    .line 162
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v3, v8, v9}, Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;-><init>(Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    aput-object v7, v2, v1

    .line 159
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_0

    .line 165
    .end local v3    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    :cond_0
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v4, v2}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->sendMessages([Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    .line 166
    return-void

    .restart local v3    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    :cond_1
    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_1
.end method

.method public setVideoSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 197
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->removeSurfaceCallbacks()V

    .line 198
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    .line 199
    return-void
.end method

.method public setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v1, 0x0

    .line 220
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->removeSurfaceCallbacks()V

    .line 221
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 222
    if-nez p1, :cond_0

    .line 223
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    .line 228
    :goto_0
    return-void

    .line 225
    :cond_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    .line 226
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->componentListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    goto :goto_0
.end method

.method public setVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 1
    .param p1, "surfaceView"    # Landroid/view/SurfaceView;

    .prologue
    .line 249
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 250
    return-void

    .line 249
    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    goto :goto_0
.end method

.method public setVideoTextureView(Landroid/view/TextureView;)V
    .locals 5
    .param p1, "textureView"    # Landroid/view/TextureView;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 269
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->textureView:Landroid/view/TextureView;

    if-ne v2, p1, :cond_0

    .line 285
    :goto_0
    return-void

    .line 272
    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->removeSurfaceCallbacks()V

    .line 273
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->textureView:Landroid/view/TextureView;

    .line 274
    iput-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->needSetSurface:Z

    .line 275
    if-nez p1, :cond_1

    .line 276
    invoke-direct {p0, v1, v4}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    goto :goto_0

    .line 278
    :cond_1
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 279
    const-string/jumbo v2, "SimpleExoPlayer"

    const-string/jumbo v3, "Replacing existing SurfaceTextureListener."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_2
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 282
    .local v0, "surfaceTexture":Landroid/graphics/SurfaceTexture;
    if-nez v0, :cond_3

    :goto_1
    invoke-direct {p0, v1, v4}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    .line 283
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->componentListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;

    invoke-virtual {p1, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    goto :goto_0

    .line 282
    :cond_3
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    goto :goto_1
.end method

.method public setVolume(F)V
    .locals 10
    .param p1, "audioVolume"    # F

    .prologue
    .line 335
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioVolume:F

    .line 336
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioRendererCount:I

    new-array v2, v4, [Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;

    .line 337
    .local v2, "messages":[Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;
    const/4 v0, 0x0

    .line 338
    .local v0, "count":I
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v6, v5

    const/4 v4, 0x0

    move v1, v0

    .end local v0    # "count":I
    .local v1, "count":I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v3, v5, v4

    .line 339
    .local v3, "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    invoke-interface {v3}, Lorg/telegram/messenger/exoplayer2/Renderer;->getTrackType()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 340
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    new-instance v7, Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;

    const/4 v8, 0x2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-direct {v7, v3, v8, v9}, Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;-><init>(Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    aput-object v7, v2, v1

    .line 338
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_0

    .line 343
    .end local v3    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    :cond_0
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v4, v2}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->sendMessages([Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    .line 344
    return-void

    .restart local v3    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    :cond_1
    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_1
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->stop()V

    .line 560
    return-void
.end method
