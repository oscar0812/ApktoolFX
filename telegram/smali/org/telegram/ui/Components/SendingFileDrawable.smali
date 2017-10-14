.class public Lorg/telegram/ui/Components/SendingFileDrawable;
.super Lorg/telegram/ui/Components/StatusDrawable;
.source "SendingFileDrawable.java"


# instance fields
.field private isChat:Z

.field private lastUpdateTime:J

.field private progress:F

.field private started:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 17
    invoke-direct {p0}, Lorg/telegram/ui/Components/StatusDrawable;-><init>()V

    .line 19
    iput-boolean v2, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->isChat:Z

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->lastUpdateTime:J

    .line 21
    iput-boolean v2, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->started:Z

    return-void
.end method

.method private update()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 30
    .local v2, "newTime":J
    iget-wide v4, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->lastUpdateTime:J

    sub-long v0, v2, v4

    .line 31
    .local v0, "dt":J
    iput-wide v2, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->lastUpdateTime:J

    .line 32
    const-wide/16 v4, 0x32

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 33
    const-wide/16 v0, 0x32

    .line 35
    :cond_0
    iget v4, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->progress:F

    long-to-float v5, v0

    const/high16 v6, 0x43fa0000    # 500.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->progress:F

    .line 36
    :goto_0
    iget v4, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->progress:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_1

    .line 37
    iget v4, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->progress:F

    sub-float/2addr v4, v7

    iput v4, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->progress:F

    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SendingFileDrawable;->invalidateSelf()V

    .line 40
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v11, 0x437f0000    # 255.0f

    const/high16 v9, 0x41000000    # 8.0f

    const/high16 v8, 0x40e00000    # 7.0f

    const/high16 v10, 0x40a00000    # 5.0f

    const/high16 v7, 0x40800000    # 4.0f

    .line 54
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_0
    const/4 v0, 0x3

    if-ge v6, v0, :cond_6

    .line 55
    if-nez v6, :cond_0

    .line 56
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_statusRecordPaint:Landroid/graphics/Paint;

    iget v2, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->progress:F

    mul-float/2addr v2, v11

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 62
    :goto_1
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    mul-int/2addr v0, v6

    int-to-float v0, v0

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->progress:F

    mul-float/2addr v2, v3

    add-float v1, v0, v2

    .line 63
    .local v1, "side":F
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->isChat:Z

    if-eqz v0, :cond_2

    const/high16 v0, 0x40400000    # 3.0f

    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v2, v0

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    add-float v3, v1, v0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->isChat:Z

    if-eqz v0, :cond_3

    move v0, v8

    :goto_3
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_statusRecordPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 64
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->isChat:Z

    if-eqz v0, :cond_4

    const/high16 v0, 0x41300000    # 11.0f

    :goto_4
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v2, v0

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    add-float v3, v1, v0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->isChat:Z

    if-eqz v0, :cond_5

    move v0, v8

    :goto_5
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_statusRecordPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 54
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 57
    .end local v1    # "side":F
    :cond_0
    const/4 v0, 0x2

    if-ne v6, v0, :cond_1

    .line 58
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_statusRecordPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->progress:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v11

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1

    .line 60
    :cond_1
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_statusRecordPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1

    .restart local v1    # "side":F
    :cond_2
    move v0, v7

    .line 63
    goto :goto_2

    :cond_3
    move v0, v9

    goto :goto_3

    .line 64
    :cond_4
    const/high16 v0, 0x41400000    # 12.0f

    goto :goto_4

    :cond_5
    move v0, v9

    goto :goto_5

    .line 67
    .end local v1    # "side":F
    :cond_6
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->started:Z

    if-eqz v0, :cond_7

    .line 68
    invoke-direct {p0}, Lorg/telegram/ui/Components/SendingFileDrawable;->update()V

    .line 70
    :cond_7
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 94
    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 89
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 75
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 80
    return-void
.end method

.method public setIsChat(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->isChat:Z

    .line 26
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->lastUpdateTime:J

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->started:Z

    .line 45
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SendingFileDrawable;->invalidateSelf()V

    .line 46
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->started:Z

    .line 50
    return-void
.end method
