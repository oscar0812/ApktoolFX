.class Lorg/telegram/ui/ArticleViewer$BlockDividerCell;
.super Landroid/view/View;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockDividerCell"
.end annotation


# instance fields
.field private rect:Landroid/graphics/RectF;

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 5504
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockDividerCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 5505
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 5502
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockDividerCell;->rect:Landroid/graphics/RectF;

    .line 5506
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$12300()Landroid/graphics/Paint;

    move-result-object v1

    if-nez v1, :cond_0

    .line 5507
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$12302(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    .line 5508
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->access$8800(Lorg/telegram/ui/ArticleViewer;)I

    move-result v0

    .line 5509
    .local v0, "color":I
    if-nez v0, :cond_1

    .line 5510
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$12300()Landroid/graphics/Paint;

    move-result-object v1

    const v2, -0x322e2b

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 5517
    .end local v0    # "color":I
    :cond_0
    :goto_0
    return-void

    .line 5511
    .restart local v0    # "color":I
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 5512
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$12300()Landroid/graphics/Paint;

    move-result-object v1

    const v2, -0x3e455b

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 5513
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 5514
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$12300()Landroid/graphics/Paint;

    move-result-object v1

    const v2, -0xbbbbbc

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 5526
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$BlockDividerCell;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v0, v1, 0x3

    .line 5527
    .local v0, "width":I
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockDividerCell;->rect:Landroid/graphics/RectF;

    int-to-float v2, v0

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    mul-int/lit8 v4, v0, 0x2

    int-to-float v4, v4

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 5528
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockDividerCell;->rect:Landroid/graphics/RectF;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$12300()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 5529
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 5521
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/ArticleViewer$BlockDividerCell;->setMeasuredDimension(II)V

    .line 5522
    return-void
.end method
