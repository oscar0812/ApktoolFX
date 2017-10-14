.class public Lorg/telegram/ui/StickerPreviewViewer;
.super Ljava/lang/Object;
.source "StickerPreviewViewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;,
        Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;
    }
.end annotation


# static fields
.field private static volatile Instance:Lorg/telegram/ui/StickerPreviewViewer;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static textPaint:Landroid/text/TextPaint;


# instance fields
.field private backgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

.field private centerImage:Lorg/telegram/messenger/ImageReceiver;

.field private containerView:Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;

.field private currentSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

.field private currentSticker:Lorg/telegram/tgnet/TLRPC$Document;

.field private currentStickerPreviewCell:Landroid/view/View;

.field private delegate:Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;

.field private isVisible:Z

.field private keyboardHeight:I

.field private lastUpdateTime:J

.field private openStickerPreviewRunnable:Ljava/lang/Runnable;

.field private parentActivity:Landroid/app/Activity;

.field private showProgress:F

.field private showSheetRunnable:Ljava/lang/Runnable;

.field private startX:I

.field private startY:I

.field private stickerEmojiLayout:Landroid/text/StaticLayout;

.field private visibleDialog:Landroid/app/Dialog;

.field private windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private windowView:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/ui/StickerPreviewViewer;->Instance:Lorg/telegram/ui/StickerPreviewViewer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, 0x71000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->backgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    .line 86
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->isVisible:Z

    .line 91
    const/high16 v0, 0x43480000    # 200.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->keyboardHeight:I

    .line 92
    new-instance v0, Lorg/telegram/ui/StickerPreviewViewer$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/StickerPreviewViewer$1;-><init>(Lorg/telegram/ui/StickerPreviewViewer;)V

    iput-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->showSheetRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/StickerPreviewViewer;Landroid/graphics/Canvas;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/StickerPreviewViewer;
    .param p1, "x1"    # Landroid/graphics/Canvas;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/telegram/ui/StickerPreviewViewer;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/StickerPreviewViewer;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/StickerPreviewViewer;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->parentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/StickerPreviewViewer;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/StickerPreviewViewer;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->currentSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/StickerPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/StickerPreviewViewer;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->currentSticker:Lorg/telegram/tgnet/TLRPC$Document;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/StickerPreviewViewer;)Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/StickerPreviewViewer;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->delegate:Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/StickerPreviewViewer;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/StickerPreviewViewer;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->visibleDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$502(Lorg/telegram/ui/StickerPreviewViewer;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/StickerPreviewViewer;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 53
    iput-object p1, p0, Lorg/telegram/ui/StickerPreviewViewer;->visibleDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/StickerPreviewViewer;)Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/StickerPreviewViewer;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->containerView:Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/StickerPreviewViewer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/StickerPreviewViewer;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->openStickerPreviewRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$702(Lorg/telegram/ui/StickerPreviewViewer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/StickerPreviewViewer;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 53
    iput-object p1, p0, Lorg/telegram/ui/StickerPreviewViewer;->openStickerPreviewRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/StickerPreviewViewer;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/StickerPreviewViewer;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/StickerPreviewViewer;)Lorg/telegram/messenger/ImageReceiver;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/StickerPreviewViewer;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    return-object v0
.end method

.method public static getInstance()Lorg/telegram/ui/StickerPreviewViewer;
    .locals 4

    .prologue
    .line 161
    sget-object v0, Lorg/telegram/ui/StickerPreviewViewer;->Instance:Lorg/telegram/ui/StickerPreviewViewer;

    .line 162
    .local v0, "localInstance":Lorg/telegram/ui/StickerPreviewViewer;
    if-nez v0, :cond_1

    .line 163
    const-class v3, Lorg/telegram/ui/PhotoViewer;

    monitor-enter v3

    .line 164
    :try_start_0
    sget-object v0, Lorg/telegram/ui/StickerPreviewViewer;->Instance:Lorg/telegram/ui/StickerPreviewViewer;

    .line 165
    if-nez v0, :cond_0

    .line 166
    new-instance v1, Lorg/telegram/ui/StickerPreviewViewer;

    invoke-direct {v1}, Lorg/telegram/ui/StickerPreviewViewer;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "localInstance":Lorg/telegram/ui/StickerPreviewViewer;
    .local v1, "localInstance":Lorg/telegram/ui/StickerPreviewViewer;
    :try_start_1
    sput-object v1, Lorg/telegram/ui/StickerPreviewViewer;->Instance:Lorg/telegram/ui/StickerPreviewViewer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 168
    .end local v1    # "localInstance":Lorg/telegram/ui/StickerPreviewViewer;
    .restart local v0    # "localInstance":Lorg/telegram/ui/StickerPreviewViewer;
    :cond_0
    :try_start_2
    monitor-exit v3

    .line 170
    :cond_1
    return-object v0

    .line 168
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "localInstance":Lorg/telegram/ui/StickerPreviewViewer;
    .restart local v1    # "localInstance":Lorg/telegram/ui/StickerPreviewViewer;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "localInstance":Lorg/telegram/ui/StickerPreviewViewer;
    .restart local v0    # "localInstance":Lorg/telegram/ui/StickerPreviewViewer;
    goto :goto_0
.end method

.method private onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .prologue
    .line 548
    iget-object v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->containerView:Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->backgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    if-nez v9, :cond_1

    .line 609
    :cond_0
    :goto_0
    return-void

    .line 551
    :cond_1
    iget-object v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->backgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    const/high16 v10, 0x43340000    # 180.0f

    iget v11, p0, Lorg/telegram/ui/StickerPreviewViewer;->showProgress:F

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 552
    iget-object v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->backgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/telegram/ui/StickerPreviewViewer;->containerView:Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v12}, Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;->getWidth()I

    move-result v12

    iget-object v13, p0, Lorg/telegram/ui/StickerPreviewViewer;->containerView:Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v13}, Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;->getHeight()I

    move-result v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/drawable/ColorDrawable;->setBounds(IIII)V

    .line 553
    iget-object v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->backgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v9, p1}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 555
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 556
    iget-object v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->containerView:Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v9}, Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;->getWidth()I

    move-result v9

    iget-object v10, p0, Lorg/telegram/ui/StickerPreviewViewer;->containerView:Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v10}, Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;->getHeight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v9, v9

    const v10, 0x3fe66666    # 1.8f

    div-float/2addr v9, v10

    float-to-int v7, v9

    .line 557
    .local v7, "size":I
    iget-object v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->containerView:Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v9}, Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v10, v9

    div-int/lit8 v9, v7, 0x2

    sget v11, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v11, v9

    iget-object v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->stickerEmojiLayout:Landroid/text/StaticLayout;

    if-eqz v9, :cond_4

    const/high16 v9, 0x42200000    # 40.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    :goto_1
    add-int/2addr v9, v11

    iget-object v11, p0, Lorg/telegram/ui/StickerPreviewViewer;->containerView:Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v11}, Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;->getHeight()I

    move-result v11

    iget v12, p0, Lorg/telegram/ui/StickerPreviewViewer;->keyboardHeight:I

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p1, v10, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 558
    iget-object v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 559
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 560
    const v9, 0x3f4ccccd    # 0.8f

    iget v10, p0, Lorg/telegram/ui/StickerPreviewViewer;->showProgress:F

    mul-float/2addr v9, v10

    const v10, 0x3f4ccccd    # 0.8f

    div-float v6, v9, v10

    .line 561
    .local v6, "scale":F
    int-to-float v9, v7

    mul-float/2addr v9, v6

    float-to-int v7, v9

    .line 562
    iget-object v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iget v10, p0, Lorg/telegram/ui/StickerPreviewViewer;->showProgress:F

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 563
    iget-object v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    neg-int v10, v7

    div-int/lit8 v10, v10, 0x2

    neg-int v11, v7

    div-int/lit8 v11, v11, 0x2

    invoke-virtual {v9, v10, v11, v7, v7}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(IIII)V

    .line 564
    iget-object v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v9, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 566
    .end local v6    # "scale":F
    :cond_2
    iget-object v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->stickerEmojiLayout:Landroid/text/StaticLayout;

    if-eqz v9, :cond_3

    .line 567
    const/high16 v9, 0x42480000    # 50.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    iget-object v10, p0, Lorg/telegram/ui/StickerPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v10}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()I

    move-result v10

    neg-int v10, v10

    div-int/lit8 v10, v10, 0x2

    const/high16 v11, 0x41f00000    # 30.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 568
    iget-object v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->stickerEmojiLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 570
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 571
    iget-boolean v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->isVisible:Z

    if-eqz v9, :cond_5

    .line 572
    iget v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->showProgress:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_0

    .line 573
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 574
    .local v4, "newTime":J
    iget-wide v10, p0, Lorg/telegram/ui/StickerPreviewViewer;->lastUpdateTime:J

    sub-long v2, v4, v10

    .line 575
    .local v2, "dt":J
    iput-wide v4, p0, Lorg/telegram/ui/StickerPreviewViewer;->lastUpdateTime:J

    .line 576
    iget v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->showProgress:F

    long-to-float v10, v2

    const/high16 v11, 0x42f00000    # 120.0f

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    iput v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->showProgress:F

    .line 577
    iget-object v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->containerView:Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v9}, Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;->invalidate()V

    .line 578
    iget v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->showProgress:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-lez v9, :cond_0

    .line 579
    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->showProgress:F

    goto/16 :goto_0

    .line 557
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "dt":J
    .end local v4    # "newTime":J
    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 582
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_5
    iget v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->showProgress:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_0

    .line 583
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 584
    .restart local v4    # "newTime":J
    iget-wide v10, p0, Lorg/telegram/ui/StickerPreviewViewer;->lastUpdateTime:J

    sub-long v2, v4, v10

    .line 585
    .restart local v2    # "dt":J
    iput-wide v4, p0, Lorg/telegram/ui/StickerPreviewViewer;->lastUpdateTime:J

    .line 586
    iget v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->showProgress:F

    long-to-float v10, v2

    const/high16 v11, 0x42f00000    # 120.0f

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    iput v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->showProgress:F

    .line 587
    iget-object v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->containerView:Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v9}, Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;->invalidate()V

    .line 588
    iget v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->showProgress:F

    const/4 v10, 0x0

    cmpg-float v9, v9, v10

    if-gez v9, :cond_6

    .line 589
    const/4 v9, 0x0

    iput v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->showProgress:F

    .line 591
    :cond_6
    iget v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->showProgress:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_0

    .line 592
    iget-object v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->parentActivity:Landroid/app/Activity;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->unlockOrientation(Landroid/app/Activity;)V

    .line 593
    new-instance v9, Lorg/telegram/ui/StickerPreviewViewer$5;

    invoke-direct {v9, p0}, Lorg/telegram/ui/StickerPreviewViewer$5;-><init>(Lorg/telegram/ui/StickerPreviewViewer;)V

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 600
    :try_start_0
    iget-object v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 601
    iget-object v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->parentActivity:Landroid/app/Activity;

    const-string/jumbo v10, "window"

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    .line 602
    .local v8, "wm":Landroid/view/WindowManager;
    iget-object v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v8, v9}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 604
    .end local v8    # "wm":Landroid/view/WindowManager;
    :catch_0
    move-exception v1

    .line 605
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public close()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 497
    iget-object v1, p0, Lorg/telegram/ui/StickerPreviewViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/StickerPreviewViewer;->visibleDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    .line 516
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/StickerPreviewViewer;->showSheetRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 501
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lorg/telegram/ui/StickerPreviewViewer;->showProgress:F

    .line 502
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/StickerPreviewViewer;->lastUpdateTime:J

    .line 503
    iget-object v1, p0, Lorg/telegram/ui/StickerPreviewViewer;->containerView:Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v1}, Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;->invalidate()V

    .line 505
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/StickerPreviewViewer;->visibleDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_2

    .line 506
    iget-object v1, p0, Lorg/telegram/ui/StickerPreviewViewer;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 507
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/StickerPreviewViewer;->visibleDialog:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    :cond_2
    :goto_1
    iput-object v4, p0, Lorg/telegram/ui/StickerPreviewViewer;->currentSticker:Lorg/telegram/tgnet/TLRPC$Document;

    .line 513
    iput-object v4, p0, Lorg/telegram/ui/StickerPreviewViewer;->currentSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 514
    iput-object v4, p0, Lorg/telegram/ui/StickerPreviewViewer;->delegate:Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;

    .line 515
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/ui/StickerPreviewViewer;->isVisible:Z

    goto :goto_0

    .line 509
    :catch_0
    move-exception v0

    .line 510
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public destroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 519
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/telegram/ui/StickerPreviewViewer;->isVisible:Z

    .line 520
    iput-object v4, p0, Lorg/telegram/ui/StickerPreviewViewer;->delegate:Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;

    .line 521
    iput-object v4, p0, Lorg/telegram/ui/StickerPreviewViewer;->currentSticker:Lorg/telegram/tgnet/TLRPC$Document;

    .line 522
    iput-object v4, p0, Lorg/telegram/ui/StickerPreviewViewer;->currentSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 524
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/StickerPreviewViewer;->visibleDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_0

    .line 525
    iget-object v2, p0, Lorg/telegram/ui/StickerPreviewViewer;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 526
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/StickerPreviewViewer;->visibleDialog:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/StickerPreviewViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    if-nez v2, :cond_2

    .line 544
    :cond_1
    :goto_1
    return-void

    .line 528
    :catch_0
    move-exception v0

    .line 529
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 535
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 536
    iget-object v2, p0, Lorg/telegram/ui/StickerPreviewViewer;->parentActivity:Landroid/app/Activity;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 537
    .local v1, "wm":Landroid/view/WindowManager;
    iget-object v2, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 539
    .end local v1    # "wm":Landroid/view/WindowManager;
    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowView:Landroid/widget/FrameLayout;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 543
    :goto_2
    sput-object v4, Lorg/telegram/ui/StickerPreviewViewer;->Instance:Lorg/telegram/ui/StickerPreviewViewer;

    goto :goto_1

    .line 540
    :catch_1
    move-exception v0

    .line 541
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 493
    iget-boolean v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->isVisible:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;ILorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;)Z
    .locals 18
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "listView"    # Landroid/view/View;
    .param p3, "height"    # I
    .param p4, "stickerPreviewViewerDelegate"    # Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;

    .prologue
    .line 299
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/StickerPreviewViewer;->delegate:Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;

    .line 300
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v15

    if-nez v15, :cond_c

    .line 301
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    float-to-int v13, v15

    .line 302
    .local v13, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v15

    float-to-int v14, v15

    .line 303
    .local v14, "y":I
    const/4 v7, 0x0

    .line 304
    .local v7, "count":I
    move-object/from16 v0, p2

    instance-of v15, v0, Landroid/widget/AbsListView;

    if-eqz v15, :cond_2

    move-object/from16 v15, p2

    .line 305
    check-cast v15, Landroid/widget/AbsListView;

    invoke-virtual {v15}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v7

    .line 309
    :cond_0
    :goto_0
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_1
    if-ge v4, v7, :cond_c

    .line 310
    const/4 v12, 0x0

    .line 311
    .local v12, "view":Landroid/view/View;
    move-object/from16 v0, p2

    instance-of v15, v0, Landroid/widget/AbsListView;

    if-eqz v15, :cond_3

    move-object/from16 v15, p2

    .line 312
    check-cast v15, Landroid/widget/AbsListView;

    invoke-virtual {v15, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 316
    :cond_1
    :goto_2
    if-nez v12, :cond_4

    .line 317
    const/4 v15, 0x0

    .line 373
    .end local v4    # "a":I
    .end local v7    # "count":I
    .end local v12    # "view":Landroid/view/View;
    .end local v13    # "x":I
    .end local v14    # "y":I
    :goto_3
    return v15

    .line 306
    .restart local v7    # "count":I
    .restart local v13    # "x":I
    .restart local v14    # "y":I
    :cond_2
    move-object/from16 v0, p2

    instance-of v15, v0, Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v15, :cond_0

    move-object/from16 v15, p2

    .line 307
    check-cast v15, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v15}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v7

    goto :goto_0

    .line 313
    .restart local v4    # "a":I
    .restart local v12    # "view":Landroid/view/View;
    :cond_3
    move-object/from16 v0, p2

    instance-of v15, v0, Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v15, :cond_1

    move-object/from16 v15, p2

    .line 314
    check-cast v15, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v15, v4}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    goto :goto_2

    .line 319
    :cond_4
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v11

    .line 320
    .local v11, "top":I
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 321
    .local v5, "bottom":I
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 322
    .local v8, "left":I
    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v10

    .line 323
    .local v10, "right":I
    if-gt v11, v14, :cond_5

    if-lt v5, v14, :cond_5

    if-gt v8, v13, :cond_5

    if-ge v10, v13, :cond_6

    .line 309
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 326
    :cond_6
    const/4 v9, 0x0

    .line 327
    .local v9, "ok":Z
    instance-of v15, v12, Lorg/telegram/ui/Cells/StickerEmojiCell;

    if-eqz v15, :cond_8

    move-object v15, v12

    .line 328
    check-cast v15, Lorg/telegram/ui/Cells/StickerEmojiCell;

    invoke-virtual {v15}, Lorg/telegram/ui/Cells/StickerEmojiCell;->showingBitmap()Z

    move-result v9

    .line 335
    :cond_7
    :goto_4
    if-nez v9, :cond_b

    .line 336
    const/4 v15, 0x0

    goto :goto_3

    .line 329
    :cond_8
    instance-of v15, v12, Lorg/telegram/ui/Cells/StickerCell;

    if-eqz v15, :cond_9

    move-object v15, v12

    .line 330
    check-cast v15, Lorg/telegram/ui/Cells/StickerCell;

    invoke-virtual {v15}, Lorg/telegram/ui/Cells/StickerCell;->showingBitmap()Z

    move-result v9

    goto :goto_4

    .line 331
    :cond_9
    instance-of v15, v12, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v15, :cond_7

    move-object v6, v12

    .line 332
    check-cast v6, Lorg/telegram/ui/Cells/ContextLinkCell;

    .line 333
    .local v6, "cell":Lorg/telegram/ui/Cells/ContextLinkCell;
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ContextLinkCell;->isSticker()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ContextLinkCell;->showingBitmap()Z

    move-result v15

    if-eqz v15, :cond_a

    const/4 v9, 0x1

    :goto_5
    goto :goto_4

    :cond_a
    const/4 v9, 0x0

    goto :goto_5

    .line 338
    .end local v6    # "cell":Lorg/telegram/ui/Cells/ContextLinkCell;
    :cond_b
    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/StickerPreviewViewer;->startX:I

    .line 339
    move-object/from16 v0, p0

    iput v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->startY:I

    .line 340
    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    .line 341
    new-instance v15, Lorg/telegram/ui/StickerPreviewViewer$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v15, v0, v1, v2}, Lorg/telegram/ui/StickerPreviewViewer$3;-><init>(Lorg/telegram/ui/StickerPreviewViewer;Landroid/view/View;I)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/telegram/ui/StickerPreviewViewer;->openStickerPreviewRunnable:Ljava/lang/Runnable;

    .line 369
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/StickerPreviewViewer;->openStickerPreviewRunnable:Ljava/lang/Runnable;

    const-wide/16 v16, 0xc8

    invoke-static/range {v15 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 370
    const/4 v15, 0x1

    goto/16 :goto_3

    .line 373
    .end local v4    # "a":I
    .end local v5    # "bottom":I
    .end local v7    # "count":I
    .end local v8    # "left":I
    .end local v9    # "ok":Z
    .end local v10    # "right":I
    .end local v11    # "top":I
    .end local v12    # "view":Landroid/view/View;
    .end local v13    # "x":I
    .end local v14    # "y":I
    :cond_c
    const/4 v15, 0x0

    goto/16 :goto_3
.end method

.method public onTouch(Landroid/view/MotionEvent;Landroid/view/View;ILjava/lang/Object;Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;)Z
    .locals 18
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "listView"    # Landroid/view/View;
    .param p3, "height"    # I
    .param p4, "listener"    # Ljava/lang/Object;
    .param p5, "stickerPreviewViewerDelegate"    # Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;

    .prologue
    .line 191
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/StickerPreviewViewer;->delegate:Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;

    .line 192
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->openStickerPreviewRunnable:Ljava/lang/Runnable;

    if-nez v14, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/StickerPreviewViewer;->isVisible()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 193
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    const/4 v15, 0x3

    if-eq v14, v15, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    const/4 v15, 0x6

    if-ne v14, v15, :cond_7

    .line 194
    :cond_1
    new-instance v14, Lorg/telegram/ui/StickerPreviewViewer$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v14, v0, v1, v2}, Lorg/telegram/ui/StickerPreviewViewer$2;-><init>(Lorg/telegram/ui/StickerPreviewViewer;Landroid/view/View;Ljava/lang/Object;)V

    const-wide/16 v16, 0x96

    move-wide/from16 v0, v16

    invoke-static {v14, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 204
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->openStickerPreviewRunnable:Ljava/lang/Runnable;

    if-eqz v14, :cond_3

    .line 205
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->openStickerPreviewRunnable:Ljava/lang/Runnable;

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 206
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->openStickerPreviewRunnable:Ljava/lang/Runnable;

    .line 295
    :cond_2
    :goto_0
    const/4 v14, 0x0

    :goto_1
    return v14

    .line 207
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/StickerPreviewViewer;->isVisible()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 208
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/StickerPreviewViewer;->close()V

    .line 209
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    if-eqz v14, :cond_2

    .line 210
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    instance-of v14, v14, Lorg/telegram/ui/Cells/StickerEmojiCell;

    if-eqz v14, :cond_5

    .line 211
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    check-cast v14, Lorg/telegram/ui/Cells/StickerEmojiCell;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setScaled(Z)V

    .line 217
    :cond_4
    :goto_2
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    goto :goto_0

    .line 212
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    instance-of v14, v14, Lorg/telegram/ui/Cells/StickerCell;

    if-eqz v14, :cond_6

    .line 213
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    check-cast v14, Lorg/telegram/ui/Cells/StickerCell;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lorg/telegram/ui/Cells/StickerCell;->setScaled(Z)V

    goto :goto_2

    .line 214
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    instance-of v14, v14, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v14, :cond_4

    .line 215
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    check-cast v14, Lorg/telegram/ui/Cells/ContextLinkCell;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lorg/telegram/ui/Cells/ContextLinkCell;->setScaled(Z)V

    goto :goto_2

    .line 220
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    if-eqz v14, :cond_2

    .line 221
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/StickerPreviewViewer;->isVisible()Z

    move-result v14

    if-eqz v14, :cond_1a

    .line 222
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_10

    .line 223
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    float-to-int v12, v14

    .line 224
    .local v12, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    float-to-int v13, v14

    .line 225
    .local v13, "y":I
    const/4 v6, 0x0

    .line 226
    .local v6, "count":I
    move-object/from16 v0, p2

    instance-of v14, v0, Landroid/widget/AbsListView;

    if-eqz v14, :cond_a

    move-object/from16 v14, p2

    .line 227
    check-cast v14, Landroid/widget/AbsListView;

    invoke-virtual {v14}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v6

    .line 231
    :cond_8
    :goto_3
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_4
    if-ge v4, v6, :cond_10

    .line 232
    const/4 v11, 0x0

    .line 233
    .local v11, "view":Landroid/view/View;
    move-object/from16 v0, p2

    instance-of v14, v0, Landroid/widget/AbsListView;

    if-eqz v14, :cond_b

    move-object/from16 v14, p2

    .line 234
    check-cast v14, Landroid/widget/AbsListView;

    invoke-virtual {v14, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 238
    :cond_9
    :goto_5
    if-nez v11, :cond_c

    .line 239
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 228
    .end local v4    # "a":I
    .end local v11    # "view":Landroid/view/View;
    :cond_a
    move-object/from16 v0, p2

    instance-of v14, v0, Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v14, :cond_8

    move-object/from16 v14, p2

    .line 229
    check-cast v14, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v14}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v6

    goto :goto_3

    .line 235
    .restart local v4    # "a":I
    .restart local v11    # "view":Landroid/view/View;
    :cond_b
    move-object/from16 v0, p2

    instance-of v14, v0, Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v14, :cond_9

    move-object/from16 v14, p2

    .line 236
    check-cast v14, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v14, v4}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    goto :goto_5

    .line 241
    :cond_c
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v10

    .line 242
    .local v10, "top":I
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 243
    .local v5, "bottom":I
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 244
    .local v7, "left":I
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v9

    .line 245
    .local v9, "right":I
    if-gt v10, v13, :cond_d

    if-lt v5, v13, :cond_d

    if-gt v7, v12, :cond_d

    if-ge v9, v12, :cond_e

    .line 231
    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 248
    :cond_e
    const/4 v8, 0x0

    .line 249
    .local v8, "ok":Z
    instance-of v14, v11, Lorg/telegram/ui/Cells/StickerEmojiCell;

    if-eqz v14, :cond_11

    .line 250
    const/4 v8, 0x1

    .line 256
    :cond_f
    :goto_6
    if-eqz v8, :cond_10

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    if-ne v11, v14, :cond_13

    .line 281
    .end local v4    # "a":I
    .end local v5    # "bottom":I
    .end local v6    # "count":I
    .end local v7    # "left":I
    .end local v8    # "ok":Z
    .end local v9    # "right":I
    .end local v10    # "top":I
    .end local v11    # "view":Landroid/view/View;
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_10
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 251
    .restart local v4    # "a":I
    .restart local v5    # "bottom":I
    .restart local v6    # "count":I
    .restart local v7    # "left":I
    .restart local v8    # "ok":Z
    .restart local v9    # "right":I
    .restart local v10    # "top":I
    .restart local v11    # "view":Landroid/view/View;
    .restart local v12    # "x":I
    .restart local v13    # "y":I
    :cond_11
    instance-of v14, v11, Lorg/telegram/ui/Cells/StickerCell;

    if-eqz v14, :cond_12

    .line 252
    const/4 v8, 0x1

    goto :goto_6

    .line 253
    :cond_12
    instance-of v14, v11, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v14, :cond_f

    move-object v14, v11

    .line 254
    check-cast v14, Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-virtual {v14}, Lorg/telegram/ui/Cells/ContextLinkCell;->isSticker()Z

    move-result v8

    goto :goto_6

    .line 259
    :cond_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    instance-of v14, v14, Lorg/telegram/ui/Cells/StickerEmojiCell;

    if-eqz v14, :cond_16

    .line 260
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    check-cast v14, Lorg/telegram/ui/Cells/StickerEmojiCell;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setScaled(Z)V

    .line 266
    :cond_14
    :goto_7
    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    .line 267
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/telegram/ui/StickerPreviewViewer;->setKeyboardHeight(I)V

    .line 268
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    instance-of v14, v14, Lorg/telegram/ui/Cells/StickerEmojiCell;

    if-eqz v14, :cond_18

    .line 269
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    check-cast v14, Lorg/telegram/ui/Cells/StickerEmojiCell;

    invoke-virtual {v14}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    check-cast v14, Lorg/telegram/ui/Cells/StickerEmojiCell;

    invoke-virtual {v14}, Lorg/telegram/ui/Cells/StickerEmojiCell;->isRecent()Z

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v14}, Lorg/telegram/ui/StickerPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    .line 270
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    check-cast v14, Lorg/telegram/ui/Cells/StickerEmojiCell;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setScaled(Z)V

    .line 278
    :cond_15
    :goto_8
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 261
    :cond_16
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    instance-of v14, v14, Lorg/telegram/ui/Cells/StickerCell;

    if-eqz v14, :cond_17

    .line 262
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    check-cast v14, Lorg/telegram/ui/Cells/StickerCell;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lorg/telegram/ui/Cells/StickerCell;->setScaled(Z)V

    goto :goto_7

    .line 263
    :cond_17
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    instance-of v14, v14, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v14, :cond_14

    .line 264
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    check-cast v14, Lorg/telegram/ui/Cells/ContextLinkCell;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lorg/telegram/ui/Cells/ContextLinkCell;->setScaled(Z)V

    goto :goto_7

    .line 271
    :cond_18
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    instance-of v14, v14, Lorg/telegram/ui/Cells/StickerCell;

    if-eqz v14, :cond_19

    .line 272
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    check-cast v14, Lorg/telegram/ui/Cells/StickerCell;

    invoke-virtual {v14}, Lorg/telegram/ui/Cells/StickerCell;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lorg/telegram/ui/StickerPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    .line 273
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    check-cast v14, Lorg/telegram/ui/Cells/StickerCell;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lorg/telegram/ui/Cells/StickerCell;->setScaled(Z)V

    goto :goto_8

    .line 274
    :cond_19
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    instance-of v14, v14, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v14, :cond_15

    .line 275
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    check-cast v14, Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-virtual {v14}, Lorg/telegram/ui/Cells/ContextLinkCell;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lorg/telegram/ui/StickerPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    .line 276
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    check-cast v14, Lorg/telegram/ui/Cells/ContextLinkCell;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lorg/telegram/ui/Cells/ContextLinkCell;->setScaled(Z)V

    goto :goto_8

    .line 282
    .end local v4    # "a":I
    .end local v5    # "bottom":I
    .end local v6    # "count":I
    .end local v7    # "left":I
    .end local v8    # "ok":Z
    .end local v9    # "right":I
    .end local v10    # "top":I
    .end local v11    # "view":Landroid/view/View;
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->openStickerPreviewRunnable:Ljava/lang/Runnable;

    if-eqz v14, :cond_2

    .line 283
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_1b

    .line 284
    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->startX:I

    int-to-float v14, v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    sub-float/2addr v14, v15

    float-to-double v14, v14

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/StickerPreviewViewer;->startY:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    sub-float v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v14

    const/high16 v16, 0x41200000    # 10.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    cmpl-double v14, v14, v16

    if-lez v14, :cond_2

    .line 285
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->openStickerPreviewRunnable:Ljava/lang/Runnable;

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 286
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->openStickerPreviewRunnable:Ljava/lang/Runnable;

    goto/16 :goto_0

    .line 289
    :cond_1b
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->openStickerPreviewRunnable:Ljava/lang/Runnable;

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 290
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->openStickerPreviewRunnable:Ljava/lang/Runnable;

    goto/16 :goto_0
.end method

.method public open(Lorg/telegram/tgnet/TLRPC$Document;Z)V
    .locals 13
    .param p1, "sticker"    # Lorg/telegram/tgnet/TLRPC$Document;
    .param p2, "isRecent"    # Z

    .prologue
    .line 427
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 430
    :cond_1
    sget-object v0, Lorg/telegram/ui/StickerPreviewViewer;->textPaint:Landroid/text/TextPaint;

    if-nez v0, :cond_2

    .line 431
    new-instance v0, Landroid/text/TextPaint;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/StickerPreviewViewer;->textPaint:Landroid/text/TextPaint;

    .line 432
    sget-object v0, Lorg/telegram/ui/StickerPreviewViewer;->textPaint:Landroid/text/TextPaint;

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 435
    :cond_2
    const/4 v11, 0x0

    .line 436
    .local v11, "newSet":Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    const/4 v8, 0x0

    .local v8, "a":I
    :goto_1
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_3

    .line 437
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 438
    .local v9, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v0, v9, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v0, :cond_8

    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    if-eqz v0, :cond_8

    .line 439
    iget-object v11, v9, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 444
    .end local v9    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_3
    if-eqz v11, :cond_5

    .line 446
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->visibleDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_4

    .line 447
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->visibleDialog:Landroid/app/Dialog;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 448
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 449
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->visibleDialog:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    :cond_4
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->showSheetRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 455
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->showSheetRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x514

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 457
    :cond_5
    iput-object v11, p0, Lorg/telegram/ui/StickerPreviewViewer;->currentSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 458
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v2, 0x0

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const/4 v4, 0x0

    const-string/jumbo v5, "webp"

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;Ljava/lang/String;I)V

    .line 459
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->stickerEmojiLayout:Landroid/text/StaticLayout;

    .line 460
    const/4 v8, 0x0

    :goto_3
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_6

    .line 461
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 462
    .restart local v9    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v0, v9, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v0, :cond_9

    .line 463
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->alt:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 464
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->alt:Ljava/lang/String;

    sget-object v2, Lorg/telegram/ui/StickerPreviewViewer;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v1

    .line 465
    .local v1, "emoji":Ljava/lang/CharSequence;
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v2, Lorg/telegram/ui/StickerPreviewViewer;->textPaint:Landroid/text/TextPaint;

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->stickerEmojiLayout:Landroid/text/StaticLayout;

    .line 471
    .end local v1    # "emoji":Ljava/lang/CharSequence;
    .end local v9    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_6
    iput-object p1, p0, Lorg/telegram/ui/StickerPreviewViewer;->currentSticker:Lorg/telegram/tgnet/TLRPC$Document;

    .line 472
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->containerView:Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;->invalidate()V

    .line 474
    iget-boolean v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->isVisible:Z

    if-nez v0, :cond_0

    .line 475
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->parentActivity:Landroid/app/Activity;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->lockOrientation(Landroid/app/Activity;)V

    .line 477
    :try_start_1
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 478
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->parentActivity:Landroid/app/Activity;

    const-string/jumbo v2, "window"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    .line 479
    .local v12, "wm":Landroid/view/WindowManager;
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v12, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 484
    .end local v12    # "wm":Landroid/view/WindowManager;
    :cond_7
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->parentActivity:Landroid/app/Activity;

    const-string/jumbo v2, "window"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    .line 485
    .restart local v12    # "wm":Landroid/view/WindowManager;
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v12, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 486
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->isVisible:Z

    .line 487
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->showProgress:F

    .line 488
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/StickerPreviewViewer;->lastUpdateTime:J

    goto/16 :goto_0

    .line 436
    .end local v12    # "wm":Landroid/view/WindowManager;
    .restart local v9    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 451
    .end local v9    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :catch_0
    move-exception v10

    .line 452
    .local v10, "e":Ljava/lang/Exception;
    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 460
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v9    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 481
    .end local v9    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :catch_1
    move-exception v10

    .line 482
    .restart local v10    # "e":Ljava/lang/Exception;
    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 174
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->openStickerPreviewRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->openStickerPreviewRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 176
    iput-object v2, p0, Lorg/telegram/ui/StickerPreviewViewer;->openStickerPreviewRunnable:Ljava/lang/Runnable;

    .line 178
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    instance-of v0, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;

    if-eqz v0, :cond_3

    .line 180
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/StickerEmojiCell;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setScaled(Z)V

    .line 186
    :cond_1
    :goto_0
    iput-object v2, p0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    .line 188
    :cond_2
    return-void

    .line 181
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    instance-of v0, v0, Lorg/telegram/ui/Cells/StickerCell;

    if-eqz v0, :cond_4

    .line 182
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/StickerCell;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/StickerCell;->setScaled(Z)V

    goto :goto_0

    .line 183
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    instance-of v0, v0, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/ContextLinkCell;->setScaled(Z)V

    goto :goto_0
.end method

.method public setDelegate(Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;)V
    .locals 0
    .param p1, "stickerPreviewViewerDelegate"    # Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;

    .prologue
    .line 377
    iput-object p1, p0, Lorg/telegram/ui/StickerPreviewViewer;->delegate:Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;

    .line 378
    return-void
.end method

.method public setKeyboardHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 423
    iput p1, p0, Lorg/telegram/ui/StickerPreviewViewer;->keyboardHeight:I

    .line 424
    return-void
.end method

.method public setParentActivity(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 381
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->parentActivity:Landroid/app/Activity;

    if-ne v0, p1, :cond_0

    .line 420
    :goto_0
    return-void

    .line 384
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/StickerPreviewViewer;->parentActivity:Landroid/app/Activity;

    .line 386
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    .line 387
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 388
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 389
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 390
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 393
    :cond_1
    new-instance v0, Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;-><init>(Lorg/telegram/ui/StickerPreviewViewer;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->containerView:Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;

    .line 394
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->containerView:Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;->setFocusable(Z)V

    .line 395
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/StickerPreviewViewer;->containerView:Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;

    const/16 v2, 0x33

    invoke-static {v4, v4, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 396
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->containerView:Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;

    new-instance v1, Lorg/telegram/ui/StickerPreviewViewer$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/StickerPreviewViewer$4;-><init>(Lorg/telegram/ui/StickerPreviewViewer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 406
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 407
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 408
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 409
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 410
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 411
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x63

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 412
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 413
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v1, -0x7ffffff8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 417
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setAspectFit(Z)V

    .line 418
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setInvalidateAll(Z)V

    .line 419
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, p0, Lorg/telegram/ui/StickerPreviewViewer;->containerView:Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 415
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1
.end method
