.class public Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RoundVideoPlayingDrawable.java"


# instance fields
.field private lastUpdateTime:J

.field private paint:Landroid/graphics/Paint;

.field private parentView:Landroid/view/View;

.field private progress1:F

.field private progress1Direction:I

.field private progress2:F

.field private progress2Direction:I

.field private progress3:F

.field private progress3Direction:I

.field private started:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 34
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->lastUpdateTime:J

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->started:Z

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->paint:Landroid/graphics/Paint;

    .line 25
    const v0, 0x3ef0a3d7    # 0.47f

    iput v0, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress1:F

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress2:F

    .line 27
    const v0, 0x3ea3d70a    # 0.32f

    iput v0, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress3:F

    .line 28
    iput v2, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress1Direction:I

    .line 29
    iput v2, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress2Direction:I

    .line 30
    iput v2, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress3Direction:I

    .line 35
    iput-object p1, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->parentView:Landroid/view/View;

    .line 36
    return-void
.end method

.method private update()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 40
    .local v2, "newTime":J
    iget-wide v4, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->lastUpdateTime:J

    sub-long v0, v2, v4

    .line 41
    .local v0, "dt":J
    iput-wide v2, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->lastUpdateTime:J

    .line 42
    const-wide/16 v4, 0x32

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 43
    const-wide/16 v0, 0x32

    .line 45
    :cond_0
    iget v4, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress1:F

    long-to-float v5, v0

    const/high16 v6, 0x43960000    # 300.0f

    div-float/2addr v5, v6

    iget v6, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress1Direction:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress1:F

    .line 46
    iget v4, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress1:F

    cmpl-float v4, v4, v8

    if-lez v4, :cond_4

    .line 47
    iput v9, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress1Direction:I

    .line 48
    iput v8, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress1:F

    .line 54
    :cond_1
    :goto_0
    iget v4, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress2:F

    long-to-float v5, v0

    const/high16 v6, 0x439b0000    # 310.0f

    div-float/2addr v5, v6

    iget v6, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress2Direction:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress2:F

    .line 55
    iget v4, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress2:F

    cmpl-float v4, v4, v8

    if-lez v4, :cond_5

    .line 56
    iput v9, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress2Direction:I

    .line 57
    iput v8, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress2:F

    .line 63
    :cond_2
    :goto_1
    iget v4, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress3:F

    long-to-float v5, v0

    const/high16 v6, 0x43a00000    # 320.0f

    div-float/2addr v5, v6

    iget v6, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress3Direction:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress3:F

    .line 64
    iget v4, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress3:F

    cmpl-float v4, v4, v8

    if-lez v4, :cond_6

    .line 65
    iput v9, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress3Direction:I

    .line 66
    iput v8, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress3:F

    .line 72
    :cond_3
    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->parentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 73
    return-void

    .line 49
    :cond_4
    iget v4, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress1:F

    cmpg-float v4, v4, v7

    if-gez v4, :cond_1

    .line 50
    iput v10, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress1Direction:I

    .line 51
    iput v7, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress1:F

    goto :goto_0

    .line 58
    :cond_5
    iget v4, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress2:F

    cmpg-float v4, v4, v7

    if-gez v4, :cond_2

    .line 59
    iput v10, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress2Direction:I

    .line 60
    iput v7, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress2:F

    goto :goto_1

    .line 67
    :cond_6
    iget v4, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress3:F

    cmpg-float v4, v4, v7

    if-gez v4, :cond_3

    .line 68
    iput v10, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress3Direction:I

    .line 69
    iput v7, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress3:F

    goto :goto_2
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v11, 0x41200000    # 10.0f

    const/high16 v10, 0x40e00000    # 7.0f

    const/high16 v9, 0x40000000    # 2.0f

    .line 93
    iget-object v0, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->paint:Landroid/graphics/Paint;

    const-string/jumbo v1, "chat_mediaTimeText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v7, v0, Landroid/graphics/Rect;->left:I

    .line 95
    .local v7, "x":I
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v8, v0, Landroid/graphics/Rect;->top:I

    .line 96
    .local v8, "y":I
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_0
    const/4 v0, 0x3

    if-ge v6, v0, :cond_0

    .line 97
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v7

    int-to-float v1, v0

    iget v0, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress1:F

    mul-float/2addr v0, v10

    add-float/2addr v0, v9

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v8

    int-to-float v2, v0

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v7

    int-to-float v3, v0

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v8

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 98
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v7

    int-to-float v1, v0

    iget v0, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress2:F

    mul-float/2addr v0, v10

    add-float/2addr v0, v9

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v8

    int-to-float v2, v0

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v7

    int-to-float v3, v0

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v8

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 99
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v7

    int-to-float v1, v0

    iget v0, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress3:F

    mul-float/2addr v0, v10

    add-float/2addr v0, v9

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v8

    int-to-float v2, v0

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v7

    int-to-float v3, v0

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v8

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 96
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 101
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->started:Z

    if-eqz v0, :cond_1

    .line 102
    invoke-direct {p0}, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->update()V

    .line 104
    :cond_1
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 128
    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 123
    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 109
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 114
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 76
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->started:Z

    if-eqz v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->lastUpdateTime:J

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->started:Z

    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->parentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->started:Z

    if-nez v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->started:Z

    goto :goto_0
.end method
