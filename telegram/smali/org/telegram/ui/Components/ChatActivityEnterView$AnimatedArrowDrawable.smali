.class Lorg/telegram/ui/Components/ChatActivityEnterView$AnimatedArrowDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ChatActivityEnterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatedArrowDrawable"
.end annotation


# instance fields
.field private animProgress:F

.field private paint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;I)V
    .locals 2
    .param p2, "color"    # I

    .prologue
    .line 3791
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$AnimatedArrowDrawable;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 3788
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$AnimatedArrowDrawable;->path:Landroid/graphics/Path;

    .line 3789
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$AnimatedArrowDrawable;->animProgress:F

    .line 3792
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$AnimatedArrowDrawable;->paint:Landroid/graphics/Paint;

    .line 3793
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$AnimatedArrowDrawable;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3794
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$AnimatedArrowDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3795
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$AnimatedArrowDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3797
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$AnimatedArrowDrawable;->updatePath()V

    .line 3798
    return-void
.end method

.method private updatePath()V
    .locals 7

    .prologue
    const/high16 v6, 0x41400000    # 12.0f

    const/high16 v5, 0x40800000    # 4.0f

    .line 3806
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$AnimatedArrowDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 3807
    iget v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$AnimatedArrowDrawable;->animProgress:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v1, v2

    .line 3808
    .local v0, "p":F
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$AnimatedArrowDrawable;->path:Landroid/graphics/Path;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3809
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$AnimatedArrowDrawable;->path:Landroid/graphics/Path;

    const/high16 v2, 0x41500000    # 13.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3810
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$AnimatedArrowDrawable;->path:Landroid/graphics/Path;

    const/high16 v2, 0x41b80000    # 23.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3811
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 3802
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$AnimatedArrowDrawable;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$AnimatedArrowDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 3803
    return-void
.end method

.method public getAnimationProgress()F
    .locals 1

    .prologue
    .line 3820
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$AnimatedArrowDrawable;->animProgress:F

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 3845
    const/high16 v0, 0x41d00000    # 26.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 3840
    const/high16 v0, 0x41d00000    # 26.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 3835
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 3826
    return-void
.end method

.method public setAnimationProgress(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 3814
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$AnimatedArrowDrawable;->animProgress:F

    .line 3815
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$AnimatedArrowDrawable;->updatePath()V

    .line 3816
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$AnimatedArrowDrawable;->invalidateSelf()V

    .line 3817
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 3831
    return-void
.end method
