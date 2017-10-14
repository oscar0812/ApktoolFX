.class Lorg/telegram/ui/ArticleViewer$RadialProgressView;
.super Ljava/lang/Object;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RadialProgressView"
.end annotation


# instance fields
.field private alpha:F

.field private animatedAlphaValue:F

.field private animatedProgressValue:F

.field private animationProgressStart:F

.field private backgroundState:I

.field private currentProgress:F

.field private currentProgressTime:J

.field private lastUpdateTime:J

.field private parent:Landroid/view/View;

.field private previousBackgroundState:I

.field private progressRect:Landroid/graphics/RectF;

.field private radOffset:F

.field private scale:F

.field private size:I

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Landroid/view/View;)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "parentView"    # Landroid/view/View;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, -0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 6651
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6636
    iput-wide v4, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->lastUpdateTime:J

    .line 6637
    iput v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->radOffset:F

    .line 6638
    iput v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->currentProgress:F

    .line 6639
    iput v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animationProgressStart:F

    .line 6640
    iput-wide v4, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->currentProgressTime:J

    .line 6641
    iput v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animatedProgressValue:F

    .line 6642
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->progressRect:Landroid/graphics/RectF;

    .line 6643
    iput v2, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->backgroundState:I

    .line 6644
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->parent:Landroid/view/View;

    .line 6645
    const/high16 v0, 0x42800000    # 64.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->size:I

    .line 6646
    const/4 v0, -0x2

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->previousBackgroundState:I

    .line 6647
    iput v1, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animatedAlphaValue:F

    .line 6648
    iput v1, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->alpha:F

    .line 6649
    iput v1, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->scale:F

    .line 6652
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$13200()Landroid/view/animation/DecelerateInterpolator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6653
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$13202(Landroid/view/animation/DecelerateInterpolator;)Landroid/view/animation/DecelerateInterpolator;

    .line 6654
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$13302(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    .line 6655
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$13300()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6656
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$13300()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 6657
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$13300()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 6658
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$13300()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 6660
    :cond_0
    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->parent:Landroid/view/View;

    .line 6661
    return-void
.end method

.method static synthetic access$14100(Lorg/telegram/ui/ArticleViewer$RadialProgressView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    .prologue
    .line 6634
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->backgroundState:I

    return v0
.end method

.method private updateAnimation()V
    .locals 13

    .prologue
    const/4 v12, -0x2

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    .line 6664
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 6665
    .local v2, "newTime":J
    iget-wide v6, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->lastUpdateTime:J

    sub-long v0, v2, v6

    .line 6666
    .local v0, "dt":J
    iput-wide v2, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->lastUpdateTime:J

    .line 6668
    iget v5, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animatedProgressValue:F

    cmpl-float v5, v5, v11

    if-eqz v5, :cond_1

    .line 6669
    iget v5, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->radOffset:F

    const-wide/16 v6, 0x168

    mul-long/2addr v6, v0

    long-to-float v6, v6

    const v7, 0x453b8000    # 3000.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->radOffset:F

    .line 6670
    iget v5, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->currentProgress:F

    iget v6, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animationProgressStart:F

    sub-float v4, v5, v6

    .line 6671
    .local v4, "progressDiff":F
    cmpl-float v5, v4, v10

    if-lez v5, :cond_0

    .line 6672
    iget-wide v6, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->currentProgressTime:J

    add-long/2addr v6, v0

    iput-wide v6, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->currentProgressTime:J

    .line 6673
    iget-wide v6, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->currentProgressTime:J

    const-wide/16 v8, 0x12c

    cmp-long v5, v6, v8

    if-ltz v5, :cond_4

    .line 6674
    iget v5, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->currentProgress:F

    iput v5, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animatedProgressValue:F

    .line 6675
    iget v5, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->currentProgress:F

    iput v5, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animationProgressStart:F

    .line 6676
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->currentProgressTime:J

    .line 6681
    :cond_0
    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->parent:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 6683
    .end local v4    # "progressDiff":F
    :cond_1
    iget v5, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animatedProgressValue:F

    cmpl-float v5, v5, v11

    if-ltz v5, :cond_3

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->previousBackgroundState:I

    if-eq v5, v12, :cond_3

    .line 6684
    iget v5, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animatedAlphaValue:F

    long-to-float v6, v0

    const/high16 v7, 0x43480000    # 200.0f

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    iput v5, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animatedAlphaValue:F

    .line 6685
    iget v5, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animatedAlphaValue:F

    cmpg-float v5, v5, v10

    if-gtz v5, :cond_2

    .line 6686
    iput v10, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animatedAlphaValue:F

    .line 6687
    iput v12, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->previousBackgroundState:I

    .line 6689
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->parent:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 6691
    :cond_3
    return-void

    .line 6678
    .restart local v4    # "progressDiff":F
    :cond_4
    iget v5, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animationProgressStart:F

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$13200()Landroid/view/animation/DecelerateInterpolator;

    move-result-object v6

    iget-wide v8, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->currentProgressTime:J

    long-to-float v7, v8

    const/high16 v8, 0x43960000    # 300.0f

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v6

    mul-float/2addr v6, v4

    add-float/2addr v5, v6

    iput v5, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animatedProgressValue:F

    goto :goto_0
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v11, 0x4

    const/4 v4, 0x1

    const/4 v3, -0x2

    const/high16 v5, 0x40800000    # 4.0f

    const/high16 v2, 0x437f0000    # 255.0f

    .line 6725
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->size:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->scale:F

    mul-float/2addr v0, v1

    float-to-int v8, v0

    .line 6726
    .local v8, "sizeScaled":I
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$13400(Lorg/telegram/ui/ArticleViewer;)I

    move-result v0

    sub-int/2addr v0, v8

    div-int/lit8 v9, v0, 0x2

    .line 6727
    .local v9, "x":I
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$13500(Lorg/telegram/ui/ArticleViewer;)I

    move-result v0

    sub-int/2addr v0, v8

    div-int/lit8 v10, v0, 0x2

    .line 6729
    .local v10, "y":I
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->previousBackgroundState:I

    if-ltz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->previousBackgroundState:I

    if-ge v0, v11, :cond_0

    .line 6730
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$13600()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->previousBackgroundState:I

    aget-object v7, v0, v1

    .line 6731
    .local v7, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_0

    .line 6732
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animatedAlphaValue:F

    mul-float/2addr v0, v2

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->alpha:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 6733
    add-int v0, v9, v8

    add-int v1, v10, v8

    invoke-virtual {v7, v9, v10, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6734
    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6738
    .end local v7    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->backgroundState:I

    if-ltz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->backgroundState:I

    if-ge v0, v11, :cond_1

    .line 6739
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$13600()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->backgroundState:I

    aget-object v7, v0, v1

    .line 6740
    .restart local v7    # "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_1

    .line 6741
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->previousBackgroundState:I

    if-eq v0, v3, :cond_4

    .line 6742
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animatedAlphaValue:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, v2

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->alpha:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 6746
    :goto_0
    add-int v0, v9, v8

    add-int v1, v10, v8

    invoke-virtual {v7, v9, v10, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6747
    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6751
    .end local v7    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->backgroundState:I

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->backgroundState:I

    if-eq v0, v4, :cond_2

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->previousBackgroundState:I

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->previousBackgroundState:I

    if-ne v0, v4, :cond_3

    .line 6752
    :cond_2
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    .line 6753
    .local v6, "diff":I
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->previousBackgroundState:I

    if-eq v0, v3, :cond_5

    .line 6754
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$13300()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animatedAlphaValue:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->alpha:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6758
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->progressRect:Landroid/graphics/RectF;

    add-int v1, v9, v6

    int-to-float v1, v1

    add-int v2, v10, v6

    int-to-float v2, v2

    add-int v3, v9, v8

    sub-int/2addr v3, v6

    int-to-float v3, v3

    add-int v4, v10, v8

    sub-int/2addr v4, v6

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 6759
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->progressRect:Landroid/graphics/RectF;

    const/high16 v0, -0x3d4c0000    # -90.0f

    iget v2, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->radOffset:F

    add-float/2addr v2, v0

    const/high16 v0, 0x43b40000    # 360.0f

    iget v3, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animatedProgressValue:F

    mul-float/2addr v0, v3

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/4 v4, 0x0

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$13300()Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 6760
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->updateAnimation()V

    .line 6762
    .end local v6    # "diff":I
    :cond_3
    return-void

    .line 6744
    .restart local v7    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->alpha:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 6756
    .end local v7    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v6    # "diff":I
    :cond_5
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$13300()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->alpha:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1
.end method

.method public setAlpha(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 6717
    iput p1, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->alpha:F

    .line 6718
    return-void
.end method

.method public setBackgroundState(IZ)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "animated"    # Z

    .prologue
    .line 6705
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->lastUpdateTime:J

    .line 6706
    if-eqz p2, :cond_0

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->backgroundState:I

    if-eq v0, p1, :cond_0

    .line 6707
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->backgroundState:I

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->previousBackgroundState:I

    .line 6708
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animatedAlphaValue:F

    .line 6712
    :goto_0
    iput p1, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->backgroundState:I

    .line 6713
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->parent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 6714
    return-void

    .line 6710
    :cond_0
    const/4 v0, -0x2

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->previousBackgroundState:I

    goto :goto_0
.end method

.method public setProgress(FZ)V
    .locals 2
    .param p1, "value"    # F
    .param p2, "animated"    # Z

    .prologue
    .line 6694
    if-nez p2, :cond_0

    .line 6695
    iput p1, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animatedProgressValue:F

    .line 6696
    iput p1, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animationProgressStart:F

    .line 6700
    :goto_0
    iput p1, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->currentProgress:F

    .line 6701
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->currentProgressTime:J

    .line 6702
    return-void

    .line 6698
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animatedProgressValue:F

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animationProgressStart:F

    goto :goto_0
.end method

.method public setScale(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 6721
    iput p1, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->scale:F

    .line 6722
    return-void
.end method
