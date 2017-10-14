.class public Lorg/telegram/ui/Components/ShareLocationDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ShareLocationDrawable.java"


# instance fields
.field private drawable:Landroid/graphics/drawable/Drawable;

.field private drawableLeft:Landroid/graphics/drawable/Drawable;

.field private drawableRight:Landroid/graphics/drawable/Drawable;

.field private isSmall:Z

.field private lastUpdateTime:J

.field private progress:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "small"    # Z

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Components/ShareLocationDrawable;->lastUpdateTime:J

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/telegram/ui/Components/ShareLocationDrawable;->progress:[F

    .line 29
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ShareLocationDrawable;->isSmall:Z

    .line 30
    if-eqz p2, :cond_0

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ShareLocationDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ShareLocationDrawable;->drawableLeft:Landroid/graphics/drawable/Drawable;

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ShareLocationDrawable;->drawableRight:Landroid/graphics/drawable/Drawable;

    .line 39
    :goto_0
    return-void

    .line 35
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ShareLocationDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ShareLocationDrawable;->drawableLeft:Landroid/graphics/drawable/Drawable;

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ShareLocationDrawable;->drawableRight:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 22
    nop

    :array_0
    .array-data 4
        0x0
        -0x41000000    # -0.5f
    .end array-data
.end method

.method private update()V
    .locals 10

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 43
    .local v4, "newTime":J
    iget-wide v6, p0, Lorg/telegram/ui/Components/ShareLocationDrawable;->lastUpdateTime:J

    sub-long v2, v4, v6

    .line 44
    .local v2, "dt":J
    iput-wide v4, p0, Lorg/telegram/ui/Components/ShareLocationDrawable;->lastUpdateTime:J

    .line 45
    const-wide/16 v6, 0x10

    cmp-long v1, v2, v6

    if-lez v1, :cond_0

    .line 46
    const-wide/16 v2, 0x10

    .line 48
    :cond_0
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_3

    .line 49
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareLocationDrawable;->progress:[F

    aget v1, v1, v0

    cmpl-float v1, v1, v9

    if-ltz v1, :cond_1

    .line 50
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareLocationDrawable;->progress:[F

    const/4 v6, 0x0

    aput v6, v1, v0

    .line 52
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareLocationDrawable;->progress:[F

    aget v6, v1, v0

    long-to-float v7, v2

    const v8, 0x44a28000    # 1300.0f

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    aput v6, v1, v0

    .line 53
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareLocationDrawable;->progress:[F

    aget v1, v1, v0

    cmpl-float v1, v1, v9

    if-lez v1, :cond_2

    .line 54
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareLocationDrawable;->progress:[F

    aput v9, v1, v0

    .line 48
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShareLocationDrawable;->invalidateSelf()V

    .line 58
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 62
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/telegram/ui/Components/ShareLocationDrawable;->isSmall:Z

    if-eqz v12, :cond_0

    const/high16 v12, 0x41f00000    # 30.0f

    :goto_0
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    .line 63
    .local v7, "size":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ShareLocationDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ShareLocationDrawable;->getIntrinsicHeight()I

    move-result v13

    sub-int/2addr v13, v7

    div-int/lit8 v13, v13, 0x2

    add-int v11, v12, v13

    .line 64
    .local v11, "y":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ShareLocationDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ShareLocationDrawable;->getIntrinsicWidth()I

    move-result v13

    sub-int/2addr v13, v7

    div-int/lit8 v13, v13, 0x2

    add-int v10, v12, v13

    .line 66
    .local v10, "x":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ShareLocationDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/ShareLocationDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    add-int/2addr v13, v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Components/ShareLocationDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    add-int/2addr v14, v11

    invoke-virtual {v12, v10, v11, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 67
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ShareLocationDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 69
    const/4 v1, 0x0

    .local v1, "a":I
    :goto_1
    const/4 v12, 0x2

    if-ge v1, v12, :cond_9

    .line 70
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ShareLocationDrawable;->progress:[F

    aget v12, v12, v1

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_1

    .line 69
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 62
    .end local v1    # "a":I
    .end local v7    # "size":I
    .end local v10    # "x":I
    .end local v11    # "y":I
    :cond_0
    const/high16 v12, 0x42f00000    # 120.0f

    goto :goto_0

    .line 73
    .restart local v1    # "a":I
    .restart local v7    # "size":I
    .restart local v10    # "x":I
    .restart local v11    # "y":I
    :cond_1
    const/high16 v12, 0x3f000000    # 0.5f

    const/high16 v13, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Components/ShareLocationDrawable;->progress:[F

    aget v14, v14, v1

    mul-float/2addr v13, v14

    add-float v6, v12, v13

    .line 74
    .local v6, "scale":F
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/telegram/ui/Components/ShareLocationDrawable;->isSmall:Z

    if-eqz v12, :cond_2

    const/high16 v12, 0x40200000    # 2.5f

    :goto_3
    mul-float/2addr v12, v6

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    .line 75
    .local v9, "w":I
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/telegram/ui/Components/ShareLocationDrawable;->isSmall:Z

    if-eqz v12, :cond_3

    const/high16 v12, 0x40d00000    # 6.5f

    :goto_4
    mul-float/2addr v12, v6

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    .line 76
    .local v5, "h":I
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/telegram/ui/Components/ShareLocationDrawable;->isSmall:Z

    if-eqz v12, :cond_4

    const/high16 v12, 0x40c00000    # 6.0f

    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/ShareLocationDrawable;->progress:[F

    aget v13, v13, v1

    mul-float/2addr v12, v13

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    .line 78
    .local v8, "tx":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ShareLocationDrawable;->progress:[F

    aget v12, v12, v1

    const/high16 v13, 0x3f000000    # 0.5f

    cmpg-float v12, v12, v13

    if-gez v12, :cond_5

    .line 79
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ShareLocationDrawable;->progress:[F

    aget v12, v12, v1

    const/high16 v13, 0x3f000000    # 0.5f

    div-float v2, v12, v13

    .line 84
    .local v2, "alpha":F
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/telegram/ui/Components/ShareLocationDrawable;->isSmall:Z

    if-eqz v12, :cond_6

    const/high16 v12, 0x40e00000    # 7.0f

    :goto_7
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v12, v10

    sub-int v3, v12, v8

    .line 85
    .local v3, "cx":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ShareLocationDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int v13, v11, v12

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/telegram/ui/Components/ShareLocationDrawable;->isSmall:Z

    if-eqz v12, :cond_7

    const/4 v12, 0x0

    :goto_8
    sub-int v4, v13, v12

    .line 87
    .local v4, "cy":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ShareLocationDrawable;->drawableLeft:Landroid/graphics/drawable/Drawable;

    const/high16 v13, 0x437f0000    # 255.0f

    mul-float/2addr v13, v2

    float-to-int v13, v13

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 88
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ShareLocationDrawable;->drawableLeft:Landroid/graphics/drawable/Drawable;

    sub-int v13, v3, v9

    sub-int v14, v4, v5

    add-int v15, v3, v9

    add-int v16, v4, v5

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 89
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ShareLocationDrawable;->drawableLeft:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 91
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ShareLocationDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    add-int v13, v10, v12

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/telegram/ui/Components/ShareLocationDrawable;->isSmall:Z

    if-eqz v12, :cond_8

    const/high16 v12, 0x40e00000    # 7.0f

    :goto_9
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    sub-int v12, v13, v12

    add-int v3, v12, v8

    .line 93
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ShareLocationDrawable;->drawableRight:Landroid/graphics/drawable/Drawable;

    const/high16 v13, 0x437f0000    # 255.0f

    mul-float/2addr v13, v2

    float-to-int v13, v13

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 94
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ShareLocationDrawable;->drawableRight:Landroid/graphics/drawable/Drawable;

    sub-int v13, v3, v9

    sub-int v14, v4, v5

    add-int v15, v3, v9

    add-int v16, v4, v5

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 95
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/ShareLocationDrawable;->drawableRight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2

    .line 74
    .end local v2    # "alpha":F
    .end local v3    # "cx":I
    .end local v4    # "cy":I
    .end local v5    # "h":I
    .end local v8    # "tx":I
    .end local v9    # "w":I
    :cond_2
    const/high16 v12, 0x40a00000    # 5.0f

    goto/16 :goto_3

    .line 75
    .restart local v9    # "w":I
    :cond_3
    const/high16 v12, 0x41900000    # 18.0f

    goto/16 :goto_4

    .line 76
    .restart local v5    # "h":I
    :cond_4
    const/high16 v12, 0x41700000    # 15.0f

    goto/16 :goto_5

    .line 81
    .restart local v8    # "tx":I
    :cond_5
    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/ShareLocationDrawable;->progress:[F

    aget v13, v13, v1

    const/high16 v14, 0x3f000000    # 0.5f

    sub-float/2addr v13, v14

    const/high16 v14, 0x3f000000    # 0.5f

    div-float/2addr v13, v14

    sub-float v2, v12, v13

    .restart local v2    # "alpha":F
    goto/16 :goto_6

    .line 84
    :cond_6
    const/high16 v12, 0x42280000    # 42.0f

    goto/16 :goto_7

    .line 85
    .restart local v3    # "cx":I
    :cond_7
    const/high16 v12, 0x40e00000    # 7.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    goto/16 :goto_8

    .line 91
    .restart local v4    # "cy":I
    :cond_8
    const/high16 v12, 0x42280000    # 42.0f

    goto :goto_9

    .line 98
    .end local v2    # "alpha":F
    .end local v3    # "cx":I
    .end local v4    # "cy":I
    .end local v5    # "h":I
    .end local v6    # "scale":F
    .end local v8    # "tx":I
    .end local v9    # "w":I
    :cond_9
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/ShareLocationDrawable;->update()V

    .line 99
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ShareLocationDrawable;->isSmall:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x42200000    # 40.0f

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0

    :cond_0
    const/high16 v0, 0x43340000    # 180.0f

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ShareLocationDrawable;->isSmall:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x42200000    # 40.0f

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0

    :cond_0
    const/high16 v0, 0x42f00000    # 120.0f

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 104
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 108
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareLocationDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 109
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareLocationDrawable;->drawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 110
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareLocationDrawable;->drawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 111
    return-void
.end method
