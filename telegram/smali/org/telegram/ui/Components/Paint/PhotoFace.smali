.class public Lorg/telegram/ui/Components/Paint/PhotoFace;
.super Ljava/lang/Object;
.source "PhotoFace.java"


# instance fields
.field private angle:F

.field private chinPoint:Lorg/telegram/ui/Components/Point;

.field private eyesCenterPoint:Lorg/telegram/ui/Components/Point;

.field private eyesDistance:F

.field private foreheadPoint:Lorg/telegram/ui/Components/Point;

.field private mouthPoint:Lorg/telegram/ui/Components/Point;

.field private width:F


# direct methods
.method public constructor <init>(Lcom/google/android/gms/vision/face/Face;Landroid/graphics/Bitmap;Lorg/telegram/ui/Components/Size;Z)V
    .locals 22
    .param p1, "face"    # Lcom/google/android/gms/vision/face/Face;
    .param p2, "sourceBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "targetSize"    # Lorg/telegram/ui/Components/Size;
    .param p4, "sideward"    # Z

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/vision/face/Face;->getLandmarks()Ljava/util/List;

    move-result-object v8

    .line 30
    .local v8, "landmarks":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/vision/face/Landmark;>;"
    const/4 v9, 0x0

    .line 31
    .local v9, "leftEyePoint":Lorg/telegram/ui/Components/Point;
    const/4 v12, 0x0

    .line 33
    .local v12, "rightEyePoint":Lorg/telegram/ui/Components/Point;
    const/4 v10, 0x0

    .line 34
    .local v10, "leftMouthPoint":Lorg/telegram/ui/Components/Point;
    const/4 v13, 0x0

    .line 36
    .local v13, "rightMouthPoint":Lorg/telegram/ui/Components/Point;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/vision/face/Landmark;

    .line 37
    .local v7, "landmark":Lcom/google/android/gms/vision/face/Landmark;
    invoke-virtual {v7}, Lcom/google/android/gms/vision/face/Landmark;->getPosition()Landroid/graphics/PointF;

    move-result-object v11

    .line 39
    .local v11, "point":Landroid/graphics/PointF;
    invoke-virtual {v7}, Lcom/google/android/gms/vision/face/Landmark;->getType()I

    move-result v16

    packed-switch v16, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 41
    :pswitch_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v11, v1, v2, v3}, Lorg/telegram/ui/Components/Paint/PhotoFace;->transposePoint(Landroid/graphics/PointF;Landroid/graphics/Bitmap;Lorg/telegram/ui/Components/Size;Z)Lorg/telegram/ui/Components/Point;

    move-result-object v9

    .line 43
    goto :goto_0

    .line 46
    :pswitch_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v11, v1, v2, v3}, Lorg/telegram/ui/Components/Paint/PhotoFace;->transposePoint(Landroid/graphics/PointF;Landroid/graphics/Bitmap;Lorg/telegram/ui/Components/Size;Z)Lorg/telegram/ui/Components/Point;

    move-result-object v12

    .line 48
    goto :goto_0

    .line 51
    :pswitch_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v11, v1, v2, v3}, Lorg/telegram/ui/Components/Paint/PhotoFace;->transposePoint(Landroid/graphics/PointF;Landroid/graphics/Bitmap;Lorg/telegram/ui/Components/Size;Z)Lorg/telegram/ui/Components/Point;

    move-result-object v10

    .line 53
    goto :goto_0

    .line 56
    :pswitch_4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v11, v1, v2, v3}, Lorg/telegram/ui/Components/Paint/PhotoFace;->transposePoint(Landroid/graphics/PointF;Landroid/graphics/Bitmap;Lorg/telegram/ui/Components/Size;Z)Lorg/telegram/ui/Components/Point;

    move-result-object v13

    goto :goto_0

    .line 62
    .end local v7    # "landmark":Lcom/google/android/gms/vision/face/Landmark;
    .end local v11    # "point":Landroid/graphics/PointF;
    :cond_0
    if-eqz v9, :cond_1

    if-eqz v12, :cond_1

    .line 63
    new-instance v15, Lorg/telegram/ui/Components/Point;

    const/high16 v16, 0x3f000000    # 0.5f

    iget v0, v9, Lorg/telegram/ui/Components/Point;->x:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    const/high16 v17, 0x3f000000    # 0.5f

    iget v0, v12, Lorg/telegram/ui/Components/Point;->x:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    add-float v16, v16, v17

    const/high16 v17, 0x3f000000    # 0.5f

    iget v0, v9, Lorg/telegram/ui/Components/Point;->y:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    const/high16 v18, 0x3f000000    # 0.5f

    iget v0, v12, Lorg/telegram/ui/Components/Point;->y:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    add-float v17, v17, v18

    invoke-direct/range {v15 .. v17}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/telegram/ui/Components/Paint/PhotoFace;->eyesCenterPoint:Lorg/telegram/ui/Components/Point;

    .line 65
    iget v15, v12, Lorg/telegram/ui/Components/Point;->x:F

    iget v0, v9, Lorg/telegram/ui/Components/Point;->x:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    float-to-double v0, v15

    move-wide/from16 v16, v0

    iget v15, v12, Lorg/telegram/ui/Components/Point;->y:F

    iget v0, v9, Lorg/telegram/ui/Components/Point;->y:F

    move/from16 v18, v0

    sub-float v15, v15, v18

    float-to-double v0, v15

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v15, v0

    move-object/from16 v0, p0

    iput v15, v0, Lorg/telegram/ui/Components/Paint/PhotoFace;->eyesDistance:F

    .line 66
    const-wide v16, 0x400921fb54442d18L    # Math.PI

    iget v15, v12, Lorg/telegram/ui/Components/Point;->y:F

    iget v0, v9, Lorg/telegram/ui/Components/Point;->y:F

    move/from16 v18, v0

    sub-float v15, v15, v18

    float-to-double v0, v15

    move-wide/from16 v18, v0

    iget v15, v12, Lorg/telegram/ui/Components/Point;->x:F

    iget v0, v9, Lorg/telegram/ui/Components/Point;->x:F

    move/from16 v20, v0

    sub-float v15, v15, v20

    float-to-double v0, v15

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v18

    add-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v15, v0

    move-object/from16 v0, p0

    iput v15, v0, Lorg/telegram/ui/Components/Paint/PhotoFace;->angle:F

    .line 68
    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/ui/Components/Paint/PhotoFace;->eyesDistance:F

    const v16, 0x40166666    # 2.35f

    mul-float v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lorg/telegram/ui/Components/Paint/PhotoFace;->width:F

    .line 70
    const v15, 0x3f4ccccd    # 0.8f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/Paint/PhotoFace;->eyesDistance:F

    move/from16 v16, v0

    mul-float v6, v15, v16

    .line 71
    .local v6, "foreheadHeight":F
    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/ui/Components/Paint/PhotoFace;->angle:F

    const/high16 v16, 0x42b40000    # 90.0f

    sub-float v15, v15, v16

    float-to-double v0, v15

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v14, v0

    .line 72
    .local v14, "upAngle":F
    new-instance v15, Lorg/telegram/ui/Components/Point;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/PhotoFace;->eyesCenterPoint:Lorg/telegram/ui/Components/Point;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/ui/Components/Point;->x:F

    move/from16 v16, v0

    float-to-double v0, v14

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v6

    add-float v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/PhotoFace;->eyesCenterPoint:Lorg/telegram/ui/Components/Point;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/ui/Components/Point;->y:F

    move/from16 v17, v0

    float-to-double v0, v14

    move-wide/from16 v18, v0

    .line 73
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v6

    add-float v17, v17, v18

    invoke-direct/range {v15 .. v17}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/telegram/ui/Components/Paint/PhotoFace;->foreheadPoint:Lorg/telegram/ui/Components/Point;

    .line 76
    .end local v6    # "foreheadHeight":F
    .end local v14    # "upAngle":F
    :cond_1
    if-eqz v10, :cond_2

    if-eqz v13, :cond_2

    .line 77
    new-instance v15, Lorg/telegram/ui/Components/Point;

    const/high16 v16, 0x3f000000    # 0.5f

    iget v0, v10, Lorg/telegram/ui/Components/Point;->x:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    const/high16 v17, 0x3f000000    # 0.5f

    iget v0, v13, Lorg/telegram/ui/Components/Point;->x:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    add-float v16, v16, v17

    const/high16 v17, 0x3f000000    # 0.5f

    iget v0, v10, Lorg/telegram/ui/Components/Point;->y:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    const/high16 v18, 0x3f000000    # 0.5f

    iget v0, v13, Lorg/telegram/ui/Components/Point;->y:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    add-float v17, v17, v18

    invoke-direct/range {v15 .. v17}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/telegram/ui/Components/Paint/PhotoFace;->mouthPoint:Lorg/telegram/ui/Components/Point;

    .line 80
    const v15, 0x3f333333    # 0.7f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/Paint/PhotoFace;->eyesDistance:F

    move/from16 v16, v0

    mul-float v4, v15, v16

    .line 81
    .local v4, "chinDepth":F
    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/ui/Components/Paint/PhotoFace;->angle:F

    const/high16 v16, 0x42b40000    # 90.0f

    add-float v15, v15, v16

    float-to-double v0, v15

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v5, v0

    .line 82
    .local v5, "downAngle":F
    new-instance v15, Lorg/telegram/ui/Components/Point;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/PhotoFace;->mouthPoint:Lorg/telegram/ui/Components/Point;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/ui/Components/Point;->x:F

    move/from16 v16, v0

    float-to-double v0, v5

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v4

    add-float v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/PhotoFace;->mouthPoint:Lorg/telegram/ui/Components/Point;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/ui/Components/Point;->y:F

    move/from16 v17, v0

    float-to-double v0, v5

    move-wide/from16 v18, v0

    .line 83
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v4

    add-float v17, v17, v18

    invoke-direct/range {v15 .. v17}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/telegram/ui/Components/Paint/PhotoFace;->chinPoint:Lorg/telegram/ui/Components/Point;

    .line 85
    .end local v4    # "chinDepth":F
    .end local v5    # "downAngle":F
    :cond_2
    return-void

    .line 39
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private transposePoint(Landroid/graphics/PointF;Landroid/graphics/Bitmap;Lorg/telegram/ui/Components/Size;Z)Lorg/telegram/ui/Components/Point;
    .locals 6
    .param p1, "point"    # Landroid/graphics/PointF;
    .param p2, "sourceBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "targetSize"    # Lorg/telegram/ui/Components/Size;
    .param p4, "sideward"    # Z

    .prologue
    .line 92
    if-eqz p4, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v1, v2

    .line 93
    .local v1, "bitmapW":F
    :goto_0
    if-eqz p4, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v0, v2

    .line 94
    .local v0, "bitmapH":F
    :goto_1
    new-instance v2, Lorg/telegram/ui/Components/Point;

    iget v3, p3, Lorg/telegram/ui/Components/Size;->width:F

    iget v4, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v1

    iget v4, p3, Lorg/telegram/ui/Components/Size;->height:F

    iget v5, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, v5

    div-float/2addr v4, v0

    invoke-direct {v2, v3, v4}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    return-object v2

    .line 92
    .end local v0    # "bitmapH":F
    .end local v1    # "bitmapW":F
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v1, v2

    goto :goto_0

    .line 93
    .restart local v1    # "bitmapW":F
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v0, v2

    goto :goto_1
.end method


# virtual methods
.method public getAngle()F
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lorg/telegram/ui/Components/Paint/PhotoFace;->angle:F

    return v0
.end method

.method public getPointForAnchor(I)Lorg/telegram/ui/Components/Point;
    .locals 1
    .param p1, "anchor"    # I

    .prologue
    .line 99
    packed-switch p1, :pswitch_data_0

    .line 117
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 101
    :pswitch_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PhotoFace;->foreheadPoint:Lorg/telegram/ui/Components/Point;

    goto :goto_0

    .line 105
    :pswitch_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PhotoFace;->eyesCenterPoint:Lorg/telegram/ui/Components/Point;

    goto :goto_0

    .line 109
    :pswitch_2
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PhotoFace;->mouthPoint:Lorg/telegram/ui/Components/Point;

    goto :goto_0

    .line 113
    :pswitch_3
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PhotoFace;->chinPoint:Lorg/telegram/ui/Components/Point;

    goto :goto_0

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getWidthForAnchor(I)F
    .locals 1
    .param p1, "anchor"    # I

    .prologue
    .line 123
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 124
    iget v0, p0, Lorg/telegram/ui/Components/Paint/PhotoFace;->eyesDistance:F

    .line 126
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/Paint/PhotoFace;->width:F

    goto :goto_0
.end method

.method public isSufficient()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PhotoFace;->eyesCenterPoint:Lorg/telegram/ui/Components/Point;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
