.class public Lorg/telegram/ui/Components/Paint/Views/StickerView$StickerViewSelectionView;
.super Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;
.source "StickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Paint/Views/StickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StickerViewSelectionView"
.end annotation


# instance fields
.field private arcPaint:Landroid/graphics/Paint;

.field private arcRect:Landroid/graphics/RectF;

.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/Views/StickerView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/Paint/Views/StickerView;Landroid/content/Context;)V
    .locals 2
    .param p1, "this$0"    # Lorg/telegram/ui/Components/Paint/Views/StickerView;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 143
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView$StickerViewSelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/StickerView;

    .line 144
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;-><init>(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/content/Context;)V

    .line 140
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView$StickerViewSelectionView;->arcPaint:Landroid/graphics/Paint;

    .line 141
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView$StickerViewSelectionView;->arcRect:Landroid/graphics/RectF;

    .line 146
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView$StickerViewSelectionView;->arcPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView$StickerViewSelectionView;->arcPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 148
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView$StickerViewSelectionView;->arcPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 149
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    .line 176
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->onDraw(Landroid/graphics/Canvas;)V

    .line 178
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v11, v0

    .line 179
    .local v11, "thickness":F
    const/high16 v0, 0x40900000    # 4.5f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v9, v0

    .line 181
    .local v9, "radius":F
    add-float v0, v9, v11

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float v7, v0, v1

    .line 182
    .local v7, "inset":F
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/StickerView$StickerViewSelectionView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float v8, v0, v7

    .line 184
    .local v8, "mainRadius":F
    const/high16 v10, 0x40800000    # 4.0f

    .line 185
    .local v10, "space":F
    const/high16 v3, 0x40800000    # 4.0f

    .line 187
    .local v3, "length":F
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView$StickerViewSelectionView;->arcRect:Landroid/graphics/RectF;

    mul-float v1, v8, v12

    add-float/2addr v1, v7

    mul-float v2, v8, v12

    add-float/2addr v2, v7

    invoke-virtual {v0, v7, v7, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 188
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/16 v0, 0x30

    if-ge v6, v0, :cond_0

    .line 189
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView$StickerViewSelectionView;->arcRect:Landroid/graphics/RectF;

    int-to-float v0, v6

    add-float v2, v10, v3

    mul-float/2addr v2, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView$StickerViewSelectionView;->arcPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 188
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 192
    :cond_0
    add-float v0, v7, v8

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView$StickerViewSelectionView;->dotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v0, v9, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 193
    add-float v0, v7, v8

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView$StickerViewSelectionView;->dotStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v0, v9, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 195
    mul-float v0, v8, v12

    add-float/2addr v0, v7

    add-float v1, v7, v8

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView$StickerViewSelectionView;->dotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v9, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 196
    mul-float v0, v8, v12

    add-float/2addr v0, v7

    add-float v1, v7, v8

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView$StickerViewSelectionView;->dotStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v9, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 197
    return-void
.end method

.method protected pointInsideHandle(FF)I
    .locals 12
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const/high16 v7, 0x40000000    # 2.0f

    .line 153
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v4, v5

    .line 154
    .local v4, "thickness":F
    const/high16 v5, 0x419c0000    # 19.5f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v2, v5

    .line 156
    .local v2, "radius":F
    add-float v0, v2, v4

    .line 157
    .local v0, "inset":F
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/StickerView$StickerViewSelectionView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v6, v0, v7

    sub-float/2addr v5, v6

    div-float/2addr v5, v7

    add-float v1, v0, v5

    .line 159
    .local v1, "middle":F
    sub-float v5, v0, v2

    cmpl-float v5, p1, v5

    if-lez v5, :cond_0

    sub-float v5, v1, v2

    cmpl-float v5, p2, v5

    if-lez v5, :cond_0

    add-float v5, v0, v2

    cmpg-float v5, p1, v5

    if-gez v5, :cond_0

    add-float v5, v1, v2

    cmpg-float v5, p2, v5

    if-gez v5, :cond_0

    .line 160
    const/4 v5, 0x1

    .line 171
    :goto_0
    return v5

    .line 161
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/StickerView$StickerViewSelectionView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v6, v0, v7

    sub-float/2addr v5, v6

    add-float/2addr v5, v0

    sub-float/2addr v5, v2

    cmpl-float v5, p1, v5

    if-lez v5, :cond_1

    sub-float v5, v1, v2

    cmpl-float v5, p2, v5

    if-lez v5, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/StickerView$StickerViewSelectionView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v6, v0, v7

    sub-float/2addr v5, v6

    add-float/2addr v5, v0

    add-float/2addr v5, v2

    cmpg-float v5, p1, v5

    if-gez v5, :cond_1

    add-float v5, v1, v2

    cmpg-float v5, p2, v5

    if-gez v5, :cond_1

    .line 162
    const/4 v5, 0x2

    goto :goto_0

    .line 165
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/StickerView$StickerViewSelectionView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v3, v5, v7

    .line 167
    .local v3, "selectionRadius":F
    sub-float v5, p1, v3

    float-to-double v6, v5

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sub-float v5, p2, v3

    float-to-double v8, v5

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    float-to-double v8, v3

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    cmpg-double v5, v6, v8

    if-gez v5, :cond_2

    .line 168
    const/4 v5, 0x3

    goto :goto_0

    .line 171
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method
