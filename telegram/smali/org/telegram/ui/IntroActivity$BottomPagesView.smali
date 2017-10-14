.class Lorg/telegram/ui/IntroActivity$BottomPagesView;
.super Landroid/view/View;
.source "IntroActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/IntroActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BottomPagesView"
.end annotation


# instance fields
.field private animatedProgress:F

.field private currentPage:I

.field private decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private paint:Landroid/graphics/Paint;

.field private progress:F

.field private rect:Landroid/graphics/RectF;

.field private scrollPosition:I

.field final synthetic this$0:Lorg/telegram/ui/IntroActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/IntroActivity;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    iput-object p1, p0, Lorg/telegram/ui/IntroActivity$BottomPagesView;->this$0:Lorg/telegram/ui/IntroActivity;

    .line 83
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 74
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/IntroActivity$BottomPagesView;->paint:Landroid/graphics/Paint;

    .line 78
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/IntroActivity$BottomPagesView;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 79
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/IntroActivity$BottomPagesView;->rect:Landroid/graphics/RectF;

    .line 84
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v7, 0x41300000    # 11.0f

    const/high16 v10, 0x40200000    # 2.5f

    const/4 v9, 0x0

    const/high16 v8, 0x40a00000    # 5.0f

    .line 99
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v1, v3

    .line 100
    .local v1, "d":F
    iget-object v3, p0, Lorg/telegram/ui/IntroActivity$BottomPagesView;->paint:Landroid/graphics/Paint;

    const v4, -0x444445

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    iget-object v3, p0, Lorg/telegram/ui/IntroActivity$BottomPagesView;->this$0:Lorg/telegram/ui/IntroActivity;

    invoke-static {v3}, Lorg/telegram/ui/IntroActivity;->access$000(Lorg/telegram/ui/IntroActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/IntroActivity$BottomPagesView;->currentPage:I

    .line 103
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    const/4 v3, 0x6

    if-ge v0, v3, :cond_1

    .line 104
    iget v3, p0, Lorg/telegram/ui/IntroActivity$BottomPagesView;->currentPage:I

    if-ne v0, v3, :cond_0

    .line 103
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_0
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    mul-int v2, v0, v3

    .line 108
    .local v2, "x":I
    iget-object v3, p0, Lorg/telegram/ui/IntroActivity$BottomPagesView;->rect:Landroid/graphics/RectF;

    int-to-float v4, v2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v5, v2

    int-to-float v5, v5

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v3, v4, v9, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 109
    iget-object v3, p0, Lorg/telegram/ui/IntroActivity$BottomPagesView;->rect:Landroid/graphics/RectF;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/IntroActivity$BottomPagesView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 111
    .end local v2    # "x":I
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/IntroActivity$BottomPagesView;->paint:Landroid/graphics/Paint;

    const v4, -0xd35a20

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    iget v3, p0, Lorg/telegram/ui/IntroActivity$BottomPagesView;->currentPage:I

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    mul-int v2, v3, v4

    .line 113
    .restart local v2    # "x":I
    iget v3, p0, Lorg/telegram/ui/IntroActivity$BottomPagesView;->progress:F

    cmpl-float v3, v3, v9

    if-eqz v3, :cond_3

    .line 114
    iget v3, p0, Lorg/telegram/ui/IntroActivity$BottomPagesView;->scrollPosition:I

    iget v4, p0, Lorg/telegram/ui/IntroActivity$BottomPagesView;->currentPage:I

    if-lt v3, v4, :cond_2

    .line 115
    iget-object v3, p0, Lorg/telegram/ui/IntroActivity$BottomPagesView;->rect:Landroid/graphics/RectF;

    int-to-float v4, v2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v5, v2

    int-to-float v5, v5

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lorg/telegram/ui/IntroActivity$BottomPagesView;->progress:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v3, v4, v9, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 122
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/IntroActivity$BottomPagesView;->rect:Landroid/graphics/RectF;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/IntroActivity$BottomPagesView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 123
    return-void

    .line 117
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/IntroActivity$BottomPagesView;->rect:Landroid/graphics/RectF;

    int-to-float v4, v2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    iget v7, p0, Lorg/telegram/ui/IntroActivity$BottomPagesView;->progress:F

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v5, v2

    int-to-float v5, v5

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v3, v4, v9, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_2

    .line 120
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/IntroActivity$BottomPagesView;->rect:Landroid/graphics/RectF;

    int-to-float v4, v2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v5, v2

    int-to-float v5, v5

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v3, v4, v9, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_2
.end method

.method public setCurrentPage(I)V
    .locals 0
    .param p1, "page"    # I

    .prologue
    .line 93
    iput p1, p0, Lorg/telegram/ui/IntroActivity$BottomPagesView;->currentPage:I

    .line 94
    invoke-virtual {p0}, Lorg/telegram/ui/IntroActivity$BottomPagesView;->invalidate()V

    .line 95
    return-void
.end method

.method public setPageOffset(IF)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "offset"    # F

    .prologue
    .line 87
    iput p2, p0, Lorg/telegram/ui/IntroActivity$BottomPagesView;->progress:F

    .line 88
    iput p1, p0, Lorg/telegram/ui/IntroActivity$BottomPagesView;->scrollPosition:I

    .line 89
    invoke-virtual {p0}, Lorg/telegram/ui/IntroActivity$BottomPagesView;->invalidate()V

    .line 90
    return-void
.end method
