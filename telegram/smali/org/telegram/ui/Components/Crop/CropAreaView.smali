.class public Lorg/telegram/ui/Components/Crop/CropAreaView;
.super Landroid/view/View;
.source "CropAreaView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;,
        Lorg/telegram/ui/Components/Crop/CropAreaView$AreaViewListener;,
        Lorg/telegram/ui/Components/Crop/CropAreaView$Control;
    }
.end annotation


# instance fields
.field private activeControl:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

.field private actualRect:Landroid/graphics/RectF;

.field private animator:Landroid/animation/Animator;

.field private bottomEdge:Landroid/graphics/RectF;

.field private bottomLeftCorner:Landroid/graphics/RectF;

.field private bottomPadding:F

.field private bottomRightCorner:Landroid/graphics/RectF;

.field dimPaint:Landroid/graphics/Paint;

.field private dimVisibile:Z

.field framePaint:Landroid/graphics/Paint;

.field private frameVisible:Z

.field private gridAnimator:Landroid/animation/Animator;

.field private gridProgress:F

.field private gridType:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

.field handlePaint:Landroid/graphics/Paint;

.field interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field private isDragging:Z

.field private leftEdge:Landroid/graphics/RectF;

.field linePaint:Landroid/graphics/Paint;

.field private listener:Lorg/telegram/ui/Components/Crop/CropAreaView$AreaViewListener;

.field private lockAspectRatio:F

.field private minWidth:F

.field private previousGridType:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

.field private previousX:I

.field private previousY:I

.field private rightEdge:Landroid/graphics/RectF;

.field shadowPaint:Landroid/graphics/Paint;

.field private sidePadding:F

.field private tempRect:Landroid/graphics/RectF;

.field private topEdge:Landroid/graphics/RectF;

.field private topLeftCorner:Landroid/graphics/RectF;

.field private topRightCorner:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 81
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->topLeftCorner:Landroid/graphics/RectF;

    .line 35
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->topRightCorner:Landroid/graphics/RectF;

    .line 36
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->bottomLeftCorner:Landroid/graphics/RectF;

    .line 37
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->bottomRightCorner:Landroid/graphics/RectF;

    .line 38
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->topEdge:Landroid/graphics/RectF;

    .line 39
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->leftEdge:Landroid/graphics/RectF;

    .line 40
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->bottomEdge:Landroid/graphics/RectF;

    .line 41
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->rightEdge:Landroid/graphics/RectF;

    .line 46
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    .line 47
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    .line 61
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 83
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->frameVisible:Z

    .line 84
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->dimVisibile:Z

    .line 86
    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->sidePadding:F

    .line 87
    const/high16 v0, 0x42000000    # 32.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->minWidth:F

    .line 89
    sget-object v0, Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;->NONE:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridType:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    .line 91
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->dimPaint:Landroid/graphics/Paint;

    .line 92
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->dimPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x34000000    # -3.3554432E7f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->shadowPaint:Landroid/graphics/Paint;

    .line 95
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->shadowPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 96
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->shadowPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x1a000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->shadowPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 99
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->linePaint:Landroid/graphics/Paint;

    .line 100
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->linePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->linePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 104
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->handlePaint:Landroid/graphics/Paint;

    .line 105
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->handlePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 106
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->handlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->framePaint:Landroid/graphics/Paint;

    .line 109
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->framePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 110
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->framePaint:Landroid/graphics/Paint;

    const v1, -0x4d000001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/Crop/CropAreaView;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/Crop/CropAreaView;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 22
    iput-object p1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/Crop/CropAreaView;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/Crop/CropAreaView;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 22
    iput-object p1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->animator:Landroid/animation/Animator;

    return-object p1
.end method

.method private constrainRectByHeight(Landroid/graphics/RectF;F)V
    .locals 3
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "aspectRatio"    # F

    .prologue
    .line 688
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 689
    .local v0, "h":F
    mul-float v1, v0, p2

    .line 691
    .local v1, "w":F
    iget v2, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v1

    iput v2, p1, Landroid/graphics/RectF;->right:F

    .line 692
    iget v2, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v0

    iput v2, p1, Landroid/graphics/RectF;->bottom:F

    .line 693
    return-void
.end method

.method private constrainRectByWidth(Landroid/graphics/RectF;F)V
    .locals 3
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "aspectRatio"    # F

    .prologue
    .line 680
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 681
    .local v1, "w":F
    div-float v0, v1, p2

    .line 683
    .local v0, "h":F
    iget v2, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v1

    iput v2, p1, Landroid/graphics/RectF;->right:F

    .line 684
    iget v2, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v0

    iput v2, p1, Landroid/graphics/RectF;->bottom:F

    .line 685
    return-void
.end method

.method private getGridProgress()F
    .locals 1

    .prologue
    .line 307
    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridProgress:F

    return v0
.end method

.method private setCropBottom(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 392
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    .line 393
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->invalidate()V

    .line 394
    return-void
.end method

.method private setCropLeft(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 360
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iput p1, v0, Landroid/graphics/RectF;->left:F

    .line 361
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->invalidate()V

    .line 362
    return-void
.end method

.method private setCropRight(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 382
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iput p1, v0, Landroid/graphics/RectF;->right:F

    .line 383
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->invalidate()V

    .line 384
    return-void
.end method

.method private setCropTop(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 371
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iput p1, v0, Landroid/graphics/RectF;->top:F

    .line 372
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->invalidate()V

    .line 373
    return-void
.end method

.method private setGridProgress(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 301
    iput p1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridProgress:F

    .line 302
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->invalidate()V

    .line 303
    return-void
.end method

.method private updateTouchAreas()V
    .locals 7

    .prologue
    .line 245
    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 247
    .local v0, "touchPadding":I
    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->topLeftCorner:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    int-to-float v3, v0

    sub-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    int-to-float v4, v0

    sub-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    int-to-float v5, v0

    add-float/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    int-to-float v6, v0

    add-float/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 248
    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->topRightCorner:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    int-to-float v3, v0

    sub-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    int-to-float v4, v0

    sub-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    int-to-float v5, v0

    add-float/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    int-to-float v6, v0

    add-float/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 249
    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->bottomLeftCorner:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    int-to-float v3, v0

    sub-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    int-to-float v4, v0

    sub-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    int-to-float v5, v0

    add-float/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, v0

    add-float/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 250
    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->bottomRightCorner:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    int-to-float v3, v0

    sub-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    int-to-float v4, v0

    sub-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    int-to-float v5, v0

    add-float/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, v0

    add-float/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 252
    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->topEdge:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    int-to-float v3, v0

    add-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    int-to-float v4, v0

    sub-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    int-to-float v5, v0

    sub-float/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    int-to-float v6, v0

    add-float/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 253
    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->leftEdge:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    int-to-float v3, v0

    sub-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    int-to-float v4, v0

    add-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    int-to-float v5, v0

    add-float/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, v0

    sub-float/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 254
    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->rightEdge:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    int-to-float v3, v0

    sub-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    int-to-float v4, v0

    add-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    int-to-float v5, v0

    add-float/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, v0

    sub-float/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 255
    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->bottomEdge:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    int-to-float v3, v0

    add-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    int-to-float v4, v0

    sub-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    int-to-float v5, v0

    sub-float/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, v0

    add-float/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 256
    return-void
.end method


# virtual methods
.method public calculateRect(Landroid/graphics/RectF;F)V
    .locals 18
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "cropAspectRatio"    # F

    .prologue
    .line 423
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x15

    if-lt v14, v15, :cond_0

    sget v14, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_0
    int-to-float v11, v14

    .line 425
    .local v11, "statusBarHeight":F
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getMeasuredHeight()I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->bottomPadding:F

    sub-float/2addr v14, v15

    sub-float v8, v14, v11

    .line 426
    .local v8, "measuredHeight":F
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getMeasuredWidth()I

    move-result v14

    int-to-float v14, v14

    div-float v2, v14, v8

    .line 427
    .local v2, "aspectRatio":F
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getMeasuredWidth()I

    move-result v14

    int-to-float v14, v14

    invoke-static {v14, v8}, Ljava/lang/Math;->min(FF)F

    move-result v14

    const/high16 v15, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->sidePadding:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    sub-float v9, v14, v15

    .line 428
    .local v9, "minSide":F
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getMeasuredWidth()I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->sidePadding:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    sub-float v13, v14, v15

    .line 429
    .local v13, "width":F
    const/high16 v14, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->sidePadding:F

    mul-float/2addr v14, v15

    sub-float v6, v8, v14

    .line 430
    .local v6, "height":F
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getMeasuredWidth()I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float v4, v14, v15

    .line 431
    .local v4, "centerX":F
    const/high16 v14, 0x40000000    # 2.0f

    div-float v14, v8, v14

    add-float v5, v11, v14

    .line 433
    .local v5, "centerY":F
    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v14, v14, p2

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    float-to-double v14, v14

    const-wide v16, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v14, v14, v16

    if-gez v14, :cond_1

    .line 434
    const/high16 v14, 0x40000000    # 2.0f

    div-float v14, v9, v14

    sub-float v7, v4, v14

    .line 435
    .local v7, "left":F
    const/high16 v14, 0x40000000    # 2.0f

    div-float v14, v9, v14

    sub-float v12, v5, v14

    .line 436
    .local v12, "top":F
    const/high16 v14, 0x40000000    # 2.0f

    div-float v14, v9, v14

    add-float v10, v4, v14

    .line 437
    .local v10, "right":F
    const/high16 v14, 0x40000000    # 2.0f

    div-float v14, v9, v14

    add-float v3, v5, v14

    .line 449
    .local v3, "bottom":F
    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v12, v10, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 450
    return-void

    .line 423
    .end local v2    # "aspectRatio":F
    .end local v3    # "bottom":F
    .end local v4    # "centerX":F
    .end local v5    # "centerY":F
    .end local v6    # "height":F
    .end local v7    # "left":F
    .end local v8    # "measuredHeight":F
    .end local v9    # "minSide":F
    .end local v10    # "right":F
    .end local v11    # "statusBarHeight":F
    .end local v12    # "top":F
    .end local v13    # "width":F
    :cond_0
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 438
    .restart local v2    # "aspectRatio":F
    .restart local v4    # "centerX":F
    .restart local v5    # "centerY":F
    .restart local v6    # "height":F
    .restart local v8    # "measuredHeight":F
    .restart local v9    # "minSide":F
    .restart local v11    # "statusBarHeight":F
    .restart local v13    # "width":F
    :cond_1
    cmpl-float v14, p2, v2

    if-lez v14, :cond_2

    .line 439
    const/high16 v14, 0x40000000    # 2.0f

    div-float v14, v13, v14

    sub-float v7, v4, v14

    .line 440
    .restart local v7    # "left":F
    div-float v14, v13, p2

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    sub-float v12, v5, v14

    .line 441
    .restart local v12    # "top":F
    const/high16 v14, 0x40000000    # 2.0f

    div-float v14, v13, v14

    add-float v10, v4, v14

    .line 442
    .restart local v10    # "right":F
    div-float v14, v13, p2

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    add-float v3, v5, v14

    .restart local v3    # "bottom":F
    goto :goto_1

    .line 444
    .end local v3    # "bottom":F
    .end local v7    # "left":F
    .end local v10    # "right":F
    .end local v12    # "top":F
    :cond_2
    mul-float v14, v6, p2

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    sub-float v7, v4, v14

    .line 445
    .restart local v7    # "left":F
    const/high16 v14, 0x40000000    # 2.0f

    div-float v14, v6, v14

    sub-float v12, v5, v14

    .line 446
    .restart local v12    # "top":F
    mul-float v14, v6, p2

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    add-float v10, v4, v14

    .line 447
    .restart local v10    # "right":F
    const/high16 v14, 0x40000000    # 2.0f

    div-float v14, v6, v14

    add-float v3, v5, v14

    .restart local v3    # "bottom":F
    goto :goto_1
.end method

.method public fill(Landroid/graphics/RectF;Landroid/animation/Animator;Z)V
    .locals 10
    .param p1, "targetRect"    # Landroid/graphics/RectF;
    .param p2, "scaleAnimator"    # Landroid/animation/Animator;
    .param p3, "animated"    # Z

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 315
    if-eqz p3, :cond_1

    .line 316
    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->animator:Landroid/animation/Animator;

    if-eqz v2, :cond_0

    .line 317
    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->animator:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 318
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->animator:Landroid/animation/Animator;

    .line 321
    :cond_0
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 322
    .local v1, "set":Landroid/animation/AnimatorSet;
    iput-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->animator:Landroid/animation/Animator;

    .line 323
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 325
    const/4 v2, 0x5

    new-array v0, v2, [Landroid/animation/Animator;

    .line 326
    .local v0, "animators":[Landroid/animation/Animator;
    const-string/jumbo v2, "cropLeft"

    new-array v3, v6, [F

    iget v4, p1, Landroid/graphics/RectF;->left:F

    aput v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v5

    .line 327
    aget-object v2, v0, v5

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 328
    const-string/jumbo v2, "cropTop"

    new-array v3, v6, [F

    iget v4, p1, Landroid/graphics/RectF;->top:F

    aput v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v6

    .line 329
    aget-object v2, v0, v6

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 330
    const-string/jumbo v2, "cropRight"

    new-array v3, v6, [F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    aput v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v7

    .line 331
    aget-object v2, v0, v7

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 332
    const-string/jumbo v2, "cropBottom"

    new-array v3, v6, [F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    aput v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v8

    .line 333
    aget-object v2, v0, v8

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 334
    aput-object p2, v0, v9

    .line 335
    aget-object v2, v0, v9

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 337
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 338
    new-instance v2, Lorg/telegram/ui/Components/Crop/CropAreaView$2;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/Crop/CropAreaView$2;-><init>(Lorg/telegram/ui/Components/Crop/CropAreaView;Landroid/graphics/RectF;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 345
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 349
    .end local v0    # "animators":[Landroid/animation/Animator;
    .end local v1    # "set":Landroid/animation/AnimatorSet;
    :goto_0
    return-void

    .line 347
    :cond_1
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setActualRect(Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method public getAspectRatio()F
    .locals 3

    .prologue
    .line 311
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method public getCropBottom()F
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    return v0
.end method

.method public getCropCenterX()F
    .locals 3

    .prologue
    .line 401
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getCropCenterY()F
    .locals 3

    .prologue
    .line 405
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getCropHeight()F
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getCropLeft()F
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    return v0
.end method

.method public getCropRect(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    .line 696
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 697
    return-void
.end method

.method public getCropRight()F
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    return v0
.end method

.method public getCropTop()F
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    return v0
.end method

.method public getCropWidth()F
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    return-object v0
.end method

.method public getLockAspectRatio()F
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    return v0
.end method

.method public getTargetRectToFill()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 417
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 418
    .local v0, "rect":Landroid/graphics/RectF;
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getAspectRatio()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->calculateRect(Landroid/graphics/RectF;F)V

    .line 419
    return-object v0
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->isDragging:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 171
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    .line 172
    .local v15, "lineThickness":I
    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    .line 173
    .local v9, "handleSize":I
    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    .line 175
    .local v10, "handleThickness":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    sub-int v16, v1, v15

    .line 176
    .local v16, "originX":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    sub-int v17, v1, v15

    .line 177
    .local v17, "originY":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    mul-int/lit8 v2, v15, 0x2

    add-int v19, v1, v2

    .line 178
    .local v19, "width":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    mul-int/lit8 v2, v15, 0x2

    add-int v11, v1, v2

    .line 180
    .local v11, "height":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->dimVisibile:Z

    if-eqz v1, :cond_0

    .line 181
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getWidth()I

    move-result v1

    int-to-float v4, v1

    add-int v1, v17, v15

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->dimPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 182
    const/4 v2, 0x0

    add-int v1, v17, v15

    int-to-float v3, v1

    add-int v1, v16, v15

    int-to-float v4, v1

    add-int v1, v17, v11

    sub-int/2addr v1, v15

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->dimPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 183
    add-int v1, v16, v19

    sub-int/2addr v1, v15

    int-to-float v2, v1

    add-int v1, v17, v15

    int-to-float v3, v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getWidth()I

    move-result v1

    int-to-float v4, v1

    add-int v1, v17, v11

    sub-int/2addr v1, v15

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->dimPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 184
    const/4 v2, 0x0

    add-int v1, v17, v11

    sub-int/2addr v1, v15

    int-to-float v3, v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getHeight()I

    move-result v1

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->dimPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 187
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->frameVisible:Z

    if-nez v1, :cond_1

    .line 242
    :goto_0
    return-void

    .line 191
    :cond_1
    sub-int v13, v10, v15

    .line 192
    .local v13, "inset":I
    mul-int/lit8 v1, v10, 0x2

    sub-int v8, v19, v1

    .line 193
    .local v8, "gridWidth":I
    mul-int/lit8 v1, v10, 0x2

    sub-int v7, v11, v1

    .line 195
    .local v7, "gridHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridType:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    move-object/from16 v18, v0

    .line 196
    .local v18, "type":Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;
    sget-object v1, Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;->NONE:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    move-object/from16 v0, v18

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridProgress:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->previousGridType:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    move-object/from16 v18, v0

    .line 199
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->shadowPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridProgress:F

    const/high16 v3, 0x41d00000    # 26.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 200
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridProgress:F

    const/high16 v3, 0x43320000    # 178.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 202
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    const/4 v1, 0x3

    if-ge v12, v1, :cond_6

    .line 203
    sget-object v1, Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;->MINOR:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    move-object/from16 v0, v18

    if-ne v0, v1, :cond_4

    .line 204
    const/4 v14, 0x1

    .local v14, "j":I
    :goto_2
    const/4 v1, 0x4

    if-ge v14, v1, :cond_5

    .line 205
    const/4 v1, 0x2

    if-ne v12, v1, :cond_3

    const/4 v1, 0x3

    if-ne v14, v1, :cond_3

    .line 204
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 208
    :cond_3
    add-int v1, v16, v10

    div-int/lit8 v2, v8, 0x3

    div-int/lit8 v2, v2, 0x3

    mul-int/2addr v2, v14

    add-int/2addr v1, v2

    div-int/lit8 v2, v8, 0x3

    mul-int/2addr v2, v12

    add-int/2addr v1, v2

    int-to-float v2, v1

    add-int v1, v17, v10

    int-to-float v3, v1

    add-int v1, v16, v10

    div-int/lit8 v4, v8, 0x3

    div-int/lit8 v4, v4, 0x3

    mul-int/2addr v4, v14

    add-int/2addr v1, v4

    div-int/lit8 v4, v8, 0x3

    mul-int/2addr v4, v12

    add-int/2addr v1, v4

    int-to-float v4, v1

    add-int v1, v17, v10

    add-int/2addr v1, v7

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->shadowPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 209
    add-int v1, v16, v10

    div-int/lit8 v2, v8, 0x3

    div-int/lit8 v2, v2, 0x3

    mul-int/2addr v2, v14

    add-int/2addr v1, v2

    div-int/lit8 v2, v8, 0x3

    mul-int/2addr v2, v12

    add-int/2addr v1, v2

    int-to-float v2, v1

    add-int v1, v17, v10

    int-to-float v3, v1

    add-int v1, v16, v10

    div-int/lit8 v4, v8, 0x3

    div-int/lit8 v4, v4, 0x3

    mul-int/2addr v4, v14

    add-int/2addr v1, v4

    div-int/lit8 v4, v8, 0x3

    mul-int/2addr v4, v12

    add-int/2addr v1, v4

    int-to-float v4, v1

    add-int v1, v17, v10

    add-int/2addr v1, v7

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 211
    add-int v1, v16, v10

    int-to-float v2, v1

    add-int v1, v17, v10

    div-int/lit8 v3, v7, 0x3

    div-int/lit8 v3, v3, 0x3

    mul-int/2addr v3, v14

    add-int/2addr v1, v3

    div-int/lit8 v3, v7, 0x3

    mul-int/2addr v3, v12

    add-int/2addr v1, v3

    int-to-float v3, v1

    add-int v1, v16, v10

    add-int/2addr v1, v8

    int-to-float v4, v1

    add-int v1, v17, v10

    div-int/lit8 v5, v7, 0x3

    div-int/lit8 v5, v5, 0x3

    mul-int/2addr v5, v14

    add-int/2addr v1, v5

    div-int/lit8 v5, v7, 0x3

    mul-int/2addr v5, v12

    add-int/2addr v1, v5

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->shadowPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 212
    add-int v1, v16, v10

    int-to-float v2, v1

    add-int v1, v17, v10

    div-int/lit8 v3, v7, 0x3

    div-int/lit8 v3, v3, 0x3

    mul-int/2addr v3, v14

    add-int/2addr v1, v3

    div-int/lit8 v3, v7, 0x3

    mul-int/2addr v3, v12

    add-int/2addr v1, v3

    int-to-float v3, v1

    add-int v1, v16, v10

    add-int/2addr v1, v8

    int-to-float v4, v1

    add-int v1, v17, v10

    div-int/lit8 v5, v7, 0x3

    div-int/lit8 v5, v5, 0x3

    mul-int/2addr v5, v14

    add-int/2addr v1, v5

    div-int/lit8 v5, v7, 0x3

    mul-int/2addr v5, v12

    add-int/2addr v1, v5

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 215
    .end local v14    # "j":I
    :cond_4
    sget-object v1, Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;->MAJOR:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    move-object/from16 v0, v18

    if-ne v0, v1, :cond_5

    .line 216
    if-lez v12, :cond_5

    .line 217
    add-int v1, v16, v10

    div-int/lit8 v2, v8, 0x3

    mul-int/2addr v2, v12

    add-int/2addr v1, v2

    int-to-float v2, v1

    add-int v1, v17, v10

    int-to-float v3, v1

    add-int v1, v16, v10

    div-int/lit8 v4, v8, 0x3

    mul-int/2addr v4, v12

    add-int/2addr v1, v4

    int-to-float v4, v1

    add-int v1, v17, v10

    add-int/2addr v1, v7

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->shadowPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 218
    add-int v1, v16, v10

    div-int/lit8 v2, v8, 0x3

    mul-int/2addr v2, v12

    add-int/2addr v1, v2

    int-to-float v2, v1

    add-int v1, v17, v10

    int-to-float v3, v1

    add-int v1, v16, v10

    div-int/lit8 v4, v8, 0x3

    mul-int/2addr v4, v12

    add-int/2addr v1, v4

    int-to-float v4, v1

    add-int v1, v17, v10

    add-int/2addr v1, v7

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 220
    add-int v1, v16, v10

    int-to-float v2, v1

    add-int v1, v17, v10

    div-int/lit8 v3, v7, 0x3

    mul-int/2addr v3, v12

    add-int/2addr v1, v3

    int-to-float v3, v1

    add-int v1, v16, v10

    add-int/2addr v1, v8

    int-to-float v4, v1

    add-int v1, v17, v10

    div-int/lit8 v5, v7, 0x3

    mul-int/2addr v5, v12

    add-int/2addr v1, v5

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->shadowPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 221
    add-int v1, v16, v10

    int-to-float v2, v1

    add-int v1, v17, v10

    div-int/lit8 v3, v7, 0x3

    mul-int/2addr v3, v12

    add-int/2addr v1, v3

    int-to-float v3, v1

    add-int v1, v16, v10

    add-int/2addr v1, v8

    int-to-float v4, v1

    add-int v1, v17, v10

    div-int/lit8 v5, v7, 0x3

    mul-int/2addr v5, v12

    add-int/2addr v1, v5

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 202
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 226
    :cond_6
    add-int v1, v16, v13

    int-to-float v2, v1

    add-int v1, v17, v13

    int-to-float v3, v1

    add-int v1, v16, v19

    sub-int/2addr v1, v13

    int-to-float v4, v1

    add-int v1, v17, v13

    add-int/2addr v1, v15

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->framePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 227
    add-int v1, v16, v13

    int-to-float v2, v1

    add-int v1, v17, v13

    int-to-float v3, v1

    add-int v1, v16, v13

    add-int/2addr v1, v15

    int-to-float v4, v1

    add-int v1, v17, v11

    sub-int/2addr v1, v13

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->framePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 228
    add-int v1, v16, v13

    int-to-float v2, v1

    add-int v1, v17, v11

    sub-int/2addr v1, v13

    sub-int/2addr v1, v15

    int-to-float v3, v1

    add-int v1, v16, v19

    sub-int/2addr v1, v13

    int-to-float v4, v1

    add-int v1, v17, v11

    sub-int/2addr v1, v13

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->framePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 229
    add-int v1, v16, v19

    sub-int/2addr v1, v13

    sub-int/2addr v1, v15

    int-to-float v2, v1

    add-int v1, v17, v13

    int-to-float v3, v1

    add-int v1, v16, v19

    sub-int/2addr v1, v13

    int-to-float v4, v1

    add-int v1, v17, v11

    sub-int/2addr v1, v13

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->framePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 231
    move/from16 v0, v16

    int-to-float v2, v0

    move/from16 v0, v17

    int-to-float v3, v0

    add-int v1, v16, v9

    int-to-float v4, v1

    add-int v1, v17, v10

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->handlePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 232
    move/from16 v0, v16

    int-to-float v2, v0

    move/from16 v0, v17

    int-to-float v3, v0

    add-int v1, v16, v10

    int-to-float v4, v1

    add-int v1, v17, v9

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->handlePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 234
    add-int v1, v16, v19

    sub-int/2addr v1, v9

    int-to-float v2, v1

    move/from16 v0, v17

    int-to-float v3, v0

    add-int v1, v16, v19

    int-to-float v4, v1

    add-int v1, v17, v10

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->handlePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 235
    add-int v1, v16, v19

    sub-int/2addr v1, v10

    int-to-float v2, v1

    move/from16 v0, v17

    int-to-float v3, v0

    add-int v1, v16, v19

    int-to-float v4, v1

    add-int v1, v17, v9

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->handlePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 237
    move/from16 v0, v16

    int-to-float v2, v0

    add-int v1, v17, v11

    sub-int/2addr v1, v10

    int-to-float v3, v1

    add-int v1, v16, v9

    int-to-float v4, v1

    add-int v1, v17, v11

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->handlePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 238
    move/from16 v0, v16

    int-to-float v2, v0

    add-int v1, v17, v11

    sub-int/2addr v1, v9

    int-to-float v3, v1

    add-int v1, v16, v10

    int-to-float v4, v1

    add-int v1, v17, v11

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->handlePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 240
    add-int v1, v16, v19

    sub-int/2addr v1, v9

    int-to-float v2, v1

    add-int v1, v17, v11

    sub-int/2addr v1, v10

    int-to-float v3, v1

    add-int v1, v16, v19

    int-to-float v4, v1

    add-int v1, v17, v11

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->handlePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 241
    add-int v1, v16, v19

    sub-int/2addr v1, v10

    int-to-float v2, v1

    add-int v1, v17, v11

    sub-int/2addr v1, v9

    int-to-float v3, v1

    add-int v1, v16, v19

    int-to-float v4, v1

    add-int v1, v17, v11

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->handlePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 454
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getX()F

    move-result v10

    sub-float v10, v11, v10

    float-to-int v8, v10

    .line 455
    .local v8, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getY()F

    move-result v10

    sub-float v10, v11, v10

    float-to-int v9, v10

    .line 457
    .local v9, "y":I
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x15

    if-lt v10, v11, :cond_1

    sget v10, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_0
    int-to-float v3, v10

    .line 459
    .local v3, "statusBarHeight":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 461
    .local v0, "action":I
    if-nez v0, :cond_a

    .line 462
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->topLeftCorner:Landroid/graphics/RectF;

    int-to-float v11, v8

    int-to-float v12, v9

    invoke-virtual {v10, v11, v12}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 463
    sget-object v10, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->TOP_LEFT:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    iput-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->activeControl:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    .line 482
    :goto_1
    iput v8, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->previousX:I

    .line 483
    iput v9, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->previousY:I

    .line 484
    sget-object v10, Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;->MAJOR:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setGridType(Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;Z)V

    .line 486
    const/4 v10, 0x1

    iput-boolean v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->isDragging:Z

    .line 488
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->listener:Lorg/telegram/ui/Components/Crop/CropAreaView$AreaViewListener;

    if-eqz v10, :cond_0

    .line 489
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->listener:Lorg/telegram/ui/Components/Crop/CropAreaView$AreaViewListener;

    invoke-interface {v10}, Lorg/telegram/ui/Components/Crop/CropAreaView$AreaViewListener;->onAreaChangeBegan()V

    .line 491
    :cond_0
    const/4 v10, 0x1

    .line 676
    :goto_2
    return v10

    .line 457
    .end local v0    # "action":I
    .end local v3    # "statusBarHeight":F
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 464
    .restart local v0    # "action":I
    .restart local v3    # "statusBarHeight":F
    :cond_2
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->topRightCorner:Landroid/graphics/RectF;

    int-to-float v11, v8

    int-to-float v12, v9

    invoke-virtual {v10, v11, v12}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 465
    sget-object v10, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->TOP_RIGHT:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    iput-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->activeControl:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    goto :goto_1

    .line 466
    :cond_3
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->bottomLeftCorner:Landroid/graphics/RectF;

    int-to-float v11, v8

    int-to-float v12, v9

    invoke-virtual {v10, v11, v12}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 467
    sget-object v10, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->BOTTOM_LEFT:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    iput-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->activeControl:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    goto :goto_1

    .line 468
    :cond_4
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->bottomRightCorner:Landroid/graphics/RectF;

    int-to-float v11, v8

    int-to-float v12, v9

    invoke-virtual {v10, v11, v12}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 469
    sget-object v10, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->BOTTOM_RIGHT:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    iput-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->activeControl:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    goto :goto_1

    .line 470
    :cond_5
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->leftEdge:Landroid/graphics/RectF;

    int-to-float v11, v8

    int-to-float v12, v9

    invoke-virtual {v10, v11, v12}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 471
    sget-object v10, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->LEFT:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    iput-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->activeControl:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    goto :goto_1

    .line 472
    :cond_6
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->topEdge:Landroid/graphics/RectF;

    int-to-float v11, v8

    int-to-float v12, v9

    invoke-virtual {v10, v11, v12}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 473
    sget-object v10, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->TOP:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    iput-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->activeControl:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    goto :goto_1

    .line 474
    :cond_7
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->rightEdge:Landroid/graphics/RectF;

    int-to-float v11, v8

    int-to-float v12, v9

    invoke-virtual {v10, v11, v12}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 475
    sget-object v10, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->RIGHT:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    iput-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->activeControl:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    goto :goto_1

    .line 476
    :cond_8
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->bottomEdge:Landroid/graphics/RectF;

    int-to-float v11, v8

    int-to-float v12, v9

    invoke-virtual {v10, v11, v12}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 477
    sget-object v10, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->BOTTOM:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    iput-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->activeControl:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    goto/16 :goto_1

    .line 479
    :cond_9
    sget-object v10, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->NONE:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    iput-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->activeControl:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    .line 480
    const/4 v10, 0x0

    goto :goto_2

    .line 493
    :cond_a
    const/4 v10, 0x1

    if-eq v0, v10, :cond_b

    const/4 v10, 0x3

    if-ne v0, v10, :cond_e

    .line 494
    :cond_b
    const/4 v10, 0x0

    iput-boolean v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->isDragging:Z

    .line 496
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->activeControl:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    sget-object v11, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->NONE:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    if-ne v10, v11, :cond_c

    .line 497
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 499
    :cond_c
    sget-object v10, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->NONE:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    iput-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->activeControl:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    .line 501
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->listener:Lorg/telegram/ui/Components/Crop/CropAreaView$AreaViewListener;

    if-eqz v10, :cond_d

    .line 502
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->listener:Lorg/telegram/ui/Components/Crop/CropAreaView$AreaViewListener;

    invoke-interface {v10}, Lorg/telegram/ui/Components/Crop/CropAreaView$AreaViewListener;->onAreaChangeEnded()V

    .line 504
    :cond_d
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 506
    :cond_e
    const/4 v10, 0x2

    if-ne v0, v10, :cond_20

    .line 507
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->activeControl:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    sget-object v11, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->NONE:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    if-ne v10, v11, :cond_f

    .line 508
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 510
    :cond_f
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget-object v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    invoke-virtual {v10, v11}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 512
    iget v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->previousX:I

    sub-int v10, v8, v10

    int-to-float v5, v10

    .line 513
    .local v5, "translationX":F
    iget v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->previousY:I

    sub-int v10, v9, v10

    int-to-float v6, v10

    .line 514
    .local v6, "translationY":F
    iput v8, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->previousX:I

    .line 515
    iput v9, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->previousY:I

    .line 517
    sget-object v10, Lorg/telegram/ui/Components/Crop/CropAreaView$3;->$SwitchMap$org$telegram$ui$Components$Crop$CropAreaView$Control:[I

    iget-object v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->activeControl:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    invoke-virtual {v11}, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 620
    :cond_10
    :goto_3
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    iget v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->sidePadding:F

    cmpg-float v10, v10, v11

    if-gez v10, :cond_1d

    .line 621
    iget v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_11

    .line 622
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget-object v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->top:F

    iget-object v12, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->right:F

    iget v13, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->sidePadding:F

    sub-float/2addr v12, v13

    iget v13, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    div-float/2addr v12, v13

    add-float/2addr v11, v12

    iput v11, v10, Landroid/graphics/RectF;->bottom:F

    .line 624
    :cond_11
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->sidePadding:F

    iput v11, v10, Landroid/graphics/RectF;->left:F

    .line 632
    :cond_12
    :goto_4
    iget v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->sidePadding:F

    add-float v4, v3, v10

    .line 633
    .local v4, "topPadding":F
    iget v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->bottomPadding:F

    iget v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->sidePadding:F

    add-float v1, v10, v11

    .line 634
    .local v1, "finalBottomPadidng":F
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    cmpg-float v10, v10, v4

    if-gez v10, :cond_1e

    .line 635
    iget v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_13

    .line 636
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget-object v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->left:F

    iget-object v12, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v12, v4

    iget v13, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    iput v11, v10, Landroid/graphics/RectF;->right:F

    .line 638
    :cond_13
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iput v4, v10, Landroid/graphics/RectF;->top:F

    .line 646
    :cond_14
    :goto_5
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    iget v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->minWidth:F

    cmpg-float v10, v10, v11

    if-gez v10, :cond_15

    .line 647
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget-object v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->left:F

    iget v12, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->minWidth:F

    add-float/2addr v11, v12

    iput v11, v10, Landroid/graphics/RectF;->right:F

    .line 649
    :cond_15
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v10

    iget v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->minWidth:F

    cmpg-float v10, v10, v11

    if-gez v10, :cond_16

    .line 650
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget-object v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->top:F

    iget v12, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->minWidth:F

    add-float/2addr v11, v12

    iput v11, v10, Landroid/graphics/RectF;->bottom:F

    .line 653
    :cond_16
    iget v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_17

    .line 654
    iget v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_1f

    .line 655
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    iget v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->minWidth:F

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_17

    .line 656
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget-object v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->left:F

    iget v12, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->minWidth:F

    add-float/2addr v11, v12

    iput v11, v10, Landroid/graphics/RectF;->right:F

    .line 657
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget-object v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->top:F

    iget-object v12, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v12

    iget v13, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    div-float/2addr v12, v13

    add-float/2addr v11, v12

    iput v11, v10, Landroid/graphics/RectF;->bottom:F

    .line 667
    :cond_17
    :goto_6
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v10}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setActualRect(Landroid/graphics/RectF;)V

    .line 669
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->listener:Lorg/telegram/ui/Components/Crop/CropAreaView$AreaViewListener;

    if-eqz v10, :cond_18

    .line 670
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->listener:Lorg/telegram/ui/Components/Crop/CropAreaView$AreaViewListener;

    invoke-interface {v10}, Lorg/telegram/ui/Components/Crop/CropAreaView$AreaViewListener;->onAreaChange()V

    .line 673
    :cond_18
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 519
    .end local v1    # "finalBottomPadidng":F
    .end local v4    # "topPadding":F
    :pswitch_0
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, v10, Landroid/graphics/RectF;->left:F

    add-float/2addr v11, v5

    iput v11, v10, Landroid/graphics/RectF;->left:F

    .line 520
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, v10, Landroid/graphics/RectF;->top:F

    add-float/2addr v11, v6

    iput v11, v10, Landroid/graphics/RectF;->top:F

    .line 522
    iget v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_10

    .line 523
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v7

    .line 524
    .local v7, "w":F
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v2

    .line 526
    .local v2, "h":F
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_19

    .line 527
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    invoke-direct {p0, v10, v11}, Lorg/telegram/ui/Components/Crop/CropAreaView;->constrainRectByWidth(Landroid/graphics/RectF;F)V

    .line 532
    :goto_7
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, v10, Landroid/graphics/RectF;->left:F

    iget-object v12, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v12

    sub-float/2addr v12, v7

    sub-float/2addr v11, v12

    iput v11, v10, Landroid/graphics/RectF;->left:F

    .line 533
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, v10, Landroid/graphics/RectF;->top:F

    iget-object v12, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v12

    sub-float/2addr v12, v2

    sub-float/2addr v11, v12

    iput v11, v10, Landroid/graphics/RectF;->top:F

    goto/16 :goto_3

    .line 529
    :cond_19
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    invoke-direct {p0, v10, v11}, Lorg/telegram/ui/Components/Crop/CropAreaView;->constrainRectByHeight(Landroid/graphics/RectF;F)V

    goto :goto_7

    .line 538
    .end local v2    # "h":F
    .end local v7    # "w":F
    :pswitch_1
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, v10, Landroid/graphics/RectF;->right:F

    add-float/2addr v11, v5

    iput v11, v10, Landroid/graphics/RectF;->right:F

    .line 539
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, v10, Landroid/graphics/RectF;->top:F

    add-float/2addr v11, v6

    iput v11, v10, Landroid/graphics/RectF;->top:F

    .line 541
    iget v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_10

    .line 542
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v2

    .line 544
    .restart local v2    # "h":F
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_1a

    .line 545
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    invoke-direct {p0, v10, v11}, Lorg/telegram/ui/Components/Crop/CropAreaView;->constrainRectByWidth(Landroid/graphics/RectF;F)V

    .line 550
    :goto_8
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, v10, Landroid/graphics/RectF;->top:F

    iget-object v12, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v12

    sub-float/2addr v12, v2

    sub-float/2addr v11, v12

    iput v11, v10, Landroid/graphics/RectF;->top:F

    goto/16 :goto_3

    .line 547
    :cond_1a
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    invoke-direct {p0, v10, v11}, Lorg/telegram/ui/Components/Crop/CropAreaView;->constrainRectByHeight(Landroid/graphics/RectF;F)V

    goto :goto_8

    .line 555
    .end local v2    # "h":F
    :pswitch_2
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, v10, Landroid/graphics/RectF;->left:F

    add-float/2addr v11, v5

    iput v11, v10, Landroid/graphics/RectF;->left:F

    .line 556
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, v10, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v11, v6

    iput v11, v10, Landroid/graphics/RectF;->bottom:F

    .line 558
    iget v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_10

    .line 559
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v7

    .line 561
    .restart local v7    # "w":F
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_1b

    .line 562
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    invoke-direct {p0, v10, v11}, Lorg/telegram/ui/Components/Crop/CropAreaView;->constrainRectByWidth(Landroid/graphics/RectF;F)V

    .line 567
    :goto_9
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, v10, Landroid/graphics/RectF;->left:F

    iget-object v12, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v12

    sub-float/2addr v12, v7

    sub-float/2addr v11, v12

    iput v11, v10, Landroid/graphics/RectF;->left:F

    goto/16 :goto_3

    .line 564
    :cond_1b
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    invoke-direct {p0, v10, v11}, Lorg/telegram/ui/Components/Crop/CropAreaView;->constrainRectByHeight(Landroid/graphics/RectF;F)V

    goto :goto_9

    .line 572
    .end local v7    # "w":F
    :pswitch_3
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, v10, Landroid/graphics/RectF;->right:F

    add-float/2addr v11, v5

    iput v11, v10, Landroid/graphics/RectF;->right:F

    .line 573
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, v10, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v11, v6

    iput v11, v10, Landroid/graphics/RectF;->bottom:F

    .line 575
    iget v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_10

    .line 576
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_1c

    .line 577
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    invoke-direct {p0, v10, v11}, Lorg/telegram/ui/Components/Crop/CropAreaView;->constrainRectByWidth(Landroid/graphics/RectF;F)V

    goto/16 :goto_3

    .line 579
    :cond_1c
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    invoke-direct {p0, v10, v11}, Lorg/telegram/ui/Components/Crop/CropAreaView;->constrainRectByHeight(Landroid/graphics/RectF;F)V

    goto/16 :goto_3

    .line 585
    :pswitch_4
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, v10, Landroid/graphics/RectF;->top:F

    add-float/2addr v11, v6

    iput v11, v10, Landroid/graphics/RectF;->top:F

    .line 587
    iget v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_10

    .line 588
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    invoke-direct {p0, v10, v11}, Lorg/telegram/ui/Components/Crop/CropAreaView;->constrainRectByHeight(Landroid/graphics/RectF;F)V

    goto/16 :goto_3

    .line 593
    :pswitch_5
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, v10, Landroid/graphics/RectF;->left:F

    add-float/2addr v11, v5

    iput v11, v10, Landroid/graphics/RectF;->left:F

    .line 595
    iget v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_10

    .line 596
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    invoke-direct {p0, v10, v11}, Lorg/telegram/ui/Components/Crop/CropAreaView;->constrainRectByWidth(Landroid/graphics/RectF;F)V

    goto/16 :goto_3

    .line 601
    :pswitch_6
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, v10, Landroid/graphics/RectF;->right:F

    add-float/2addr v11, v5

    iput v11, v10, Landroid/graphics/RectF;->right:F

    .line 603
    iget v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_10

    .line 604
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    invoke-direct {p0, v10, v11}, Lorg/telegram/ui/Components/Crop/CropAreaView;->constrainRectByWidth(Landroid/graphics/RectF;F)V

    goto/16 :goto_3

    .line 609
    :pswitch_7
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, v10, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v11, v6

    iput v11, v10, Landroid/graphics/RectF;->bottom:F

    .line 611
    iget v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_10

    .line 612
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    invoke-direct {p0, v10, v11}, Lorg/telegram/ui/Components/Crop/CropAreaView;->constrainRectByHeight(Landroid/graphics/RectF;F)V

    goto/16 :goto_3

    .line 625
    :cond_1d
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getWidth()I

    move-result v11

    int-to-float v11, v11

    iget v12, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->sidePadding:F

    sub-float/2addr v11, v12

    cmpl-float v10, v10, v11

    if-lez v10, :cond_12

    .line 626
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getWidth()I

    move-result v11

    int-to-float v11, v11

    iget v12, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->sidePadding:F

    sub-float/2addr v11, v12

    iput v11, v10, Landroid/graphics/RectF;->right:F

    .line 627
    iget v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_12

    .line 628
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget-object v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->top:F

    iget-object v12, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v12

    iget v13, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    div-float/2addr v12, v13

    add-float/2addr v11, v12

    iput v11, v10, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_4

    .line 639
    .restart local v1    # "finalBottomPadidng":F
    .restart local v4    # "topPadding":F
    :cond_1e
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getHeight()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v11, v1

    cmpl-float v10, v10, v11

    if-lez v10, :cond_14

    .line 640
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getHeight()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v11, v1

    iput v11, v10, Landroid/graphics/RectF;->bottom:F

    .line 641
    iget v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_14

    .line 642
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget-object v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->left:F

    iget-object v12, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v12

    iget v13, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    iput v11, v10, Landroid/graphics/RectF;->right:F

    goto/16 :goto_5

    .line 660
    :cond_1f
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v10

    iget v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->minWidth:F

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_17

    .line 661
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget-object v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->top:F

    iget v12, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->minWidth:F

    add-float/2addr v11, v12

    iput v11, v10, Landroid/graphics/RectF;->bottom:F

    .line 662
    iget-object v10, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget-object v11, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->left:F

    iget-object v12, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v12

    iget v13, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    iput v11, v10, Landroid/graphics/RectF;->right:F

    goto/16 :goto_6

    .line 676
    .end local v1    # "finalBottomPadidng":F
    .end local v4    # "topPadding":F
    .end local v5    # "translationX":F
    .end local v6    # "translationY":F
    :cond_20
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 517
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public resetAnimator()V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->animator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->animator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 354
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->animator:Landroid/animation/Animator;

    .line 356
    :cond_0
    return-void
.end method

.method public setActualRect(F)V
    .locals 1
    .param p1, "aspectRatio"    # F

    .prologue
    .line 158
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->calculateRect(Landroid/graphics/RectF;F)V

    .line 159
    invoke-direct {p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->updateTouchAreas()V

    .line 160
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->invalidate()V

    .line 161
    return-void
.end method

.method public setActualRect(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    .line 164
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 165
    invoke-direct {p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->updateTouchAreas()V

    .line 166
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->invalidate()V

    .line 167
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;ZZ)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "sideward"    # Z
    .param p3, "freeform"    # Z

    .prologue
    .line 138
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    if-eqz p2, :cond_3

    .line 144
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 149
    .local v0, "aspectRatio":F
    :goto_1
    if-nez p3, :cond_2

    .line 150
    const/high16 v0, 0x3f800000    # 1.0f

    .line 151
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    .line 154
    :cond_2
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setActualRect(F)V

    goto :goto_0

    .line 146
    .end local v0    # "aspectRatio":F
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .restart local v0    # "aspectRatio":F
    goto :goto_1
.end method

.method public setBottomPadding(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 126
    iput p1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->bottomPadding:F

    .line 127
    return-void
.end method

.method public setDimVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->dimVisibile:Z

    .line 119
    return-void
.end method

.method public setFrameVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->frameVisible:Z

    .line 123
    return-void
.end method

.method public setGridType(Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;Z)V
    .locals 8
    .param p1, "type"    # Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;
    .param p2, "animated"    # Z

    .prologue
    const-wide/16 v6, 0xc8

    .line 267
    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_1

    .line 268
    if-eqz p2, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridType:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    if-eq v1, p1, :cond_1

    .line 269
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 270
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridAnimator:Landroid/animation/Animator;

    .line 274
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridType:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    if-ne v1, p1, :cond_2

    .line 297
    :goto_0
    return-void

    .line 277
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridType:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    iput-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->previousGridType:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    .line 278
    iput-object p1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridType:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    .line 280
    sget-object v1, Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;->NONE:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    if-ne p1, v1, :cond_3

    const/4 v0, 0x0

    .line 281
    .local v0, "targetProgress":F
    :goto_1
    if-nez p2, :cond_4

    .line 282
    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridProgress:F

    .line 283
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->invalidate()V

    goto :goto_0

    .line 280
    .end local v0    # "targetProgress":F
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    .line 285
    .restart local v0    # "targetProgress":F
    :cond_4
    const-string/jumbo v1, "gridProgress"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget v4, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridProgress:F

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridAnimator:Landroid/animation/Animator;

    .line 286
    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridAnimator:Landroid/animation/Animator;

    invoke-virtual {v1, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 287
    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridAnimator:Landroid/animation/Animator;

    new-instance v2, Lorg/telegram/ui/Components/Crop/CropAreaView$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Crop/CropAreaView$1;-><init>(Lorg/telegram/ui/Components/Crop/CropAreaView;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 293
    sget-object v1, Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;->NONE:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    if-ne p1, v1, :cond_5

    .line 294
    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridAnimator:Landroid/animation/Animator;

    invoke-virtual {v1, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 295
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method public setListener(Lorg/telegram/ui/Components/Crop/CropAreaView$AreaViewListener;)V
    .locals 0
    .param p1, "l"    # Lorg/telegram/ui/Components/Crop/CropAreaView$AreaViewListener;

    .prologue
    .line 134
    iput-object p1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->listener:Lorg/telegram/ui/Components/Crop/CropAreaView$AreaViewListener;

    .line 135
    return-void
.end method

.method public setLockedAspectRatio(F)V
    .locals 0
    .param p1, "aspectRatio"    # F

    .prologue
    .line 263
    iput p1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    .line 264
    return-void
.end method
