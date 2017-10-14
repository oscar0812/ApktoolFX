.class public Lorg/telegram/ui/SecretMediaViewer;
.super Ljava/lang/Object;
.source "SecretMediaViewer.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;,
        Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;,
        Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;
    }
.end annotation


# static fields
.field private static volatile Instance:Lorg/telegram/ui/SecretMediaViewer;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field private animateToClipBottom:F

.field private animateToClipHorizontal:F

.field private animateToClipTop:F

.field private animateToScale:F

.field private animateToX:F

.field private animateToY:F

.field private animationStartTime:J

.field private animationValue:F

.field private aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

.field private blackPaint:Landroid/graphics/Paint;

.field private canDragDown:Z

.field private centerImage:Lorg/telegram/messenger/ImageReceiver;

.field private clipBottom:F

.field private clipHorizontal:F

.field private clipTop:F

.field private closeTime:J

.field private closeVideoAfterWatch:Z

.field private containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

.field private coords:[I

.field private currentActionBarAnimation:Landroid/animation/AnimatorSet;

.field private currentChannelId:I

.field private currentMessageObject:Lorg/telegram/messenger/MessageObject;

.field private currentProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

.field private currentRotation:I

.field private disableShowCheck:Z

.field private discardTap:Z

.field private doubleTap:Z

.field private dragY:F

.field private draggingDown:Z

.field private gestureDetector:Landroid/view/GestureDetector;

.field private imageMoveAnimation:Landroid/animation/AnimatorSet;

.field private interpolator:Landroid/view/animation/DecelerateInterpolator;

.field private invalidCoords:Z

.field private isActionBarVisible:Z

.field private isPhotoVisible:Z

.field private isPlaying:Z

.field private isVideo:Z

.field private isVisible:Z

.field private lastInsets:Ljava/lang/Object;

.field private maxX:F

.field private maxY:F

.field private minX:F

.field private minY:F

.field private moveStartX:F

.field private moveStartY:F

.field private moving:Z

.field private openTime:J

.field private parentActivity:Landroid/app/Activity;

.field private photoAnimationEndRunnable:Ljava/lang/Runnable;

.field private photoAnimationInProgress:I

.field private photoBackgroundDrawable:Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;

.field private photoTransitionAnimationStartTime:J

.field private pinchCenterX:F

.field private pinchCenterY:F

.field private pinchStartDistance:F

.field private pinchStartScale:F

.field private pinchStartX:F

.field private pinchStartY:F

.field private scale:F

.field private scroller:Lorg/telegram/ui/Components/Scroller;

.field private secretDeleteTimer:Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

.field private textureUploaded:Z

.field private translationX:F

.field private translationY:F

.field private useOvershootForScale:Z

.field private velocityTracker:Landroid/view/VelocityTracker;

.field private videoCrossfadeAlpha:F

.field private videoCrossfadeAlphaLastTime:J

.field private videoCrossfadeStarted:Z

.field private videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

.field private videoTextureView:Landroid/view/TextureView;

.field private videoWatchedOneTime:Z

.field private windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private windowView:Landroid/widget/FrameLayout;

.field private zoomAnimation:Z

.field private zooming:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/ui/SecretMediaViewer;->Instance:Lorg/telegram/ui/SecretMediaViewer;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    .line 326
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->coords:[I

    .line 330
    iput-boolean v3, p0, Lorg/telegram/ui/SecretMediaViewer;->isActionBarVisible:Z

    .line 332
    new-instance v0, Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;-><init>(Lorg/telegram/ui/SecretMediaViewer;I)V

    iput-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->photoBackgroundDrawable:Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;

    .line 333
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->blackPaint:Landroid/graphics/Paint;

    .line 346
    iput v2, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    .line 359
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 361
    iput v2, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchStartScale:F

    .line 376
    iput-boolean v3, p0, Lorg/telegram/ui/SecretMediaViewer;->canDragDown:Z

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/SecretMediaViewer;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SecretMediaViewer;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lorg/telegram/ui/SecretMediaViewer;->processTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/SecretMediaViewer;Landroid/graphics/Canvas;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/SecretMediaViewer;
    .param p1, "x1"    # Landroid/graphics/Canvas;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lorg/telegram/ui/SecretMediaViewer;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/SecretMediaViewer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SecretMediaViewer;

    .prologue
    .line 65
    iget-boolean v0, p0, Lorg/telegram/ui/SecretMediaViewer;->closeVideoAfterWatch:Z

    return v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/SecretMediaViewer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SecretMediaViewer;

    .prologue
    .line 65
    iget-boolean v0, p0, Lorg/telegram/ui/SecretMediaViewer;->textureUploaded:Z

    return v0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/SecretMediaViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/SecretMediaViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lorg/telegram/ui/SecretMediaViewer;->textureUploaded:Z

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SecretMediaViewer;

    .prologue
    .line 65
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/SecretMediaViewer;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SecretMediaViewer;

    .prologue
    .line 65
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->lastInsets:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1302(Lorg/telegram/ui/SecretMediaViewer;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/SecretMediaViewer;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 65
    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->lastInsets:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/SecretMediaViewer;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SecretMediaViewer;

    .prologue
    .line 65
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$1402(Lorg/telegram/ui/SecretMediaViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/SecretMediaViewer;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 65
    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$1500(Lorg/telegram/ui/SecretMediaViewer;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SecretMediaViewer;

    .prologue
    .line 65
    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    return v0
.end method

.method static synthetic access$1502(Lorg/telegram/ui/SecretMediaViewer;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/SecretMediaViewer;
    .param p1, "x1"    # F

    .prologue
    .line 65
    iput p1, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    return p1
.end method

.method static synthetic access$1602(Lorg/telegram/ui/SecretMediaViewer;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/SecretMediaViewer;
    .param p1, "x1"    # F

    .prologue
    .line 65
    iput p1, p0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    return p1
.end method

.method static synthetic access$1702(Lorg/telegram/ui/SecretMediaViewer;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/SecretMediaViewer;
    .param p1, "x1"    # F

    .prologue
    .line 65
    iput p1, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    return p1
.end method

.method static synthetic access$1800(Lorg/telegram/ui/SecretMediaViewer;F)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/SecretMediaViewer;
    .param p1, "x1"    # F

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lorg/telegram/ui/SecretMediaViewer;->updateMinMax(F)V

    return-void
.end method

.method static synthetic access$1900(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SecretMediaViewer;

    .prologue
    .line 65
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SecretMediaViewer;

    .prologue
    .line 65
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/SecretMediaViewer;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SecretMediaViewer;

    .prologue
    .line 65
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->windowView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2202(Lorg/telegram/ui/SecretMediaViewer;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/SecretMediaViewer;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationInProgress:I

    return p1
.end method

.method static synthetic access$2300(Lorg/telegram/ui/SecretMediaViewer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SecretMediaViewer;

    .prologue
    .line 65
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationEndRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2302(Lorg/telegram/ui/SecretMediaViewer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/SecretMediaViewer;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 65
    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationEndRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$2602(Lorg/telegram/ui/SecretMediaViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/SecretMediaViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lorg/telegram/ui/SecretMediaViewer;->disableShowCheck:Z

    return p1
.end method

.method static synthetic access$2700(Lorg/telegram/ui/SecretMediaViewer;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SecretMediaViewer;

    .prologue
    .line 65
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$2702(Lorg/telegram/ui/SecretMediaViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/SecretMediaViewer;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 65
    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$2800(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SecretMediaViewer;

    .prologue
    .line 65
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/SecretMediaViewer;Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/SecretMediaViewer;
    .param p1, "x1"    # Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lorg/telegram/ui/SecretMediaViewer;->onPhotoClosed(Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V

    return-void
.end method

.method static synthetic access$3002(Lorg/telegram/ui/SecretMediaViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/SecretMediaViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lorg/telegram/ui/SecretMediaViewer;->isVisible:Z

    return p1
.end method

.method static synthetic access$3100(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/messenger/ImageReceiver;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SecretMediaViewer;

    .prologue
    .line 65
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/messenger/MessageObject;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SecretMediaViewer;

    .prologue
    .line 65
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/Components/VideoPlayer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SecretMediaViewer;

    .prologue
    .line 65
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/SecretMediaViewer;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SecretMediaViewer;

    .prologue
    .line 65
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->parentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/SecretMediaViewer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SecretMediaViewer;

    .prologue
    .line 65
    iget-boolean v0, p0, Lorg/telegram/ui/SecretMediaViewer;->isPhotoVisible:Z

    return v0
.end method

.method static synthetic access$702(Lorg/telegram/ui/SecretMediaViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/SecretMediaViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lorg/telegram/ui/SecretMediaViewer;->isPhotoVisible:Z

    return p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/SecretMediaViewer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SecretMediaViewer;

    .prologue
    .line 65
    iget-boolean v0, p0, Lorg/telegram/ui/SecretMediaViewer;->isPlaying:Z

    return v0
.end method

.method static synthetic access$802(Lorg/telegram/ui/SecretMediaViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/SecretMediaViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lorg/telegram/ui/SecretMediaViewer;->isPlaying:Z

    return p1
.end method

.method static synthetic access$902(Lorg/telegram/ui/SecretMediaViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/SecretMediaViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lorg/telegram/ui/SecretMediaViewer;->videoWatchedOneTime:Z

    return p1
.end method

.method private animateTo(FFFZ)V
    .locals 6
    .param p1, "newScale"    # F
    .param p2, "newTx"    # F
    .param p3, "newTy"    # F
    .param p4, "isZoom"    # Z

    .prologue
    .line 1541
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/SecretMediaViewer;->animateTo(FFFZI)V

    .line 1542
    return-void
.end method

.method private animateTo(FFFZI)V
    .locals 5
    .param p1, "newScale"    # F
    .param p2, "newTx"    # F
    .param p3, "newTy"    # F
    .param p4, "isZoom"    # Z
    .param p5, "duration"    # I

    .prologue
    .line 1545
    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    .line 1567
    :goto_0
    return-void

    .line 1548
    :cond_0
    iput-boolean p4, p0, Lorg/telegram/ui/SecretMediaViewer;->zoomAnimation:Z

    .line 1549
    iput p1, p0, Lorg/telegram/ui/SecretMediaViewer;->animateToScale:F

    .line 1550
    iput p2, p0, Lorg/telegram/ui/SecretMediaViewer;->animateToX:F

    .line 1551
    iput p3, p0, Lorg/telegram/ui/SecretMediaViewer;->animateToY:F

    .line 1552
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/SecretMediaViewer;->animationStartTime:J

    .line 1553
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    .line 1554
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    const-string/jumbo v3, "animationValue"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    .line 1555
    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1554
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1557
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1558
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    int-to-long v2, p5

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1559
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/SecretMediaViewer$15;

    invoke-direct {v1, p0}, Lorg/telegram/ui/SecretMediaViewer$15;-><init>(Lorg/telegram/ui/SecretMediaViewer;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1566
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 1554
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private checkMinMax(Z)V
    .locals 4
    .param p1, "zoom"    # Z

    .prologue
    .line 1524
    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    .line 1525
    .local v0, "moveToX":F
    iget v1, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    .line 1526
    .local v1, "moveToY":F
    iget v2, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    invoke-direct {p0, v2}, Lorg/telegram/ui/SecretMediaViewer;->updateMinMax(F)V

    .line 1527
    iget v2, p0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    iget v3, p0, Lorg/telegram/ui/SecretMediaViewer;->minX:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 1528
    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->minX:F

    .line 1532
    :cond_0
    :goto_0
    iget v2, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    iget v3, p0, Lorg/telegram/ui/SecretMediaViewer;->minY:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 1533
    iget v1, p0, Lorg/telegram/ui/SecretMediaViewer;->minY:F

    .line 1537
    :cond_1
    :goto_1
    iget v2, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    invoke-direct {p0, v2, v0, v1, p1}, Lorg/telegram/ui/SecretMediaViewer;->animateTo(FFFZ)V

    .line 1538
    return-void

    .line 1529
    :cond_2
    iget v2, p0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    iget v3, p0, Lorg/telegram/ui/SecretMediaViewer;->maxX:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 1530
    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->maxX:F

    goto :goto_0

    .line 1534
    :cond_3
    iget v2, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    iget v3, p0, Lorg/telegram/ui/SecretMediaViewer;->maxY:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 1535
    iget v1, p0, Lorg/telegram/ui/SecretMediaViewer;->maxY:F

    goto :goto_1
.end method

.method private checkPhotoAnimation()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1117
    iget v1, p0, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationInProgress:I

    if-eqz v1, :cond_1

    .line 1118
    iget-wide v2, p0, Lorg/telegram/ui/SecretMediaViewer;->photoTransitionAnimationStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    .line 1119
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationEndRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 1120
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1121
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationEndRunnable:Ljava/lang/Runnable;

    .line 1123
    :cond_0
    iput v0, p0, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationInProgress:I

    .line 1126
    :cond_1
    iget v1, p0, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationInProgress:I

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private getContainerViewHeight()I
    .locals 1

    .prologue
    .line 1351
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;->getHeight()I

    move-result v0

    return v0
.end method

.method private getContainerViewWidth()I
    .locals 1

    .prologue
    .line 1347
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;->getWidth()I

    move-result v0

    return v0
.end method

.method public static getInstance()Lorg/telegram/ui/SecretMediaViewer;
    .locals 4

    .prologue
    .line 385
    sget-object v0, Lorg/telegram/ui/SecretMediaViewer;->Instance:Lorg/telegram/ui/SecretMediaViewer;

    .line 386
    .local v0, "localInstance":Lorg/telegram/ui/SecretMediaViewer;
    if-nez v0, :cond_1

    .line 387
    const-class v3, Lorg/telegram/ui/PhotoViewer;

    monitor-enter v3

    .line 388
    :try_start_0
    sget-object v0, Lorg/telegram/ui/SecretMediaViewer;->Instance:Lorg/telegram/ui/SecretMediaViewer;

    .line 389
    if-nez v0, :cond_0

    .line 390
    new-instance v1, Lorg/telegram/ui/SecretMediaViewer;

    invoke-direct {v1}, Lorg/telegram/ui/SecretMediaViewer;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "localInstance":Lorg/telegram/ui/SecretMediaViewer;
    .local v1, "localInstance":Lorg/telegram/ui/SecretMediaViewer;
    :try_start_1
    sput-object v1, Lorg/telegram/ui/SecretMediaViewer;->Instance:Lorg/telegram/ui/SecretMediaViewer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 392
    .end local v1    # "localInstance":Lorg/telegram/ui/SecretMediaViewer;
    .restart local v0    # "localInstance":Lorg/telegram/ui/SecretMediaViewer;
    :cond_0
    :try_start_2
    monitor-exit v3

    .line 394
    :cond_1
    return-object v0

    .line 392
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "localInstance":Lorg/telegram/ui/SecretMediaViewer;
    .restart local v1    # "localInstance":Lorg/telegram/ui/SecretMediaViewer;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "localInstance":Lorg/telegram/ui/SecretMediaViewer;
    .restart local v0    # "localInstance":Lorg/telegram/ui/SecretMediaViewer;
    goto :goto_0
.end method

.method private onDraw(Landroid/graphics/Canvas;)V
    .locals 38
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 957
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/SecretMediaViewer;->isPhotoVisible:Z

    move/from16 v33, v0

    if-nez v33, :cond_0

    .line 1105
    :goto_0
    return-void

    .line 967
    :cond_0
    const/high16 v7, -0x40800000    # -1.0f

    .line 969
    .local v7, "aty":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v33, v0

    if-eqz v33, :cond_c

    .line 970
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SecretMediaViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lorg/telegram/ui/Components/Scroller;->isFinished()Z

    move-result v33

    if-nez v33, :cond_1

    .line 971
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SecretMediaViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lorg/telegram/ui/Components/Scroller;->abortAnimation()V

    .line 974
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/SecretMediaViewer;->useOvershootForScale:Z

    move/from16 v33, v0

    if-eqz v33, :cond_b

    .line 975
    const v24, 0x3f828f5c    # 1.02f

    .line 976
    .local v24, "overshoot":F
    const v25, 0x3f666666    # 0.9f

    .line 978
    .local v25, "overshootTime":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->animationValue:F

    move/from16 v33, v0

    const v34, 0x3f666666    # 0.9f

    cmpg-float v33, v33, v34

    if-gez v33, :cond_a

    .line 979
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->animationValue:F

    move/from16 v33, v0

    const v34, 0x3f666666    # 0.9f

    div-float v8, v33, v34

    .line 980
    .local v8, "av":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToScale:F

    move/from16 v34, v0

    const v35, 0x3f828f5c    # 1.02f

    mul-float v34, v34, v35

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    move/from16 v35, v0

    sub-float v34, v34, v35

    mul-float v34, v34, v8

    add-float v14, v33, v34

    .line 985
    .local v14, "currentScale":F
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToY:F

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    move/from16 v35, v0

    sub-float v34, v34, v35

    mul-float v34, v34, v8

    add-float v16, v33, v34

    .line 986
    .local v16, "currentTranslationY":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToX:F

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    move/from16 v35, v0

    sub-float v34, v34, v35

    mul-float v34, v34, v8

    add-float v15, v33, v34

    .line 987
    .local v15, "currentTranslationX":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->clipTop:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipTop:F

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->clipTop:F

    move/from16 v35, v0

    sub-float v34, v34, v35

    mul-float v34, v34, v8

    add-float v13, v33, v34

    .line 988
    .local v13, "currentClipTop":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->clipBottom:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipBottom:F

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->clipBottom:F

    move/from16 v35, v0

    sub-float v34, v34, v35

    mul-float v34, v34, v8

    add-float v11, v33, v34

    .line 989
    .local v11, "currentClipBottom":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->clipHorizontal:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipHorizontal:F

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->clipHorizontal:F

    move/from16 v35, v0

    sub-float v34, v34, v35

    mul-float v34, v34, v8

    add-float v12, v33, v34

    .line 998
    .end local v8    # "av":F
    .end local v24    # "overshoot":F
    .end local v25    # "overshootTime":F
    .local v12, "currentClipHorizontal":F
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToScale:F

    move/from16 v33, v0

    const/high16 v34, 0x3f800000    # 1.0f

    cmpl-float v33, v33, v34

    if-nez v33, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    move/from16 v33, v0

    const/high16 v34, 0x3f800000    # 1.0f

    cmpl-float v33, v33, v34

    if-nez v33, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    move/from16 v33, v0

    const/16 v34, 0x0

    cmpl-float v33, v33, v34

    if-nez v33, :cond_2

    .line 999
    move/from16 v7, v16

    .line 1002
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;->invalidate()V

    .line 1038
    :cond_3
    :goto_3
    move/from16 v31, v15

    .line 1039
    .local v31, "translateX":F
    const/16 v30, 0x0

    .line 1040
    .local v30, "scaleDiff":F
    const/high16 v6, 0x3f800000    # 1.0f

    .line 1041
    .local v6, "alpha":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationInProgress:I

    move/from16 v33, v0

    const/16 v34, 0x3

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_4

    .line 1042
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    move/from16 v33, v0

    const/high16 v34, 0x3f800000    # 1.0f

    cmpl-float v33, v33, v34

    if-nez v33, :cond_11

    const/high16 v33, -0x40800000    # -1.0f

    cmpl-float v33, v7, v33

    if-eqz v33, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/SecretMediaViewer;->zoomAnimation:Z

    move/from16 v33, v0

    if-nez v33, :cond_11

    .line 1043
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewHeight()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    const/high16 v34, 0x40800000    # 4.0f

    div-float v21, v33, v34

    .line 1044
    .local v21, "maxValue":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SecretMediaViewer;->photoBackgroundDrawable:Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;

    move-object/from16 v33, v0

    const/high16 v34, 0x42fe0000    # 127.0f

    const/high16 v35, 0x437f0000    # 255.0f

    const/high16 v36, 0x3f800000    # 1.0f

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v37

    move/from16 v0, v37

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v37

    div-float v37, v37, v21

    sub-float v36, v36, v37

    mul-float v35, v35, v36

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->max(FF)F

    move-result v34

    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;->setAlpha(I)V

    .line 1048
    .end local v21    # "maxValue":F
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/SecretMediaViewer;->zoomAnimation:Z

    move/from16 v33, v0

    if-nez v33, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->maxX:F

    move/from16 v33, v0

    cmpl-float v33, v31, v33

    if-lez v33, :cond_4

    .line 1049
    const/high16 v33, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->maxX:F

    move/from16 v34, v0

    sub-float v34, v31, v34

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    div-float v34, v34, v35

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 1050
    const v33, 0x3e99999a    # 0.3f

    mul-float v30, v6, v33

    .line 1051
    const/high16 v33, 0x3f800000    # 1.0f

    sub-float v6, v33, v6

    .line 1052
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->maxX:F

    move/from16 v31, v0

    .line 1056
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SecretMediaViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-object/from16 v33, v0

    if-eqz v33, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SecretMediaViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getVisibility()I

    move-result v33

    if-nez v33, :cond_12

    const/16 v17, 0x1

    .line 1057
    .local v17, "drawTextureView":Z
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1058
    sub-float v26, v14, v30

    .line 1059
    .local v26, "sc":F
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewWidth()I

    move-result v33

    div-int/lit8 v33, v33, 0x2

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    add-float v33, v33, v31

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewHeight()I

    move-result v34

    div-int/lit8 v34, v34, 0x2

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    add-float v34, v34, v16

    move-object/from16 v0, p1

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1060
    move-object/from16 v0, p1

    move/from16 v1, v26

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1062
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SecretMediaViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result v10

    .line 1063
    .local v10, "bitmapWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SecretMediaViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lorg/telegram/messenger/ImageReceiver;->getBitmapHeight()I

    move-result v9

    .line 1064
    .local v9, "bitmapHeight":I
    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/SecretMediaViewer;->textureUploaded:Z

    move/from16 v33, v0

    if-eqz v33, :cond_5

    .line 1065
    int-to-float v0, v10

    move/from16 v33, v0

    int-to-float v0, v9

    move/from16 v34, v0

    div-float v28, v33, v34

    .line 1066
    .local v28, "scale1":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SecretMediaViewer;->videoTextureView:Landroid/view/TextureView;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SecretMediaViewer;->videoTextureView:Landroid/view/TextureView;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    div-float v29, v33, v34

    .line 1067
    .local v29, "scale2":F
    sub-float v33, v28, v29

    invoke-static/range {v33 .. v33}, Ljava/lang/Math;->abs(F)F

    move-result v33

    const v34, 0x3c23d70a    # 0.01f

    cmpl-float v33, v33, v34

    if-lez v33, :cond_5

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SecretMediaViewer;->videoTextureView:Landroid/view/TextureView;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result v10

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SecretMediaViewer;->videoTextureView:Landroid/view/TextureView;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result v9

    .line 1073
    .end local v28    # "scale1":F
    .end local v29    # "scale2":F
    :cond_5
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewHeight()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    int-to-float v0, v9

    move/from16 v34, v0

    div-float v33, v33, v34

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewWidth()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    int-to-float v0, v10

    move/from16 v35, v0

    div-float v34, v34, v35

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->min(FF)F

    move-result v27

    .line 1074
    .local v27, "scale":F
    int-to-float v0, v10

    move/from16 v33, v0

    mul-float v33, v33, v27

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v32, v0

    .line 1075
    .local v32, "width":I
    int-to-float v0, v9

    move/from16 v33, v0

    mul-float v33, v33, v27

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v20, v0

    .line 1077
    .local v20, "height":I
    move/from16 v0, v32

    neg-int v0, v0

    move/from16 v33, v0

    div-int/lit8 v33, v33, 0x2

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v34, v12, v26

    add-float v33, v33, v34

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v34, v0

    div-int/lit8 v34, v34, 0x2

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    div-float v35, v13, v26

    add-float v34, v34, v35

    div-int/lit8 v35, v32, 0x2

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    div-float v36, v12, v26

    sub-float v35, v35, v36

    div-int/lit8 v36, v20, 0x2

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    div-float v37, v11, v26

    sub-float v36, v36, v37

    move-object/from16 v0, p1

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v35

    move/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 1079
    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/SecretMediaViewer;->textureUploaded:Z

    move/from16 v33, v0

    if-eqz v33, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeStarted:Z

    move/from16 v33, v0

    if-eqz v33, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeAlpha:F

    move/from16 v33, v0

    const/high16 v34, 0x3f800000    # 1.0f

    cmpl-float v33, v33, v34

    if-eqz v33, :cond_7

    .line 1080
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SecretMediaViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 1081
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SecretMediaViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v33, v0

    move/from16 v0, v32

    neg-int v0, v0

    move/from16 v34, v0

    div-int/lit8 v34, v34, 0x2

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v35, v0

    div-int/lit8 v35, v35, 0x2

    move-object/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v35

    move/from16 v3, v32

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(IIII)V

    .line 1082
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SecretMediaViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 1084
    :cond_7
    if-eqz v17, :cond_9

    .line 1085
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeStarted:Z

    move/from16 v33, v0

    if-nez v33, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/SecretMediaViewer;->textureUploaded:Z

    move/from16 v33, v0

    if-eqz v33, :cond_8

    .line 1086
    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeStarted:Z

    .line 1087
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeAlpha:F

    .line 1088
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeAlphaLastTime:J

    .line 1090
    :cond_8
    move/from16 v0, v32

    neg-int v0, v0

    move/from16 v33, v0

    div-int/lit8 v33, v33, 0x2

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v34, v0

    div-int/lit8 v34, v34, 0x2

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    move-object/from16 v0, p1

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1091
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SecretMediaViewer;->videoTextureView:Landroid/view/TextureView;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeAlpha:F

    move/from16 v34, v0

    mul-float v34, v34, v6

    invoke-virtual/range {v33 .. v34}, Landroid/view/TextureView;->setAlpha(F)V

    .line 1092
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SecretMediaViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1093
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeStarted:Z

    move/from16 v33, v0

    if-eqz v33, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeAlpha:F

    move/from16 v33, v0

    const/high16 v34, 0x3f800000    # 1.0f

    cmpg-float v33, v33, v34

    if-gez v33, :cond_9

    .line 1094
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 1095
    .local v22, "newUpdateTime":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeAlphaLastTime:J

    move-wide/from16 v34, v0

    sub-long v18, v22, v34

    .line 1096
    .local v18, "dt":J
    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeAlphaLastTime:J

    .line 1097
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeAlpha:F

    move/from16 v33, v0

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v34, v0

    const/high16 v35, 0x43480000    # 200.0f

    div-float v34, v34, v35

    add-float v33, v33, v34

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeAlpha:F

    .line 1098
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;->invalidate()V

    .line 1099
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeAlpha:F

    move/from16 v33, v0

    const/high16 v34, 0x3f800000    # 1.0f

    cmpl-float v33, v33, v34

    if-lez v33, :cond_9

    .line 1100
    const/high16 v33, 0x3f800000    # 1.0f

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeAlpha:F

    .line 1104
    .end local v18    # "dt":J
    .end local v22    # "newUpdateTime":J
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 982
    .end local v6    # "alpha":F
    .end local v9    # "bitmapHeight":I
    .end local v10    # "bitmapWidth":I
    .end local v11    # "currentClipBottom":F
    .end local v12    # "currentClipHorizontal":F
    .end local v13    # "currentClipTop":F
    .end local v14    # "currentScale":F
    .end local v15    # "currentTranslationX":F
    .end local v16    # "currentTranslationY":F
    .end local v17    # "drawTextureView":Z
    .end local v20    # "height":I
    .end local v26    # "sc":F
    .end local v27    # "scale":F
    .end local v30    # "scaleDiff":F
    .end local v31    # "translateX":F
    .end local v32    # "width":I
    .restart local v24    # "overshoot":F
    .restart local v25    # "overshootTime":F
    :cond_a
    const/high16 v8, 0x3f800000    # 1.0f

    .line 983
    .restart local v8    # "av":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToScale:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToScale:F

    move/from16 v34, v0

    const v35, 0x3ca3d700    # 0.01999998f

    mul-float v34, v34, v35

    const/high16 v35, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->animationValue:F

    move/from16 v36, v0

    const v37, 0x3f666666    # 0.9f

    sub-float v36, v36, v37

    const v37, 0x3dccccd0    # 0.100000024f

    div-float v36, v36, v37

    sub-float v35, v35, v36

    mul-float v34, v34, v35

    add-float v14, v33, v34

    .restart local v14    # "currentScale":F
    goto/16 :goto_1

    .line 991
    .end local v8    # "av":F
    .end local v14    # "currentScale":F
    .end local v24    # "overshoot":F
    .end local v25    # "overshootTime":F
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToScale:F

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    move/from16 v35, v0

    sub-float v34, v34, v35

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->animationValue:F

    move/from16 v35, v0

    mul-float v34, v34, v35

    add-float v14, v33, v34

    .line 992
    .restart local v14    # "currentScale":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToY:F

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    move/from16 v35, v0

    sub-float v34, v34, v35

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->animationValue:F

    move/from16 v35, v0

    mul-float v34, v34, v35

    add-float v16, v33, v34

    .line 993
    .restart local v16    # "currentTranslationY":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToX:F

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    move/from16 v35, v0

    sub-float v34, v34, v35

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->animationValue:F

    move/from16 v35, v0

    mul-float v34, v34, v35

    add-float v15, v33, v34

    .line 994
    .restart local v15    # "currentTranslationX":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->clipTop:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipTop:F

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->clipTop:F

    move/from16 v35, v0

    sub-float v34, v34, v35

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->animationValue:F

    move/from16 v35, v0

    mul-float v34, v34, v35

    add-float v13, v33, v34

    .line 995
    .restart local v13    # "currentClipTop":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->clipBottom:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipBottom:F

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->clipBottom:F

    move/from16 v35, v0

    sub-float v34, v34, v35

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->animationValue:F

    move/from16 v35, v0

    mul-float v34, v34, v35

    add-float v11, v33, v34

    .line 996
    .restart local v11    # "currentClipBottom":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->clipHorizontal:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipHorizontal:F

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->clipHorizontal:F

    move/from16 v35, v0

    sub-float v34, v34, v35

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->animationValue:F

    move/from16 v35, v0

    mul-float v34, v34, v35

    add-float v12, v33, v34

    .restart local v12    # "currentClipHorizontal":F
    goto/16 :goto_2

    .line 1004
    .end local v11    # "currentClipBottom":F
    .end local v12    # "currentClipHorizontal":F
    .end local v13    # "currentClipTop":F
    .end local v14    # "currentScale":F
    .end local v15    # "currentTranslationX":F
    .end local v16    # "currentTranslationY":F
    :cond_c
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/SecretMediaViewer;->animationStartTime:J

    move-wide/from16 v34, v0

    const-wide/16 v36, 0x0

    cmp-long v33, v34, v36

    if-eqz v33, :cond_d

    .line 1005
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToX:F

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    .line 1006
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToY:F

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    .line 1007
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipBottom:F

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/SecretMediaViewer;->clipBottom:F

    .line 1008
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipTop:F

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/SecretMediaViewer;->clipTop:F

    .line 1009
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipHorizontal:F

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/SecretMediaViewer;->clipHorizontal:F

    .line 1010
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToScale:F

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    .line 1011
    const-wide/16 v34, 0x0

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/SecretMediaViewer;->animationStartTime:J

    .line 1012
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v1}, Lorg/telegram/ui/SecretMediaViewer;->updateMinMax(F)V

    .line 1013
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/SecretMediaViewer;->zoomAnimation:Z

    .line 1014
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/SecretMediaViewer;->useOvershootForScale:Z

    .line 1016
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SecretMediaViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lorg/telegram/ui/Components/Scroller;->isFinished()Z

    move-result v33

    if-nez v33, :cond_10

    .line 1017
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SecretMediaViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lorg/telegram/ui/Components/Scroller;->computeScrollOffset()Z

    move-result v33

    if-eqz v33, :cond_10

    .line 1018
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SecretMediaViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lorg/telegram/ui/Components/Scroller;->getStartX()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->maxX:F

    move/from16 v34, v0

    cmpg-float v33, v33, v34

    if-gez v33, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SecretMediaViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lorg/telegram/ui/Components/Scroller;->getStartX()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->minX:F

    move/from16 v34, v0

    cmpl-float v33, v33, v34

    if-lez v33, :cond_e

    .line 1019
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SecretMediaViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lorg/telegram/ui/Components/Scroller;->getCurrX()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    .line 1021
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SecretMediaViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lorg/telegram/ui/Components/Scroller;->getStartY()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->maxY:F

    move/from16 v34, v0

    cmpg-float v33, v33, v34

    if-gez v33, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SecretMediaViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lorg/telegram/ui/Components/Scroller;->getStartY()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->minY:F

    move/from16 v34, v0

    cmpl-float v33, v33, v34

    if-lez v33, :cond_f

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SecretMediaViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lorg/telegram/ui/Components/Scroller;->getCurrY()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    .line 1024
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;->invalidate()V

    .line 1027
    :cond_10
    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    .line 1028
    .restart local v14    # "currentScale":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    move/from16 v16, v0

    .line 1029
    .restart local v16    # "currentTranslationY":F
    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    .line 1030
    .restart local v15    # "currentTranslationX":F
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/SecretMediaViewer;->clipTop:F

    .line 1031
    .restart local v13    # "currentClipTop":F
    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/ui/SecretMediaViewer;->clipBottom:F

    .line 1032
    .restart local v11    # "currentClipBottom":F
    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/ui/SecretMediaViewer;->clipHorizontal:F

    .line 1033
    .restart local v12    # "currentClipHorizontal":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/SecretMediaViewer;->moving:Z

    move/from16 v33, v0

    if-nez v33, :cond_3

    .line 1034
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    goto/16 :goto_3

    .line 1046
    .restart local v6    # "alpha":F
    .restart local v30    # "scaleDiff":F
    .restart local v31    # "translateX":F
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SecretMediaViewer;->photoBackgroundDrawable:Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;

    move-object/from16 v33, v0

    const/16 v34, 0xff

    invoke-virtual/range {v33 .. v34}, Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;->setAlpha(I)V

    goto/16 :goto_4

    .line 1056
    :cond_12
    const/16 v17, 0x0

    goto/16 :goto_5
.end method

.method private onPhotoClosed(Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V
    .locals 4
    .param p1, "object"    # Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    .prologue
    const/4 v2, 0x0

    .line 1307
    iput-boolean v2, p0, Lorg/telegram/ui/SecretMediaViewer;->isVisible:Z

    .line 1308
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/SecretMediaViewer;->currentProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    .line 1309
    iput-boolean v2, p0, Lorg/telegram/ui/SecretMediaViewer;->disableShowCheck:Z

    .line 1310
    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->releasePlayer()V

    .line 1311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1312
    .local v0, "filesToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    new-instance v1, Lorg/telegram/ui/SecretMediaViewer$14;

    invoke-direct {v1, p0}, Lorg/telegram/ui/SecretMediaViewer$14;-><init>(Lorg/telegram/ui/SecretMediaViewer;)V

    const-wide/16 v2, 0x32

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1327
    return-void
.end method

.method private preparePlayer(Ljava/io/File;)V
    .locals 6
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/16 v5, 0x11

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 455
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->parentActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 552
    :goto_0
    return-void

    .line 458
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->releasePlayer()V

    .line 459
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->videoTextureView:Landroid/view/TextureView;

    if-nez v0, :cond_1

    .line 460
    new-instance v0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    .line 461
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->setVisibility(I)V

    .line 462
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-static {v3, v3, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 464
    new-instance v0, Landroid/view/TextureView;

    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->videoTextureView:Landroid/view/TextureView;

    .line 465
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->videoTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v4}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 466
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer;->videoTextureView:Landroid/view/TextureView;

    invoke-static {v3, v3, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 468
    :cond_1
    iput-boolean v4, p0, Lorg/telegram/ui/SecretMediaViewer;->textureUploaded:Z

    .line 469
    iput-boolean v4, p0, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeStarted:Z

    .line 470
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->videoTextureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeAlpha:F

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setAlpha(F)V

    .line 471
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v0, :cond_2

    .line 472
    new-instance v0, Lorg/telegram/ui/Components/VideoPlayer;

    invoke-direct {v0}, Lorg/telegram/ui/Components/VideoPlayer;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 473
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer;->videoTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    .line 474
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    new-instance v1, Lorg/telegram/ui/SecretMediaViewer$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/SecretMediaViewer$1;-><init>(Lorg/telegram/ui/SecretMediaViewer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setDelegate(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;)V

    .line 550
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "other"

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    goto :goto_0
.end method

.method private processTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1355
    iget v8, p0, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationInProgress:I

    if-nez v8, :cond_0

    iget-wide v8, p0, Lorg/telegram/ui/SecretMediaViewer;->animationStartTime:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_1

    .line 1356
    :cond_0
    const/4 v8, 0x0

    .line 1520
    :goto_0
    return v8

    .line 1359
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    iget-object v8, p0, Lorg/telegram/ui/SecretMediaViewer;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v8, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-boolean v8, p0, Lorg/telegram/ui/SecretMediaViewer;->doubleTap:Z

    if-eqz v8, :cond_2

    .line 1360
    const/4 v8, 0x0

    iput-boolean v8, p0, Lorg/telegram/ui/SecretMediaViewer;->doubleTap:Z

    .line 1361
    const/4 v8, 0x0

    iput-boolean v8, p0, Lorg/telegram/ui/SecretMediaViewer;->moving:Z

    .line 1362
    const/4 v8, 0x0

    iput-boolean v8, p0, Lorg/telegram/ui/SecretMediaViewer;->zooming:Z

    .line 1363
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lorg/telegram/ui/SecretMediaViewer;->checkMinMax(Z)V

    .line 1364
    const/4 v8, 0x1

    goto :goto_0

    .line 1367
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_7

    .line 1368
    :cond_3
    const/4 v8, 0x0

    iput-boolean v8, p0, Lorg/telegram/ui/SecretMediaViewer;->discardTap:Z

    .line 1369
    iget-object v8, p0, Lorg/telegram/ui/SecretMediaViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/Scroller;->isFinished()Z

    move-result v8

    if-nez v8, :cond_4

    .line 1370
    iget-object v8, p0, Lorg/telegram/ui/SecretMediaViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/Scroller;->abortAnimation()V

    .line 1372
    :cond_4
    iget-boolean v8, p0, Lorg/telegram/ui/SecretMediaViewer;->draggingDown:Z

    if-nez v8, :cond_5

    .line 1373
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_6

    .line 1374
    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    sub-float/2addr v8, v9

    float-to-double v8, v8

    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    sub-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v8, v8

    iput v8, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchStartDistance:F

    .line 1375
    iget v8, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    iput v8, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchStartScale:F

    .line 1376
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    add-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    iput v8, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchCenterX:F

    .line 1377
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    add-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    iput v8, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchCenterY:F

    .line 1378
    iget v8, p0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    iput v8, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchStartX:F

    .line 1379
    iget v8, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    iput v8, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchStartY:F

    .line 1380
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/telegram/ui/SecretMediaViewer;->zooming:Z

    .line 1381
    const/4 v8, 0x0

    iput-boolean v8, p0, Lorg/telegram/ui/SecretMediaViewer;->moving:Z

    .line 1382
    iget-object v8, p0, Lorg/telegram/ui/SecretMediaViewer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_5

    .line 1383
    iget-object v8, p0, Lorg/telegram/ui/SecretMediaViewer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->clear()V

    .line 1520
    :cond_5
    :goto_1
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1385
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 1386
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iput v8, p0, Lorg/telegram/ui/SecretMediaViewer;->moveStartX:F

    .line 1387
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iput v8, p0, Lorg/telegram/ui/SecretMediaViewer;->moveStartY:F

    iput v8, p0, Lorg/telegram/ui/SecretMediaViewer;->dragY:F

    .line 1388
    const/4 v8, 0x0

    iput-boolean v8, p0, Lorg/telegram/ui/SecretMediaViewer;->draggingDown:Z

    .line 1389
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/telegram/ui/SecretMediaViewer;->canDragDown:Z

    .line 1390
    iget-object v8, p0, Lorg/telegram/ui/SecretMediaViewer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_5

    .line 1391
    iget-object v8, p0, Lorg/telegram/ui/SecretMediaViewer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1

    .line 1395
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1a

    .line 1396
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_8

    iget-boolean v8, p0, Lorg/telegram/ui/SecretMediaViewer;->draggingDown:Z

    if-nez v8, :cond_8

    iget-boolean v8, p0, Lorg/telegram/ui/SecretMediaViewer;->zooming:Z

    if-eqz v8, :cond_8

    .line 1397
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/telegram/ui/SecretMediaViewer;->discardTap:Z

    .line 1398
    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    sub-float/2addr v8, v9

    float-to-double v8, v8

    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    sub-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v8, v8

    iget v9, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchStartDistance:F

    div-float/2addr v8, v9

    iget v9, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchStartScale:F

    mul-float/2addr v8, v9

    iput v8, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    .line 1399
    iget v8, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchCenterX:F

    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iget v9, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchCenterX:F

    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget v10, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchStartX:F

    sub-float/2addr v9, v10

    iget v10, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    iget v11, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchStartScale:F

    div-float/2addr v10, v11

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    iput v8, p0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    .line 1400
    iget v8, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchCenterY:F

    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iget v9, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchCenterY:F

    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget v10, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchStartY:F

    sub-float/2addr v9, v10

    iget v10, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    iget v11, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchStartScale:F

    div-float/2addr v10, v11

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    iput v8, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    .line 1401
    iget v8, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    invoke-direct {p0, v8}, Lorg/telegram/ui/SecretMediaViewer;->updateMinMax(F)V

    .line 1402
    iget-object v8, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {v8}, Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;->invalidate()V

    goto/16 :goto_1

    .line 1403
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 1404
    iget-object v8, p0, Lorg/telegram/ui/SecretMediaViewer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_9

    .line 1405
    iget-object v8, p0, Lorg/telegram/ui/SecretMediaViewer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1407
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iget v9, p0, Lorg/telegram/ui/SecretMediaViewer;->moveStartX:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1408
    .local v2, "dx":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget v9, p0, Lorg/telegram/ui/SecretMediaViewer;->dragY:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 1409
    .local v3, "dy":F
    const/high16 v8, 0x40400000    # 3.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    cmpl-float v8, v2, v8

    if-gtz v8, :cond_a

    const/high16 v8, 0x40400000    # 3.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    cmpl-float v8, v3, v8

    if-lez v8, :cond_b

    .line 1410
    :cond_a
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/telegram/ui/SecretMediaViewer;->discardTap:Z

    .line 1412
    :cond_b
    iget-boolean v8, p0, Lorg/telegram/ui/SecretMediaViewer;->canDragDown:Z

    if-eqz v8, :cond_d

    iget-boolean v8, p0, Lorg/telegram/ui/SecretMediaViewer;->draggingDown:Z

    if-nez v8, :cond_d

    iget v8, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v9

    if-nez v8, :cond_d

    const/high16 v8, 0x41f00000    # 30.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    cmpl-float v8, v3, v8

    if-ltz v8, :cond_d

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v3, v8

    cmpl-float v8, v8, v2

    if-lez v8, :cond_d

    .line 1413
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/telegram/ui/SecretMediaViewer;->draggingDown:Z

    .line 1414
    const/4 v8, 0x0

    iput-boolean v8, p0, Lorg/telegram/ui/SecretMediaViewer;->moving:Z

    .line 1415
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iput v8, p0, Lorg/telegram/ui/SecretMediaViewer;->dragY:F

    .line 1416
    iget-boolean v8, p0, Lorg/telegram/ui/SecretMediaViewer;->isActionBarVisible:Z

    if-eqz v8, :cond_c

    .line 1417
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct {p0, v8, v9}, Lorg/telegram/ui/SecretMediaViewer;->toggleActionBar(ZZ)V

    .line 1419
    :cond_c
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 1420
    :cond_d
    iget-boolean v8, p0, Lorg/telegram/ui/SecretMediaViewer;->draggingDown:Z

    if-eqz v8, :cond_e

    .line 1421
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget v9, p0, Lorg/telegram/ui/SecretMediaViewer;->dragY:F

    sub-float/2addr v8, v9

    iput v8, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    .line 1422
    iget-object v8, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {v8}, Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;->invalidate()V

    goto/16 :goto_1

    .line 1423
    :cond_e
    iget-boolean v8, p0, Lorg/telegram/ui/SecretMediaViewer;->invalidCoords:Z

    if-nez v8, :cond_19

    iget-wide v8, p0, Lorg/telegram/ui/SecretMediaViewer;->animationStartTime:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_19

    .line 1424
    iget v8, p0, Lorg/telegram/ui/SecretMediaViewer;->moveStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    sub-float v4, v8, v9

    .line 1425
    .local v4, "moveDx":F
    iget v8, p0, Lorg/telegram/ui/SecretMediaViewer;->moveStartY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    sub-float v5, v8, v9

    .line 1426
    .local v5, "moveDy":F
    iget-boolean v8, p0, Lorg/telegram/ui/SecretMediaViewer;->moving:Z

    if-nez v8, :cond_10

    iget v8, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v9

    if-nez v8, :cond_f

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const/high16 v9, 0x41400000    # 12.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpg-float v8, v8, v9

    if-ltz v8, :cond_10

    :cond_f
    iget v8, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_5

    .line 1427
    :cond_10
    iget-boolean v8, p0, Lorg/telegram/ui/SecretMediaViewer;->moving:Z

    if-nez v8, :cond_11

    .line 1428
    const/4 v4, 0x0

    .line 1429
    const/4 v5, 0x0

    .line 1430
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/telegram/ui/SecretMediaViewer;->moving:Z

    .line 1431
    const/4 v8, 0x0

    iput-boolean v8, p0, Lorg/telegram/ui/SecretMediaViewer;->canDragDown:Z

    .line 1434
    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iput v8, p0, Lorg/telegram/ui/SecretMediaViewer;->moveStartX:F

    .line 1435
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iput v8, p0, Lorg/telegram/ui/SecretMediaViewer;->moveStartY:F

    .line 1436
    iget v8, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    invoke-direct {p0, v8}, Lorg/telegram/ui/SecretMediaViewer;->updateMinMax(F)V

    .line 1437
    iget v8, p0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    iget v9, p0, Lorg/telegram/ui/SecretMediaViewer;->minX:F

    cmpg-float v8, v8, v9

    if-ltz v8, :cond_12

    iget v8, p0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    iget v9, p0, Lorg/telegram/ui/SecretMediaViewer;->maxX:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_13

    .line 1438
    :cond_12
    const/high16 v8, 0x40400000    # 3.0f

    div-float/2addr v4, v8

    .line 1440
    :cond_13
    iget v8, p0, Lorg/telegram/ui/SecretMediaViewer;->maxY:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_17

    iget v8, p0, Lorg/telegram/ui/SecretMediaViewer;->minY:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_17

    .line 1441
    iget v8, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    sub-float/2addr v8, v5

    iget v9, p0, Lorg/telegram/ui/SecretMediaViewer;->minY:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_16

    .line 1442
    iget v8, p0, Lorg/telegram/ui/SecretMediaViewer;->minY:F

    iput v8, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    .line 1443
    const/4 v5, 0x0

    .line 1454
    :cond_14
    :goto_2
    iget v8, p0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    sub-float/2addr v8, v4

    iput v8, p0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    .line 1455
    iget v8, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_15

    .line 1456
    iget v8, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    sub-float/2addr v8, v5

    iput v8, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    .line 1458
    :cond_15
    iget-object v8, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {v8}, Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;->invalidate()V

    goto/16 :goto_1

    .line 1444
    :cond_16
    iget v8, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    sub-float/2addr v8, v5

    iget v9, p0, Lorg/telegram/ui/SecretMediaViewer;->maxY:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_14

    .line 1445
    iget v8, p0, Lorg/telegram/ui/SecretMediaViewer;->maxY:F

    iput v8, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    .line 1446
    const/4 v5, 0x0

    goto :goto_2

    .line 1449
    :cond_17
    iget v8, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    iget v9, p0, Lorg/telegram/ui/SecretMediaViewer;->minY:F

    cmpg-float v8, v8, v9

    if-ltz v8, :cond_18

    iget v8, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    iget v9, p0, Lorg/telegram/ui/SecretMediaViewer;->maxY:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_14

    .line 1450
    :cond_18
    const/high16 v8, 0x40400000    # 3.0f

    div-float/2addr v5, v8

    goto :goto_2

    .line 1461
    .end local v4    # "moveDx":F
    .end local v5    # "moveDy":F
    :cond_19
    const/4 v8, 0x0

    iput-boolean v8, p0, Lorg/telegram/ui/SecretMediaViewer;->invalidCoords:Z

    .line 1462
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iput v8, p0, Lorg/telegram/ui/SecretMediaViewer;->moveStartX:F

    .line 1463
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iput v8, p0, Lorg/telegram/ui/SecretMediaViewer;->moveStartY:F

    goto/16 :goto_1

    .line 1466
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    :cond_1a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_1b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_1b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    const/4 v9, 0x6

    if-ne v8, v9, :cond_5

    .line 1467
    :cond_1b
    iget-boolean v8, p0, Lorg/telegram/ui/SecretMediaViewer;->zooming:Z

    if-eqz v8, :cond_22

    .line 1468
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/telegram/ui/SecretMediaViewer;->invalidCoords:Z

    .line 1469
    iget v8, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    const/high16 v9, 0x3f800000    # 1.0f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1c

    .line 1470
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {p0, v8}, Lorg/telegram/ui/SecretMediaViewer;->updateMinMax(F)V

    .line 1471
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-direct {p0, v8, v9, v10, v11}, Lorg/telegram/ui/SecretMediaViewer;->animateTo(FFFZ)V

    .line 1490
    :goto_3
    const/4 v8, 0x0

    iput-boolean v8, p0, Lorg/telegram/ui/SecretMediaViewer;->zooming:Z

    goto/16 :goto_1

    .line 1472
    :cond_1c
    iget v8, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    const/high16 v9, 0x40400000    # 3.0f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_21

    .line 1473
    iget v8, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchCenterX:F

    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iget v9, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchCenterX:F

    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget v10, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchStartX:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x40400000    # 3.0f

    iget v11, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchStartScale:F

    div-float/2addr v10, v11

    mul-float/2addr v9, v10

    sub-float v0, v8, v9

    .line 1474
    .local v0, "atx":F
    iget v8, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchCenterY:F

    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iget v9, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchCenterY:F

    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget v10, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchStartY:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x40400000    # 3.0f

    iget v11, p0, Lorg/telegram/ui/SecretMediaViewer;->pinchStartScale:F

    div-float/2addr v10, v11

    mul-float/2addr v9, v10

    sub-float v1, v8, v9

    .line 1475
    .local v1, "aty":F
    const/high16 v8, 0x40400000    # 3.0f

    invoke-direct {p0, v8}, Lorg/telegram/ui/SecretMediaViewer;->updateMinMax(F)V

    .line 1476
    iget v8, p0, Lorg/telegram/ui/SecretMediaViewer;->minX:F

    cmpg-float v8, v0, v8

    if-gez v8, :cond_1f

    .line 1477
    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->minX:F

    .line 1481
    :cond_1d
    :goto_4
    iget v8, p0, Lorg/telegram/ui/SecretMediaViewer;->minY:F

    cmpg-float v8, v1, v8

    if-gez v8, :cond_20

    .line 1482
    iget v1, p0, Lorg/telegram/ui/SecretMediaViewer;->minY:F

    .line 1486
    :cond_1e
    :goto_5
    const/high16 v8, 0x40400000    # 3.0f

    const/4 v9, 0x1

    invoke-direct {p0, v8, v0, v1, v9}, Lorg/telegram/ui/SecretMediaViewer;->animateTo(FFFZ)V

    goto :goto_3

    .line 1478
    :cond_1f
    iget v8, p0, Lorg/telegram/ui/SecretMediaViewer;->maxX:F

    cmpl-float v8, v0, v8

    if-lez v8, :cond_1d

    .line 1479
    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->maxX:F

    goto :goto_4

    .line 1483
    :cond_20
    iget v8, p0, Lorg/telegram/ui/SecretMediaViewer;->maxY:F

    cmpl-float v8, v1, v8

    if-lez v8, :cond_1e

    .line 1484
    iget v1, p0, Lorg/telegram/ui/SecretMediaViewer;->maxY:F

    goto :goto_5

    .line 1488
    .end local v0    # "atx":F
    .end local v1    # "aty":F
    :cond_21
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lorg/telegram/ui/SecretMediaViewer;->checkMinMax(Z)V

    goto :goto_3

    .line 1491
    :cond_22
    iget-boolean v8, p0, Lorg/telegram/ui/SecretMediaViewer;->draggingDown:Z

    if-eqz v8, :cond_24

    .line 1492
    iget v8, p0, Lorg/telegram/ui/SecretMediaViewer;->dragY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewHeight()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x40c00000    # 6.0f

    div-float/2addr v9, v10

    cmpl-float v8, v8, v9

    if-lez v8, :cond_23

    .line 1493
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lorg/telegram/ui/SecretMediaViewer;->closePhoto(ZZ)V

    .line 1497
    :goto_6
    const/4 v8, 0x0

    iput-boolean v8, p0, Lorg/telegram/ui/SecretMediaViewer;->draggingDown:Z

    goto/16 :goto_1

    .line 1495
    :cond_23
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {p0, v8, v9, v10, v11}, Lorg/telegram/ui/SecretMediaViewer;->animateTo(FFFZ)V

    goto :goto_6

    .line 1498
    :cond_24
    iget-boolean v8, p0, Lorg/telegram/ui/SecretMediaViewer;->moving:Z

    if-eqz v8, :cond_5

    .line 1499
    iget v6, p0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    .line 1500
    .local v6, "moveToX":F
    iget v7, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    .line 1501
    .local v7, "moveToY":F
    iget v8, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    invoke-direct {p0, v8}, Lorg/telegram/ui/SecretMediaViewer;->updateMinMax(F)V

    .line 1502
    const/4 v8, 0x0

    iput-boolean v8, p0, Lorg/telegram/ui/SecretMediaViewer;->moving:Z

    .line 1503
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/telegram/ui/SecretMediaViewer;->canDragDown:Z

    .line 1504
    iget-object v8, p0, Lorg/telegram/ui/SecretMediaViewer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_25

    iget v8, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v9

    if-nez v8, :cond_25

    .line 1505
    iget-object v8, p0, Lorg/telegram/ui/SecretMediaViewer;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1507
    :cond_25
    iget v8, p0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    iget v9, p0, Lorg/telegram/ui/SecretMediaViewer;->minX:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_28

    .line 1508
    iget v6, p0, Lorg/telegram/ui/SecretMediaViewer;->minX:F

    .line 1512
    :cond_26
    :goto_7
    iget v8, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    iget v9, p0, Lorg/telegram/ui/SecretMediaViewer;->minY:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_29

    .line 1513
    iget v7, p0, Lorg/telegram/ui/SecretMediaViewer;->minY:F

    .line 1517
    :cond_27
    :goto_8
    iget v8, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    const/4 v9, 0x0

    invoke-direct {p0, v8, v6, v7, v9}, Lorg/telegram/ui/SecretMediaViewer;->animateTo(FFFZ)V

    goto/16 :goto_1

    .line 1509
    :cond_28
    iget v8, p0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    iget v9, p0, Lorg/telegram/ui/SecretMediaViewer;->maxX:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_26

    .line 1510
    iget v6, p0, Lorg/telegram/ui/SecretMediaViewer;->maxX:F

    goto :goto_7

    .line 1514
    :cond_29
    iget v8, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    iget v9, p0, Lorg/telegram/ui/SecretMediaViewer;->maxY:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_27

    .line 1515
    iget v7, p0, Lorg/telegram/ui/SecretMediaViewer;->maxY:F

    goto :goto_8
.end method

.method private releasePlayer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 555
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v1, :cond_0

    .line 556
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer()V

    .line 557
    iput-object v3, p0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 560
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 561
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v1, :cond_2

    .line 567
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    iget-object v2, p0, Lorg/telegram/ui/SecretMediaViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;->removeView(Landroid/view/View;)V

    .line 568
    iput-object v3, p0, Lorg/telegram/ui/SecretMediaViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    .line 570
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer;->videoTextureView:Landroid/view/TextureView;

    if-eqz v1, :cond_3

    .line 571
    iput-object v3, p0, Lorg/telegram/ui/SecretMediaViewer;->videoTextureView:Landroid/view/TextureView;

    .line 573
    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/ui/SecretMediaViewer;->isPlaying:Z

    .line 574
    return-void

    .line 563
    :catch_0
    move-exception v0

    .line 564
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private scaleToFill()Z
    .locals 1

    .prologue
    .line 1658
    const/4 v0, 0x0

    return v0
.end method

.method private toggleActionBar(ZZ)V
    .locals 7
    .param p1, "show"    # Z
    .param p2, "animated"    # Z

    .prologue
    const/4 v6, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 897
    if-eqz p1, :cond_0

    .line 898
    iget-object v3, p0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setVisibility(I)V

    .line 900
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setEnabled(Z)V

    .line 901
    iput-boolean p1, p0, Lorg/telegram/ui/SecretMediaViewer;->isActionBarVisible:Z

    .line 903
    if-eqz p2, :cond_4

    .line 904
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 905
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v3, p0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v4, "alpha"

    const/4 v5, 0x1

    new-array v5, v5, [F

    if-eqz p1, :cond_3

    :goto_0
    aput v1, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 906
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/SecretMediaViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    .line 907
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 908
    if-nez p1, :cond_1

    .line 909
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    new-instance v2, Lorg/telegram/ui/SecretMediaViewer$9;

    invoke-direct {v2, p0}, Lorg/telegram/ui/SecretMediaViewer$9;-><init>(Lorg/telegram/ui/SecretMediaViewer;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 920
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 921
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 928
    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_2
    :goto_1
    return-void

    .restart local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_3
    move v1, v2

    .line 905
    goto :goto_0

    .line 923
    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz p1, :cond_5

    :goto_2
    invoke-virtual {v3, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAlpha(F)V

    .line 924
    if-nez p1, :cond_2

    .line 925
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setVisibility(I)V

    goto :goto_1

    :cond_5
    move v1, v2

    .line 923
    goto :goto_2
.end method

.method private updateMinMax(F)V
    .locals 5
    .param p1, "scale"    # F

    .prologue
    const/4 v4, 0x0

    .line 1330
    iget-object v2, p0, Lorg/telegram/ui/SecretMediaViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    div-int/lit8 v1, v2, 0x2

    .line 1331
    .local v1, "maxW":I
    iget-object v2, p0, Lorg/telegram/ui/SecretMediaViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    div-int/lit8 v0, v2, 0x2

    .line 1332
    .local v0, "maxH":I
    if-lez v1, :cond_0

    .line 1333
    neg-int v2, v1

    int-to-float v2, v2

    iput v2, p0, Lorg/telegram/ui/SecretMediaViewer;->minX:F

    .line 1334
    int-to-float v2, v1

    iput v2, p0, Lorg/telegram/ui/SecretMediaViewer;->maxX:F

    .line 1338
    :goto_0
    if-lez v0, :cond_1

    .line 1339
    neg-int v2, v0

    int-to-float v2, v2

    iput v2, p0, Lorg/telegram/ui/SecretMediaViewer;->minY:F

    .line 1340
    int-to-float v2, v0

    iput v2, p0, Lorg/telegram/ui/SecretMediaViewer;->maxY:F

    .line 1344
    :goto_1
    return-void

    .line 1336
    :cond_0
    iput v4, p0, Lorg/telegram/ui/SecretMediaViewer;->maxX:F

    iput v4, p0, Lorg/telegram/ui/SecretMediaViewer;->minX:F

    goto :goto_0

    .line 1342
    :cond_1
    iput v4, p0, Lorg/telegram/ui/SecretMediaViewer;->maxY:F

    iput v4, p0, Lorg/telegram/ui/SecretMediaViewer;->minY:F

    goto :goto_1
.end method


# virtual methods
.method public closePhoto(ZZ)V
    .locals 20
    .param p1, "animated"    # Z
    .param p2, "byDelete"    # Z

    .prologue
    .line 1142
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/SecretMediaViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/telegram/ui/SecretMediaViewer;->isPhotoVisible:Z

    if-eqz v12, :cond_0

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/SecretMediaViewer;->checkPhotoAnimation()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1304
    :cond_0
    :goto_0
    return-void

    .line 1146
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v12

    sget v13, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    move-object/from16 v0, p0

    invoke-virtual {v12, v0, v13}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1147
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v12

    sget v13, Lorg/telegram/messenger/NotificationCenter;->updateMessageMedia:I

    move-object/from16 v0, p0

    invoke-virtual {v12, v0, v13}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1148
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v12

    sget v13, Lorg/telegram/messenger/NotificationCenter;->didCreatedNewDeleteTask:I

    move-object/from16 v0, p0

    invoke-virtual {v12, v0, v13}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1150
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lorg/telegram/ui/SecretMediaViewer;->isActionBarVisible:Z

    .line 1152
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/SecretMediaViewer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v12, :cond_2

    .line 1153
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/SecretMediaViewer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v12}, Landroid/view/VelocityTracker;->recycle()V

    .line 1154
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/telegram/ui/SecretMediaViewer;->velocityTracker:Landroid/view/VelocityTracker;

    .line 1156
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/telegram/ui/SecretMediaViewer;->closeTime:J

    .line 1158
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/SecretMediaViewer;->currentProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/SecretMediaViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v12, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    instance-of v12, v12, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;

    if-nez v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/SecretMediaViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v12, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    instance-of v12, v12, Lorg/telegram/tgnet/TLRPC$TL_documentEmpty;

    if-eqz v12, :cond_8

    .line 1159
    :cond_3
    const/4 v8, 0x0

    .line 1163
    .local v8, "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v12, :cond_4

    .line 1164
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/SecretMediaViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    .line 1166
    :cond_4
    if-eqz p1, :cond_10

    .line 1167
    const/4 v12, 0x3

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationInProgress:I

    .line 1168
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {v12}, Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;->invalidate()V

    .line 1170
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    .line 1172
    if-eqz v8, :cond_c

    iget-object v12, v8, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v12}, Lorg/telegram/messenger/ImageReceiver;->getThumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    if-eqz v12, :cond_c

    if-nez p2, :cond_c

    .line 1173
    iget-object v12, v8, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 1175
    iget-object v12, v8, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v12}, Lorg/telegram/messenger/ImageReceiver;->getDrawRegion()Landroid/graphics/Rect;

    move-result-object v5

    .line 1177
    .local v5, "drawRegion":Landroid/graphics/Rect;
    iget v12, v5, Landroid/graphics/Rect;->right:I

    iget v13, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v13

    int-to-float v11, v12

    .line 1178
    .local v11, "width":F
    iget v12, v5, Landroid/graphics/Rect;->bottom:I

    iget v13, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v13

    int-to-float v7, v12

    .line 1179
    .local v7, "height":F
    sget-object v12, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v10, v12, Landroid/graphics/Point;->x:I

    .line 1180
    .local v10, "viewWidth":I
    sget-object v12, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v13, v12, Landroid/graphics/Point;->y:I

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x15

    if-lt v12, v14, :cond_9

    sget v12, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_2
    add-int v9, v13, v12

    .line 1181
    .local v9, "viewHeight":I
    int-to-float v12, v10

    div-float v12, v11, v12

    int-to-float v13, v9

    div-float v13, v7, v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToScale:F

    .line 1182
    iget v12, v8, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewX:I

    iget v13, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v12, v13

    int-to-float v12, v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float v13, v11, v13

    add-float/2addr v12, v13

    div-int/lit8 v13, v10, 0x2

    int-to-float v13, v13

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToX:F

    .line 1183
    iget v12, v8, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    iget v13, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v12, v13

    int-to-float v12, v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float v13, v7, v13

    add-float/2addr v12, v13

    div-int/lit8 v13, v9, 0x2

    int-to-float v13, v13

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToY:F

    .line 1184
    iget v12, v5, Landroid/graphics/Rect;->left:I

    iget-object v13, v8, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getImageX()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    int-to-float v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipHorizontal:F

    .line 1185
    iget v12, v5, Landroid/graphics/Rect;->top:I

    iget-object v13, v8, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getImageY()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1186
    .local v3, "clipVertical":I
    const/4 v12, 0x2

    new-array v4, v12, [I

    .line 1187
    .local v4, "coords2":[I
    iget-object v12, v8, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    invoke-virtual {v12, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1188
    const/4 v12, 0x1

    aget v13, v4, v12

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x15

    if-lt v12, v14, :cond_a

    const/4 v12, 0x0

    :goto_3
    sub-int v12, v13, v12

    iget v13, v8, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    iget v14, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v14

    sub-int/2addr v12, v13

    iget v13, v8, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->clipTopAddition:I

    add-int/2addr v12, v13

    int-to-float v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipTop:F

    .line 1189
    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipTop:F

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_5

    .line 1190
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipTop:F

    .line 1192
    :cond_5
    iget v12, v8, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    iget v13, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v12, v13

    float-to-int v13, v7

    add-int/2addr v13, v12

    const/4 v12, 0x1

    aget v12, v4, v12

    iget-object v14, v8, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v14

    add-int/2addr v14, v12

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x15

    if-lt v12, v15, :cond_b

    const/4 v12, 0x0

    :goto_4
    sub-int v12, v14, v12

    sub-int v12, v13, v12

    iget v13, v8, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->clipBottomAddition:I

    add-int/2addr v12, v13

    int-to-float v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipBottom:F

    .line 1193
    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipBottom:F

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_6

    .line 1194
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipBottom:F

    .line 1196
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/telegram/ui/SecretMediaViewer;->animationStartTime:J

    .line 1197
    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipBottom:F

    int-to-float v13, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipBottom:F

    .line 1198
    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipTop:F

    int-to-float v13, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipTop:F

    .line 1199
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lorg/telegram/ui/SecretMediaViewer;->zoomAnimation:Z

    .line 1204
    .end local v3    # "clipVertical":I
    .end local v4    # "coords2":[I
    .end local v5    # "drawRegion":Landroid/graphics/Rect;
    .end local v7    # "height":F
    .end local v9    # "viewHeight":I
    .end local v10    # "viewWidth":I
    .end local v11    # "width":F
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/telegram/ui/SecretMediaViewer;->isVideo:Z

    if-eqz v12, :cond_f

    .line 1205
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeStarted:Z

    .line 1206
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lorg/telegram/ui/SecretMediaViewer;->textureUploaded:Z

    .line 1207
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    const/4 v13, 0x5

    new-array v13, v13, [Landroid/animation/Animator;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/SecretMediaViewer;->photoBackgroundDrawable:Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;

    const-string/jumbo v16, "alpha"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    aput v19, v17, v18

    .line 1208
    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const-string/jumbo v15, "animationValue"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_0

    .line 1209
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v16, "alpha"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    aput v19, v17, v18

    .line 1210
    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/SecretMediaViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    const-string/jumbo v16, "alpha"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    aput v19, v17, v18

    .line 1211
    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x4

    const-string/jumbo v15, "videoCrossfadeAlpha"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    aput v18, v16, v17

    .line 1212
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    aput-object v15, v13, v14

    .line 1207
    invoke-virtual {v12, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1225
    :goto_6
    new-instance v12, Lorg/telegram/ui/SecretMediaViewer$10;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v8}, Lorg/telegram/ui/SecretMediaViewer$10;-><init>(Lorg/telegram/ui/SecretMediaViewer;Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationEndRunnable:Ljava/lang/Runnable;

    .line 1238
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    new-instance v13, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v13}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v12, v13}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1239
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v14, 0xfa

    invoke-virtual {v12, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1240
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    new-instance v13, Lorg/telegram/ui/SecretMediaViewer$11;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v8}, Lorg/telegram/ui/SecretMediaViewer$11;-><init>(Lorg/telegram/ui/SecretMediaViewer;Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V

    invoke-virtual {v12, v13}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/telegram/ui/SecretMediaViewer;->photoTransitionAnimationStartTime:J

    .line 1259
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x12

    if-lt v12, v13, :cond_7

    .line 1260
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1262
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 1161
    .end local v8    # "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/SecretMediaViewer;->currentProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/SecretMediaViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface {v12, v13, v14, v15}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    move-result-object v8

    .restart local v8    # "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    goto/16 :goto_1

    .line 1180
    .restart local v5    # "drawRegion":Landroid/graphics/Rect;
    .restart local v7    # "height":F
    .restart local v10    # "viewWidth":I
    .restart local v11    # "width":F
    :cond_9
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 1188
    .restart local v3    # "clipVertical":I
    .restart local v4    # "coords2":[I
    .restart local v9    # "viewHeight":I
    :cond_a
    sget v12, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto/16 :goto_3

    .line 1192
    :cond_b
    sget v12, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto/16 :goto_4

    .line 1201
    .end local v3    # "clipVertical":I
    .end local v4    # "coords2":[I
    .end local v5    # "drawRegion":Landroid/graphics/Rect;
    .end local v7    # "height":F
    .end local v9    # "viewHeight":I
    .end local v10    # "viewWidth":I
    .end local v11    # "width":F
    :cond_c
    sget-object v12, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v13, v12, Landroid/graphics/Point;->y:I

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x15

    if-lt v12, v14, :cond_d

    sget v12, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_7
    add-int v6, v13, v12

    .line 1202
    .local v6, "h":I
    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_e

    int-to-float v12, v6

    :goto_8
    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToY:F

    goto/16 :goto_5

    .line 1201
    .end local v6    # "h":I
    :cond_d
    const/4 v12, 0x0

    goto :goto_7

    .line 1202
    .restart local v6    # "h":I
    :cond_e
    neg-int v12, v6

    int-to-float v12, v12

    goto :goto_8

    .line 1215
    .end local v6    # "h":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/SecretMediaViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lorg/telegram/messenger/ImageReceiver;->setManualAlphaAnimator(Z)V

    .line 1216
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    const/4 v13, 0x5

    new-array v13, v13, [Landroid/animation/Animator;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/SecretMediaViewer;->photoBackgroundDrawable:Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;

    const-string/jumbo v16, "alpha"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    aput v19, v17, v18

    .line 1217
    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const-string/jumbo v15, "animationValue"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_1

    .line 1218
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v16, "alpha"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    aput v19, v17, v18

    .line 1219
    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/SecretMediaViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    const-string/jumbo v16, "alpha"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    aput v19, v17, v18

    .line 1220
    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x4

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/SecretMediaViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const-string/jumbo v16, "currentAlpha"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    aput v19, v17, v18

    .line 1221
    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    aput-object v15, v13, v14

    .line 1216
    invoke-virtual {v12, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_6

    .line 1264
    :cond_10
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1265
    .local v2, "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v12, 0x4

    new-array v12, v12, [Landroid/animation/Animator;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    const-string/jumbo v15, "scaleX"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const v18, 0x3f666666    # 0.9f

    aput v18, v16, v17

    .line 1266
    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    const-string/jumbo v15, "scaleY"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const v18, 0x3f666666    # 0.9f

    aput v18, v16, v17

    .line 1267
    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/SecretMediaViewer;->photoBackgroundDrawable:Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;

    const-string/jumbo v15, "alpha"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    aput v18, v16, v17

    .line 1268
    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v15, "alpha"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    aput v18, v16, v17

    .line 1269
    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    aput-object v14, v12, v13

    .line 1265
    invoke-virtual {v2, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1271
    const/4 v12, 0x2

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationInProgress:I

    .line 1272
    new-instance v12, Lorg/telegram/ui/SecretMediaViewer$12;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v8}, Lorg/telegram/ui/SecretMediaViewer$12;-><init>(Lorg/telegram/ui/SecretMediaViewer;Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationEndRunnable:Ljava/lang/Runnable;

    .line 1288
    const-wide/16 v12, 0xc8

    invoke-virtual {v2, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1289
    new-instance v12, Lorg/telegram/ui/SecretMediaViewer$13;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lorg/telegram/ui/SecretMediaViewer$13;-><init>(Lorg/telegram/ui/SecretMediaViewer;)V

    invoke-virtual {v2, v12}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1298
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/telegram/ui/SecretMediaViewer;->photoTransitionAnimationStartTime:J

    .line 1299
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x12

    if-lt v12, v13, :cond_11

    .line 1300
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1302
    :cond_11
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 1208
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1217
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public destroyPhotoViewer()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 935
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 936
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->updateMessageMedia:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 937
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->didCreatedNewDeleteTask:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 938
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/telegram/ui/SecretMediaViewer;->isVisible:Z

    .line 939
    iput-object v4, p0, Lorg/telegram/ui/SecretMediaViewer;->currentProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    .line 940
    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->releasePlayer()V

    .line 941
    iget-object v2, p0, Lorg/telegram/ui/SecretMediaViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/SecretMediaViewer;->windowView:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_1

    .line 943
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/SecretMediaViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 944
    iget-object v2, p0, Lorg/telegram/ui/SecretMediaViewer;->parentActivity:Landroid/app/Activity;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 945
    .local v1, "wm":Landroid/view/WindowManager;
    iget-object v2, p0, Lorg/telegram/ui/SecretMediaViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 947
    .end local v1    # "wm":Landroid/view/WindowManager;
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/SecretMediaViewer;->windowView:Landroid/widget/FrameLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 952
    :cond_1
    :goto_0
    sput-object v4, Lorg/telegram/ui/SecretMediaViewer;->Instance:Lorg/telegram/ui/SecretMediaViewer;

    .line 954
    return-void

    .line 948
    :catch_0
    move-exception v0

    .line 949
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 13
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 400
    sget v10, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    if-ne p1, v10, :cond_3

    .line 401
    iget-object v10, p0, Lorg/telegram/ui/SecretMediaViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v10, :cond_1

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    aget-object v10, p2, v12

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 405
    .local v2, "channelId":I
    if-nez v2, :cond_0

    .line 408
    aget-object v5, p2, v11

    check-cast v5, Ljava/util/ArrayList;

    .line 409
    .local v5, "markAsDeletedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v10, p0, Lorg/telegram/ui/SecretMediaViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 410
    iget-boolean v10, p0, Lorg/telegram/ui/SecretMediaViewer;->isVideo:Z

    if-eqz v10, :cond_2

    iget-boolean v10, p0, Lorg/telegram/ui/SecretMediaViewer;->videoWatchedOneTime:Z

    if-nez v10, :cond_2

    .line 411
    iput-boolean v12, p0, Lorg/telegram/ui/SecretMediaViewer;->closeVideoAfterWatch:Z

    goto :goto_0

    .line 413
    :cond_2
    invoke-virtual {p0, v12, v12}, Lorg/telegram/ui/SecretMediaViewer;->closePhoto(ZZ)V

    goto :goto_0

    .line 416
    .end local v2    # "channelId":I
    .end local v5    # "markAsDeletedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3
    sget v10, Lorg/telegram/messenger/NotificationCenter;->didCreatedNewDeleteTask:I

    if-ne p1, v10, :cond_8

    .line 417
    iget-object v10, p0, Lorg/telegram/ui/SecretMediaViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lorg/telegram/ui/SecretMediaViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    if-eqz v10, :cond_0

    .line 420
    aget-object v7, p2, v11

    check-cast v7, Landroid/util/SparseArray;

    .line 421
    .local v7, "mids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Long;>;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v3, v10, :cond_0

    .line 422
    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 423
    .local v4, "key":I
    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 424
    .local v1, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v0, v10, :cond_7

    .line 425
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 426
    .local v8, "mid":J
    if-nez v0, :cond_5

    .line 427
    const/16 v10, 0x20

    shr-long v10, v8, v10

    long-to-int v2, v10

    .line 428
    .restart local v2    # "channelId":I
    if-gez v2, :cond_4

    .line 429
    const/4 v2, 0x0

    .line 431
    :cond_4
    iget v10, p0, Lorg/telegram/ui/SecretMediaViewer;->currentChannelId:I

    if-ne v2, v10, :cond_0

    .line 435
    .end local v2    # "channelId":I
    :cond_5
    iget-object v10, p0, Lorg/telegram/ui/SecretMediaViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v10

    int-to-long v10, v10

    cmp-long v10, v10, v8

    if-nez v10, :cond_6

    .line 436
    iget-object v10, p0, Lorg/telegram/ui/SecretMediaViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v10, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput v4, v10, Lorg/telegram/tgnet/TLRPC$Message;->destroyTime:I

    .line 437
    iget-object v10, p0, Lorg/telegram/ui/SecretMediaViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    invoke-virtual {v10}, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->invalidate()V

    goto/16 :goto_0

    .line 424
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 421
    .end local v8    # "mid":J
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 442
    .end local v0    # "a":I
    .end local v1    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v3    # "i":I
    .end local v4    # "key":I
    .end local v7    # "mids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Long;>;>;"
    :cond_8
    sget v10, Lorg/telegram/messenger/NotificationCenter;->updateMessageMedia:I

    if-ne p1, v10, :cond_0

    .line 443
    aget-object v6, p2, v11

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Message;

    .line 444
    .local v6, "message":Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v10, p0, Lorg/telegram/ui/SecretMediaViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v10

    iget v11, v6, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ne v10, v11, :cond_0

    .line 445
    iget-boolean v10, p0, Lorg/telegram/ui/SecretMediaViewer;->isVideo:Z

    if-eqz v10, :cond_9

    iget-boolean v10, p0, Lorg/telegram/ui/SecretMediaViewer;->videoWatchedOneTime:Z

    if-nez v10, :cond_9

    .line 446
    iput-boolean v12, p0, Lorg/telegram/ui/SecretMediaViewer;->closeVideoAfterWatch:Z

    goto/16 :goto_0

    .line 448
    :cond_9
    invoke-virtual {p0, v12, v12}, Lorg/telegram/ui/SecretMediaViewer;->closePhoto(ZZ)V

    goto/16 :goto_0
.end method

.method public getAnimationValue()F
    .locals 1

    .prologue
    .line 1575
    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->animationValue:F

    return v0
.end method

.method public getCloseTime()J
    .locals 2

    .prologue
    .line 1134
    iget-wide v0, p0, Lorg/telegram/ui/SecretMediaViewer;->closeTime:J

    return-wide v0
.end method

.method public getCurrentMessageObject()Lorg/telegram/messenger/MessageObject;
    .locals 1

    .prologue
    .line 1138
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method public getOpenTime()J
    .locals 2

    .prologue
    .line 1130
    iget-wide v0, p0, Lorg/telegram/ui/SecretMediaViewer;->openTime:J

    return-wide v0
.end method

.method public getVideoCrossfadeAlpha()F
    .locals 1

    .prologue
    .line 1108
    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeAlpha:F

    return v0
.end method

.method public isShowingImage(Lorg/telegram/messenger/MessageObject;)Z
    .locals 2
    .param p1, "object"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 893
    iget-boolean v0, p0, Lorg/telegram/ui/SecretMediaViewer;->isVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/SecretMediaViewer;->disableShowCheck:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 931
    iget-boolean v0, p0, Lorg/telegram/ui/SecretMediaViewer;->isVisible:Z

    return v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/high16 v9, 0x40400000    # 3.0f

    const/4 v8, 0x0

    .line 1624
    iget v4, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    cmpl-float v4, v4, v10

    if-nez v4, :cond_1

    iget v4, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    cmpl-float v4, v4, v8

    if-nez v4, :cond_0

    iget v4, p0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_1

    .line 1649
    :cond_0
    :goto_0
    return v2

    .line 1627
    :cond_1
    iget-wide v4, p0, Lorg/telegram/ui/SecretMediaViewer;->animationStartTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    iget v4, p0, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationInProgress:I

    if-nez v4, :cond_0

    .line 1630
    iget v2, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    cmpl-float v2, v2, v10

    if-nez v2, :cond_6

    .line 1631
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v2, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    sub-float/2addr v4, v5

    iget v5, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    div-float v5, v9, v5

    mul-float/2addr v4, v5

    sub-float v0, v2, v4

    .line 1632
    .local v0, "atx":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v2, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0}, Lorg/telegram/ui/SecretMediaViewer;->getContainerViewHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    sub-float/2addr v4, v5

    iget v5, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    div-float v5, v9, v5

    mul-float/2addr v4, v5

    sub-float v1, v2, v4

    .line 1633
    .local v1, "aty":F
    invoke-direct {p0, v9}, Lorg/telegram/ui/SecretMediaViewer;->updateMinMax(F)V

    .line 1634
    iget v2, p0, Lorg/telegram/ui/SecretMediaViewer;->minX:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_4

    .line 1635
    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->minX:F

    .line 1639
    :cond_2
    :goto_1
    iget v2, p0, Lorg/telegram/ui/SecretMediaViewer;->minY:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_5

    .line 1640
    iget v1, p0, Lorg/telegram/ui/SecretMediaViewer;->minY:F

    .line 1644
    :cond_3
    :goto_2
    invoke-direct {p0, v9, v0, v1, v3}, Lorg/telegram/ui/SecretMediaViewer;->animateTo(FFFZ)V

    .line 1648
    .end local v0    # "atx":F
    .end local v1    # "aty":F
    :goto_3
    iput-boolean v3, p0, Lorg/telegram/ui/SecretMediaViewer;->doubleTap:Z

    move v2, v3

    .line 1649
    goto :goto_0

    .line 1636
    .restart local v0    # "atx":F
    .restart local v1    # "aty":F
    :cond_4
    iget v2, p0, Lorg/telegram/ui/SecretMediaViewer;->maxX:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_2

    .line 1637
    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->maxX:F

    goto :goto_1

    .line 1641
    :cond_5
    iget v2, p0, Lorg/telegram/ui/SecretMediaViewer;->maxY:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_3

    .line 1642
    iget v1, p0, Lorg/telegram/ui/SecretMediaViewer;->maxY:F

    goto :goto_2

    .line 1646
    .end local v0    # "atx":F
    .end local v1    # "aty":F
    :cond_6
    invoke-direct {p0, v10, v8, v8, v3}, Lorg/telegram/ui/SecretMediaViewer;->animateTo(FFFZ)V

    goto :goto_3
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1654
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1580
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 1605
    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 1606
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Scroller;->abortAnimation()V

    .line 1607
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    iget v1, p0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, p0, Lorg/telegram/ui/SecretMediaViewer;->minX:F

    float-to-int v5, v5

    iget v6, p0, Lorg/telegram/ui/SecretMediaViewer;->maxX:F

    float-to-int v6, v6

    iget v7, p0, Lorg/telegram/ui/SecretMediaViewer;->minY:F

    float-to-int v7, v7

    iget v8, p0, Lorg/telegram/ui/SecretMediaViewer;->maxY:F

    float-to-int v8, v8

    invoke-virtual/range {v0 .. v8}, Lorg/telegram/ui/Components/Scroller;->fling(IIIIIIII)V

    .line 1608
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;->postInvalidate()V

    .line 1610
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1601
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 1595
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1586
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1615
    iget-boolean v2, p0, Lorg/telegram/ui/SecretMediaViewer;->discardTap:Z

    if-eqz v2, :cond_0

    .line 1619
    :goto_0
    return v0

    .line 1618
    :cond_0
    iget-boolean v2, p0, Lorg/telegram/ui/SecretMediaViewer;->isActionBarVisible:Z

    if-nez v2, :cond_1

    move v0, v1

    :cond_1
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/SecretMediaViewer;->toggleActionBar(ZZ)V

    move v0, v1

    .line 1619
    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1590
    const/4 v0, 0x0

    return v0
.end method

.method public openMedia(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)V
    .locals 33
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "provider"    # Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    .prologue
    .line 710
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isSecretPhoto()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p2, :cond_1

    .line 890
    :cond_0
    :goto_0
    return-void

    .line 713
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v2, v3}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    move-result-object v24

    .line 714
    .local v24, "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    if-eqz v24, :cond_0

    .line 720
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->currentProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    .line 721
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/telegram/ui/SecretMediaViewer;->openTime:J

    .line 722
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/telegram/ui/SecretMediaViewer;->closeTime:J

    .line 723
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/SecretMediaViewer;->isActionBarVisible:Z

    .line 724
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/SecretMediaViewer;->isPhotoVisible:Z

    .line 725
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/SecretMediaViewer;->draggingDown:Z

    .line 726
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v2, :cond_2

    .line 727
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->setVisibility(I)V

    .line 729
    :cond_2
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/SecretMediaViewer;->releasePlayer()V

    .line 731
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/SecretMediaViewer;->pinchStartDistance:F

    .line 732
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/SecretMediaViewer;->pinchStartScale:F

    .line 733
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/SecretMediaViewer;->pinchCenterX:F

    .line 734
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/SecretMediaViewer;->pinchCenterY:F

    .line 735
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/SecretMediaViewer;->pinchStartX:F

    .line 736
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/SecretMediaViewer;->pinchStartY:F

    .line 737
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/SecretMediaViewer;->moveStartX:F

    .line 738
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/SecretMediaViewer;->moveStartY:F

    .line 739
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/SecretMediaViewer;->zooming:Z

    .line 740
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/SecretMediaViewer;->moving:Z

    .line 741
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/SecretMediaViewer;->doubleTap:Z

    .line 742
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/SecretMediaViewer;->invalidCoords:Z

    .line 743
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/SecretMediaViewer;->canDragDown:Z

    .line 744
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/ui/SecretMediaViewer;->updateMinMax(F)V

    .line 745
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->photoBackgroundDrawable:Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;->setAlpha(I)V

    .line 746
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;->setAlpha(F)V

    .line 747
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;->setVisibility(I)V

    .line 748
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->setAlpha(F)V

    .line 749
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/SecretMediaViewer;->isVideo:Z

    .line 750
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/SecretMediaViewer;->videoWatchedOneTime:Z

    .line 751
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/SecretMediaViewer;->closeVideoAfterWatch:Z

    .line 752
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/SecretMediaViewer;->disableShowCheck:Z

    .line 753
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setManualAlphaAnimator(Z)V

    .line 755
    move-object/from16 v0, v24

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getDrawRegion()Landroid/graphics/Rect;

    move-result-object v16

    .line 757
    .local v16, "drawRegion":Landroid/graphics/Rect;
    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v16

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v31, v0

    .line 758
    .local v31, "width":F
    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v23, v0

    .line 759
    .local v23, "height":F
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->x:I

    move/from16 v30, v0

    .line 760
    .local v30, "viewWidth":I
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->y:I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v2, v4, :cond_7

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_1
    add-int v27, v3, v2

    .line 761
    .local v27, "viewHeight":I
    move/from16 v0, v30

    int-to-float v2, v0

    div-float v2, v31, v2

    move/from16 v0, v27

    int-to-float v3, v0

    div-float v3, v23, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/SecretMediaViewer;->scale:F

    .line 763
    move-object/from16 v0, v24

    iget v2, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewX:I

    move-object/from16 v0, v16

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v31, v3

    add-float/2addr v2, v3

    div-int/lit8 v3, v30, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/SecretMediaViewer;->translationX:F

    .line 764
    move-object/from16 v0, v24

    iget v2, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    move-object/from16 v0, v16

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v23, v3

    add-float/2addr v2, v3

    div-int/lit8 v3, v27, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/SecretMediaViewer;->translationY:F

    .line 765
    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v24

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageX()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/SecretMediaViewer;->clipHorizontal:F

    .line 766
    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v24

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageY()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 767
    .local v9, "clipVertical":I
    const/4 v2, 0x2

    new-array v10, v2, [I

    .line 768
    .local v10, "coords2":[I
    move-object/from16 v0, v24

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    invoke-virtual {v2, v10}, Landroid/view/View;->getLocationInWindow([I)V

    .line 769
    const/4 v2, 0x1

    aget v3, v10, v2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v2, v4, :cond_8

    const/4 v2, 0x0

    :goto_2
    sub-int v2, v3, v2

    move-object/from16 v0, v24

    iget v3, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    move-object/from16 v0, v24

    iget v3, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->clipTopAddition:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/SecretMediaViewer;->clipTop:F

    .line 770
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/SecretMediaViewer;->clipTop:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 771
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/SecretMediaViewer;->clipTop:F

    .line 773
    :cond_3
    move-object/from16 v0, v24

    iget v2, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    move-object/from16 v0, v16

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    move/from16 v0, v23

    float-to-int v3, v0

    add-int/2addr v3, v2

    const/4 v2, 0x1

    aget v2, v10, v2

    move-object/from16 v0, v24

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v2, v5, :cond_9

    const/4 v2, 0x0

    :goto_3
    sub-int v2, v4, v2

    sub-int v2, v3, v2

    move-object/from16 v0, v24

    iget v3, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->clipBottomAddition:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/SecretMediaViewer;->clipBottom:F

    .line 774
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/SecretMediaViewer;->clipBottom:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    .line 775
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/SecretMediaViewer;->clipBottom:F

    .line 777
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/SecretMediaViewer;->clipTop:F

    int-to-float v3, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/SecretMediaViewer;->clipTop:F

    .line 778
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/SecretMediaViewer;->clipBottom:F

    int-to-float v3, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/SecretMediaViewer;->clipBottom:F

    .line 781
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/telegram/ui/SecretMediaViewer;->animationStartTime:J

    .line 782
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToX:F

    .line 783
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToY:F

    .line 784
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipBottom:F

    .line 785
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipHorizontal:F

    .line 786
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToClipTop:F

    .line 787
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/SecretMediaViewer;->animateToScale:F

    .line 788
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/SecretMediaViewer;->zoomAnimation:Z

    .line 790
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 791
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->updateMessageMedia:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 792
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->didCreatedNewDeleteTask:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 793
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v2, :cond_a

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    :goto_4
    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/SecretMediaViewer;->currentChannelId:I

    .line 794
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/SecretMediaViewer;->toggleActionBar(ZZ)V

    .line 796
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/SecretMediaViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 797
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v11

    .line 798
    .local v11, "document":Lorg/telegram/tgnet/TLRPC$Document;
    move-object/from16 v0, v24

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getThumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v26

    .line 799
    .local v26, "thumb":Landroid/graphics/Bitmap;
    if-eqz v11, :cond_f

    .line 800
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "DisappearingVideo"

    const v4, 0x7f0701ea

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 801
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 802
    .local v21, "f":Ljava/io/File;
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 803
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/telegram/ui/SecretMediaViewer;->preparePlayer(Ljava/io/File;)V

    .line 812
    :goto_5
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/SecretMediaViewer;->isVideo:Z

    .line 813
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v26, :cond_d

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v26

    invoke-direct {v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    :goto_6
    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/String;I)V

    .line 814
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->destroyTime:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v14, v2, v4

    .line 815
    .local v14, "destroyTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getTimeDifference()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long v12, v2, v4

    .line 816
    .local v12, "currentTime":J
    sub-long v28, v14, v12

    .line 817
    .local v28, "timeToDestroy":J
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDuration()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v0, v2

    move-wide/from16 v18, v0

    .line 818
    .local v18, "duration":J
    cmp-long v2, v18, v28

    if-lez v2, :cond_e

    .line 819
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/SecretMediaViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    const-wide/16 v4, -0x1

    const-wide/16 v6, -0x1

    const/4 v8, 0x1

    invoke-static/range {v3 .. v8}, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->access$2100(Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;JJZ)V

    .line 830
    .end local v12    # "currentTime":J
    .end local v14    # "destroyTime":J
    .end local v18    # "duration":J
    .end local v21    # "f":Ljava/io/File;
    .end local v28    # "timeToDestroy":J
    :goto_7
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 831
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->parentActivity:Landroid/app/Activity;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/view/WindowManager;

    .line 832
    .local v32, "wm":Landroid/view/WindowManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->windowView:Landroid/widget/FrameLayout;

    move-object/from16 v0, v32

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 838
    .end local v32    # "wm":Landroid/view/WindowManager;
    :cond_5
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->parentActivity:Landroid/app/Activity;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/view/WindowManager;

    .line 839
    .restart local v32    # "wm":Landroid/view/WindowManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->windowView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/SecretMediaViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, v32

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 840
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    invoke-virtual {v2}, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->invalidate()V

    .line 841
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/SecretMediaViewer;->isVisible:Z

    .line 843
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    .line 844
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    const/4 v3, 0x5

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v6, "alpha"

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    .line 845
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/SecretMediaViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    const-string/jumbo v6, "alpha"

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_1

    .line 846
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/SecretMediaViewer;->photoBackgroundDrawable:Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;

    const-string/jumbo v6, "alpha"

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_2

    .line 847
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/SecretMediaViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    const-string/jumbo v6, "alpha"

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_3

    .line 848
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "animationValue"

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_4

    .line 849
    move-object/from16 v0, p0

    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v4

    .line 844
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 851
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationInProgress:I

    .line 852
    new-instance v2, Lorg/telegram/ui/SecretMediaViewer$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/SecretMediaViewer$6;-><init>(Lorg/telegram/ui/SecretMediaViewer;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->photoAnimationEndRunnable:Ljava/lang/Runnable;

    .line 866
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 867
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/SecretMediaViewer$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/SecretMediaViewer$7;-><init>(Lorg/telegram/ui/SecretMediaViewer;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 876
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/telegram/ui/SecretMediaViewer;->photoTransitionAnimationStartTime:J

    .line 877
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_6

    .line 878
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 880
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 881
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->photoBackgroundDrawable:Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;->access$2402(Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;I)I

    .line 882
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->photoBackgroundDrawable:Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;

    new-instance v3, Lorg/telegram/ui/SecretMediaViewer$8;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/SecretMediaViewer$8;-><init>(Lorg/telegram/ui/SecretMediaViewer;Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V

    invoke-static {v2, v3}, Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;->access$2502(Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 889
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 760
    .end local v9    # "clipVertical":I
    .end local v10    # "coords2":[I
    .end local v11    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .end local v26    # "thumb":Landroid/graphics/Bitmap;
    .end local v27    # "viewHeight":I
    .end local v32    # "wm":Landroid/view/WindowManager;
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 769
    .restart local v9    # "clipVertical":I
    .restart local v10    # "coords2":[I
    .restart local v27    # "viewHeight":I
    :cond_8
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto/16 :goto_2

    .line 773
    :cond_9
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto/16 :goto_3

    .line 793
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 805
    .restart local v11    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .restart local v21    # "f":Ljava/io/File;
    .restart local v26    # "thumb":Landroid/graphics/Bitmap;
    :cond_b
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v22

    .line 806
    .local v22, "file":Ljava/io/File;
    new-instance v20, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".enc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 807
    .local v20, "encryptedFile":Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 808
    move-object/from16 v22, v20

    .line 810
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/telegram/ui/SecretMediaViewer;->preparePlayer(Ljava/io/File;)V

    goto/16 :goto_5

    .line 813
    .end local v20    # "encryptedFile":Ljava/io/File;
    .end local v22    # "file":Ljava/io/File;
    :cond_d
    const/4 v5, 0x0

    goto/16 :goto_6

    .line 821
    .restart local v12    # "currentTime":J
    .restart local v14    # "destroyTime":J
    .restart local v18    # "duration":J
    .restart local v28    # "timeToDestroy":J
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/SecretMediaViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->destroyTime:I

    int-to-long v4, v2

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    int-to-long v6, v2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->access$2100(Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;JJZ)V

    goto/16 :goto_7

    .line 824
    .end local v12    # "currentTime":J
    .end local v14    # "destroyTime":J
    .end local v18    # "duration":J
    .end local v21    # "f":Ljava/io/File;
    .end local v28    # "timeToDestroy":J
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "DisappearingPhoto"

    const v4, 0x7f0701e9

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 825
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v25

    .line 826
    .local v25, "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SecretMediaViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, v25

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const/4 v4, 0x0

    if-eqz v26, :cond_10

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v26

    invoke-direct {v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    :goto_9
    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/String;I)V

    .line 827
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/SecretMediaViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->destroyTime:I

    int-to-long v4, v2

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    int-to-long v6, v2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;->access$2100(Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;JJZ)V

    goto/16 :goto_7

    .line 826
    :cond_10
    const/4 v5, 0x0

    goto :goto_9

    .line 834
    .end local v25    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :catch_0
    move-exception v17

    .line 835
    .local v17, "e":Ljava/lang/Exception;
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 844
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 845
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 846
    :array_2
    .array-data 4
        0x0
        0xff
    .end array-data

    .line 847
    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 848
    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setAnimationValue(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1570
    iput p1, p0, Lorg/telegram/ui/SecretMediaViewer;->animationValue:F

    .line 1571
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;->invalidate()V

    .line 1572
    return-void
.end method

.method public setParentActivity(Landroid/app/Activity;)V
    .locals 13
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/16 v12, 0x15

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v11, -0x1

    .line 577
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->parentActivity:Landroid/app/Activity;

    if-ne v0, p1, :cond_0

    .line 707
    :goto_0
    return-void

    .line 580
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer;->parentActivity:Landroid/app/Activity;

    .line 582
    new-instance v0, Lorg/telegram/ui/Components/Scroller;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    .line 584
    new-instance v0, Lorg/telegram/ui/SecretMediaViewer$2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/SecretMediaViewer$2;-><init>(Lorg/telegram/ui/SecretMediaViewer;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->windowView:Landroid/widget/FrameLayout;

    .line 629
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->windowView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/SecretMediaViewer;->photoBackgroundDrawable:Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 630
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 631
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 633
    new-instance v0, Lorg/telegram/ui/SecretMediaViewer$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/SecretMediaViewer$3;-><init>(Lorg/telegram/ui/SecretMediaViewer;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    .line 643
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;->setFocusable(Z)V

    .line 644
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->windowView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 645
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 646
    .local v7, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v11, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 647
    iput v11, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 648
    const/16 v0, 0x33

    iput v0, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 649
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {v0, v7}, Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 650
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v12, :cond_1

    .line 651
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;->setFitsSystemWindows(Z)V

    .line 652
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    new-instance v2, Lorg/telegram/ui/SecretMediaViewer$4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/SecretMediaViewer$4;-><init>(Lorg/telegram/ui/SecretMediaViewer;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 664
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    const/16 v2, 0x500

    invoke-virtual {v0, v2}, Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;->setSystemUiVisibility(I)V

    .line 667
    :cond_1
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v2, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {v2}, Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->gestureDetector:Landroid/view/GestureDetector;

    .line 668
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 670
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 671
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 672
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitleColor(I)V

    .line 673
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/high16 v2, 0x7f000000

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 674
    iget-object v2, p0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v12, :cond_2

    move v0, v8

    :goto_1
    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 675
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v2, 0x40ffffff    # 7.9999995f

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 676
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v1, 0x7f020093

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 677
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/high16 v1, 0x428c0000    # 70.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleRightMargin(I)V

    .line 678
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/high16 v2, -0x40000000    # -2.0f

    invoke-static {v11, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 679
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/SecretMediaViewer$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/SecretMediaViewer$5;-><init>(Lorg/telegram/ui/SecretMediaViewer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 688
    new-instance v0, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;-><init>(Lorg/telegram/ui/SecretMediaViewer;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    .line 689
    iget-object v9, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    iget-object v10, p0, Lorg/telegram/ui/SecretMediaViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretMediaViewer$SecretDeleteTimer;

    const/16 v0, 0x77

    const/high16 v1, 0x42400000    # 48.0f

    const/16 v2, 0x35

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 691
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 692
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v11, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 693
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 694
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v11, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 695
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 696
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x63

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 697
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v12, :cond_3

    .line 698
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v1, -0x7ffefef8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 705
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 706
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/ImageReceiver;->setForceCrossfade(Z)V

    goto/16 :goto_0

    :cond_2
    move v0, v1

    .line 674
    goto/16 :goto_1

    .line 703
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_2
.end method

.method public setVideoCrossfadeAlpha(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1112
    iput p1, p0, Lorg/telegram/ui/SecretMediaViewer;->videoCrossfadeAlpha:F

    .line 1113
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer;->containerView:Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;->invalidate()V

    .line 1114
    return-void
.end method
