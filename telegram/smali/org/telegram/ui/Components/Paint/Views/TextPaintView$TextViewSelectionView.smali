.class public Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;
.super Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;
.source "TextPaintView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Paint/Views/TextPaintView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextViewSelectionView"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/Views/TextPaintView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/Paint/Views/TextPaintView;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 172
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    .line 173
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;-><init>(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/content/Context;)V

    .line 174
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 202
    invoke-super/range {p0 .. p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->onDraw(Landroid/graphics/Canvas;)V

    .line 204
    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v15, v2

    .line 205
    .local v15, "space":F
    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v13, v2

    .line 206
    .local v13, "length":F
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v0, v2

    move/from16 v16, v0

    .line 207
    .local v16, "thickness":F
    const/high16 v2, 0x40900000    # 4.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v14, v2

    .line 209
    .local v14, "radius":F
    add-float v2, v14, v16

    const/high16 v4, 0x41700000    # 15.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float v12, v2, v4

    .line 211
    .local v12, "inset":F
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v12

    sub-float v17, v2, v4

    .line 212
    .local v17, "width":F
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v12

    sub-float v10, v2, v4

    .line 214
    .local v10, "height":F
    add-float v2, v15, v13

    div-float v2, v17, v2

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    move/from16 v18, v0

    .line 215
    .local v18, "xCount":I
    move/from16 v0, v18

    int-to-float v2, v0

    add-float v4, v15, v13

    mul-float/2addr v2, v4

    sub-float v2, v17, v2

    add-float/2addr v2, v15

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-float v0, v4

    move/from16 v19, v0

    .line 217
    .local v19, "xGap":F
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move/from16 v0, v18

    if-ge v11, v0, :cond_0

    .line 218
    add-float v2, v19, v12

    int-to-float v4, v11

    add-float v5, v13, v15

    mul-float/2addr v4, v5

    add-float v3, v2, v4

    .line 219
    .local v3, "x":F
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v16, v2

    sub-float v4, v12, v2

    add-float v5, v3, v13

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v16, v2

    add-float v6, v12, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 220
    add-float v2, v12, v10

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v16, v4

    sub-float v4, v2, v4

    add-float v5, v3, v13

    add-float v2, v12, v10

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v16, v7

    add-float v6, v2, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 217
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 223
    .end local v3    # "x":F
    :cond_0
    add-float v2, v15, v13

    div-float v2, v10, v2

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    move/from16 v20, v0

    .line 224
    .local v20, "yCount":I
    move/from16 v0, v20

    int-to-float v2, v0

    add-float v4, v15, v13

    mul-float/2addr v2, v4

    sub-float v2, v10, v2

    add-float/2addr v2, v15

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-float v0, v4

    move/from16 v21, v0

    .line 226
    .local v21, "yGap":F
    const/4 v11, 0x0

    :goto_1
    move/from16 v0, v20

    if-ge v11, v0, :cond_1

    .line 227
    add-float v2, v21, v12

    int-to-float v4, v11

    add-float v5, v13, v15

    mul-float/2addr v4, v5

    add-float v6, v2, v4

    .line 228
    .local v6, "y":F
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v16, v2

    sub-float v5, v12, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v16, v2

    add-float v7, v12, v2

    add-float v8, v6, v13

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;->paint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 229
    add-float v2, v12, v17

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v16, v4

    sub-float v5, v2, v4

    add-float v2, v12, v17

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v16, v4

    add-float v7, v2, v4

    add-float v8, v6, v13

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;->paint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 226
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 232
    .end local v6    # "y":F
    :cond_1
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v10, v2

    add-float/2addr v2, v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;->dotPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v2, v14, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 233
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v10, v2

    add-float/2addr v2, v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;->dotStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v2, v14, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 235
    add-float v2, v12, v17

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v10, v4

    add-float/2addr v4, v12

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;->dotPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4, v14, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 236
    add-float v2, v12, v17

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v10, v4

    add-float/2addr v4, v12

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;->dotStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4, v14, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 237
    return-void
.end method

.method protected pointInsideHandle(FF)I
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 178
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v4, v6

    .line 179
    .local v4, "thickness":F
    const/high16 v6, 0x419c0000    # 19.5f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v3, v6

    .line 181
    .local v3, "radius":F
    add-float v1, v3, v4

    .line 182
    .local v1, "inset":F
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float v7, v1, v8

    sub-float v5, v6, v7

    .line 183
    .local v5, "width":F
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float v7, v1, v8

    sub-float v0, v6, v7

    .line 185
    .local v0, "height":F
    div-float v6, v0, v8

    add-float v2, v1, v6

    .line 187
    .local v2, "middle":F
    sub-float v6, v1, v3

    cmpl-float v6, p1, v6

    if-lez v6, :cond_0

    sub-float v6, v2, v3

    cmpl-float v6, p2, v6

    if-lez v6, :cond_0

    add-float v6, v1, v3

    cmpg-float v6, p1, v6

    if-gez v6, :cond_0

    add-float v6, v2, v3

    cmpg-float v6, p2, v6

    if-gez v6, :cond_0

    .line 188
    const/4 v6, 0x1

    .line 197
    :goto_0
    return v6

    .line 189
    :cond_0
    add-float v6, v1, v5

    sub-float/2addr v6, v3

    cmpl-float v6, p1, v6

    if-lez v6, :cond_1

    sub-float v6, v2, v3

    cmpl-float v6, p2, v6

    if-lez v6, :cond_1

    add-float v6, v1, v5

    add-float/2addr v6, v3

    cmpg-float v6, p1, v6

    if-gez v6, :cond_1

    add-float v6, v2, v3

    cmpg-float v6, p2, v6

    if-gez v6, :cond_1

    .line 190
    const/4 v6, 0x2

    goto :goto_0

    .line 193
    :cond_1
    cmpl-float v6, p1, v1

    if-lez v6, :cond_2

    cmpg-float v6, p1, v5

    if-gez v6, :cond_2

    cmpl-float v6, p2, v1

    if-lez v6, :cond_2

    cmpg-float v6, p2, v0

    if-gez v6, :cond_2

    .line 194
    const/4 v6, 0x3

    goto :goto_0

    .line 197
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method
