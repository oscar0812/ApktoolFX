.class public Lorg/telegram/ui/Components/Switch2;
.super Landroid/view/View;
.source "Switch2.java"


# static fields
.field private static drawBitmap:Landroid/graphics/Bitmap;


# instance fields
.field private attachedToWindow:Z

.field private checkAnimator:Landroid/animation/ObjectAnimator;

.field private isChecked:Z

.field private isDisabled:Z

.field private paint:Landroid/graphics/Paint;

.field private paint2:Landroid/graphics/Paint;

.field private progress:F

.field private rectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v8, 0x41400000    # 12.0f

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/high16 v4, 0x41c00000    # 24.0f

    .line 38
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/Switch2;->rectF:Landroid/graphics/RectF;

    .line 40
    sget-object v2, Lorg/telegram/ui/Components/Switch2;->drawBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    sget-object v2, Lorg/telegram/ui/Components/Switch2;->drawBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 41
    :cond_0
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lorg/telegram/ui/Components/Switch2;->drawBitmap:Landroid/graphics/Bitmap;

    .line 42
    new-instance v0, Landroid/graphics/Canvas;

    sget-object v2, Lorg/telegram/ui/Components/Switch2;->drawBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 43
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 44
    .local v1, "paint":Landroid/graphics/Paint;
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x7f000000

    invoke-virtual {v1, v2, v6, v6, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 45
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x41100000    # 9.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 47
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v1    # "paint":Landroid/graphics/Paint;
    :cond_1
    :goto_0
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Components/Switch2;->paint:Landroid/graphics/Paint;

    .line 54
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Components/Switch2;->paint2:Landroid/graphics/Paint;

    .line 55
    iget-object v2, p0, Lorg/telegram/ui/Components/Switch2;->paint2:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    iget-object v2, p0, Lorg/telegram/ui/Components/Switch2;->paint2:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 57
    iget-object v2, p0, Lorg/telegram/ui/Components/Switch2;->paint2:Landroid/graphics/Paint;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    return-void

    .line 48
    .restart local v0    # "canvas":Landroid/graphics/Canvas;
    .restart local v1    # "paint":Landroid/graphics/Paint;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private animateToCheckedState(Z)V
    .locals 4
    .param p1, "newCheckedState"    # Z

    .prologue
    .line 80
    const-string/jumbo v1, "progress"

    const/4 v0, 0x1

    new-array v2, v0, [F

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Switch2;->checkAnimator:Landroid/animation/ObjectAnimator;

    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch2;->checkAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch2;->checkAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 83
    return-void

    .line 80
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelCheckAnimator()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch2;->checkAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch2;->checkAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 77
    :cond_0
    return-void
.end method


# virtual methods
.method public getProgress()F
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lorg/telegram/ui/Components/Switch2;->progress:F

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Switch2;->isChecked:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Switch2;->attachedToWindow:Z

    .line 89
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Switch2;->attachedToWindow:Z

    .line 95
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 121
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Switch2;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    :goto_0
    return-void

    .line 125
    :cond_0
    const/high16 v1, 0x42100000    # 36.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v21

    .line 126
    .local v21, "width":I
    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v18

    .line 127
    .local v18, "thumb":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Switch2;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v1, v21

    div-int/lit8 v22, v1, 0x2

    .line 128
    .local v22, "x":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Switch2;->getMeasuredHeight()I

    move-result v1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v23, v1, 0x2

    .line 129
    .local v23, "y":I
    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v1, v21, v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/Switch2;->progress:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int v1, v1, v22

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int v19, v1, v2

    .line 130
    .local v19, "tx":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Switch2;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v20, v1, 0x2

    .line 133
    .local v20, "ty":I
    const/high16 v1, 0x437f0000    # 255.0f

    const/high16 v2, -0x3d420000    # -95.0f

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/Switch2;->progress:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v13, v1

    .line 134
    .local v13, "red":I
    const/high16 v1, 0x43300000    # 176.0f

    const/high16 v2, 0x42180000    # 38.0f

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/Switch2;->progress:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v12, v1

    .line 135
    .local v12, "green":I
    const/high16 v1, 0x432d0000    # 173.0f

    const/high16 v2, 0x429a0000    # 77.0f

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/Switch2;->progress:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v7, v1

    .line 136
    .local v7, "blue":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/Switch2;->paint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    and-int/lit16 v3, v13, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    and-int/lit16 v3, v12, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    and-int/lit16 v3, v7, 0xff

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/Switch2;->rectF:Landroid/graphics/RectF;

    move/from16 v0, v22

    int-to-float v2, v0

    move/from16 v0, v23

    int-to-float v3, v0

    add-int v4, v22, v21

    int-to-float v4, v4

    const/high16 v5, 0x41600000    # 14.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int v5, v5, v23

    int-to-float v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 139
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/Switch2;->rectF:Landroid/graphics/RectF;

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40e00000    # 7.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/Switch2;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 141
    const/high16 v1, 0x435b0000    # 219.0f

    const/high16 v2, -0x3ce90000    # -151.0f

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/Switch2;->progress:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v13, v1

    .line 142
    const/high16 v1, 0x42b00000    # 88.0f

    const/high16 v2, 0x42a00000    # 80.0f

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/Switch2;->progress:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v12, v1

    .line 143
    const/high16 v1, 0x42b80000    # 92.0f

    const/high16 v2, 0x430e0000    # 142.0f

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/Switch2;->progress:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v7, v1

    .line 144
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/Switch2;->paint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    and-int/lit16 v3, v13, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    and-int/lit16 v3, v12, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    and-int/lit16 v3, v7, 0xff

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    sget-object v1, Lorg/telegram/ui/Components/Switch2;->drawBitmap:Landroid/graphics/Bitmap;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v2, v19, v2

    int-to-float v2, v2

    const/high16 v3, 0x41300000    # 11.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v20, v3

    int-to-float v3, v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 147
    move/from16 v0, v19

    int-to-float v1, v0

    move/from16 v0, v20

    int-to-float v2, v0

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/Switch2;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/Switch2;->paint2:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    move/from16 v0, v19

    int-to-float v1, v0

    const v2, 0x412ccccd    # 10.8f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3fa66666    # 1.3f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Components/Switch2;->progress:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v0, v1

    move/from16 v19, v0

    .line 151
    move/from16 v0, v20

    int-to-float v1, v0

    const/high16 v2, 0x41080000    # 8.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Components/Switch2;->progress:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v0, v1

    move/from16 v20, v0

    .line 152
    const v1, 0x40933333    # 4.6f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    float-to-int v1, v1

    add-int v15, v1, v19

    .line 153
    .local v15, "startX2":I
    const/high16 v1, 0x41180000    # 9.5f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    move/from16 v0, v20

    int-to-float v2, v0

    add-float/2addr v1, v2

    float-to-int v0, v1

    move/from16 v17, v0

    .line 154
    .local v17, "startY2":I
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int v9, v15, v1

    .line 155
    .local v9, "endX2":I
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int v11, v17, v1

    .line 157
    .local v11, "endY2":I
    const/high16 v1, 0x40f00000    # 7.5f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    float-to-int v1, v1

    add-int v14, v1, v19

    .line 158
    .local v14, "startX":I
    const v1, 0x40accccd    # 5.4f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    float-to-int v1, v1

    add-int v16, v1, v20

    .line 159
    .local v16, "startY":I
    const/high16 v1, 0x40e00000    # 7.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int v8, v14, v1

    .line 160
    .local v8, "endX":I
    const/high16 v1, 0x40e00000    # 7.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int v10, v16, v1

    .line 162
    .local v10, "endY":I
    int-to-float v1, v14

    sub-int v2, v15, v14

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/Switch2;->progress:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v14, v1

    .line 163
    move/from16 v0, v16

    int-to-float v1, v0

    sub-int v2, v17, v16

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/Switch2;->progress:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v0, v1

    move/from16 v16, v0

    .line 164
    int-to-float v1, v8

    sub-int v2, v9, v8

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/Switch2;->progress:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v8, v1

    .line 165
    int-to-float v1, v10

    sub-int v2, v11, v10

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/Switch2;->progress:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v10, v1

    .line 166
    int-to-float v2, v14

    move/from16 v0, v16

    int-to-float v3, v0

    int-to-float v4, v8

    int-to-float v5, v10

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Switch2;->paint2:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 168
    const/high16 v1, 0x40f00000    # 7.5f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    float-to-int v1, v1

    add-int v14, v1, v19

    .line 169
    const/high16 v1, 0x41480000    # 12.5f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    float-to-int v1, v1

    add-int v16, v1, v20

    .line 170
    const/high16 v1, 0x40e00000    # 7.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int v8, v14, v1

    .line 171
    const/high16 v1, 0x40e00000    # 7.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v10, v16, v1

    .line 172
    int-to-float v2, v14

    move/from16 v0, v16

    int-to-float v3, v0

    int-to-float v4, v8

    int-to-float v5, v10

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Switch2;->paint2:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public setChecked(ZZ)V
    .locals 1
    .param p1, "checked"    # Z
    .param p2, "animated"    # Z

    .prologue
    .line 98
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Switch2;->isChecked:Z

    if-ne p1, v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 101
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Switch2;->isChecked:Z

    .line 102
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Switch2;->attachedToWindow:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 103
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Switch2;->animateToCheckedState(Z)V

    goto :goto_0

    .line 105
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/Switch2;->cancelCheckAnimator()V

    .line 106
    if-eqz p1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Switch2;->setProgress(F)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setDisabled(Z)V
    .locals 0
    .param p1, "disabled"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Switch2;->isDisabled:Z

    .line 112
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch2;->invalidate()V

    .line 113
    return-void
.end method

.method public setProgress(F)V
    .locals 1
    .param p1, "value"    # F
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/Components/Switch2;->progress:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/Switch2;->progress:F

    .line 66
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Switch2;->invalidate()V

    goto :goto_0
.end method
