.class public Lorg/telegram/ui/Components/PhotoCropView;
.super Landroid/widget/FrameLayout;
.source "PhotoCropView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;
    }
.end annotation


# instance fields
.field private animationEndValues:Landroid/graphics/RectF;

.field private animationRunnable:Ljava/lang/Runnable;

.field private animationStartValues:Landroid/graphics/RectF;

.field private bitmapGlobalScale:F

.field private bitmapGlobalX:F

.field private bitmapGlobalY:F

.field private bitmapHeight:I

.field private bitmapToEdit:Landroid/graphics/Bitmap;

.field private bitmapWidth:I

.field private bitmapX:I

.field private bitmapY:I

.field private cropView:Lorg/telegram/ui/Components/Crop/CropView;

.field private delegate:Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;

.field private draggingState:I

.field private freeformCrop:Z

.field private oldX:F

.field private oldY:F

.field private orientation:I

.field private rectSizeX:F

.field private rectSizeY:F

.field private rectX:F

.field private rectY:F

.field private showOnSetBitmap:Z

.field private wheelView:Lorg/telegram/ui/Components/Crop/CropRotationWheel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v0, 0x44160000    # 600.0f

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 31
    iput-boolean v2, p0, Lorg/telegram/ui/Components/PhotoCropView;->freeformCrop:Z

    .line 32
    iput v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    .line 33
    iput v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->draggingState:I

    .line 36
    iput v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->oldX:F

    iput v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->oldY:F

    .line 37
    iput v2, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapWidth:I

    iput v2, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapHeight:I

    .line 38
    iput v3, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    iput v3, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    .line 39
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalScale:F

    .line 40
    iput v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalX:F

    .line 41
    iput v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalY:F

    .line 55
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/PhotoCropView;)Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoCropView;

    .prologue
    .line 22
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->delegate:Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/PhotoCropView;)Lorg/telegram/ui/Components/Crop/CropRotationWheel;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoCropView;

    .prologue
    .line 22
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->wheelView:Lorg/telegram/ui/Components/Crop/CropRotationWheel;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/PhotoCropView;)Lorg/telegram/ui/Components/Crop/CropView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoCropView;

    .prologue
    .line 22
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/PhotoCropView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoCropView;

    .prologue
    .line 22
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$302(Lorg/telegram/ui/Components/PhotoCropView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoCropView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 22
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationRunnable:Ljava/lang/Runnable;

    return-object p1
.end method


# virtual methods
.method public cancelAnimationRunnable()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 246
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 248
    iput-object v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationRunnable:Ljava/lang/Runnable;

    .line 249
    iput-object v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationStartValues:Landroid/graphics/RectF;

    .line 250
    iput-object v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationEndValues:Landroid/graphics/RectF;

    .line 252
    :cond_0
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropView;->getResult()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 220
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBitmapX()F
    .locals 2

    .prologue
    .line 190
    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapX:I

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method public getBitmapY()F
    .locals 3

    .prologue
    .line 194
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_0
    int-to-float v0, v1

    .line 195
    .local v0, "additionalY":F
    iget v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapY:I

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v1, v0

    return v1

    .line 194
    .end local v0    # "additionalY":F
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLimitHeight()F
    .locals 7

    .prologue
    .line 212
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_0
    int-to-float v0, v1

    .line 213
    .local v0, "additionalY":F
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoCropView;->getHeight()I

    move-result v1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iget v2, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    sub-float/2addr v1, v2

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoCropView;->getHeight()I

    move-result v4

    const/high16 v5, 0x41e00000    # 28.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapHeight:I

    int-to-float v5, v5

    iget v6, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalScale:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    sub-float/2addr v4, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    sub-float/2addr v1, v2

    return v1

    .line 212
    .end local v0    # "additionalY":F
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLimitWidth()F
    .locals 6

    .prologue
    .line 208
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoCropView;->getWidth()I

    move-result v0

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    sub-float/2addr v0, v1

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoCropView;->getWidth()I

    move-result v1

    const/high16 v4, 0x41e00000    # 28.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v1, v4

    int-to-float v1, v1

    iget v4, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapWidth:I

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalScale:F

    mul-float/2addr v4, v5

    sub-float/2addr v1, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-int v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getLimitX()F
    .locals 5

    .prologue
    .line 199
    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoCropView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapWidth:I

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalScale:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public getLimitY()F
    .locals 6

    .prologue
    .line 203
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_0
    int-to-float v0, v1

    .line 204
    .local v0, "additionalY":F
    iget v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoCropView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapHeight:I

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalScale:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    add-float/2addr v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-float v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sub-float/2addr v1, v2

    return v1

    .line 203
    .end local v0    # "additionalY":F
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRectSizeX()F
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropView;->getCropWidth()F

    move-result v0

    return v0
.end method

.method public getRectSizeY()F
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropView;->getCropHeight()F

    move-result v0

    return v0
.end method

.method public getRectX()F
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropView;->getCropLeft()F

    move-result v0

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public getRectY()F
    .locals 3

    .prologue
    .line 178
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropView;->getCropTop()F

    move-result v0

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v0, v1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_0
    int-to-float v0, v0

    sub-float v0, v1, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropView;->isReady()Z

    move-result v0

    return v0
.end method

.method public moveToFill(Z)V
    .locals 16
    .param p1, "animated"    # Z

    .prologue
    .line 274
    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapWidth:I

    int-to-float v11, v11

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    div-float v9, v11, v12

    .line 275
    .local v9, "scaleToX":F
    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapHeight:I

    int-to-float v11, v11

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    div-float v10, v11, v12

    .line 276
    .local v10, "scaleToY":F
    cmpl-float v11, v9, v10

    if-lez v11, :cond_1

    move v8, v10

    .line 277
    .local v8, "scaleTo":F
    :goto_0
    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v11, v8, v11

    if-lez v11, :cond_2

    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalScale:F

    mul-float/2addr v11, v8

    const/high16 v12, 0x40400000    # 3.0f

    cmpl-float v11, v11, v12

    if-lez v11, :cond_2

    .line 278
    const/high16 v11, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalScale:F

    div-float v8, v11, v12

    .line 282
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    mul-float v4, v11, v8

    .line 283
    .local v4, "newSizeX":F
    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    mul-float v5, v11, v8

    .line 284
    .local v5, "newSizeY":F
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x15

    if-lt v11, v12, :cond_3

    sget v11, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_2
    int-to-float v1, v11

    .line 285
    .local v1, "additionalY":F
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoCropView;->getWidth()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v11, v4

    const/high16 v12, 0x40000000    # 2.0f

    div-float v6, v11, v12

    .line 286
    .local v6, "newX":F
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoCropView;->getHeight()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v11, v5

    add-float/2addr v11, v1

    const/high16 v12, 0x40000000    # 2.0f

    div-float v7, v11, v12

    .line 287
    .local v7, "newY":F
    new-instance v11, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/telegram/ui/Components/PhotoCropView;->animationStartValues:Landroid/graphics/RectF;

    .line 288
    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11, v6, v7, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/telegram/ui/Components/PhotoCropView;->animationEndValues:Landroid/graphics/RectF;

    .line 290
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoCropView;->getWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v12, v8, v12

    mul-float/2addr v11, v12

    add-float/2addr v11, v6

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalX:F

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    sub-float/2addr v12, v13

    mul-float/2addr v12, v8

    add-float v2, v11, v12

    .line 291
    .local v2, "newBitmapGlobalX":F
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoCropView;->getHeight()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v11, v1

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v12, v8, v12

    mul-float/2addr v11, v12

    add-float/2addr v11, v7

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalY:F

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    sub-float/2addr v12, v13

    mul-float/2addr v12, v8

    add-float v3, v11, v12

    .line 293
    .local v3, "newBitmapGlobalY":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/Components/PhotoCropView;->delegate:Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalScale:F

    mul-float/2addr v12, v8

    move/from16 v0, p1

    invoke-interface {v11, v2, v3, v12, v0}, Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;->needMoveImageTo(FFFZ)V

    .line 294
    return-void

    .end local v1    # "additionalY":F
    .end local v2    # "newBitmapGlobalX":F
    .end local v3    # "newBitmapGlobalY":F
    .end local v4    # "newSizeX":F
    .end local v5    # "newSizeY":F
    .end local v6    # "newX":F
    .end local v7    # "newY":F
    .end local v8    # "scaleTo":F
    :cond_1
    move v8, v9

    .line 276
    goto/16 :goto_0

    .line 279
    .restart local v8    # "scaleTo":F
    :cond_2
    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v11, v8, v11

    if-gez v11, :cond_0

    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalScale:F

    mul-float/2addr v11, v8

    const/high16 v12, 0x3f800000    # 1.0f

    cmpg-float v11, v11, v12

    if-gez v11, :cond_0

    .line 280
    const/high16 v11, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalScale:F

    div-float v8, v11, v12

    goto/16 :goto_1

    .line 284
    .restart local v4    # "newSizeX":F
    .restart local v5    # "newSizeY":F
    :cond_3
    const/4 v11, 0x0

    goto/16 :goto_2
.end method

.method public onAppear()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropView;->willShow()V

    .line 159
    :cond_0
    return-void
.end method

.method public onAppeared()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropView;->show()V

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->showOnSetBitmap:Z

    goto :goto_0
.end method

.method public onDisappear()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropView;->hide()V

    .line 171
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 302
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 304
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->delegate:Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;

    invoke-interface {v1}, Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 305
    .local v0, "newBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 306
    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapToEdit:Landroid/graphics/Bitmap;

    .line 309
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    if-eqz v1, :cond_1

    .line 310
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Crop/CropView;->updateLayout()V

    .line 312
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->wheelView:Lorg/telegram/ui/Components/Crop/CropRotationWheel;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->reset()V

    .line 152
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropView;->reset()V

    .line 153
    return-void
.end method

.method public setAnimationProgress(F)V
    .locals 3
    .param p1, "animationProgress"    # F

    .prologue
    const/4 v1, 0x0

    .line 255
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationStartValues:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 256
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 257
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationEndValues:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    .line 258
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationEndValues:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    .line 259
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationEndValues:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iput v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    .line 260
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationEndValues:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iput v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    .line 261
    iput-object v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationStartValues:Landroid/graphics/RectF;

    .line 262
    iput-object v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationEndValues:Landroid/graphics/RectF;

    .line 269
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoCropView;->invalidate()V

    .line 271
    :cond_0
    return-void

    .line 264
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationStartValues:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationEndValues:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationStartValues:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    .line 265
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationStartValues:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationEndValues:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationStartValues:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    .line 266
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationStartValues:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationEndValues:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationStartValues:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    .line 267
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationStartValues:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationEndValues:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationStartValues:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    goto :goto_0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;IZ)V
    .locals 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "rotation"    # I
    .param p3, "freeform"    # Z

    .prologue
    const/4 v2, 0x1

    const/high16 v1, 0x44160000    # 600.0f

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 58
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapToEdit:Landroid/graphics/Bitmap;

    .line 59
    iput v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    .line 60
    iput v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    .line 61
    iput v8, p0, Lorg/telegram/ui/Components/PhotoCropView;->draggingState:I

    .line 62
    iput v3, p0, Lorg/telegram/ui/Components/PhotoCropView;->oldX:F

    .line 63
    iput v3, p0, Lorg/telegram/ui/Components/PhotoCropView;->oldY:F

    .line 64
    iput v2, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapWidth:I

    .line 65
    iput v2, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapHeight:I

    .line 66
    iput v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    .line 67
    iput v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    .line 68
    iput-boolean p3, p0, Lorg/telegram/ui/Components/PhotoCropView;->freeformCrop:Z

    .line 69
    iput p2, p0, Lorg/telegram/ui/Components/PhotoCropView;->orientation:I

    .line 70
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoCropView;->requestLayout()V

    .line 72
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoCropView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/Crop/CropView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    .line 74
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    new-instance v1, Lorg/telegram/ui/Components/PhotoCropView$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoCropView$1;-><init>(Lorg/telegram/ui/Components/PhotoCropView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Crop/CropView;->setListener(Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;)V

    .line 87
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    const/high16 v1, 0x42800000    # 64.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Crop/CropView;->setBottomPadding(F)V

    .line 88
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/PhotoCropView;->addView(Landroid/view/View;)V

    .line 90
    new-instance v0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoCropView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->wheelView:Lorg/telegram/ui/Components/Crop/CropRotationWheel;

    .line 91
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->wheelView:Lorg/telegram/ui/Components/Crop/CropRotationWheel;

    new-instance v1, Lorg/telegram/ui/Components/PhotoCropView$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoCropView$2;-><init>(Lorg/telegram/ui/Components/PhotoCropView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->setListener(Lorg/telegram/ui/Components/Crop/CropRotationWheel$RotationWheelListener;)V

    .line 121
    iget-object v7, p0, Lorg/telegram/ui/Components/PhotoCropView;->wheelView:Lorg/telegram/ui/Components/Crop/CropRotationWheel;

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x51

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Components/PhotoCropView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/Crop/CropView;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/Crop/CropView;->setBitmap(Landroid/graphics/Bitmap;IZ)V

    .line 127
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->showOnSetBitmap:Z

    if-eqz v0, :cond_1

    .line 128
    iput-boolean v8, p0, Lorg/telegram/ui/Components/PhotoCropView;->showOnSetBitmap:Z

    .line 129
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropView;->show()V

    .line 132
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->wheelView:Lorg/telegram/ui/Components/Crop/CropRotationWheel;

    invoke-virtual {v0, p3}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->setFreeform(Z)V

    .line 133
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->wheelView:Lorg/telegram/ui/Components/Crop/CropRotationWheel;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->reset()V

    .line 134
    return-void
.end method

.method public setBitmapParams(FFF)V
    .locals 0
    .param p1, "scale"    # F
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 224
    iput p1, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalScale:F

    .line 225
    iput p2, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalX:F

    .line 226
    iput p3, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalY:F

    .line 227
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;

    .prologue
    .line 297
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoCropView;->delegate:Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;

    .line 298
    return-void
.end method

.method public setOrientation(I)V
    .locals 4
    .param p1, "rotation"    # I

    .prologue
    const/high16 v1, 0x44160000    # 600.0f

    const/4 v3, 0x0

    const/high16 v0, -0x40800000    # -1.0f

    .line 137
    iput p1, p0, Lorg/telegram/ui/Components/PhotoCropView;->orientation:I

    .line 138
    iput v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    .line 139
    iput v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    .line 140
    iput v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    .line 141
    iput v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    .line 142
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->delegate:Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-interface {v0, v3, v3, v1, v2}, Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;->needMoveImageTo(FFFZ)V

    .line 143
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoCropView;->requestLayout()V

    .line 144
    return-void
.end method

.method public startAnimationRunnable()V
    .locals 4

    .prologue
    .line 230
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 243
    :goto_0
    return-void

    .line 233
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/PhotoCropView$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PhotoCropView$3;-><init>(Lorg/telegram/ui/Components/PhotoCropView;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationRunnable:Ljava/lang/Runnable;

    .line 242
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method
