.class public Lorg/telegram/messenger/camera/CameraView;
.super Landroid/widget/FrameLayout;
.source "CameraView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;
    }
.end annotation


# instance fields
.field private cameraSession:Lorg/telegram/messenger/camera/CameraSession;

.field private circleShape:Z

.field private clipLeft:I

.field private clipTop:I

.field private cx:I

.field private cy:I

.field private delegate:Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;

.field private focusAreaSize:I

.field private focusProgress:F

.field private initialFrontface:Z

.field private initied:Z

.field private innerAlpha:F

.field private innerPaint:Landroid/graphics/Paint;

.field private interpolator:Landroid/view/animation/DecelerateInterpolator;

.field private isFrontface:Z

.field private lastDrawTime:J

.field private matrix:Landroid/graphics/Matrix;

.field private mirror:Z

.field private outerAlpha:F

.field private outerPaint:Landroid/graphics/Paint;

.field private previewSize:Lorg/telegram/messenger/camera/Size;

.field private textureView:Landroid/view/TextureView;

.field private txform:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "frontface"    # Z

    .prologue
    const/4 v1, 0x1

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->txform:Landroid/graphics/Matrix;

    .line 46
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->matrix:Landroid/graphics/Matrix;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->circleShape:Z

    .line 51
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/messenger/camera/CameraView;->focusProgress:F

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->outerPaint:Landroid/graphics/Paint;

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->innerPaint:Landroid/graphics/Paint;

    .line 60
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 69
    iput-boolean p2, p0, Lorg/telegram/messenger/camera/CameraView;->isFrontface:Z

    iput-boolean p2, p0, Lorg/telegram/messenger/camera/CameraView;->initialFrontface:Z

    .line 70
    new-instance v0, Landroid/view/TextureView;

    invoke-direct {v0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    .line 71
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 72
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/camera/CameraView;->addView(Landroid/view/View;)V

    .line 73
    const/high16 v0, 0x42c00000    # 96.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/camera/CameraView;->focusAreaSize:I

    .line 74
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->outerPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->outerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 76
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->outerPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 77
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->innerPaint:Landroid/graphics/Paint;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/camera/CameraView;)Lorg/telegram/messenger/camera/CameraSession;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/camera/CameraView;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/camera/CameraView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/camera/CameraView;

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraView;->checkPreviewMatrix()V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/messenger/camera/CameraView;)Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/camera/CameraView;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->delegate:Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;

    return-object v0
.end method

.method private adjustAspectRatio(III)V
    .locals 14
    .param p1, "previewWidth"    # I
    .param p2, "previewHeight"    # I
    .param p3, "rotation"    # I

    .prologue
    .line 239
    iget-object v11, p0, Lorg/telegram/messenger/camera/CameraView;->txform:Landroid/graphics/Matrix;

    invoke-virtual {v11}, Landroid/graphics/Matrix;->reset()V

    .line 241
    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraView;->getWidth()I

    move-result v10

    .line 242
    .local v10, "viewWidth":I
    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraView;->getHeight()I

    move-result v9

    .line 243
    .local v9, "viewHeight":I
    div-int/lit8 v11, v10, 0x2

    int-to-float v7, v11

    .line 244
    .local v7, "viewCenterX":F
    div-int/lit8 v11, v9, 0x2

    int-to-float v8, v11

    .line 247
    .local v8, "viewCenterY":F
    if-eqz p3, :cond_0

    const/4 v11, 0x2

    move/from16 v0, p3

    if-ne v0, v11, :cond_6

    .line 248
    :cond_0
    iget v11, p0, Lorg/telegram/messenger/camera/CameraView;->clipTop:I

    add-int/2addr v11, v9

    int-to-float v11, v11

    int-to-float v12, p1

    div-float/2addr v11, v12

    iget v12, p0, Lorg/telegram/messenger/camera/CameraView;->clipLeft:I

    add-int/2addr v12, v10

    int-to-float v12, v12

    move/from16 v0, p2

    int-to-float v13, v0

    div-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 253
    .local v4, "scale":F
    :goto_0
    int-to-float v11, p1

    mul-float v3, v11, v4

    .line 254
    .local v3, "previewWidthScaled":F
    move/from16 v0, p2

    int-to-float v11, v0

    mul-float v2, v11, v4

    .line 256
    .local v2, "previewHeightScaled":F
    int-to-float v11, v10

    div-float v5, v2, v11

    .line 257
    .local v5, "scaleX":F
    int-to-float v11, v9

    div-float v6, v3, v11

    .line 259
    .local v6, "scaleY":F
    iget-object v11, p0, Lorg/telegram/messenger/camera/CameraView;->txform:Landroid/graphics/Matrix;

    invoke-virtual {v11, v5, v6, v7, v8}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 261
    const/4 v11, 0x1

    move/from16 v0, p3

    if-eq v11, v0, :cond_1

    const/4 v11, 0x3

    move/from16 v0, p3

    if-ne v11, v0, :cond_7

    .line 262
    :cond_1
    iget-object v11, p0, Lorg/telegram/messenger/camera/CameraView;->txform:Landroid/graphics/Matrix;

    add-int/lit8 v12, p3, -0x2

    mul-int/lit8 v12, v12, 0x5a

    int-to-float v12, v12

    invoke-virtual {v11, v12, v7, v8}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 269
    :cond_2
    :goto_1
    iget-boolean v11, p0, Lorg/telegram/messenger/camera/CameraView;->mirror:Z

    if-eqz v11, :cond_3

    .line 270
    iget-object v11, p0, Lorg/telegram/messenger/camera/CameraView;->txform:Landroid/graphics/Matrix;

    const/high16 v12, -0x40800000    # -1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v11, v12, v13, v7, v8}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 272
    :cond_3
    iget v11, p0, Lorg/telegram/messenger/camera/CameraView;->clipTop:I

    if-nez v11, :cond_4

    iget v11, p0, Lorg/telegram/messenger/camera/CameraView;->clipLeft:I

    if-eqz v11, :cond_5

    .line 273
    :cond_4
    iget-object v11, p0, Lorg/telegram/messenger/camera/CameraView;->txform:Landroid/graphics/Matrix;

    iget v12, p0, Lorg/telegram/messenger/camera/CameraView;->clipLeft:I

    neg-int v12, v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    iget v13, p0, Lorg/telegram/messenger/camera/CameraView;->clipTop:I

    neg-int v13, v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 276
    :cond_5
    iget-object v11, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    iget-object v12, p0, Lorg/telegram/messenger/camera/CameraView;->txform:Landroid/graphics/Matrix;

    invoke-virtual {v11, v12}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 278
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 279
    .local v1, "matrix":Landroid/graphics/Matrix;
    iget-object v11, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v11}, Lorg/telegram/messenger/camera/CameraSession;->getDisplayOrientation()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v1, v11}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 280
    int-to-float v11, v10

    const/high16 v12, 0x44fa0000    # 2000.0f

    div-float/2addr v11, v12

    int-to-float v12, v9

    const/high16 v13, 0x44fa0000    # 2000.0f

    div-float/2addr v12, v13

    invoke-virtual {v1, v11, v12}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 281
    int-to-float v11, v10

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    int-to-float v12, v9

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    invoke-virtual {v1, v11, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 282
    iget-object v11, p0, Lorg/telegram/messenger/camera/CameraView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v11}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 283
    return-void

    .line 250
    .end local v1    # "matrix":Landroid/graphics/Matrix;
    .end local v2    # "previewHeightScaled":F
    .end local v3    # "previewWidthScaled":F
    .end local v4    # "scale":F
    .end local v5    # "scaleX":F
    .end local v6    # "scaleY":F
    :cond_6
    iget v11, p0, Lorg/telegram/messenger/camera/CameraView;->clipTop:I

    add-int/2addr v11, v9

    int-to-float v11, v11

    move/from16 v0, p2

    int-to-float v12, v0

    div-float/2addr v11, v12

    iget v12, p0, Lorg/telegram/messenger/camera/CameraView;->clipLeft:I

    add-int/2addr v12, v10

    int-to-float v12, v12

    int-to-float v13, p1

    div-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .restart local v4    # "scale":F
    goto/16 :goto_0

    .line 264
    .restart local v2    # "previewHeightScaled":F
    .restart local v3    # "previewWidthScaled":F
    .restart local v5    # "scaleX":F
    .restart local v6    # "scaleY":F
    :cond_7
    const/4 v11, 0x2

    move/from16 v0, p3

    if-ne v11, v0, :cond_2

    .line 265
    iget-object v11, p0, Lorg/telegram/messenger/camera/CameraView;->txform:Landroid/graphics/Matrix;

    const/high16 v12, 0x43340000    # 180.0f

    invoke-virtual {v11, v12, v7, v8}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto :goto_1
.end method

.method private calculateTapArea(FFF)Landroid/graphics/Rect;
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "coefficient"    # F

    .prologue
    const/4 v6, 0x0

    .line 286
    iget v4, p0, Lorg/telegram/messenger/camera/CameraView;->focusAreaSize:I

    int-to-float v4, v4

    mul-float/2addr v4, p3

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->intValue()I

    move-result v0

    .line 288
    .local v0, "areaSize":I
    float-to-int v4, p1

    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraView;->getWidth()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-direct {p0, v4, v6, v5}, Lorg/telegram/messenger/camera/CameraView;->clamp(III)I

    move-result v1

    .line 289
    .local v1, "left":I
    float-to-int v4, p2

    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-direct {p0, v4, v6, v5}, Lorg/telegram/messenger/camera/CameraView;->clamp(III)I

    move-result v3

    .line 291
    .local v3, "top":I
    new-instance v2, Landroid/graphics/RectF;

    int-to-float v4, v1

    int-to-float v5, v3

    add-int v6, v1, v0

    int-to-float v6, v6

    add-int v7, v3, v0

    int-to-float v7, v7

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 292
    .local v2, "rectF":Landroid/graphics/RectF;
    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 294
    new-instance v4, Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/RectF;->left:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v6, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget v7, v2, Landroid/graphics/RectF;->right:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget v8, v2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4
.end method

.method private checkPreviewMatrix()V
    .locals 3

    .prologue
    .line 232
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    if-nez v0, :cond_0

    .line 236
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-direct {p0, v1, v2, v0}, Lorg/telegram/messenger/camera/CameraView;->adjustAspectRatio(III)V

    goto :goto_0
.end method

.method private clamp(III)I
    .locals 0
    .param p1, "x"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I

    .prologue
    .line 298
    if-le p1, p3, :cond_0

    .line 304
    .end local p3    # "max":I
    :goto_0
    return p3

    .line 301
    .restart local p3    # "max":I
    :cond_0
    if-ge p1, p2, :cond_1

    move p3, p2

    .line 302
    goto :goto_0

    :cond_1
    move p3, p1

    .line 304
    goto :goto_0
.end method

.method private initCamera(Z)V
    .locals 23
    .param p1, "front"    # Z

    .prologue
    .line 115
    const/4 v9, 0x0

    .line 116
    .local v9, "info":Lorg/telegram/messenger/camera/CameraInfo;
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/messenger/camera/CameraController;->getCameras()Ljava/util/ArrayList;

    move-result-object v7

    .line 117
    .local v7, "cameraInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/camera/CameraInfo;>;"
    if-nez v7, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v4, v0, :cond_4

    .line 121
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/camera/CameraInfo;

    .line 122
    .local v6, "cameraInfo":Lorg/telegram/messenger/camera/CameraInfo;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/camera/CameraView;->isFrontface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    iget v0, v6, Lorg/telegram/messenger/camera/CameraInfo;->frontCamera:I

    move/from16 v19, v0

    if-nez v19, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/camera/CameraView;->isFrontface:Z

    move/from16 v19, v0

    if-nez v19, :cond_8

    iget v0, v6, Lorg/telegram/messenger/camera/CameraInfo;->frontCamera:I

    move/from16 v19, v0

    if-nez v19, :cond_8

    .line 123
    :cond_3
    move-object v9, v6

    .line 127
    .end local v6    # "cameraInfo":Lorg/telegram/messenger/camera/CameraInfo;
    :cond_4
    if-eqz v9, :cond_0

    .line 130
    const v14, 0x3faaaaab

    .line 131
    .local v14, "size4to3":F
    const v13, 0x3fe38e39

    .line 132
    .local v13, "size16to9":F
    sget-object v19, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    sget-object v20, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sget-object v20, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    sget-object v21, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(II)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v12, v19, v20

    .line 136
    .local v12, "screenSize":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/camera/CameraView;->initialFrontface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_9

    .line 137
    new-instance v5, Lorg/telegram/messenger/camera/Size;

    const/16 v19, 0x10

    const/16 v20, 0x9

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v5, v0, v1}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    .line 138
    .local v5, "aspectRatio":Lorg/telegram/messenger/camera/Size;
    const/16 v17, 0x1e0

    .line 139
    .local v17, "wantedWidth":I
    const/16 v16, 0x10e

    .line 151
    .local v16, "wantedHeight":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/TextureView;->getWidth()I

    move-result v19

    if-lez v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/TextureView;->getHeight()I

    move-result v19

    if-lez v19, :cond_5

    .line 152
    sget-object v19, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    sget-object v20, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 153
    .local v18, "width":I
    invoke-virtual {v5}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v19

    mul-int v19, v19, v18

    invoke-virtual {v5}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v20

    div-int v8, v19, v20

    .line 154
    .local v8, "height":I
    invoke-virtual {v9}, Lorg/telegram/messenger/camera/CameraInfo;->getPreviewSizes()Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1, v8, v5}, Lorg/telegram/messenger/camera/CameraController;->chooseOptimalSize(Ljava/util/List;IILorg/telegram/messenger/camera/Size;)Lorg/telegram/messenger/camera/Size;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/camera/CameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    .line 156
    .end local v8    # "height":I
    .end local v18    # "width":I
    :cond_5
    invoke-virtual {v9}, Lorg/telegram/messenger/camera/CameraInfo;->getPictureSizes()Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-static {v0, v1, v2, v5}, Lorg/telegram/messenger/camera/CameraController;->chooseOptimalSize(Ljava/util/List;IILorg/telegram/messenger/camera/Size;)Lorg/telegram/messenger/camera/Size;

    move-result-object v10

    .line 157
    .local v10, "pictureSize":Lorg/telegram/messenger/camera/Size;
    invoke-virtual {v10}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v19

    const/16 v20, 0x500

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_7

    invoke-virtual {v10}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v19

    const/16 v20, 0x500

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_7

    .line 158
    sub-float v19, v12, v14

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v19

    const v20, 0x3dcccccd    # 0.1f

    cmpg-float v19, v19, v20

    if-gez v19, :cond_b

    .line 159
    new-instance v5, Lorg/telegram/messenger/camera/Size;

    .end local v5    # "aspectRatio":Lorg/telegram/messenger/camera/Size;
    const/16 v19, 0x3

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v5, v0, v1}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    .line 163
    .restart local v5    # "aspectRatio":Lorg/telegram/messenger/camera/Size;
    :goto_3
    invoke-virtual {v9}, Lorg/telegram/messenger/camera/CameraInfo;->getPictureSizes()Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v0, v1, v2, v5}, Lorg/telegram/messenger/camera/CameraController;->chooseOptimalSize(Ljava/util/List;IILorg/telegram/messenger/camera/Size;)Lorg/telegram/messenger/camera/Size;

    move-result-object v11

    .line 164
    .local v11, "pictureSize2":Lorg/telegram/messenger/camera/Size;
    invoke-virtual {v11}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v19

    const/16 v20, 0x500

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_6

    invoke-virtual {v11}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v19

    const/16 v20, 0x500

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_7

    .line 165
    :cond_6
    move-object v10, v11

    .line 168
    .end local v11    # "pictureSize2":Lorg/telegram/messenger/camera/Size;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v15

    .line 169
    .local v15, "surfaceTexture":Landroid/graphics/SurfaceTexture;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/camera/CameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    if-eqz v15, :cond_0

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/camera/CameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/camera/CameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 171
    new-instance v19, Lorg/telegram/messenger/camera/CameraSession;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/camera/CameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    move-object/from16 v20, v0

    const/16 v21, 0x100

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v9, v1, v10, v2}, Lorg/telegram/messenger/camera/CameraSession;-><init>(Lorg/telegram/messenger/camera/CameraInfo;Lorg/telegram/messenger/camera/Size;Lorg/telegram/messenger/camera/Size;I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    .line 172
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    move-object/from16 v20, v0

    new-instance v21, Lorg/telegram/messenger/camera/CameraView$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/camera/CameraView$1;-><init>(Lorg/telegram/messenger/camera/CameraView;)V

    new-instance v22, Lorg/telegram/messenger/camera/CameraView$2;

    invoke-direct/range {v22 .. v23}, Lorg/telegram/messenger/camera/CameraView$2;-><init>(Lorg/telegram/messenger/camera/CameraView;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v15, v2, v3}, Lorg/telegram/messenger/camera/CameraController;->open(Lorg/telegram/messenger/camera/CameraSession;Landroid/graphics/SurfaceTexture;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 120
    .end local v5    # "aspectRatio":Lorg/telegram/messenger/camera/Size;
    .end local v10    # "pictureSize":Lorg/telegram/messenger/camera/Size;
    .end local v12    # "screenSize":F
    .end local v13    # "size16to9":F
    .end local v14    # "size4to3":F
    .end local v15    # "surfaceTexture":Landroid/graphics/SurfaceTexture;
    .end local v16    # "wantedHeight":I
    .end local v17    # "wantedWidth":I
    .restart local v6    # "cameraInfo":Lorg/telegram/messenger/camera/CameraInfo;
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 141
    .end local v6    # "cameraInfo":Lorg/telegram/messenger/camera/CameraInfo;
    .restart local v12    # "screenSize":F
    .restart local v13    # "size16to9":F
    .restart local v14    # "size4to3":F
    :cond_9
    sub-float v19, v12, v14

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v19

    const v20, 0x3dcccccd    # 0.1f

    cmpg-float v19, v19, v20

    if-gez v19, :cond_a

    .line 142
    new-instance v5, Lorg/telegram/messenger/camera/Size;

    const/16 v19, 0x4

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v5, v0, v1}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    .line 143
    .restart local v5    # "aspectRatio":Lorg/telegram/messenger/camera/Size;
    const/16 v17, 0x500

    .line 144
    .restart local v17    # "wantedWidth":I
    const/16 v16, 0x3c0

    .restart local v16    # "wantedHeight":I
    goto/16 :goto_2

    .line 146
    .end local v5    # "aspectRatio":Lorg/telegram/messenger/camera/Size;
    .end local v16    # "wantedHeight":I
    .end local v17    # "wantedWidth":I
    :cond_a
    new-instance v5, Lorg/telegram/messenger/camera/Size;

    const/16 v19, 0x10

    const/16 v20, 0x9

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v5, v0, v1}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    .line 147
    .restart local v5    # "aspectRatio":Lorg/telegram/messenger/camera/Size;
    const/16 v17, 0x500

    .line 148
    .restart local v17    # "wantedWidth":I
    const/16 v16, 0x2d0

    .restart local v16    # "wantedHeight":I
    goto/16 :goto_2

    .line 161
    .restart local v10    # "pictureSize":Lorg/telegram/messenger/camera/Size;
    :cond_b
    new-instance v5, Lorg/telegram/messenger/camera/Size;

    .end local v5    # "aspectRatio":Lorg/telegram/messenger/camera/Size;
    const/16 v19, 0x9

    const/16 v20, 0x10

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v5, v0, v1}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    .restart local v5    # "aspectRatio":Lorg/telegram/messenger/camera/Size;
    goto/16 :goto_3
.end method


# virtual methods
.method public destroy(ZLjava/lang/Runnable;)V
    .locals 4
    .param p1, "async"    # Z
    .param p2, "beforeDestroyRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 337
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSession;->destroy()V

    .line 339
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    if-nez p1, :cond_1

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    :goto_0
    invoke-virtual {v1, v2, v0, p2}, Lorg/telegram/messenger/camera/CameraController;->close(Lorg/telegram/messenger/camera/CameraSession;Ljava/util/concurrent/Semaphore;Ljava/lang/Runnable;)V

    .line 341
    :cond_0
    return-void

    .line 339
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 345
    invoke-super/range {p0 .. p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v6

    .line 346
    .local v6, "result":Z
    iget v7, p0, Lorg/telegram/messenger/camera/CameraView;->focusProgress:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v7, v7, v8

    if-nez v7, :cond_0

    iget v7, p0, Lorg/telegram/messenger/camera/CameraView;->innerAlpha:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_0

    iget v7, p0, Lorg/telegram/messenger/camera/CameraView;->outerAlpha:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_4

    .line 347
    :cond_0
    const/high16 v7, 0x41f00000    # 30.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 348
    .local v0, "baseRad":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 349
    .local v4, "newTime":J
    iget-wide v8, p0, Lorg/telegram/messenger/camera/CameraView;->lastDrawTime:J

    sub-long v2, v4, v8

    .line 350
    .local v2, "dt":J
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-ltz v7, :cond_1

    const-wide/16 v8, 0x11

    cmp-long v7, v2, v8

    if-lez v7, :cond_2

    .line 351
    :cond_1
    const-wide/16 v2, 0x11

    .line 353
    :cond_2
    iput-wide v4, p0, Lorg/telegram/messenger/camera/CameraView;->lastDrawTime:J

    .line 354
    iget-object v7, p0, Lorg/telegram/messenger/camera/CameraView;->outerPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lorg/telegram/messenger/camera/CameraView;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    iget v9, p0, Lorg/telegram/messenger/camera/CameraView;->outerAlpha:F

    invoke-virtual {v8, v9}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v8

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 355
    iget-object v7, p0, Lorg/telegram/messenger/camera/CameraView;->innerPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lorg/telegram/messenger/camera/CameraView;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    iget v9, p0, Lorg/telegram/messenger/camera/CameraView;->innerAlpha:F

    invoke-virtual {v8, v9}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v8

    const/high16 v9, 0x42fe0000    # 127.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 356
    iget-object v7, p0, Lorg/telegram/messenger/camera/CameraView;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    iget v8, p0, Lorg/telegram/messenger/camera/CameraView;->focusProgress:F

    invoke-virtual {v7, v8}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v1

    .line 357
    .local v1, "interpolated":F
    iget v7, p0, Lorg/telegram/messenger/camera/CameraView;->cx:I

    int-to-float v7, v7

    iget v8, p0, Lorg/telegram/messenger/camera/CameraView;->cy:I

    int-to-float v8, v8

    int-to-float v9, v0

    int-to-float v10, v0

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v11, v1

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget-object v10, p0, Lorg/telegram/messenger/camera/CameraView;->outerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 358
    iget v7, p0, Lorg/telegram/messenger/camera/CameraView;->cx:I

    int-to-float v7, v7

    iget v8, p0, Lorg/telegram/messenger/camera/CameraView;->cy:I

    int-to-float v8, v8

    int-to-float v9, v0

    mul-float/2addr v9, v1

    iget-object v10, p0, Lorg/telegram/messenger/camera/CameraView;->innerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 360
    iget v7, p0, Lorg/telegram/messenger/camera/CameraView;->focusProgress:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_5

    .line 361
    iget v7, p0, Lorg/telegram/messenger/camera/CameraView;->focusProgress:F

    long-to-float v8, v2

    const/high16 v9, 0x43480000    # 200.0f

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    iput v7, p0, Lorg/telegram/messenger/camera/CameraView;->focusProgress:F

    .line 362
    iget v7, p0, Lorg/telegram/messenger/camera/CameraView;->focusProgress:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    .line 363
    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, p0, Lorg/telegram/messenger/camera/CameraView;->focusProgress:F

    .line 365
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraView;->invalidate()V

    .line 380
    .end local v0    # "baseRad":I
    .end local v1    # "interpolated":F
    .end local v2    # "dt":J
    .end local v4    # "newTime":J
    :cond_4
    :goto_0
    return v6

    .line 366
    .restart local v0    # "baseRad":I
    .restart local v1    # "interpolated":F
    .restart local v2    # "dt":J
    .restart local v4    # "newTime":J
    :cond_5
    iget v7, p0, Lorg/telegram/messenger/camera/CameraView;->innerAlpha:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_7

    .line 367
    iget v7, p0, Lorg/telegram/messenger/camera/CameraView;->innerAlpha:F

    long-to-float v8, v2

    const/high16 v9, 0x43160000    # 150.0f

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    iput v7, p0, Lorg/telegram/messenger/camera/CameraView;->innerAlpha:F

    .line 368
    iget v7, p0, Lorg/telegram/messenger/camera/CameraView;->innerAlpha:F

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_6

    .line 369
    const/4 v7, 0x0

    iput v7, p0, Lorg/telegram/messenger/camera/CameraView;->innerAlpha:F

    .line 371
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraView;->invalidate()V

    goto :goto_0

    .line 372
    :cond_7
    iget v7, p0, Lorg/telegram/messenger/camera/CameraView;->outerAlpha:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_4

    .line 373
    iget v7, p0, Lorg/telegram/messenger/camera/CameraView;->outerAlpha:F

    long-to-float v8, v2

    const/high16 v9, 0x43160000    # 150.0f

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    iput v7, p0, Lorg/telegram/messenger/camera/CameraView;->outerAlpha:F

    .line 374
    iget v7, p0, Lorg/telegram/messenger/camera/CameraView;->outerAlpha:F

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_8

    .line 375
    const/4 v7, 0x0

    iput v7, p0, Lorg/telegram/messenger/camera/CameraView;->outerAlpha:F

    .line 377
    :cond_8
    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraView;->invalidate()V

    goto :goto_0
.end method

.method public focusToPoint(II)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 308
    int-to-float v2, p1

    int-to-float v3, p2

    invoke-direct {p0, v2, v3, v5}, Lorg/telegram/messenger/camera/CameraView;->calculateTapArea(FFF)Landroid/graphics/Rect;

    move-result-object v0

    .line 309
    .local v0, "focusRect":Landroid/graphics/Rect;
    int-to-float v2, p1

    int-to-float v3, p2

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-direct {p0, v2, v3, v4}, Lorg/telegram/messenger/camera/CameraView;->calculateTapArea(FFF)Landroid/graphics/Rect;

    move-result-object v1

    .line 311
    .local v1, "meteringRect":Landroid/graphics/Rect;
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v2, :cond_0

    .line 312
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v2, v0, v1}, Lorg/telegram/messenger/camera/CameraSession;->focusToRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 315
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lorg/telegram/messenger/camera/CameraView;->focusProgress:F

    .line 316
    iput v5, p0, Lorg/telegram/messenger/camera/CameraView;->innerAlpha:F

    .line 317
    iput v5, p0, Lorg/telegram/messenger/camera/CameraView;->outerAlpha:F

    .line 318
    iput p1, p0, Lorg/telegram/messenger/camera/CameraView;->cx:I

    .line 319
    iput p2, p0, Lorg/telegram/messenger/camera/CameraView;->cy:I

    .line 320
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/messenger/camera/CameraView;->lastDrawTime:J

    .line 321
    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraView;->invalidate()V

    .line 322
    return-void
.end method

.method public getCameraSession()Lorg/telegram/messenger/camera/CameraSession;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    return-object v0
.end method

.method public getPreviewSize()Lorg/telegram/messenger/camera/Size;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    return-object v0
.end method

.method public hasFrontFaceCamera()Z
    .locals 3

    .prologue
    .line 95
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/camera/CameraController;->getCameras()Ljava/util/ArrayList;

    move-result-object v1

    .line 96
    .local v1, "cameraInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/camera/CameraInfo;>;"
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 97
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/camera/CameraInfo;

    iget v2, v2, Lorg/telegram/messenger/camera/CameraInfo;->frontCamera:I

    if-eqz v2, :cond_0

    .line 98
    const/4 v2, 0x1

    .line 101
    :goto_1
    return v2

    .line 96
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isFrontface()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->isFrontface:Z

    return v0
.end method

.method public isInitied()Z
    .locals 1

    .prologue
    .line 329
    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->initied:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 82
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 83
    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraView;->checkPreviewMatrix()V

    .line 84
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 197
    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->isFrontface:Z

    invoke-direct {p0, v0}, Lorg/telegram/messenger/camera/CameraView;->initCamera(Z)V

    .line 198
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v2, 0x0

    .line 207
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v0, :cond_0

    .line 208
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v0, v1, v2, v2}, Lorg/telegram/messenger/camera/CameraController;->close(Lorg/telegram/messenger/camera/CameraSession;Ljava/util/concurrent/Semaphore;Ljava/lang/Runnable;)V

    .line 210
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 202
    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraView;->checkPreviewMatrix()V

    .line 203
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 215
    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->initied:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSession;->isInitied()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->delegate:Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->delegate:Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;

    invoke-interface {v0}, Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;->onCameraInit()V

    .line 219
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->initied:Z

    .line 221
    :cond_1
    return-void
.end method

.method public setClipLeft(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 228
    iput p1, p0, Lorg/telegram/messenger/camera/CameraView;->clipLeft:I

    .line 229
    return-void
.end method

.method public setClipTop(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 224
    iput p1, p0, Lorg/telegram/messenger/camera/CameraView;->clipTop:I

    .line 225
    return-void
.end method

.method public setDelegate(Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;)V
    .locals 0
    .param p1, "cameraViewDelegate"    # Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;

    .prologue
    .line 325
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->delegate:Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;

    .line 326
    return-void
.end method

.method public setMirror(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lorg/telegram/messenger/camera/CameraView;->mirror:Z

    .line 88
    return-void
.end method

.method public switchCamera()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 105
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v1, :cond_0

    .line 106
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v1, v2, v3, v3}, Lorg/telegram/messenger/camera/CameraController;->close(Lorg/telegram/messenger/camera/CameraSession;Ljava/util/concurrent/Semaphore;Ljava/lang/Runnable;)V

    .line 107
    iput-object v3, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    .line 109
    :cond_0
    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->initied:Z

    .line 110
    iget-boolean v1, p0, Lorg/telegram/messenger/camera/CameraView;->isFrontface:Z

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->isFrontface:Z

    .line 111
    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->isFrontface:Z

    invoke-direct {p0, v0}, Lorg/telegram/messenger/camera/CameraView;->initCamera(Z)V

    .line 112
    return-void
.end method
