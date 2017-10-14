.class Lorg/telegram/ui/SecretMediaViewer$1;
.super Ljava/lang/Object;
.source "SecretMediaViewer.java"

# interfaces
.implements Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SecretMediaViewer;->preparePlayer(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SecretMediaViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SecretMediaViewer;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/SecretMediaViewer;

    .prologue
    .line 474
    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$1;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 516
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 517
    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 2

    .prologue
    .line 533
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$1;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v0}, Lorg/telegram/ui/SecretMediaViewer;->access$1100(Lorg/telegram/ui/SecretMediaViewer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 534
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$1;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/SecretMediaViewer;->access$1102(Lorg/telegram/ui/SecretMediaViewer;Z)Z

    .line 535
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$1;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v0}, Lorg/telegram/ui/SecretMediaViewer;->access$1200(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;->invalidate()V

    .line 537
    :cond_0
    return-void
.end method

.method public onStateChanged(ZI)V
    .locals 6
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 477
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$1;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v1}, Lorg/telegram/ui/SecretMediaViewer;->access$500(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$1;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v1}, Lorg/telegram/ui/SecretMediaViewer;->access$400(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    if-nez v1, :cond_1

    .line 512
    :cond_0
    :goto_0
    return-void

    .line 480
    :cond_1
    if-eq p2, v4, :cond_3

    if-eq p2, v3, :cond_3

    .line 482
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$1;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v1}, Lorg/telegram/ui/SecretMediaViewer;->access$600(Lorg/telegram/ui/SecretMediaViewer;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :goto_1
    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$1;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v1}, Lorg/telegram/ui/SecretMediaViewer;->access$200(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    .line 494
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$1;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v1}, Lorg/telegram/ui/SecretMediaViewer;->access$200(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->setVisibility(I)V

    .line 496
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$1;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v1}, Lorg/telegram/ui/SecretMediaViewer;->access$500(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eq p2, v4, :cond_4

    .line 497
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$1;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v1}, Lorg/telegram/ui/SecretMediaViewer;->access$800(Lorg/telegram/ui/SecretMediaViewer;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 498
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$1;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v1, v3}, Lorg/telegram/ui/SecretMediaViewer;->access$802(Lorg/telegram/ui/SecretMediaViewer;Z)Z

    goto :goto_0

    .line 483
    :catch_0
    move-exception v0

    .line 484
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 488
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$1;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v1}, Lorg/telegram/ui/SecretMediaViewer;->access$600(Lorg/telegram/ui/SecretMediaViewer;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 489
    :catch_1
    move-exception v0

    .line 490
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 500
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$1;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v1}, Lorg/telegram/ui/SecretMediaViewer;->access$800(Lorg/telegram/ui/SecretMediaViewer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 501
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$1;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v1, v5}, Lorg/telegram/ui/SecretMediaViewer;->access$802(Lorg/telegram/ui/SecretMediaViewer;Z)Z

    .line 502
    if-ne p2, v4, :cond_0

    .line 503
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$1;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v1, v3}, Lorg/telegram/ui/SecretMediaViewer;->access$902(Lorg/telegram/ui/SecretMediaViewer;Z)Z

    .line 504
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$1;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v1}, Lorg/telegram/ui/SecretMediaViewer;->access$1000(Lorg/telegram/ui/SecretMediaViewer;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 505
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$1;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-virtual {v1, v3, v3}, Lorg/telegram/ui/SecretMediaViewer;->closePhoto(ZZ)V

    goto/16 :goto_0

    .line 507
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$1;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v1}, Lorg/telegram/ui/SecretMediaViewer;->access$500(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    .line 508
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$1;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v1}, Lorg/telegram/ui/SecretMediaViewer;->access$500(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    goto/16 :goto_0
.end method

.method public onSurfaceDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 541
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 547
    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "unappliedRotationDegrees"    # I
    .param p4, "pixelWidthHeightRatio"    # F

    .prologue
    .line 521
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$1;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v1}, Lorg/telegram/ui/SecretMediaViewer;->access$200(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 522
    const/16 v1, 0x5a

    if-eq p3, v1, :cond_0

    const/16 v1, 0x10e

    if-ne p3, v1, :cond_1

    .line 523
    :cond_0
    move v0, p1

    .line 524
    .local v0, "temp":I
    move p1, p2

    .line 525
    move p2, v0

    .line 527
    .end local v0    # "temp":I
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$1;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v1}, Lorg/telegram/ui/SecretMediaViewer;->access$200(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v2

    if-nez p2, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v2, v1, p3}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatio(FI)V

    .line 529
    :cond_2
    return-void

    .line 527
    :cond_3
    int-to-float v1, p1

    mul-float/2addr v1, p4

    int-to-float v3, p2

    div-float/2addr v1, v3

    goto :goto_0
.end method
