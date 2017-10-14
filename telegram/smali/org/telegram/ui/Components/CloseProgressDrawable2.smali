.class public Lorg/telegram/ui/Components/CloseProgressDrawable2;
.super Landroid/graphics/drawable/Drawable;
.source "CloseProgressDrawable2.java"


# instance fields
.field private angle:F

.field private animating:Z

.field private interpolator:Landroid/view/animation/DecelerateInterpolator;

.field private lastFrameTime:J

.field private paint:Landroid/graphics/Paint;

.field private rect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->paint:Landroid/graphics/Paint;

    .line 25
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 26
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->rect:Landroid/graphics/RectF;

    .line 32
    iget-object v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 33
    iget-object v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 34
    iget-object v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 35
    iget-object v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 36
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 55
    .local v14, "newTime":J
    const/4 v12, 0x0

    .line 56
    .local v12, "invalidate":Z
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->lastFrameTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 57
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->lastFrameTime:J

    sub-long v10, v14, v2

    .line 58
    .local v10, "dt":J
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->animating:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 59
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const-wide/16 v4, 0x168

    mul-long/2addr v4, v10

    long-to-float v3, v4

    const/high16 v4, 0x43fa0000    # 500.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    .line 60
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->animating:Z

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v3, 0x44340000    # 720.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_7

    .line 61
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    .line 65
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/CloseProgressDrawable2;->invalidateSelf()V

    .line 69
    .end local v10    # "dt":J
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 70
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/CloseProgressDrawable2;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/CloseProgressDrawable2;->getIntrinsicHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 71
    const/high16 v2, -0x3dcc0000    # -45.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 72
    const/high16 v13, 0x3f800000    # 1.0f

    .line 73
    .local v13, "progress1":F
    const/high16 v16, 0x3f800000    # 1.0f

    .line 74
    .local v16, "progress2":F
    const/high16 v17, 0x3f800000    # 1.0f

    .line 75
    .local v17, "progress3":F
    const/16 v18, 0x0

    .line 76
    .local v18, "progress4":F
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v3, 0x42b40000    # 90.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_8

    .line 77
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v4, 0x42b40000    # 90.0f

    div-float/2addr v3, v4

    sub-float v13, v2, v3

    .line 100
    :cond_2
    :goto_1
    const/4 v2, 0x0

    cmpl-float v2, v13, v2

    if-eqz v2, :cond_3

    .line 101
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    mul-float v6, v2, v13

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 103
    :cond_3
    const/4 v2, 0x0

    cmpl-float v2, v16, v2

    if-eqz v2, :cond_4

    .line 104
    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    mul-float v3, v2, v16

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 106
    :cond_4
    const/4 v2, 0x0

    cmpl-float v2, v17, v2

    if-eqz v2, :cond_5

    .line 107
    const/4 v3, 0x0

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    mul-float v4, v2, v17

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 109
    :cond_5
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v18, v2

    if-eqz v2, :cond_6

    .line 110
    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    mul-float v3, v2, v18

    const/4 v4, 0x0

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v5, v2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 113
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 115
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/CloseProgressDrawable2;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    .line 116
    .local v8, "cx":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/CloseProgressDrawable2;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    .line 117
    .local v9, "cy":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->rect:Landroid/graphics/RectF;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v8, v3

    int-to-float v3, v3

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, v9, v4

    int-to-float v4, v4

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v5, v8

    int-to-float v5, v5

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v6, v9

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 118
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->rect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v4, 0x43b40000    # 360.0f

    cmpg-float v2, v2, v4

    if-gez v2, :cond_f

    const/4 v2, 0x0

    :goto_2
    const/high16 v4, 0x42340000    # 45.0f

    sub-float v4, v2, v4

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v5, 0x43b40000    # 360.0f

    cmpg-float v2, v2, v5

    if-gez v2, :cond_10

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    :goto_3
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 120
    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->lastFrameTime:J

    .line 121
    return-void

    .line 63
    .end local v8    # "cx":I
    .end local v9    # "cy":I
    .end local v13    # "progress1":F
    .end local v16    # "progress2":F
    .end local v17    # "progress3":F
    .end local v18    # "progress4":F
    .restart local v10    # "dt":J
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v4, 0x44340000    # 720.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    mul-int/lit16 v3, v3, 0x2d0

    int-to-float v3, v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    goto/16 :goto_0

    .line 78
    .end local v10    # "dt":J
    .restart local v13    # "progress1":F
    .restart local v16    # "progress2":F
    .restart local v17    # "progress3":F
    .restart local v18    # "progress4":F
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v3, 0x42b40000    # 90.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v3, 0x43340000    # 180.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_9

    .line 79
    const/4 v13, 0x0

    .line 80
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v4, 0x42b40000    # 90.0f

    sub-float/2addr v3, v4

    const/high16 v4, 0x42b40000    # 90.0f

    div-float/2addr v3, v4

    sub-float v16, v2, v3

    goto/16 :goto_1

    .line 81
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v3, 0x43340000    # 180.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v3, 0x43870000    # 270.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_a

    .line 82
    const/16 v16, 0x0

    move/from16 v13, v16

    .line 83
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v4, 0x43340000    # 180.0f

    sub-float/2addr v3, v4

    const/high16 v4, 0x42b40000    # 90.0f

    div-float/2addr v3, v4

    sub-float v17, v2, v3

    goto/16 :goto_1

    .line 84
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v3, 0x43870000    # 270.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v3, 0x43b40000    # 360.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_b

    .line 85
    const/16 v17, 0x0

    move/from16 v16, v17

    move/from16 v13, v17

    .line 86
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v3, 0x43870000    # 270.0f

    sub-float/2addr v2, v3

    const/high16 v3, 0x42b40000    # 90.0f

    div-float v18, v2, v3

    goto/16 :goto_1

    .line 87
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v3, 0x43b40000    # 360.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v3, 0x43e10000    # 450.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_c

    .line 88
    const/16 v17, 0x0

    move/from16 v16, v17

    move/from16 v13, v17

    .line 89
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v4, 0x43b40000    # 360.0f

    sub-float/2addr v3, v4

    const/high16 v4, 0x42b40000    # 90.0f

    div-float/2addr v3, v4

    sub-float v18, v2, v3

    goto/16 :goto_1

    .line 90
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v3, 0x43e10000    # 450.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v3, 0x44070000    # 540.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_d

    .line 91
    const/16 v17, 0x0

    move/from16 v16, v17

    .line 92
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v3, 0x43e10000    # 450.0f

    sub-float/2addr v2, v3

    const/high16 v3, 0x42b40000    # 90.0f

    div-float v13, v2, v3

    goto/16 :goto_1

    .line 93
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v3, 0x44070000    # 540.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const v3, 0x441d8000    # 630.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_e

    .line 94
    const/16 v17, 0x0

    .line 95
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v3, 0x44070000    # 540.0f

    sub-float/2addr v2, v3

    const/high16 v3, 0x42b40000    # 90.0f

    div-float v16, v2, v3

    goto/16 :goto_1

    .line 96
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const v3, 0x441d8000    # 630.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v3, 0x44340000    # 720.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 97
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const v3, 0x441d8000    # 630.0f

    sub-float/2addr v2, v3

    const/high16 v3, 0x42b40000    # 90.0f

    div-float v17, v2, v3

    goto/16 :goto_1

    .line 118
    .restart local v8    # "cx":I
    .restart local v9    # "cy":I
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v4, 0x43b40000    # 360.0f

    sub-float/2addr v2, v4

    goto/16 :goto_2

    :cond_10
    const/high16 v2, 0x44340000    # 720.0f

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    sub-float v5, v2, v5

    goto/16 :goto_3
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 145
    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 140
    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 135
    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 126
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 130
    iget-object v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 131
    return-void
.end method

.method public startAnimation()V
    .locals 2

    .prologue
    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->animating:Z

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->lastFrameTime:J

    .line 41
    invoke-virtual {p0}, Lorg/telegram/ui/Components/CloseProgressDrawable2;->invalidateSelf()V

    .line 42
    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->animating:Z

    .line 46
    return-void
.end method
