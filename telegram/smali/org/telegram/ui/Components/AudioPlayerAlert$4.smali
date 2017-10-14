.class Lorg/telegram/ui/Components/AudioPlayerAlert$4;
.super Lorg/telegram/ui/Components/BackupImageView;
.source "AudioPlayerAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AudioPlayerAlert;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private rect:Landroid/graphics/RectF;

.field final synthetic this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lorg/telegram/ui/Components/AudioPlayerAlert;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 369
    iput-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$4;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    .line 371
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$4;->rect:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 375
    iget-object v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$4;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$2800(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 376
    iget-object v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$4;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert$4;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert$4;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 377
    iget-object v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$4;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert$4;->getRoundRadius()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert$4;->getRoundRadius()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$4;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$2900(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/graphics/Paint;

    move-result-object v7

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 378
    iget-object v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$4;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$1100(Lorg/telegram/ui/Components/AudioPlayerAlert;)F

    move-result v4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert$4;->getScaleX()F

    move-result v5

    div-float/2addr v4, v5

    const/high16 v5, 0x40400000    # 3.0f

    div-float v0, v4, v5

    .line 379
    .local v0, "plusScale":F
    const/high16 v4, 0x427c0000    # 63.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$4;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$1100(Lorg/telegram/ui/Components/AudioPlayerAlert;)F

    move-result v5

    div-float v5, v0, v5

    const/high16 v6, 0x3f800000    # 1.0f

    iget-object v7, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$4;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$1100(Lorg/telegram/ui/Components/AudioPlayerAlert;)F

    move-result v7

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 380
    .local v1, "s":I
    iget-object v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$4;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    div-int/lit8 v5, v1, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v2, v4

    .line 381
    .local v2, "x":I
    iget-object v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$4;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    div-int/lit8 v5, v1, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v3, v4

    .line 382
    .local v3, "y":I
    iget-object v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$4;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$3000(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    add-int v5, v2, v1

    add-int v6, v3, v1

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 383
    iget-object v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$4;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$3000(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 387
    .end local v0    # "plusScale":F
    .end local v1    # "s":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :goto_0
    return-void

    .line 385
    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/BackupImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method
