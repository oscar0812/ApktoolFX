.class Lorg/telegram/ui/Components/EmbedBottomSheet$7;
.super Ljava/lang/Object;
.source "EmbedBottomSheet.java"

# interfaces
.implements Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmbedBottomSheet;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmbedBottomSheet;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/EmbedBottomSheet;

    .prologue
    .line 265
    iput-object p1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkInlinePermissons()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 515
    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 533
    :goto_0
    return v0

    .line 518
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 519
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 521
    :cond_2
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "AppName"

    const v3, 0x7f07007a

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "PermissionDrawAboveOtherApps"

    const v3, 0x7f0704ac

    .line 522
    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "PermissionOpenSettings"

    const v3, 0x7f0704b2

    .line 523
    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/EmbedBottomSheet$7$3;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/EmbedBottomSheet$7$3;-><init>(Lorg/telegram/ui/Components/EmbedBottomSheet$7;)V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    .line 531
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto :goto_0
.end method

.method public getTextureViewContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$3700(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object v0

    return-object v0
.end method

.method public onInitFailed()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 268
    iget-object v2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$200(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 269
    iget-object v2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$200(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/webkit/WebView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setKeepScreenOn(Z)V

    .line 270
    iget-object v2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/WebPlayerView;->setVisibility(I)V

    .line 271
    iget-object v2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/WebPlayerView;->getControlsView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 272
    iget-object v2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/WebPlayerView;->getTextureView()Landroid/view/TextureView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/TextureView;->setVisibility(I)V

    .line 273
    iget-object v2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/WebPlayerView;->getTextureImageView()Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 274
    iget-object v2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/WebPlayerView;->getTextureImageView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 276
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v2

    invoke-virtual {v2, v5, v5, v5, v6}, Lorg/telegram/ui/Components/WebPlayerView;->loadVideo(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Photo;Ljava/lang/String;Z)Z

    .line 277
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 278
    .local v0, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "Referer"

    const-string/jumbo v3, "http://youtube.com"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$200(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/webkit/WebView;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :goto_0
    return-void

    .line 281
    :catch_0
    move-exception v1

    .line 282
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onInlineSurfaceTextureReady()V
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->isInline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->dismissInternal()V

    .line 338
    :cond_0
    return-void
.end method

.method public onPlayStateChanged(Lorg/telegram/ui/Components/WebPlayerView;Z)V
    .locals 3
    .param p1, "playerView"    # Lorg/telegram/ui/Components/WebPlayerView;
    .param p2, "playing"    # Z

    .prologue
    .line 498
    if-eqz p2, :cond_0

    .line 500
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    :goto_0
    return-void

    .line 501
    :catch_0
    move-exception v0

    .line 502
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 506
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 507
    :catch_1
    move-exception v0

    .line 508
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onSharePressed()V
    .locals 0

    .prologue
    .line 494
    return-void
.end method

.method public onSwitchInlineMode(Landroid/view/View;ZFIZ)Landroid/view/TextureView;
    .locals 11
    .param p1, "controlsView"    # Landroid/view/View;
    .param p2, "inline"    # Z
    .param p3, "aspectRatio"    # F
    .param p4, "rotation"    # I
    .param p5, "animated"    # Z

    .prologue
    .line 447
    if-eqz p2, :cond_0

    .line 448
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 449
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    new-instance v1, Lorg/telegram/ui/Components/PipVideoView;

    invoke-direct {v1}, Lorg/telegram/ui/Components/PipVideoView;-><init>()V

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$002(Lorg/telegram/ui/Components/EmbedBottomSheet;Lorg/telegram/ui/Components/PipVideoView;)Lorg/telegram/ui/Components/PipVideoView;

    .line 450
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$000(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/PipVideoView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    move-object v3, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/PipVideoView;->show(Landroid/app/Activity;Lorg/telegram/ui/Components/EmbedBottomSheet;Landroid/view/View;FI)Landroid/view/TextureView;

    move-result-object v0

    .line 488
    :goto_0
    return-object v0

    .line 453
    :cond_0
    if-eqz p5, :cond_1

    .line 454
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$3002(Lorg/telegram/ui/Components/EmbedBottomSheet;Z)Z

    .line 456
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->getAspectRatioView()Landroid/view/View;

    move-result-object v9

    .line 457
    .local v9, "view":Landroid/view/View;
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$3100(Lorg/telegram/ui/Components/EmbedBottomSheet;)[I

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 458
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$3100(Lorg/telegram/ui/Components/EmbedBottomSheet;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v3, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$3200(Lorg/telegram/ui/Components/EmbedBottomSheet;)I

    move-result v3

    sub-int/2addr v2, v3

    aput v2, v0, v1

    .line 459
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$3100(Lorg/telegram/ui/Components/EmbedBottomSheet;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v2, v0, v1

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$3300(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    .line 461
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->getTextureView()Landroid/view/TextureView;

    move-result-object v8

    .line 462
    .local v8, "textureView":Landroid/view/TextureView;
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->getTextureImageView()Landroid/widget/ImageView;

    move-result-object v7

    .line 463
    .local v7, "textureImageView":Landroid/widget/ImageView;
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 464
    .local v6, "animatorSet":Landroid/animation/AnimatorSet;
    const/16 v0, 0xa

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v1, 0x0

    const-string/jumbo v2, "scaleX"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v4

    .line 465
    invoke-static {v7, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "scaleY"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v4

    .line 466
    invoke-static {v7, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "translationX"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    .line 467
    invoke-static {v5}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$3100(Lorg/telegram/ui/Components/EmbedBottomSheet;)[I

    move-result-object v5

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-float v5, v5

    aput v5, v3, v4

    invoke-static {v7, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "translationY"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    .line 468
    invoke-static {v5}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$3100(Lorg/telegram/ui/Components/EmbedBottomSheet;)[I

    move-result-object v5

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-float v5, v5

    aput v5, v3, v4

    invoke-static {v7, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "scaleX"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v4

    .line 469
    invoke-static {v8, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "scaleY"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v4

    .line 470
    invoke-static {v8, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "translationX"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    .line 471
    invoke-static {v5}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$3100(Lorg/telegram/ui/Components/EmbedBottomSheet;)[I

    move-result-object v5

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-float v5, v5

    aput v5, v3, v4

    invoke-static {v8, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "translationY"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    .line 472
    invoke-static {v5}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$3100(Lorg/telegram/ui/Components/EmbedBottomSheet;)[I

    move-result-object v5

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-float v5, v5

    aput v5, v3, v4

    invoke-static {v8, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    .line 473
    invoke-static {v2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$3400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;

    move-result-object v2

    const-string/jumbo v3, "translationY"

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v10, 0x0

    aput v10, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    .line 474
    invoke-static {v2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$3500(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v2

    const-string/jumbo v3, "alpha"

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v10, 0x33

    aput v10, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v1

    .line 464
    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 476
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 477
    const-wide/16 v0, 0xfa

    invoke-virtual {v6, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 478
    new-instance v0, Lorg/telegram/ui/Components/EmbedBottomSheet$7$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EmbedBottomSheet$7$2;-><init>(Lorg/telegram/ui/Components/EmbedBottomSheet$7;)V

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 484
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    .line 488
    .end local v6    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v7    # "textureImageView":Landroid/widget/ImageView;
    .end local v8    # "textureView":Landroid/view/TextureView;
    .end local v9    # "view":Landroid/view/View;
    :goto_1
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 486
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$3600(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    goto :goto_1
.end method

.method public onSwitchToFullscreen(Landroid/view/View;ZFIZ)Landroid/view/TextureView;
    .locals 6
    .param p1, "controlsView"    # Landroid/view/View;
    .param p2, "fullscreen"    # Z
    .param p3, "aspectRatio"    # F
    .param p4, "rotation"    # I
    .param p5, "byButton"    # Z

    .prologue
    const/4 v5, 0x0

    .line 288
    if-eqz p2, :cond_3

    .line 289
    iget-object v3, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$800(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 290
    iget-object v3, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$800(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/widget/FrameLayout;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 291
    iget-object v3, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$800(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/widget/FrameLayout;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v4}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/WebPlayerView;->getAspectRatioView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 292
    iget-object v3, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v3, v5}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1202(Lorg/telegram/ui/Components/EmbedBottomSheet;Z)Z

    .line 294
    iget-object v3, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v3, p5}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1302(Lorg/telegram/ui/Components/EmbedBottomSheet;Z)Z

    .line 295
    iget-object v3, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 297
    :try_start_0
    iget-object v3, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    iget-object v4, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v4}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v4

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1502(Lorg/telegram/ui/Components/EmbedBottomSheet;I)I

    .line 298
    if-eqz p5, :cond_0

    .line 299
    iget-object v3, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 300
    .local v2, "manager":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 301
    .local v0, "displayRotation":I
    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 302
    iget-object v3, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/app/Activity;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 307
    .end local v0    # "displayRotation":I
    .end local v2    # "manager":Landroid/view/WindowManager;
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1600(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;

    move-result-object v3

    const/16 v4, 0x404

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 325
    :cond_1
    :goto_1
    const/4 v3, 0x0

    return-object v3

    .line 304
    .restart local v0    # "displayRotation":I
    .restart local v2    # "manager":Landroid/view/WindowManager;
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 308
    .end local v0    # "displayRotation":I
    .end local v2    # "manager":Landroid/view/WindowManager;
    :catch_0
    move-exception v1

    .line 309
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 313
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$800(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/widget/FrameLayout;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 314
    iget-object v3, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v3, v5}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1302(Lorg/telegram/ui/Components/EmbedBottomSheet;Z)Z

    .line 316
    iget-object v3, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 318
    :try_start_1
    iget-object v3, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1700(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 319
    iget-object v3, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v4}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1500(Lorg/telegram/ui/Components/EmbedBottomSheet;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 320
    :catch_1
    move-exception v1

    .line 321
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onVideoSizeChanged(FI)V
    .locals 0
    .param p1, "aspectRatio"    # F
    .param p2, "rotation"    # I

    .prologue
    .line 331
    return-void
.end method

.method public prepareToSwitchInlineMode(ZLjava/lang/Runnable;FZ)V
    .locals 17
    .param p1, "inline"    # Z
    .param p2, "switchInlineModeRunnable"    # Ljava/lang/Runnable;
    .param p3, "aspectRatio"    # F
    .param p4, "animated"    # Z

    .prologue
    .line 342
    if-eqz p1, :cond_6

    .line 343
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v9}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/app/Activity;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 345
    :try_start_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v9}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1800(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 346
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v9}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1500(Lorg/telegram/ui/Components/EmbedBottomSheet;)I

    move-result v9

    const/4 v10, -0x2

    if-eq v9, v10, :cond_0

    .line 347
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v9}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/app/Activity;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v10}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1500(Lorg/telegram/ui/Components/EmbedBottomSheet;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v9}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$800(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/widget/FrameLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v9

    if-nez v9, :cond_1

    .line 355
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v9}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$2000(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v10}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1900(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v10

    const/high16 v11, 0x41200000    # 10.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 356
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v9}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$2100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 359
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/EmbedBottomSheet;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 360
    if-eqz p4, :cond_4

    .line 361
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v9}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/Components/WebPlayerView;->getTextureView()Landroid/view/TextureView;

    move-result-object v8

    .line 362
    .local v8, "textureView":Landroid/view/TextureView;
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v9}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/Components/WebPlayerView;->getControlsView()Landroid/view/View;

    move-result-object v3

    .line 363
    .local v3, "controlsView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v9}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/Components/WebPlayerView;->getTextureImageView()Landroid/widget/ImageView;

    move-result-object v7

    .line 365
    .local v7, "textureImageView":Landroid/widget/ImageView;
    invoke-static/range {p3 .. p3}, Lorg/telegram/ui/Components/PipVideoView;->getPipRect(F)Lorg/telegram/ui/Components/Rect;

    move-result-object v5

    .line 367
    .local v5, "rect":Lorg/telegram/ui/Components/Rect;
    iget v9, v5, Lorg/telegram/ui/Components/Rect;->width:F

    invoke-virtual {v8}, Landroid/view/TextureView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float v6, v9, v10

    .line 368
    .local v6, "scale":F
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-lt v9, v10, :cond_2

    .line 369
    iget v9, v5, Lorg/telegram/ui/Components/Rect;->y:F

    sget v10, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    iput v9, v5, Lorg/telegram/ui/Components/Rect;->y:F

    .line 372
    :cond_2
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 373
    .local v2, "animatorSet":Landroid/animation/AnimatorSet;
    const/16 v9, 0xc

    new-array v9, v9, [Landroid/animation/Animator;

    const/4 v10, 0x0

    const-string/jumbo v11, "scaleX"

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    aput v6, v12, v13

    .line 374
    invoke-static {v7, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "scaleY"

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    aput v6, v12, v13

    .line 375
    invoke-static {v7, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "translationX"

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    iget v14, v5, Lorg/telegram/ui/Components/Rect;->x:F

    aput v14, v12, v13

    .line 376
    invoke-static {v7, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string/jumbo v11, "translationY"

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    iget v14, v5, Lorg/telegram/ui/Components/Rect;->y:F

    aput v14, v12, v13

    .line 377
    invoke-static {v7, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string/jumbo v11, "scaleX"

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    aput v6, v12, v13

    .line 378
    invoke-static {v8, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string/jumbo v11, "scaleY"

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    aput v6, v12, v13

    .line 379
    invoke-static {v8, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string/jumbo v11, "translationX"

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    iget v14, v5, Lorg/telegram/ui/Components/Rect;->x:F

    aput v14, v12, v13

    .line 380
    invoke-static {v8, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const-string/jumbo v11, "translationY"

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    iget v14, v5, Lorg/telegram/ui/Components/Rect;->y:F

    aput v14, v12, v13

    .line 381
    invoke-static {v8, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0x8

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    .line 382
    invoke-static {v11}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$2200(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;

    move-result-object v11

    const-string/jumbo v12, "translationY"

    const/4 v13, 0x1

    new-array v13, v13, [F

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v15}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$2300(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v15

    const/high16 v16, 0x41200000    # 10.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    add-int v15, v15, v16

    int-to-float v15, v15

    aput v15, v13, v14

    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0x9

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    .line 383
    invoke-static {v11}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$2400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v11

    const-string/jumbo v12, "alpha"

    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x0

    const/4 v15, 0x0

    aput v15, v13, v14

    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0xa

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    .line 384
    invoke-static {v11}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$800(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/widget/FrameLayout;

    move-result-object v11

    const-string/jumbo v12, "alpha"

    const/4 v13, 0x1

    new-array v13, v13, [F

    const/4 v14, 0x0

    const/4 v15, 0x0

    aput v15, v13, v14

    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0xb

    const-string/jumbo v11, "alpha"

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput v14, v12, v13

    .line 385
    invoke-static {v3, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    aput-object v11, v9, v10

    .line 373
    invoke-virtual {v2, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 387
    new-instance v9, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v9}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v9}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 388
    const-wide/16 v10, 0xfa

    invoke-virtual {v2, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 389
    new-instance v9, Lorg/telegram/ui/Components/EmbedBottomSheet$7$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v9, v0, v1}, Lorg/telegram/ui/Components/EmbedBottomSheet$7$1;-><init>(Lorg/telegram/ui/Components/EmbedBottomSheet$7;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v9}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 399
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 443
    .end local v2    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v3    # "controlsView":Landroid/view/View;
    .end local v5    # "rect":Lorg/telegram/ui/Components/Rect;
    .end local v6    # "scale":F
    .end local v7    # "textureImageView":Landroid/widget/ImageView;
    .end local v8    # "textureView":Landroid/view/TextureView;
    :cond_3
    :goto_1
    return-void

    .line 349
    :catch_0
    move-exception v4

    .line 350
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 401
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_4
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v9}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$800(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/widget/FrameLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v9

    if-nez v9, :cond_5

    .line 402
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v9}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$800(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/widget/FrameLayout;

    move-result-object v9

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 403
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v9}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$800(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/widget/FrameLayout;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 405
    :cond_5
    invoke-interface/range {p2 .. p2}, Ljava/lang/Runnable;->run()V

    .line 406
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/EmbedBottomSheet;->dismissInternal()V

    goto :goto_1

    .line 409
    :cond_6
    sget-boolean v9, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePaused:Z

    if-eqz v9, :cond_7

    .line 410
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v9}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/app/Activity;

    move-result-object v9

    new-instance v10, Landroid/content/Intent;

    sget-object v11, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v12, Lorg/telegram/messenger/BringAppForegroundService;

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v9, v10}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 413
    :cond_7
    if-eqz p4, :cond_9

    .line 414
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v10}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$2500(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/content/DialogInterface$OnShowListener;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/EmbedBottomSheet;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 415
    invoke-static/range {p3 .. p3}, Lorg/telegram/ui/Components/PipVideoView;->getPipRect(F)Lorg/telegram/ui/Components/Rect;

    move-result-object v5

    .line 417
    .restart local v5    # "rect":Lorg/telegram/ui/Components/Rect;
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v9}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/Components/WebPlayerView;->getTextureView()Landroid/view/TextureView;

    move-result-object v8

    .line 418
    .restart local v8    # "textureView":Landroid/view/TextureView;
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v9}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/Components/WebPlayerView;->getTextureImageView()Landroid/widget/ImageView;

    move-result-object v7

    .line 419
    .restart local v7    # "textureImageView":Landroid/widget/ImageView;
    iget v9, v5, Lorg/telegram/ui/Components/Rect;->width:F

    invoke-virtual {v8}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iget v10, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v10, v10

    div-float v6, v9, v10

    .line 420
    .restart local v6    # "scale":F
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-lt v9, v10, :cond_8

    .line 421
    iget v9, v5, Lorg/telegram/ui/Components/Rect;->y:F

    sget v10, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    iput v9, v5, Lorg/telegram/ui/Components/Rect;->y:F

    .line 423
    :cond_8
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 424
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 425
    iget v9, v5, Lorg/telegram/ui/Components/Rect;->x:F

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 426
    iget v9, v5, Lorg/telegram/ui/Components/Rect;->y:F

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 427
    invoke-virtual {v8, v6}, Landroid/view/TextureView;->setScaleX(F)V

    .line 428
    invoke-virtual {v8, v6}, Landroid/view/TextureView;->setScaleY(F)V

    .line 429
    iget v9, v5, Lorg/telegram/ui/Components/Rect;->x:F

    invoke-virtual {v8, v9}, Landroid/view/TextureView;->setTranslationX(F)V

    .line 430
    iget v9, v5, Lorg/telegram/ui/Components/Rect;->y:F

    invoke-virtual {v8, v9}, Landroid/view/TextureView;->setTranslationY(F)V

    .line 435
    .end local v5    # "rect":Lorg/telegram/ui/Components/Rect;
    .end local v6    # "scale":F
    .end local v7    # "textureImageView":Landroid/widget/ImageView;
    .end local v8    # "textureView":Landroid/view/TextureView;
    :goto_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/EmbedBottomSheet;->setShowWithoutAnimation(Z)V

    .line 436
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/EmbedBottomSheet;->show()V

    .line 437
    if-eqz p4, :cond_3

    .line 438
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    const/4 v10, 0x4

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$2602(Lorg/telegram/ui/Components/EmbedBottomSheet;I)I

    .line 439
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v9}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$2700(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 440
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v9}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$2900(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v10}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$2800(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v10

    const/high16 v11, 0x41200000    # 10.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setTranslationY(F)V

    goto/16 :goto_1

    .line 432
    :cond_9
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v9}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$000(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/PipVideoView;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/Components/PipVideoView;->close()V

    .line 433
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$002(Lorg/telegram/ui/Components/EmbedBottomSheet;Lorg/telegram/ui/Components/PipVideoView;)Lorg/telegram/ui/Components/PipVideoView;

    goto :goto_2
.end method
