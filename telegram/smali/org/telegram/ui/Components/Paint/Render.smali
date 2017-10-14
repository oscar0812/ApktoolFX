.class public Lorg/telegram/ui/Components/Paint/Render;
.super Ljava/lang/Object;
.source "Render.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Draw(Lorg/telegram/ui/Components/Paint/RenderState;)Landroid/graphics/RectF;
    .locals 39
    .param p0, "state"    # Lorg/telegram/ui/Components/Paint/RenderState;

    .prologue
    .line 99
    new-instance v29, Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v29

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 101
    .local v29, "dataBounds":Landroid/graphics/RectF;
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/RenderState;->getCount()I

    move-result v28

    .line 102
    .local v28, "count":I
    if-nez v28, :cond_0

    .line 205
    :goto_0
    return-object v29

    .line 106
    :cond_0
    const/16 v8, 0x14

    .line 107
    .local v8, "vertexDataSize":I
    mul-int/lit8 v4, v28, 0x4

    add-int/lit8 v5, v28, -0x1

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    mul-int v25, v8, v4

    .line 108
    .local v25, "capacity":I
    invoke-static/range {v25 .. v25}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v24

    .line 109
    .local v24, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 110
    invoke-virtual/range {v24 .. v24}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v36

    .line 111
    .local v36, "vertexData":Ljava/nio/FloatBuffer;
    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 112
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/Paint/RenderState;->setPosition(I)V

    .line 114
    const/16 v31, 0x0

    .line 115
    .local v31, "n":I
    const/16 v30, 0x0

    .local v30, "i":I
    :goto_1
    move/from16 v0, v30

    move/from16 v1, v28

    if-ge v0, v1, :cond_3

    .line 116
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/RenderState;->read()F

    move-result v37

    .line 117
    .local v37, "x":F
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/RenderState;->read()F

    move-result v38

    .line 118
    .local v38, "y":F
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/RenderState;->read()F

    move-result v34

    .line 119
    .local v34, "size":F
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/RenderState;->read()F

    move-result v23

    .line 120
    .local v23, "angle":F
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/RenderState;->read()F

    move-result v22

    .line 122
    .local v22, "alpha":F
    new-instance v33, Landroid/graphics/RectF;

    sub-float v4, v37, v34

    sub-float v5, v38, v34

    add-float v6, v37, v34

    add-float v7, v38, v34

    move-object/from16 v0, v33

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 123
    .local v33, "rect":Landroid/graphics/RectF;
    const/16 v4, 0x8

    new-array v0, v4, [F

    move-object/from16 v32, v0

    const/4 v4, 0x0

    move-object/from16 v0, v33

    iget v5, v0, Landroid/graphics/RectF;->left:F

    aput v5, v32, v4

    const/4 v4, 0x1

    move-object/from16 v0, v33

    iget v5, v0, Landroid/graphics/RectF;->top:F

    aput v5, v32, v4

    const/4 v4, 0x2

    move-object/from16 v0, v33

    iget v5, v0, Landroid/graphics/RectF;->right:F

    aput v5, v32, v4

    const/4 v4, 0x3

    move-object/from16 v0, v33

    iget v5, v0, Landroid/graphics/RectF;->top:F

    aput v5, v32, v4

    const/4 v4, 0x4

    move-object/from16 v0, v33

    iget v5, v0, Landroid/graphics/RectF;->left:F

    aput v5, v32, v4

    const/4 v4, 0x5

    move-object/from16 v0, v33

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    aput v5, v32, v4

    const/4 v4, 0x6

    move-object/from16 v0, v33

    iget v5, v0, Landroid/graphics/RectF;->right:F

    aput v5, v32, v4

    const/4 v4, 0x7

    move-object/from16 v0, v33

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    aput v5, v32, v4

    .line 130
    .local v32, "points":[F
    invoke-virtual/range {v33 .. v33}, Landroid/graphics/RectF;->centerX()F

    move-result v26

    .line 131
    .local v26, "centerX":F
    invoke-virtual/range {v33 .. v33}, Landroid/graphics/RectF;->centerY()F

    move-result v27

    .line 133
    .local v27, "centerY":F
    new-instance v35, Landroid/graphics/Matrix;

    invoke-direct/range {v35 .. v35}, Landroid/graphics/Matrix;-><init>()V

    .line 134
    .local v35, "t":Landroid/graphics/Matrix;
    move/from16 v0, v23

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v4, v4

    move-object/from16 v0, v35

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v4, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 135
    move-object/from16 v0, v35

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 136
    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 138
    invoke-static/range {v33 .. v33}, Lorg/telegram/ui/Components/Paint/Utils;->RectFIntegral(Landroid/graphics/RectF;)V

    .line 139
    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 141
    if-eqz v31, :cond_1

    .line 142
    const/4 v4, 0x0

    aget v4, v32, v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 143
    const/4 v4, 0x1

    aget v4, v32, v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 144
    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 145
    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 146
    move-object/from16 v0, v36

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 147
    add-int/lit8 v31, v31, 0x1

    .line 150
    :cond_1
    const/4 v4, 0x0

    aget v4, v32, v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 151
    const/4 v4, 0x1

    aget v4, v32, v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 152
    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 153
    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 154
    move-object/from16 v0, v36

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 155
    add-int/lit8 v31, v31, 0x1

    .line 157
    const/4 v4, 0x2

    aget v4, v32, v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 158
    const/4 v4, 0x3

    aget v4, v32, v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 159
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 160
    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 161
    move-object/from16 v0, v36

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 162
    add-int/lit8 v31, v31, 0x1

    .line 164
    const/4 v4, 0x4

    aget v4, v32, v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 165
    const/4 v4, 0x5

    aget v4, v32, v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 166
    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 167
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 168
    move-object/from16 v0, v36

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 169
    add-int/lit8 v31, v31, 0x1

    .line 171
    const/4 v4, 0x6

    aget v4, v32, v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 172
    const/4 v4, 0x7

    aget v4, v32, v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 173
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 174
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 175
    move-object/from16 v0, v36

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 176
    add-int/lit8 v31, v31, 0x1

    .line 178
    add-int/lit8 v4, v28, -0x1

    move/from16 v0, v30

    if-eq v0, v4, :cond_2

    .line 179
    const/4 v4, 0x6

    aget v4, v32, v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 180
    const/4 v4, 0x7

    aget v4, v32, v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 181
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 182
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 183
    move-object/from16 v0, v36

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 184
    add-int/lit8 v31, v31, 0x1

    .line 115
    :cond_2
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_1

    .line 188
    .end local v22    # "alpha":F
    .end local v23    # "angle":F
    .end local v26    # "centerX":F
    .end local v27    # "centerY":F
    .end local v32    # "points":[F
    .end local v33    # "rect":Landroid/graphics/RectF;
    .end local v34    # "size":F
    .end local v35    # "t":Landroid/graphics/Matrix;
    .end local v37    # "x":F
    .end local v38    # "y":F
    :cond_3
    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 189
    invoke-virtual/range {v36 .. v36}, Ljava/nio/FloatBuffer;->slice()Ljava/nio/FloatBuffer;

    move-result-object v9

    .line 190
    .local v9, "coordData":Ljava/nio/FloatBuffer;
    const/4 v4, 0x0

    const/4 v5, 0x2

    const/16 v6, 0x1406

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 191
    const/4 v4, 0x0

    invoke-static {v4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 193
    const/4 v4, 0x2

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 194
    invoke-virtual/range {v36 .. v36}, Ljava/nio/FloatBuffer;->slice()Ljava/nio/FloatBuffer;

    move-result-object v15

    .line 195
    .local v15, "texData":Ljava/nio/FloatBuffer;
    const/4 v10, 0x1

    const/4 v11, 0x2

    const/16 v12, 0x1406

    const/4 v13, 0x1

    move v14, v8

    invoke-static/range {v10 .. v15}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 196
    const/4 v4, 0x1

    invoke-static {v4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 198
    const/4 v4, 0x4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 199
    invoke-virtual/range {v36 .. v36}, Ljava/nio/FloatBuffer;->slice()Ljava/nio/FloatBuffer;

    move-result-object v21

    .line 200
    .local v21, "alphaData":Ljava/nio/FloatBuffer;
    const/16 v16, 0x2

    const/16 v17, 0x1

    const/16 v18, 0x1406

    const/16 v19, 0x1

    move/from16 v20, v8

    invoke-static/range {v16 .. v21}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 201
    const/4 v4, 0x2

    invoke-static {v4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 203
    const/4 v4, 0x5

    const/4 v5, 0x0

    move/from16 v0, v31

    invoke-static {v4, v5, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    goto/16 :goto_0
.end method

.method private static PaintSegment(Lorg/telegram/ui/Components/Paint/Point;Lorg/telegram/ui/Components/Paint/Point;Lorg/telegram/ui/Components/Paint/RenderState;)V
    .locals 27
    .param p0, "lastPoint"    # Lorg/telegram/ui/Components/Paint/Point;
    .param p1, "point"    # Lorg/telegram/ui/Components/Paint/Point;
    .param p2, "state"    # Lorg/telegram/ui/Components/Paint/RenderState;

    .prologue
    .line 43
    invoke-virtual/range {p0 .. p1}, Lorg/telegram/ui/Components/Paint/Point;->getDistanceTo(Lorg/telegram/ui/Components/Paint/Point;)F

    move-result v4

    float-to-double v0, v4

    move-wide/from16 v18, v0

    .line 44
    .local v18, "distance":D
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Point;->substract(Lorg/telegram/ui/Components/Paint/Point;)Lorg/telegram/ui/Components/Paint/Point;

    move-result-object v26

    .line 45
    .local v26, "vector":Lorg/telegram/ui/Components/Paint/Point;
    new-instance v3, Lorg/telegram/ui/Components/Paint/Point;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/16 v8, 0x0

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/Components/Paint/Point;-><init>(DDD)V

    .line 46
    .local v3, "unitVector":Lorg/telegram/ui/Components/Paint/Point;
    move-object/from16 v0, p2

    iget v4, v0, Lorg/telegram/ui/Components/Paint/RenderState;->angle:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    move-object/from16 v0, p2

    iget v7, v0, Lorg/telegram/ui/Components/Paint/RenderState;->angle:F

    .line 48
    .local v7, "vectorAngle":F
    :goto_0
    move-object/from16 v0, p2

    iget v4, v0, Lorg/telegram/ui/Components/Paint/RenderState;->baseWeight:F

    move-object/from16 v0, p2

    iget v5, v0, Lorg/telegram/ui/Components/Paint/RenderState;->scale:F

    mul-float v6, v4, v5

    .line 49
    .local v6, "brushWeight":F
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p2

    iget v5, v0, Lorg/telegram/ui/Components/Paint/RenderState;->spacing:F

    mul-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-double v0, v4

    move-wide/from16 v24, v0

    .line 51
    .local v24, "step":D
    const-wide/16 v4, 0x0

    cmpl-double v4, v18, v4

    if-lez v4, :cond_0

    .line 52
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double v4, v4, v18

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/Components/Paint/Point;->multiplyByScalar(D)Lorg/telegram/ui/Components/Paint/Point;

    move-result-object v3

    .line 55
    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p2

    iget v5, v0, Lorg/telegram/ui/Components/Paint/RenderState;->alpha:F

    const v9, 0x3f933333    # 1.15f

    mul-float/2addr v5, v9

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 56
    .local v13, "boldenedAlpha":F
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Components/Paint/Point;->edge:Z

    .line 57
    .local v2, "boldenHead":Z
    move-object/from16 v0, p1

    iget-boolean v15, v0, Lorg/telegram/ui/Components/Paint/Point;->edge:Z

    .line 59
    .local v15, "boldenTail":Z
    move-object/from16 v0, p2

    iget-wide v4, v0, Lorg/telegram/ui/Components/Paint/RenderState;->remainder:D

    sub-double v4, v18, v4

    div-double v4, v4, v24

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    move/from16 v16, v0

    .line 60
    .local v16, "count":I
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/Components/Paint/RenderState;->getCount()I

    move-result v17

    .line 61
    .local v17, "currentCount":I
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderState;->appendValuesCount(I)V

    .line 62
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderState;->setPosition(I)V

    .line 64
    move-object/from16 v0, p2

    iget-wide v4, v0, Lorg/telegram/ui/Components/Paint/RenderState;->remainder:D

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/Paint/Point;->multiplyByScalar(D)Lorg/telegram/ui/Components/Paint/Point;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/Paint/Point;->add(Lorg/telegram/ui/Components/Paint/Point;)Lorg/telegram/ui/Components/Paint/Point;

    move-result-object v22

    .line 66
    .local v22, "start":Lorg/telegram/ui/Components/Paint/Point;
    const/16 v23, 0x1

    .line 67
    .local v23, "succeed":Z
    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/telegram/ui/Components/Paint/RenderState;->remainder:D

    move-wide/from16 v20, v0

    .line 68
    .local v20, "f":D
    :goto_1
    cmpg-double v4, v20, v18

    if-gtz v4, :cond_1

    .line 69
    if-eqz v2, :cond_4

    move v8, v13

    .line 70
    .local v8, "alpha":F
    :goto_2
    invoke-virtual/range {v22 .. v22}, Lorg/telegram/ui/Components/Paint/Point;->toPointF()Landroid/graphics/PointF;

    move-result-object v5

    const/4 v9, -0x1

    move-object/from16 v4, p2

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/ui/Components/Paint/RenderState;->addPoint(Landroid/graphics/PointF;FFFI)Z

    move-result v23

    .line 71
    if-nez v23, :cond_5

    .line 79
    .end local v8    # "alpha":F
    :cond_1
    if-eqz v23, :cond_2

    if-eqz v15, :cond_2

    .line 80
    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/Paint/RenderState;->appendValuesCount(I)V

    .line 81
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Components/Paint/Point;->toPointF()Landroid/graphics/PointF;

    move-result-object v10

    const/4 v14, -0x1

    move-object/from16 v9, p2

    move v11, v6

    move v12, v7

    invoke-virtual/range {v9 .. v14}, Lorg/telegram/ui/Components/Paint/RenderState;->addPoint(Landroid/graphics/PointF;FFFI)Z

    .line 84
    :cond_2
    sub-double v4, v20, v18

    move-object/from16 v0, p2

    iput-wide v4, v0, Lorg/telegram/ui/Components/Paint/RenderState;->remainder:D

    .line 85
    return-void

    .line 46
    .end local v2    # "boldenHead":Z
    .end local v6    # "brushWeight":F
    .end local v7    # "vectorAngle":F
    .end local v13    # "boldenedAlpha":F
    .end local v15    # "boldenTail":Z
    .end local v16    # "count":I
    .end local v17    # "currentCount":I
    .end local v20    # "f":D
    .end local v22    # "start":Lorg/telegram/ui/Components/Paint/Point;
    .end local v23    # "succeed":Z
    .end local v24    # "step":D
    :cond_3
    move-object/from16 v0, v26

    iget-wide v4, v0, Lorg/telegram/ui/Components/Paint/Point;->y:D

    move-object/from16 v0, v26

    iget-wide v10, v0, Lorg/telegram/ui/Components/Paint/Point;->x:D

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    double-to-float v7, v4

    goto/16 :goto_0

    .line 69
    .restart local v2    # "boldenHead":Z
    .restart local v6    # "brushWeight":F
    .restart local v7    # "vectorAngle":F
    .restart local v13    # "boldenedAlpha":F
    .restart local v15    # "boldenTail":Z
    .restart local v16    # "count":I
    .restart local v17    # "currentCount":I
    .restart local v20    # "f":D
    .restart local v22    # "start":Lorg/telegram/ui/Components/Paint/Point;
    .restart local v23    # "succeed":Z
    .restart local v24    # "step":D
    :cond_4
    move-object/from16 v0, p2

    iget v8, v0, Lorg/telegram/ui/Components/Paint/RenderState;->alpha:F

    goto :goto_2

    .line 75
    .restart local v8    # "alpha":F
    :cond_5
    move-wide/from16 v0, v24

    invoke-virtual {v3, v0, v1}, Lorg/telegram/ui/Components/Paint/Point;->multiplyByScalar(D)Lorg/telegram/ui/Components/Paint/Point;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/Paint/Point;->add(Lorg/telegram/ui/Components/Paint/Point;)Lorg/telegram/ui/Components/Paint/Point;

    move-result-object v22

    .line 76
    const/4 v2, 0x0

    .line 68
    add-double v20, v20, v24

    goto :goto_1
.end method

.method private static PaintStamp(Lorg/telegram/ui/Components/Paint/Point;Lorg/telegram/ui/Components/Paint/RenderState;)V
    .locals 6
    .param p0, "point"    # Lorg/telegram/ui/Components/Paint/Point;
    .param p1, "state"    # Lorg/telegram/ui/Components/Paint/RenderState;

    .prologue
    const/4 v3, 0x0

    .line 88
    iget v0, p1, Lorg/telegram/ui/Components/Paint/RenderState;->baseWeight:F

    iget v5, p1, Lorg/telegram/ui/Components/Paint/RenderState;->scale:F

    mul-float v2, v0, v5

    .line 89
    .local v2, "brushWeight":F
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Point;->toPointF()Landroid/graphics/PointF;

    move-result-object v1

    .line 90
    .local v1, "start":Landroid/graphics/PointF;
    iget v0, p1, Lorg/telegram/ui/Components/Paint/RenderState;->angle:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    iget v3, p1, Lorg/telegram/ui/Components/Paint/RenderState;->angle:F

    .line 91
    .local v3, "angle":F
    :cond_0
    iget v4, p1, Lorg/telegram/ui/Components/Paint/RenderState;->alpha:F

    .line 93
    .local v4, "alpha":F
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/RenderState;->prepare()V

    .line 94
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/RenderState;->appendValuesCount(I)V

    .line 95
    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/Paint/RenderState;->addPoint(Landroid/graphics/PointF;FFFI)Z

    .line 96
    return-void
.end method

.method public static RenderPath(Lorg/telegram/ui/Components/Paint/Path;Lorg/telegram/ui/Components/Paint/RenderState;)Landroid/graphics/RectF;
    .locals 6
    .param p0, "path"    # Lorg/telegram/ui/Components/Paint/Path;
    .param p1, "state"    # Lorg/telegram/ui/Components/Paint/RenderState;

    .prologue
    .line 15
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Path;->getBaseWeight()F

    move-result v3

    iput v3, p1, Lorg/telegram/ui/Components/Paint/RenderState;->baseWeight:F

    .line 16
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Path;->getBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object v3

    invoke-interface {v3}, Lorg/telegram/ui/Components/Paint/Brush;->getSpacing()F

    move-result v3

    iput v3, p1, Lorg/telegram/ui/Components/Paint/RenderState;->spacing:F

    .line 17
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Path;->getBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object v3

    invoke-interface {v3}, Lorg/telegram/ui/Components/Paint/Brush;->getAlpha()F

    move-result v3

    iput v3, p1, Lorg/telegram/ui/Components/Paint/RenderState;->alpha:F

    .line 18
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Path;->getBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object v3

    invoke-interface {v3}, Lorg/telegram/ui/Components/Paint/Brush;->getAngle()F

    move-result v3

    iput v3, p1, Lorg/telegram/ui/Components/Paint/RenderState;->angle:F

    .line 19
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Path;->getBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object v3

    invoke-interface {v3}, Lorg/telegram/ui/Components/Paint/Brush;->getScale()F

    move-result v3

    iput v3, p1, Lorg/telegram/ui/Components/Paint/RenderState;->scale:F

    .line 21
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Path;->getLength()I

    move-result v1

    .line 22
    .local v1, "length":I
    if-nez v1, :cond_0

    .line 23
    const/4 v3, 0x0

    .line 39
    :goto_0
    return-object v3

    .line 26
    :cond_0
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 27
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Path;->getPoints()[Lorg/telegram/ui/Components/Paint/Point;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3, p1}, Lorg/telegram/ui/Components/Paint/Render;->PaintStamp(Lorg/telegram/ui/Components/Paint/Point;Lorg/telegram/ui/Components/Paint/RenderState;)V

    .line 37
    :cond_1
    iget-wide v4, p1, Lorg/telegram/ui/Components/Paint/RenderState;->remainder:D

    iput-wide v4, p0, Lorg/telegram/ui/Components/Paint/Path;->remainder:D

    .line 39
    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/Render;->Draw(Lorg/telegram/ui/Components/Paint/RenderState;)Landroid/graphics/RectF;

    move-result-object v3

    goto :goto_0

    .line 29
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Path;->getPoints()[Lorg/telegram/ui/Components/Paint/Point;

    move-result-object v2

    .line 30
    .local v2, "points":[Lorg/telegram/ui/Components/Paint/Point;
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/RenderState;->prepare()V

    .line 32
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_1

    .line 33
    aget-object v3, v2, v0

    add-int/lit8 v4, v0, 0x1

    aget-object v4, v2, v4

    invoke-static {v3, v4, p1}, Lorg/telegram/ui/Components/Paint/Render;->PaintSegment(Lorg/telegram/ui/Components/Paint/Point;Lorg/telegram/ui/Components/Paint/Point;Lorg/telegram/ui/Components/Paint/RenderState;)V

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
