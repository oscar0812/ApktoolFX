.class Lorg/telegram/messenger/MediaController$16;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MediaController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MediaController;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 2691
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 2722
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2723
    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2742
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$5700(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$5700(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->isDrawingReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2743
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0, v1}, Lorg/telegram/messenger/MediaController;->access$5802(Lorg/telegram/messenger/MediaController;Z)Z

    .line 2744
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$5700(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->setDrawingReady(Z)V

    .line 2745
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$5400(Lorg/telegram/messenger/MediaController;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$5400(Lorg/telegram/messenger/MediaController;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2746
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$5400(Lorg/telegram/messenger/MediaController;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2749
    :cond_0
    return-void
.end method

.method public onStateChanged(ZI)V
    .locals 5
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 2694
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$2700(Lorg/telegram/messenger/MediaController;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2718
    :cond_0
    :goto_0
    return-void

    .line 2697
    :cond_1
    if-eq p2, v4, :cond_2

    if-eq p2, v3, :cond_2

    .line 2699
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$5200(Lorg/telegram/messenger/MediaController;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2710
    :goto_1
    const/4 v1, 0x3

    if-ne p2, v1, :cond_3

    .line 2711
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v1, v3}, Lorg/telegram/messenger/MediaController;->access$5302(Lorg/telegram/messenger/MediaController;Z)Z

    .line 2712
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$5400(Lorg/telegram/messenger/MediaController;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$5400(Lorg/telegram/messenger/MediaController;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2713
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$5400(Lorg/telegram/messenger/MediaController;)Landroid/widget/FrameLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 2700
    :catch_0
    move-exception v0

    .line 2701
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2705
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$5200(Lorg/telegram/messenger/MediaController;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2706
    :catch_1
    move-exception v0

    .line 2707
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2715
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$2700(Lorg/telegram/messenger/MediaController;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    if-ne p2, v4, :cond_0

    .line 2716
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-virtual {v1, v3, v3, v3}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZZ)V

    goto :goto_0
.end method

.method public onSurfaceDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 6
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2753
    iget-object v3, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v3}, Lorg/telegram/messenger/MediaController;->access$2700(Lorg/telegram/messenger/MediaController;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v3

    if-nez v3, :cond_1

    .line 2796
    :cond_0
    :goto_0
    return v1

    .line 2756
    :cond_1
    iget-object v3, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v3}, Lorg/telegram/messenger/MediaController;->access$5900(Lorg/telegram/messenger/MediaController;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 2757
    iget-object v3, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v3}, Lorg/telegram/messenger/MediaController;->access$5700(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 2758
    iget-object v3, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v3}, Lorg/telegram/messenger/MediaController;->access$5800(Lorg/telegram/messenger/MediaController;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2759
    iget-object v3, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v3}, Lorg/telegram/messenger/MediaController;->access$5700(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->setDrawingReady(Z)V

    .line 2761
    :cond_2
    iget-object v3, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v3}, Lorg/telegram/messenger/MediaController;->access$5700(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_3

    .line 2762
    iget-object v3, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v3}, Lorg/telegram/messenger/MediaController;->access$5400(Lorg/telegram/messenger/MediaController;)Landroid/widget/FrameLayout;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v4}, Lorg/telegram/messenger/MediaController;->access$5700(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2764
    :cond_3
    iget-object v3, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v3}, Lorg/telegram/messenger/MediaController;->access$6000(Lorg/telegram/messenger/MediaController;)Landroid/view/TextureView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    if-eq v3, p1, :cond_4

    .line 2765
    iget-object v3, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v3}, Lorg/telegram/messenger/MediaController;->access$6000(Lorg/telegram/messenger/MediaController;)Landroid/view/TextureView;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 2767
    :cond_4
    iget-object v3, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v3}, Lorg/telegram/messenger/MediaController;->access$2700(Lorg/telegram/messenger/MediaController;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v4}, Lorg/telegram/messenger/MediaController;->access$6000(Lorg/telegram/messenger/MediaController;)Landroid/view/TextureView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    .line 2769
    :cond_5
    iget-object v3, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v3, v1}, Lorg/telegram/messenger/MediaController;->access$5902(Lorg/telegram/messenger/MediaController;I)I

    move v1, v2

    .line 2770
    goto :goto_0

    .line 2771
    :cond_6
    iget-object v3, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v3}, Lorg/telegram/messenger/MediaController;->access$5900(Lorg/telegram/messenger/MediaController;)I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 2772
    iget-object v3, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v3}, Lorg/telegram/messenger/MediaController;->access$5200(Lorg/telegram/messenger/MediaController;)Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 2773
    iget-object v3, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v3}, Lorg/telegram/messenger/MediaController;->access$6100(Lorg/telegram/messenger/MediaController;)Lorg/telegram/ui/Components/PipRoundVideoView;

    move-result-object v3

    if-nez v3, :cond_7

    .line 2775
    :try_start_0
    iget-object v3, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    new-instance v4, Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-direct {v4}, Lorg/telegram/ui/Components/PipRoundVideoView;-><init>()V

    invoke-static {v3, v4}, Lorg/telegram/messenger/MediaController;->access$6102(Lorg/telegram/messenger/MediaController;Lorg/telegram/ui/Components/PipRoundVideoView;)Lorg/telegram/ui/Components/PipRoundVideoView;

    .line 2776
    iget-object v3, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v3}, Lorg/telegram/messenger/MediaController;->access$6100(Lorg/telegram/messenger/MediaController;)Lorg/telegram/ui/Components/PipRoundVideoView;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v4}, Lorg/telegram/messenger/MediaController;->access$5200(Lorg/telegram/messenger/MediaController;)Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lorg/telegram/messenger/MediaController$16$1;

    invoke-direct {v5, p0}, Lorg/telegram/messenger/MediaController$16$1;-><init>(Lorg/telegram/messenger/MediaController$16;)V

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/PipRoundVideoView;->show(Landroid/app/Activity;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2786
    :cond_7
    :goto_1
    iget-object v3, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v3}, Lorg/telegram/messenger/MediaController;->access$6100(Lorg/telegram/messenger/MediaController;)Lorg/telegram/ui/Components/PipRoundVideoView;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 2787
    iget-object v3, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v3}, Lorg/telegram/messenger/MediaController;->access$6100(Lorg/telegram/messenger/MediaController;)Lorg/telegram/ui/Components/PipRoundVideoView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/PipRoundVideoView;->getTextureView()Landroid/view/TextureView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    if-eq v3, p1, :cond_8

    .line 2788
    iget-object v3, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v3}, Lorg/telegram/messenger/MediaController;->access$6100(Lorg/telegram/messenger/MediaController;)Lorg/telegram/ui/Components/PipRoundVideoView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/PipRoundVideoView;->getTextureView()Landroid/view/TextureView;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 2790
    :cond_8
    iget-object v3, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v3}, Lorg/telegram/messenger/MediaController;->access$2700(Lorg/telegram/messenger/MediaController;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v4}, Lorg/telegram/messenger/MediaController;->access$6100(Lorg/telegram/messenger/MediaController;)Lorg/telegram/ui/Components/PipRoundVideoView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/PipRoundVideoView;->getTextureView()Landroid/view/TextureView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    .line 2793
    :cond_9
    iget-object v3, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v3, v1}, Lorg/telegram/messenger/MediaController;->access$5902(Lorg/telegram/messenger/MediaController;I)I

    move v1, v2

    .line 2794
    goto/16 :goto_0

    .line 2782
    :catch_0
    move-exception v0

    .line 2783
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/telegram/messenger/MediaController;->access$6102(Lorg/telegram/messenger/MediaController;Lorg/telegram/ui/Components/PipRoundVideoView;)Lorg/telegram/ui/Components/PipRoundVideoView;

    goto :goto_1
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 2802
    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "unappliedRotationDegrees"    # I
    .param p4, "pixelWidthHeightRatio"    # F

    .prologue
    .line 2727
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v1, p3}, Lorg/telegram/messenger/MediaController;->access$5502(Lorg/telegram/messenger/MediaController;I)I

    .line 2728
    const/16 v1, 0x5a

    if-eq p3, v1, :cond_0

    const/16 v1, 0x10e

    if-ne p3, v1, :cond_1

    .line 2729
    :cond_0
    move v0, p1

    .line 2730
    .local v0, "temp":I
    move p1, p2

    .line 2731
    move p2, v0

    .line 2733
    .end local v0    # "temp":I
    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    if-nez p2, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-static {v2, v1}, Lorg/telegram/messenger/MediaController;->access$5602(Lorg/telegram/messenger/MediaController;F)F

    .line 2735
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$5700(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2736
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$5700(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$5600(Lorg/telegram/messenger/MediaController;)F

    move-result v2

    iget-object v3, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v3}, Lorg/telegram/messenger/MediaController;->access$5500(Lorg/telegram/messenger/MediaController;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatio(FI)V

    .line 2738
    :cond_2
    return-void

    .line 2733
    :cond_3
    int-to-float v1, p1

    mul-float/2addr v1, p4

    int-to-float v3, p2

    div-float/2addr v1, v3

    goto :goto_0
.end method
