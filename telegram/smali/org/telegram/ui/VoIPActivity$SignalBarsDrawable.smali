.class Lorg/telegram/ui/VoIPActivity$SignalBarsDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "VoIPActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/VoIPActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SignalBarsDrawable"
.end annotation


# instance fields
.field private barHeights:[I

.field private offsetStart:I

.field private paint:Landroid/graphics/Paint;

.field private rect:Landroid/graphics/RectF;

.field final synthetic this$0:Lorg/telegram/ui/VoIPActivity;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/VoIPActivity;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1464
    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity$SignalBarsDrawable;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 1466
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    aput v2, v0, v1

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    aput v1, v0, v3

    const/4 v1, 0x2

    const/high16 v2, 0x41100000    # 9.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    aput v2, v0, v1

    iput-object v0, p0, Lorg/telegram/ui/VoIPActivity$SignalBarsDrawable;->barHeights:[I

    .line 1467
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/VoIPActivity$SignalBarsDrawable;->paint:Landroid/graphics/Paint;

    .line 1468
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/VoIPActivity$SignalBarsDrawable;->rect:Landroid/graphics/RectF;

    .line 1469
    const/4 v0, 0x6

    iput v0, p0, Lorg/telegram/ui/VoIPActivity$SignalBarsDrawable;->offsetStart:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/VoIPActivity;Lorg/telegram/ui/VoIPActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/telegram/ui/VoIPActivity;
    .param p2, "x1"    # Lorg/telegram/ui/VoIPActivity$1;

    .prologue
    .line 1464
    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPActivity$SignalBarsDrawable;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const v8, 0x3e99999a    # 0.3f

    .line 1473
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$SignalBarsDrawable;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v3}, Lorg/telegram/ui/VoIPActivity;->access$2400(Lorg/telegram/ui/VoIPActivity;)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$SignalBarsDrawable;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v3}, Lorg/telegram/ui/VoIPActivity;->access$2400(Lorg/telegram/ui/VoIPActivity;)I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    .line 1483
    :cond_0
    return-void

    .line 1475
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$SignalBarsDrawable;->paint:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1476
    invoke-virtual {p0}, Lorg/telegram/ui/VoIPActivity$SignalBarsDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v4, v3, Landroid/graphics/Rect;->left:I

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int v1, v4, v3

    .line 1477
    .local v1, "x":I
    invoke-virtual {p0}, Lorg/telegram/ui/VoIPActivity$SignalBarsDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v2, v3, Landroid/graphics/Rect;->top:I

    .line 1478
    .local v2, "y":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    .line 1479
    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity$SignalBarsDrawable;->paint:Landroid/graphics/Paint;

    add-int/lit8 v3, v0, 0x1

    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity$SignalBarsDrawable;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v5}, Lorg/telegram/ui/VoIPActivity;->access$4100(Lorg/telegram/ui/VoIPActivity;)I

    move-result v5

    if-gt v3, v5, :cond_3

    const/16 v3, 0xf2

    :goto_2
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1480
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$SignalBarsDrawable;->rect:Landroid/graphics/RectF;

    mul-int/lit8 v4, v0, 0x4

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v1

    int-to-float v4, v4

    invoke-virtual {p0}, Lorg/telegram/ui/VoIPActivity$SignalBarsDrawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lorg/telegram/ui/VoIPActivity$SignalBarsDrawable;->barHeights:[I

    aget v6, v6, v0

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    mul-int/2addr v6, v0

    add-int/2addr v6, v1

    const/high16 v7, 0x40400000    # 3.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p0}, Lorg/telegram/ui/VoIPActivity$SignalBarsDrawable;->getIntrinsicHeight()I

    move-result v7

    add-int/2addr v7, v2

    int-to-float v7, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1481
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$SignalBarsDrawable;->rect:Landroid/graphics/RectF;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/VoIPActivity$SignalBarsDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1478
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1476
    .end local v0    # "i":I
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_2
    iget v3, p0, Lorg/telegram/ui/VoIPActivity$SignalBarsDrawable;->offsetStart:I

    int-to-float v3, v3

    goto :goto_0

    .line 1479
    .restart local v0    # "i":I
    .restart local v1    # "x":I
    .restart local v2    # "y":I
    :cond_3
    const/16 v3, 0x66

    goto :goto_2
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 1502
    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 1497
    iget v0, p0, Lorg/telegram/ui/VoIPActivity$SignalBarsDrawable;->offsetStart:I

    add-int/lit8 v0, v0, 0xf

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 1507
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    .prologue
    .line 1488
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1493
    return-void
.end method
