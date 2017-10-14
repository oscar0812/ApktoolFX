.class public Lorg/telegram/ui/Components/RoundStatusDrawable;
.super Lorg/telegram/ui/Components/StatusDrawable;
.source "RoundStatusDrawable.java"


# instance fields
.field private isChat:Z

.field private lastUpdateTime:J

.field private progress:F

.field private progressDirection:I

.field private started:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 17
    invoke-direct {p0}, Lorg/telegram/ui/Components/StatusDrawable;-><init>()V

    .line 19
    iput-boolean v2, p0, Lorg/telegram/ui/Components/RoundStatusDrawable;->isChat:Z

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Components/RoundStatusDrawable;->lastUpdateTime:J

    .line 21
    iput-boolean v2, p0, Lorg/telegram/ui/Components/RoundStatusDrawable;->started:Z

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/RoundStatusDrawable;->progressDirection:I

    return-void
.end method

.method private update()V
    .locals 10

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 31
    .local v2, "newTime":J
    iget-wide v4, p0, Lorg/telegram/ui/Components/RoundStatusDrawable;->lastUpdateTime:J

    sub-long v0, v2, v4

    .line 32
    .local v0, "dt":J
    iput-wide v2, p0, Lorg/telegram/ui/Components/RoundStatusDrawable;->lastUpdateTime:J

    .line 33
    const-wide/16 v4, 0x32

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 34
    const-wide/16 v0, 0x32

    .line 36
    :cond_0
    iget v4, p0, Lorg/telegram/ui/Components/RoundStatusDrawable;->progress:F

    iget v5, p0, Lorg/telegram/ui/Components/RoundStatusDrawable;->progressDirection:I

    int-to-long v6, v5

    mul-long/2addr v6, v0

    long-to-float v5, v6

    const/high16 v6, 0x43c80000    # 400.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, p0, Lorg/telegram/ui/Components/RoundStatusDrawable;->progress:F

    .line 37
    iget v4, p0, Lorg/telegram/ui/Components/RoundStatusDrawable;->progressDirection:I

    if-lez v4, :cond_2

    iget v4, p0, Lorg/telegram/ui/Components/RoundStatusDrawable;->progress:F

    cmpl-float v4, v4, v9

    if-ltz v4, :cond_2

    .line 38
    const/4 v4, -0x1

    iput v4, p0, Lorg/telegram/ui/Components/RoundStatusDrawable;->progressDirection:I

    .line 39
    iput v9, p0, Lorg/telegram/ui/Components/RoundStatusDrawable;->progress:F

    .line 44
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RoundStatusDrawable;->invalidateSelf()V

    .line 45
    return-void

    .line 40
    :cond_2
    iget v4, p0, Lorg/telegram/ui/Components/RoundStatusDrawable;->progressDirection:I

    if-gez v4, :cond_1

    iget v4, p0, Lorg/telegram/ui/Components/RoundStatusDrawable;->progress:F

    cmpg-float v4, v4, v8

    if-gtz v4, :cond_1

    .line 41
    const/4 v4, 0x1

    iput v4, p0, Lorg/telegram/ui/Components/RoundStatusDrawable;->progressDirection:I

    .line 42
    iput v8, p0, Lorg/telegram/ui/Components/RoundStatusDrawable;->progress:F

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 59
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_statusPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x43480000    # 200.0f

    iget v2, p0, Lorg/telegram/ui/Components/RoundStatusDrawable;->progress:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x37

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 60
    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v1, v0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RoundStatusDrawable;->isChat:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x41000000    # 8.0f

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_statusPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 61
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RoundStatusDrawable;->started:Z

    if-eqz v0, :cond_0

    .line 62
    invoke-direct {p0}, Lorg/telegram/ui/Components/RoundStatusDrawable;->update()V

    .line 64
    :cond_0
    return-void

    .line 60
    :cond_1
    const/high16 v0, 0x41100000    # 9.0f

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 88
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 83
    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 69
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 74
    return-void
.end method

.method public setIsChat(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RoundStatusDrawable;->isChat:Z

    .line 27
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/RoundStatusDrawable;->lastUpdateTime:J

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/RoundStatusDrawable;->started:Z

    .line 50
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RoundStatusDrawable;->invalidateSelf()V

    .line 51
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/RoundStatusDrawable;->started:Z

    .line 55
    return-void
.end method
