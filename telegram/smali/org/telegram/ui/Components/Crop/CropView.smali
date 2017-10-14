.class public Lorg/telegram/ui/Components/Crop/CropView;
.super Landroid/widget/FrameLayout;
.source "CropView.java"

# interfaces
.implements Lorg/telegram/ui/Components/Crop/CropAreaView$AreaViewListener;
.implements Lorg/telegram/ui/Components/Crop/CropGestureDetector$CropGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Crop/CropView$CropRectangle;,
        Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;,
        Lorg/telegram/ui/Components/Crop/CropView$CropState;
    }
.end annotation


# static fields
.field private static final EPSILON:F = 1.0E-5f

.field private static final MAX_SCALE:F = 30.0f

.field private static final RESULT_SIDE:I = 0x500


# instance fields
.field private animating:Z

.field private areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

.field private backView:Landroid/view/View;

.field private bitmap:Landroid/graphics/Bitmap;

.field private bottomPadding:F

.field private detector:Lorg/telegram/ui/Components/Crop/CropGestureDetector;

.field private freeform:Z

.field private hasAspectRatioDialog:Z

.field private imageView:Landroid/widget/ImageView;

.field private initialAreaRect:Landroid/graphics/RectF;

.field private listener:Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;

.field private presentationMatrix:Landroid/graphics/Matrix;

.field private previousAreaRect:Landroid/graphics/RectF;

.field private rotationStartScale:F

.field private state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

.field private tempMatrix:Landroid/graphics/Matrix;

.field private tempRect:Lorg/telegram/ui/Components/Crop/CropView$CropRectangle;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 188
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 190
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->previousAreaRect:Landroid/graphics/RectF;

    .line 191
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->initialAreaRect:Landroid/graphics/RectF;

    .line 192
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->presentationMatrix:Landroid/graphics/Matrix;

    .line 193
    new-instance v0, Lorg/telegram/ui/Components/Crop/CropView$CropRectangle;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Crop/CropView$CropRectangle;-><init>(Lorg/telegram/ui/Components/Crop/CropView;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->tempRect:Lorg/telegram/ui/Components/Crop/CropView$CropRectangle;

    .line 194
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->tempMatrix:Landroid/graphics/Matrix;

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->animating:Z

    .line 197
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->backView:Landroid/view/View;

    .line 198
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->backView:Landroid/view/View;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 199
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->backView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->backView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Crop/CropView;->addView(Landroid/view/View;)V

    .line 202
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->imageView:Landroid/widget/ImageView;

    .line 203
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 204
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->imageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 205
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Crop/CropView;->addView(Landroid/view/View;)V

    .line 207
    new-instance v0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/Crop/CropGestureDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->detector:Lorg/telegram/ui/Components/Crop/CropGestureDetector;

    .line 208
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->detector:Lorg/telegram/ui/Components/Crop/CropGestureDetector;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->setOnGestureListener(Lorg/telegram/ui/Components/Crop/CropGestureDetector$CropGestureListener;)V

    .line 210
    new-instance v0, Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/Crop/CropAreaView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    .line 211
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setListener(Lorg/telegram/ui/Components/Crop/CropAreaView$AreaViewListener;)V

    .line 212
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Crop/CropView;->addView(Landroid/view/View;)V

    .line 213
    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Crop/CropView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/Crop/CropView;

    .prologue
    .line 28
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/Crop/CropView;)Lorg/telegram/ui/Components/Crop/CropView$CropState;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/Crop/CropView;

    .prologue
    .line 28
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/Crop/CropView;ZZZ)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/Crop/CropView;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Crop/CropView;->fitContentInBounds(ZZZ)V

    return-void
.end method

.method static synthetic access$1902(Lorg/telegram/ui/Components/Crop/CropView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/Crop/CropView;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Crop/CropView;->animating:Z

    return p1
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/Crop/CropView;ZZZZ)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/Crop/CropView;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/Crop/CropView;->fitContentInBounds(ZZZZ)V

    return-void
.end method

.method static synthetic access$2302(Lorg/telegram/ui/Components/Crop/CropView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/Crop/CropView;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Crop/CropView;->hasAspectRatioDialog:Z

    return p1
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/Crop/CropView;F)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/Crop/CropView;
    .param p1, "x1"    # F

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Crop/CropView;->setLockedAspectRatio(F)V

    return-void
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/Crop/CropView;)Lorg/telegram/ui/Components/Crop/CropAreaView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/Crop/CropView;

    .prologue
    .line 28
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    return-object v0
.end method

.method private fillAreaView(Landroid/graphics/RectF;Z)V
    .locals 13
    .param p1, "targetRect"    # Landroid/graphics/RectF;
    .param p2, "allowZoomOut"    # Z

    .prologue
    .line 298
    const/4 v0, 0x1

    new-array v3, v0, [F

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v3, v0

    .line 299
    .local v3, "currentScale":[F
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropWidth()F

    move-result v1

    div-float/2addr v0, v1

    .line 300
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v12, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropHeight()F

    move-result v12

    div-float/2addr v1, v12

    .line 299
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 302
    .local v10, "scale":F
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v0}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$800(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v0

    mul-float v9, v0, v10

    .line 303
    .local v9, "newScale":F
    const/4 v8, 0x0

    .line 304
    .local v8, "ensureFit":Z
    const/high16 v0, 0x41f00000    # 30.0f

    cmpl-float v0, v9, v0

    if-lez v0, :cond_0

    .line 305
    const/high16 v0, 0x41f00000    # 30.0f

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v1}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$800(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v1

    div-float v10, v0, v1

    .line 306
    const/4 v8, 0x1

    .line 308
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_0
    int-to-float v11, v0

    .line 310
    .local v11, "statusBarHeight":F
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropWidth()F

    move-result v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v1}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$900(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v1

    mul-float v4, v0, v1

    .line 311
    .local v4, "x":F
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v12, p0, Lorg/telegram/ui/Components/Crop/CropView;->bottomPadding:F

    sub-float/2addr v1, v12

    add-float/2addr v1, v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v1, v12

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropHeight()F

    move-result v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v1}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1000(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v1

    mul-float v5, v0, v1

    .line 312
    .local v5, "y":F
    move v2, v10

    .line 314
    .local v2, "targetScale":F
    move v6, v8

    .line 316
    .local v6, "animEnsureFit":Z
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 317
    .local v7, "animator":Landroid/animation/ValueAnimator;
    new-instance v0, Lorg/telegram/ui/Components/Crop/CropView$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Crop/CropView$2;-><init>(Lorg/telegram/ui/Components/Crop/CropView;F[FFF)V

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 327
    new-instance v0, Lorg/telegram/ui/Components/Crop/CropView$3;

    invoke-direct {v0, p0, v6}, Lorg/telegram/ui/Components/Crop/CropView$3;-><init>(Lorg/telegram/ui/Components/Crop/CropView;Z)V

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 334
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v7, v1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->fill(Landroid/graphics/RectF;Landroid/animation/Animator;Z)V

    .line 335
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->initialAreaRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 336
    return-void

    .line 308
    .end local v2    # "targetScale":F
    .end local v4    # "x":F
    .end local v5    # "y":F
    .end local v6    # "animEnsureFit":Z
    .end local v7    # "animator":Landroid/animation/ValueAnimator;
    .end local v11    # "statusBarHeight":F
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 316
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private fitContentInBounds(ZZZ)V
    .locals 1
    .param p1, "allowScale"    # Z
    .param p2, "maximize"    # Z
    .param p3, "animated"    # Z

    .prologue
    .line 429
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Components/Crop/CropView;->fitContentInBounds(ZZZZ)V

    .line 430
    return-void
.end method

.method private fitContentInBounds(ZZZZ)V
    .locals 37
    .param p1, "allowScale"    # Z
    .param p2, "maximize"    # Z
    .param p3, "animated"    # Z
    .param p4, "fast"    # Z

    .prologue
    .line 433
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropWidth()F

    move-result v21

    .line 434
    .local v21, "boundsW":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropHeight()F

    move-result v19

    .line 435
    .local v19, "boundsH":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v6}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$900(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v24

    .line 436
    .local v24, "contentW":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v6}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1000(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v22

    .line 437
    .local v22, "contentH":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v6}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1400(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v33

    .line 438
    .local v33, "rotation":F
    move/from16 v0, v33

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    double-to-float v0, v6

    move/from16 v31, v0

    .line 440
    .local v31, "radians":F
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v19

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/Crop/CropView;->calculateBoundingBox(FFF)Landroid/graphics/RectF;

    move-result-object v20

    .line 441
    .local v20, "boundsRect":Landroid/graphics/RectF;
    new-instance v23, Landroid/graphics/RectF;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v22

    invoke-direct {v0, v6, v7, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 443
    .local v23, "contentRect":Landroid/graphics/RectF;
    sub-float v6, v21, v24

    const/high16 v7, 0x40000000    # 2.0f

    div-float v27, v6, v7

    .line 444
    .local v27, "initialX":F
    sub-float v6, v19, v22

    const/high16 v7, 0x40000000    # 2.0f

    div-float v28, v6, v7

    .line 446
    .local v28, "initialY":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v6}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$800(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v34

    .line 448
    .local v34, "scale":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropView;->tempRect:Lorg/telegram/ui/Components/Crop/CropView$CropRectangle;

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/ui/Components/Crop/CropView$CropRectangle;->setRect(Landroid/graphics/RectF;)V

    .line 450
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v6}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1500(Lorg/telegram/ui/Components/Crop/CropView$CropState;)Landroid/graphics/Matrix;

    move-result-object v29

    .line 451
    .local v29, "matrix":Landroid/graphics/Matrix;
    div-float v6, v27, v34

    div-float v7, v28, v34

    move-object/from16 v0, v29

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 453
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropView;->tempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 454
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropView;->tempMatrix:Landroid/graphics/Matrix;

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->centerY()F

    move-result v12

    invoke-virtual {v6, v7, v12}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 455
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropView;->tempMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Components/Crop/CropView;->tempMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, v29

    invoke-virtual {v6, v7, v0}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    .line 456
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropView;->tempMatrix:Landroid/graphics/Matrix;

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    neg-float v7, v7

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->centerY()F

    move-result v12

    neg-float v12, v12

    invoke-virtual {v6, v7, v12}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 457
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropView;->tempRect:Lorg/telegram/ui/Components/Crop/CropView$CropRectangle;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Components/Crop/CropView;->tempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/Crop/CropView$CropRectangle;->applyMatrix(Landroid/graphics/Matrix;)V

    .line 459
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropView;->tempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 460
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropView;->tempMatrix:Landroid/graphics/Matrix;

    move/from16 v0, v33

    neg-float v7, v0

    const/high16 v12, 0x40000000    # 2.0f

    div-float v12, v24, v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float v13, v22, v13

    invoke-virtual {v6, v7, v12, v13}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 461
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropView;->tempRect:Lorg/telegram/ui/Components/Crop/CropView$CropRectangle;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Components/Crop/CropView;->tempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/Crop/CropView$CropRectangle;->applyMatrix(Landroid/graphics/Matrix;)V

    .line 462
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropView;->tempRect:Lorg/telegram/ui/Components/Crop/CropView$CropRectangle;

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/ui/Components/Crop/CropView$CropRectangle;->getRect(Landroid/graphics/RectF;)V

    .line 464
    new-instance v36, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v6}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1600(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v7}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1700(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v7

    move-object/from16 v0, v36

    invoke-direct {v0, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 465
    .local v36, "targetTranslation":Landroid/graphics/PointF;
    move/from16 v35, v34

    .line 467
    .local v35, "targetScale":F
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 468
    if-eqz p1, :cond_1

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->width()F

    move-result v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->height()F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 469
    :cond_0
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/RectF;->width()F

    move-result v6

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Crop/CropView;->scaleWidthToMaxSize(Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result v7

    div-float v32, v6, v7

    .line 470
    .local v32, "ratio":F
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v34

    move/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Components/Crop/CropView;->fitScale(Landroid/graphics/RectF;FF)F

    move-result v35

    .line 473
    .end local v32    # "ratio":F
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v20

    move-object/from16 v3, v36

    move/from16 v4, v31

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/Crop/CropView;->fitTranslation(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;F)V

    .line 484
    :cond_2
    :goto_0
    move-object/from16 v0, v36

    iget v6, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v7}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1600(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v7

    sub-float v25, v6, v7

    .line 485
    .local v25, "dx":F
    move-object/from16 v0, v36

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v7}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1700(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v7

    sub-float v26, v6, v7

    .line 487
    .local v26, "dy":F
    if-eqz p3, :cond_7

    .line 488
    div-float v11, v35, v34

    .line 489
    .local v11, "animScale":F
    move/from16 v8, v25

    .line 490
    .local v8, "animDX":F
    move/from16 v10, v26

    .line 492
    .local v10, "animDY":F
    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v6, v11, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x3727c5ac    # 1.0E-5f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_5

    .line 493
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x3727c5ac    # 1.0E-5f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_5

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x3727c5ac    # 1.0E-5f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_5

    .line 536
    .end local v8    # "animDX":F
    .end local v10    # "animDY":F
    .end local v11    # "animScale":F
    :goto_1
    return-void

    .line 474
    .end local v25    # "dx":F
    .end local v26    # "dy":F
    :cond_3
    if-eqz p2, :cond_2

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/ui/Components/Crop/CropView;->rotationStartScale:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    .line 475
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/RectF;->width()F

    move-result v6

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Crop/CropView;->scaleWidthToMaxSize(Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result v7

    div-float v32, v6, v7

    .line 476
    .restart local v32    # "ratio":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v6}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$800(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v6

    mul-float v30, v6, v32

    .line 477
    .local v30, "newScale":F
    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/ui/Components/Crop/CropView;->rotationStartScale:F

    cmpg-float v6, v30, v6

    if-gez v6, :cond_4

    .line 478
    const/high16 v32, 0x3f800000    # 1.0f

    .line 479
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v34

    move/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Components/Crop/CropView;->fitScale(Landroid/graphics/RectF;FF)F

    move-result v35

    .line 481
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v20

    move-object/from16 v3, v36

    move/from16 v4, v31

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/Crop/CropView;->fitTranslation(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;F)V

    goto/16 :goto_0

    .line 497
    .end local v30    # "newScale":F
    .end local v32    # "ratio":F
    .restart local v8    # "animDX":F
    .restart local v10    # "animDY":F
    .restart local v11    # "animScale":F
    .restart local v25    # "dx":F
    .restart local v26    # "dy":F
    :cond_5
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lorg/telegram/ui/Components/Crop/CropView;->animating:Z

    .line 499
    const/4 v6, 0x3

    new-array v9, v6, [F

    fill-array-data v9, :array_0

    .line 500
    .local v9, "currentValues":[F
    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_1

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v18

    .line 501
    .local v18, "animator":Landroid/animation/ValueAnimator;
    new-instance v6, Lorg/telegram/ui/Components/Crop/CropView$4;

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v11}, Lorg/telegram/ui/Components/Crop/CropView$4;-><init>(Lorg/telegram/ui/Components/Crop/CropView;F[FFF)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 519
    new-instance v12, Lorg/telegram/ui/Components/Crop/CropView$5;

    move-object/from16 v13, p0

    move/from16 v14, p4

    move/from16 v15, p1

    move/from16 v16, p2

    move/from16 v17, p3

    invoke-direct/range {v12 .. v17}, Lorg/telegram/ui/Components/Crop/CropView$5;-><init>(Lorg/telegram/ui/Components/Crop/CropView;ZZZZ)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 528
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 529
    if-eqz p4, :cond_6

    const-wide/16 v6, 0x64

    :goto_2
    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 530
    invoke-virtual/range {v18 .. v18}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_1

    .line 529
    :cond_6
    const-wide/16 v6, 0xc8

    goto :goto_2

    .line 532
    .end local v8    # "animDX":F
    .end local v9    # "currentValues":[F
    .end local v10    # "animDY":F
    .end local v11    # "animScale":F
    .end local v18    # "animator":Landroid/animation/ValueAnimator;
    :cond_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v6, v0, v1}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1800(Lorg/telegram/ui/Components/Crop/CropView$CropState;FF)V

    .line 533
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    div-float v7, v35, v34

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v6, v7, v12, v13}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1200(Lorg/telegram/ui/Components/Crop/CropView$CropState;FFF)V

    .line 534
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Crop/CropView;->updateMatrix()V

    goto/16 :goto_1

    .line 499
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    .line 500
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private fitScale(Landroid/graphics/RectF;FF)F
    .locals 8
    .param p1, "contentRect"    # Landroid/graphics/RectF;
    .param p2, "scale"    # F
    .param p3, "ratio"    # F

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 339
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float v1, v4, p3

    .line 340
    .local v1, "scaledW":F
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float v0, v4, p3

    .line 342
    .local v0, "scaledH":F
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    div-float v2, v4, v5

    .line 343
    .local v2, "scaledX":F
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    div-float v3, v4, v5

    .line 345
    .local v3, "scaledY":F
    iget v4, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v2

    iget v5, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v3

    iget v6, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v6, v2

    add-float/2addr v6, v1

    iget v7, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v7, v3

    add-float/2addr v7, v0

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 348
    mul-float v4, p2, p3

    return v4
.end method

.method private fitTranslation(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;F)V
    .locals 16
    .param p1, "contentRect"    # Landroid/graphics/RectF;
    .param p2, "boundsRect"    # Landroid/graphics/RectF;
    .param p3, "translation"    # Landroid/graphics/PointF;
    .param p4, "radians"    # F

    .prologue
    .line 352
    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/RectF;->left:F

    .line 353
    .local v5, "frameLeft":F
    move-object/from16 v0, p2

    iget v7, v0, Landroid/graphics/RectF;->top:F

    .line 354
    .local v7, "frameTop":F
    move-object/from16 v0, p2

    iget v6, v0, Landroid/graphics/RectF;->right:F

    .line 355
    .local v6, "frameRight":F
    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    .line 357
    .local v4, "frameBottom":F
    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v12, v12, v5

    if-lez v12, :cond_0

    .line 358
    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v12, v5

    add-float/2addr v6, v12

    .line 359
    move-object/from16 v0, p1

    iget v5, v0, Landroid/graphics/RectF;->left:F

    .line 361
    :cond_0
    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v12, v12, v7

    if-lez v12, :cond_1

    .line 362
    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v12, v7

    add-float/2addr v4, v12

    .line 363
    move-object/from16 v0, p1

    iget v7, v0, Landroid/graphics/RectF;->top:F

    .line 365
    :cond_1
    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v12, v12, v6

    if-gez v12, :cond_2

    .line 366
    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v12, v6

    add-float/2addr v5, v12

    .line 368
    :cond_2
    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v12, v12, v4

    if-gez v12, :cond_3

    .line 369
    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v12, v4

    add-float/2addr v7, v12

    .line 372
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float/2addr v13, v5

    sub-float v2, v12, v13

    .line 373
    .local v2, "deltaX":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float/2addr v13, v7

    sub-float v3, v12, v13

    .line 375
    .local v3, "deltaY":F
    const-wide v12, 0x3ff921fb54442d18L    # 1.5707963267948966

    move/from16 v0, p4

    float-to-double v14, v0

    sub-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    float-to-double v14, v2

    mul-double/2addr v12, v14

    double-to-float v8, v12

    .line 376
    .local v8, "xCompX":F
    const-wide v12, 0x3ff921fb54442d18L    # 1.5707963267948966

    move/from16 v0, p4

    float-to-double v14, v0

    sub-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    float-to-double v14, v2

    mul-double/2addr v12, v14

    double-to-float v9, v12

    .line 378
    .local v9, "xCompY":F
    const-wide v12, 0x3ff921fb54442d18L    # 1.5707963267948966

    move/from16 v0, p4

    float-to-double v14, v0

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    float-to-double v14, v3

    mul-double/2addr v12, v14

    double-to-float v10, v12

    .line 379
    .local v10, "yCompX":F
    const-wide v12, 0x3ff921fb54442d18L    # 1.5707963267948966

    move/from16 v0, p4

    float-to-double v14, v0

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    float-to-double v14, v3

    mul-double/2addr v12, v14

    double-to-float v11, v12

    .line 381
    .local v11, "yCompY":F
    move-object/from16 v0, p3

    iget v12, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v12, v8

    add-float/2addr v12, v10

    move-object/from16 v0, p3

    iget v13, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v13, v9

    add-float/2addr v13, v11

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/graphics/PointF;->set(FF)V

    .line 382
    return-void
.end method

.method private resetRotationStartScale()V
    .locals 1

    .prologue
    .line 681
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->rotationStartScale:F

    .line 682
    return-void
.end method

.method private setLockedAspectRatio(F)V
    .locals 4
    .param p1, "aspectRatio"    # F

    .prologue
    const/4 v3, 0x1

    .line 720
    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setLockedAspectRatio(F)V

    .line 721
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 722
    .local v0, "targetRect":Landroid/graphics/RectF;
    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v1, v0, p1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->calculateRect(Landroid/graphics/RectF;F)V

    .line 723
    invoke-direct {p0, v0, v3}, Lorg/telegram/ui/Components/Crop/CropView;->fillAreaView(Landroid/graphics/RectF;Z)V

    .line 725
    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->listener:Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;

    if-eqz v1, :cond_0

    .line 726
    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->listener:Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;->onChange(Z)V

    .line 727
    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->listener:Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;

    invoke-interface {v1, v3}, Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;->onAspectLock(Z)V

    .line 729
    :cond_0
    return-void
.end method


# virtual methods
.method public calculateBoundingBox(FFF)Landroid/graphics/RectF;
    .locals 4
    .param p1, "w"    # F
    .param p2, "h"    # F
    .param p3, "rotation"    # F

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v2, 0x0

    .line 385
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v2, v2, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 386
    .local v1, "result":Landroid/graphics/RectF;
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 387
    .local v0, "m":Landroid/graphics/Matrix;
    div-float v2, p1, v3

    div-float v3, p2, v3

    invoke-virtual {v0, p3, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 388
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 389
    return-object v1
.end method

.method public getCropHeight()F
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropHeight()F

    move-result v0

    return v0
.end method

.method public getCropLeft()F
    .locals 1

    .prologue
    .line 826
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropLeft()F

    move-result v0

    return v0
.end method

.method public getCropTop()F
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropTop()F

    move-result v0

    return v0
.end method

.method public getCropWidth()F
    .locals 1

    .prologue
    .line 834
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropWidth()F

    move-result v0

    return v0
.end method

.method public getResult()Landroid/graphics/Bitmap;
    .locals 13

    .prologue
    const/high16 v12, 0x44a00000    # 1280.0f

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x0

    .line 691
    iget-object v8, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v8}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$2200(Lorg/telegram/ui/Components/Crop/CropView$CropState;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v8}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$200(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v8

    const v9, 0x3727c5ac    # 1.0E-5f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_0

    iget-boolean v8, p0, Lorg/telegram/ui/Components/Crop/CropView;->freeform:Z

    if-eqz v8, :cond_0

    .line 692
    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropView;->bitmap:Landroid/graphics/Bitmap;

    .line 716
    :goto_0
    return-object v3

    .line 695
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 696
    .local v0, "cropRect":Landroid/graphics/RectF;
    iget-object v8, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v8, v0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropRect(Landroid/graphics/RectF;)V

    .line 697
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v10, v10, v12, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 699
    .local v5, "sizeRect":Landroid/graphics/RectF;
    invoke-virtual {p0, v0, v5}, Lorg/telegram/ui/Components/Crop/CropView;->scaleWidthToMaxSize(Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result v6

    .line 700
    .local v6, "w":F
    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v7, v8

    .line 701
    .local v7, "width":I
    int-to-float v8, v7

    iget-object v9, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getAspectRatio()F

    move-result v9

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v1, v8

    .line 703
    .local v1, "height":I
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v1, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 705
    .local v3, "resultBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 706
    .local v2, "matrix":Landroid/graphics/Matrix;
    iget-object v8, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v8}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$400(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v8

    neg-float v8, v8

    div-float/2addr v8, v11

    iget-object v9, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v9}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$500(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v9

    neg-float v9, v9

    div-float/2addr v9, v11

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 708
    iget-object v8, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v8}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$600(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v8

    invoke-virtual {v2, v8}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 709
    iget-object v8, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v8, v2}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$700(Lorg/telegram/ui/Components/Crop/CropView$CropState;Landroid/graphics/Matrix;)V

    .line 711
    int-to-float v8, v7

    iget-object v9, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropWidth()F

    move-result v9

    div-float v4, v8, v9

    .line 712
    .local v4, "scale":F
    invoke-virtual {v2, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 713
    div-int/lit8 v8, v7, 0x2

    int-to-float v8, v8

    div-int/lit8 v9, v1, 0x2

    int-to-float v9, v9

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 715
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v9, p0, Lorg/telegram/ui/Components/Crop/CropView;->bitmap:Landroid/graphics/Bitmap;

    new-instance v10, Landroid/graphics/Paint;

    const/4 v11, 0x2

    invoke-direct {v10, v11}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v8, v9, v2, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public hide()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 263
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->backView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setDimVisibility(Z)V

    .line 266
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setFrameVisibility(Z)V

    .line 267
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->invalidate()V

    .line 268
    return-void
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->detector:Lorg/telegram/ui/Components/Crop/CropGestureDetector;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->isScaling()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->detector:Lorg/telegram/ui/Components/Crop/CropGestureDetector;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->isDragging()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->isDragging()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAreaChange()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 603
    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    sget-object v3, Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;->MAJOR:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setGridType(Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;Z)V

    .line 605
    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->previousAreaRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropCenterX()F

    move-result v3

    sub-float v0, v2, v3

    .line 606
    .local v0, "x":F
    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->previousAreaRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropCenterY()F

    move-result v3

    sub-float v1, v2, v3

    .line 607
    .local v1, "y":F
    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v2, v0, v1}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1800(Lorg/telegram/ui/Components/Crop/CropView$CropState;FF)V

    .line 608
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropView;->updateMatrix()V

    .line 610
    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropView;->previousAreaRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropRect(Landroid/graphics/RectF;)V

    .line 612
    const/4 v2, 0x1

    invoke-direct {p0, v2, v4, v4}, Lorg/telegram/ui/Components/Crop/CropView;->fitContentInBounds(ZZZ)V

    .line 613
    return-void
.end method

.method public onAreaChangeBegan()V
    .locals 2

    .prologue
    .line 593
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->previousAreaRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropRect(Landroid/graphics/RectF;)V

    .line 594
    invoke-direct {p0}, Lorg/telegram/ui/Components/Crop/CropView;->resetRotationStartScale()V

    .line 596
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->listener:Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->listener:Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;->onChange(Z)V

    .line 599
    :cond_0
    return-void
.end method

.method public onAreaChangeEnded()V
    .locals 3

    .prologue
    .line 617
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    sget-object v1, Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;->NONE:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setGridType(Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;Z)V

    .line 618
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getTargetRectToFill()Landroid/graphics/RectF;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/Crop/CropView;->fillAreaView(Landroid/graphics/RectF;Z)V

    .line 619
    return-void
.end method

.method public onDrag(FF)V
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 622
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->animating:Z

    if-eqz v0, :cond_0

    .line 628
    :goto_0
    return-void

    .line 626
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1800(Lorg/telegram/ui/Components/Crop/CropView$CropState;FF)V

    .line 627
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropView;->updateMatrix()V

    goto :goto_0
.end method

.method public onFling(FFFF)V
    .locals 0
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 631
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 588
    const/4 v0, 0x1

    return v0
.end method

.method public onRotationBegan()V
    .locals 3

    .prologue
    .line 670
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    sget-object v1, Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;->MINOR:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setGridType(Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;Z)V

    .line 671
    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->rotationStartScale:F

    const v1, 0x3727c5ac    # 1.0E-5f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 672
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v0}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$800(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->rotationStartScale:F

    .line 674
    :cond_0
    return-void
.end method

.method public onRotationEnded()V
    .locals 3

    .prologue
    .line 677
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    sget-object v1, Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;->NONE:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setGridType(Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;Z)V

    .line 678
    return-void
.end method

.method public onScale(FFF)V
    .locals 6
    .param p1, "scale"    # F
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/high16 v5, 0x41f00000    # 30.0f

    .line 652
    iget-boolean v4, p0, Lorg/telegram/ui/Components/Crop/CropView;->animating:Z

    if-eqz v4, :cond_0

    .line 667
    :goto_0
    return-void

    .line 656
    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v4}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$800(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v4

    mul-float v0, v4, p1

    .line 657
    .local v0, "newScale":F
    cmpl-float v4, v0, v5

    if-lez v4, :cond_1

    .line 658
    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v4}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$800(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v4

    div-float p1, v5, v4

    .line 660
    :cond_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_2

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_1
    int-to-float v3, v4

    .line 662
    .local v3, "statusBarHeight":F
    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v4, p2, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropWidth()F

    move-result v5

    div-float/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v5}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$900(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v5

    mul-float v1, v4, v5

    .line 663
    .local v1, "pivotX":F
    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/Components/Crop/CropView;->bottomPadding:F

    sub-float/2addr v4, v5

    sub-float/2addr v4, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float v4, p3, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropHeight()F

    move-result v5

    div-float/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v5}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1000(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v5

    mul-float v2, v4, v5

    .line 665
    .local v2, "pivotY":F
    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v4, p1, v1, v2}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1200(Lorg/telegram/ui/Components/Crop/CropView$CropState;FFF)V

    .line 666
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropView;->updateMatrix()V

    goto :goto_0

    .line 660
    .end local v1    # "pivotX":F
    .end local v2    # "pivotY":F
    .end local v3    # "statusBarHeight":F
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public onScrollChangeBegan()V
    .locals 3

    .prologue
    .line 634
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->animating:Z

    if-eqz v0, :cond_1

    .line 644
    :cond_0
    :goto_0
    return-void

    .line 638
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    sget-object v1, Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;->MAJOR:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setGridType(Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;Z)V

    .line 639
    invoke-direct {p0}, Lorg/telegram/ui/Components/Crop/CropView;->resetRotationStartScale()V

    .line 641
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->listener:Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->listener:Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;->onChange(Z)V

    goto :goto_0
.end method

.method public onScrollChangeEnded()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 647
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    sget-object v1, Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;->NONE:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setGridType(Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;Z)V

    .line 648
    const/4 v0, 0x0

    invoke-direct {p0, v2, v0, v2}, Lorg/telegram/ui/Components/Crop/CropView;->fitContentInBounds(ZZZ)V

    .line 649
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 563
    iget-boolean v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->animating:Z

    if-eqz v2, :cond_0

    move v0, v1

    .line 583
    :goto_0
    return v0

    .line 566
    :cond_0
    const/4 v0, 0x0

    .line 567
    .local v0, "result":Z
    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 568
    goto :goto_0

    .line 570
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 580
    :goto_1
    :pswitch_0
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->detector:Lorg/telegram/ui/Components/Crop/CropGestureDetector;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 572
    :pswitch_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropView;->onScrollChangeBegan()V

    goto :goto_1

    .line 576
    :pswitch_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropView;->onScrollChangeEnded()V

    goto :goto_1

    .line 581
    :catch_0
    move-exception v1

    goto :goto_0

    .line 570
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public reset()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 271
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->resetAnimator()V

    .line 273
    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropView;->bitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v0}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$200(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v0

    const/high16 v6, 0x43340000    # 180.0f

    rem-float/2addr v0, v6

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget-boolean v6, p0, Lorg/telegram/ui/Components/Crop/CropView;->freeform:Z

    invoke-virtual {v4, v5, v0, v6}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setBitmap(Landroid/graphics/Bitmap;ZZ)V

    .line 274
    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->freeform:Z

    if-eqz v0, :cond_2

    move v0, v3

    :goto_1
    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setLockedAspectRatio(F)V

    .line 275
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    iget-boolean v5, p0, Lorg/telegram/ui/Components/Crop/CropView;->freeform:Z

    invoke-static {v0, v4, v3, v5}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$300(Lorg/telegram/ui/Components/Crop/CropView$CropState;Lorg/telegram/ui/Components/Crop/CropAreaView;FZ)V

    .line 276
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropView;->initialAreaRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropRect(Landroid/graphics/RectF;)V

    .line 277
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropView;->updateMatrix()V

    .line 279
    invoke-direct {p0}, Lorg/telegram/ui/Components/Crop/CropView;->resetRotationStartScale()V

    .line 281
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->listener:Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->listener:Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;->onChange(Z)V

    .line 283
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->listener:Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;

    invoke-interface {v0, v2}, Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;->onAspectLock(Z)V

    .line 285
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 273
    goto :goto_0

    .line 274
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1
.end method

.method public rotate90Degrees()V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 539
    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Crop/CropAreaView;->resetAnimator()V

    .line 541
    invoke-direct {p0}, Lorg/telegram/ui/Components/Crop/CropView;->resetRotationStartScale()V

    .line 543
    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v2}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$600(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v2

    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v5}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$200(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v5

    sub-float/2addr v2, v5

    const/high16 v5, 0x42b40000    # 90.0f

    sub-float/2addr v2, v5

    const/high16 v5, 0x43b40000    # 360.0f

    rem-float v1, v2, v5

    .line 545
    .local v1, "orientation":F
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->freeform:Z

    .line 546
    .local v0, "fform":Z
    iget-boolean v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->freeform:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getLockAspectRatio()F

    move-result v2

    cmpl-float v2, v2, v8

    if-lez v2, :cond_1

    .line 547
    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    const/high16 v5, 0x3f800000    # 1.0f

    iget-object v6, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getLockAspectRatio()F

    move-result v6

    div-float/2addr v5, v6

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setLockedAspectRatio(F)V

    .line 548
    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getLockAspectRatio()F

    move-result v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setActualRect(F)V

    .line 549
    const/4 v0, 0x0

    .line 554
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-static {v2, v5, v1, v0}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$300(Lorg/telegram/ui/Components/Crop/CropView$CropState;Lorg/telegram/ui/Components/Crop/CropAreaView;FZ)V

    .line 555
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropView;->updateMatrix()V

    .line 557
    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->listener:Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;

    if-eqz v2, :cond_0

    .line 558
    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->listener:Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;

    cmpl-float v5, v1, v8

    if-nez v5, :cond_3

    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getLockAspectRatio()F

    move-result v5

    cmpl-float v5, v5, v8

    if-nez v5, :cond_3

    :goto_1
    invoke-interface {v2, v3}, Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;->onChange(Z)V

    .line 559
    :cond_0
    return-void

    .line 551
    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    iget-object v6, p0, Lorg/telegram/ui/Components/Crop/CropView;->bitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v2}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$200(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v2

    add-float/2addr v2, v1

    const/high16 v7, 0x43340000    # 180.0f

    rem-float/2addr v2, v7

    cmpl-float v2, v2, v8

    if-eqz v2, :cond_2

    move v2, v3

    :goto_2
    iget-boolean v7, p0, Lorg/telegram/ui/Components/Crop/CropView;->freeform:Z

    invoke-virtual {v5, v6, v2, v7}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setBitmap(Landroid/graphics/Bitmap;ZZ)V

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_2

    :cond_3
    move v3, v4

    .line 558
    goto :goto_1
.end method

.method public scaleWidthToMaxSize(Landroid/graphics/RectF;Landroid/graphics/RectF;)F
    .locals 4
    .param p1, "sizeRect"    # Landroid/graphics/RectF;
    .param p2, "maxSizeRect"    # Landroid/graphics/RectF;

    .prologue
    .line 393
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 394
    .local v1, "w":F
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v2, v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 395
    .local v0, "h":F
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    .line 396
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 397
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 399
    :cond_0
    return v1
.end method

.method public setBitmap(Landroid/graphics/Bitmap;IZ)V
    .locals 4
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "rotation"    # I
    .param p3, "fform"    # Z

    .prologue
    const/4 v3, 0x4

    .line 229
    iput-object p1, p0, Lorg/telegram/ui/Components/Crop/CropView;->bitmap:Landroid/graphics/Bitmap;

    .line 230
    iput-boolean p3, p0, Lorg/telegram/ui/Components/Crop/CropView;->freeform:Z

    .line 231
    new-instance v0, Lorg/telegram/ui/Components/Crop/CropView$CropState;

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->bitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p2, v2}, Lorg/telegram/ui/Components/Crop/CropView$CropState;-><init>(Lorg/telegram/ui/Components/Crop/CropView;Landroid/graphics/Bitmap;ILorg/telegram/ui/Components/Crop/CropView$1;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    .line 233
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->backView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 235
    if-eqz p3, :cond_0

    .line 236
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setDimVisibility(Z)V

    .line 237
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/Crop/CropView$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Crop/CropView$1;-><init>(Lorg/telegram/ui/Components/Crop/CropView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 245
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 246
    return-void
.end method

.method public setBottomPadding(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 224
    iput p1, p0, Lorg/telegram/ui/Components/Crop/CropView;->bottomPadding:F

    .line 225
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setBottomPadding(F)V

    .line 226
    return-void
.end method

.method public setListener(Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;)V
    .locals 0
    .param p1, "l"    # Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;

    .prologue
    .line 220
    iput-object p1, p0, Lorg/telegram/ui/Components/Crop/CropView;->listener:Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;

    .line 221
    return-void
.end method

.method public setRotation(F)V
    .locals 4
    .param p1, "angle"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 685
    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v1}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1400(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v1

    sub-float v0, p1, v1

    .line 686
    .local v0, "deltaAngle":F
    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v1, v0, v2, v2}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$2100(Lorg/telegram/ui/Components/Crop/CropView$CropState;FFF)V

    .line 687
    const/4 v1, 0x0

    invoke-direct {p0, v3, v3, v1}, Lorg/telegram/ui/Components/Crop/CropView;->fitContentInBounds(ZZZ)V

    .line 688
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 255
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->backView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setDimVisibility(Z)V

    .line 258
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setFrameVisibility(Z)V

    .line 259
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->invalidate()V

    .line 260
    return-void
.end method

.method public showAspectRatioDialog()V
    .locals 13

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v6, 0x0

    .line 732
    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getLockAspectRatio()F

    move-result v5

    const/4 v7, 0x0

    cmpl-float v5, v5, v7

    if-lez v5, :cond_1

    .line 733
    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setLockedAspectRatio(F)V

    .line 735
    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropView;->listener:Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;

    if-eqz v5, :cond_0

    .line 736
    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropView;->listener:Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;

    invoke-interface {v5, v6}, Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;->onAspectLock(Z)V

    .line 812
    :cond_0
    :goto_0
    return-void

    .line 742
    :cond_1
    iget-boolean v5, p0, Lorg/telegram/ui/Components/Crop/CropView;->hasAspectRatioDialog:Z

    if-nez v5, :cond_0

    .line 746
    iput-boolean v11, p0, Lorg/telegram/ui/Components/Crop/CropView;->hasAspectRatioDialog:Z

    .line 748
    const/16 v5, 0x8

    new-array v0, v5, [Ljava/lang/String;

    .line 750
    .local v0, "actions":[Ljava/lang/String;
    const/4 v5, 0x6

    new-array v4, v5, [[Ljava/lang/Integer;

    new-array v5, v12, [Ljava/lang/Integer;

    .line 751
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v11

    aput-object v5, v4, v6

    new-array v5, v12, [Ljava/lang/Integer;

    .line 752
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v11

    aput-object v5, v4, v11

    new-array v5, v12, [Ljava/lang/Integer;

    const/4 v7, 0x4

    .line 753
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v11

    aput-object v5, v4, v12

    new-array v5, v12, [Ljava/lang/Integer;

    .line 754
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v11

    aput-object v5, v4, v8

    const/4 v5, 0x4

    new-array v7, v12, [Ljava/lang/Integer;

    const/4 v8, 0x7

    .line 755
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    aput-object v7, v4, v5

    new-array v5, v12, [Ljava/lang/Integer;

    const/16 v7, 0x10

    .line 756
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v7, 0x9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v11

    aput-object v5, v4, v9

    .line 759
    .local v4, "ratios":[[Ljava/lang/Integer;
    const-string/jumbo v5, "CropOriginal"

    const v7, 0x7f0701aa

    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v6

    .line 760
    const-string/jumbo v5, "CropSquare"

    const v7, 0x7f0701ac

    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v11

    .line 762
    const/4 v2, 0x2

    .line 763
    .local v2, "i":I
    array-length v7, v4

    move v5, v6

    :goto_1
    if-ge v5, v7, :cond_3

    aget-object v3, v4, v5

    .line 764
    .local v3, "ratioPair":[Ljava/lang/Integer;
    iget-object v8, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getAspectRatio()F

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    .line 765
    const-string/jumbo v8, "%d:%d"

    new-array v9, v12, [Ljava/lang/Object;

    aget-object v10, v3, v6

    aput-object v10, v9, v6

    aget-object v10, v3, v11

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v2

    .line 769
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 763
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 767
    :cond_2
    const-string/jumbo v8, "%d:%d"

    new-array v9, v12, [Ljava/lang/Object;

    aget-object v10, v3, v11

    aput-object v10, v9, v6

    aget-object v10, v3, v6

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v2

    goto :goto_2

    .line 772
    .end local v3    # "ratioPair":[Ljava/lang/Integer;
    :cond_3
    new-instance v5, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v6, Lorg/telegram/ui/Components/Crop/CropView$6;

    invoke-direct {v6, p0, v4}, Lorg/telegram/ui/Components/Crop/CropView$6;-><init>(Lorg/telegram/ui/Components/Crop/CropView;[[Ljava/lang/Integer;)V

    .line 773
    invoke-virtual {v5, v0, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v5

    .line 803
    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    .line 804
    .local v1, "dialog":Lorg/telegram/ui/ActionBar/AlertDialog;
    invoke-virtual {v1, v11}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 805
    new-instance v5, Lorg/telegram/ui/Components/Crop/CropView$7;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/Crop/CropView$7;-><init>(Lorg/telegram/ui/Components/Crop/CropView;)V

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 811
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method public updateLayout()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 815
    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropWidth()F

    move-result v1

    .line 816
    .local v1, "w":F
    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropView;->initialAreaRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v4}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$400(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v5}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$500(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v5

    div-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/Crop/CropAreaView;->calculateRect(Landroid/graphics/RectF;F)V

    .line 817
    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getAspectRatio()F

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setActualRect(F)V

    .line 818
    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropView;->previousAreaRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropRect(Landroid/graphics/RectF;)V

    .line 820
    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropWidth()F

    move-result v2

    div-float v0, v2, v1

    .line 821
    .local v0, "ratio":F
    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v2, v0, v6, v6}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1200(Lorg/telegram/ui/Components/Crop/CropView$CropState;FFF)V

    .line 822
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropView;->updateMatrix()V

    .line 823
    return-void
.end method

.method public updateMatrix()V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 288
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->presentationMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 289
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->presentationMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v1}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$400(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v1

    neg-float v1, v1

    div-float/2addr v1, v3

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v2}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$500(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v2

    neg-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 290
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->presentationMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v1}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$600(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 291
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->presentationMatrix:Landroid/graphics/Matrix;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$700(Lorg/telegram/ui/Components/Crop/CropView$CropState;Landroid/graphics/Matrix;)V

    .line 292
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->presentationMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropCenterX()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropCenterY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 294
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->presentationMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 295
    return-void
.end method

.method public willShow()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 249
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setFrameVisibility(Z)V

    .line 250
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setDimVisibility(Z)V

    .line 251
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->invalidate()V

    .line 252
    return-void
.end method
