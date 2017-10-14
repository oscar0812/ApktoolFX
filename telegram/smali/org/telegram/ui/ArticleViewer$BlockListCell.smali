.class Lorg/telegram/ui/ArticleViewer$BlockListCell;
.super Landroid/view/View;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockListCell"
.end annotation


# instance fields
.field private currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

.field private hasRtl:Z

.field private lastCreatedWidth:I

.field private maxLetterWidth:I

.field private textLayouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/StaticLayout;",
            ">;"
        }
    .end annotation
.end field

.field private textNumLayouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/StaticLayout;",
            ">;"
        }
    .end annotation
.end field

.field private textX:I

.field private textYLayouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 5312
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 5313
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 5301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->textLayouts:Ljava/util/ArrayList;

    .line 5302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->textNumLayouts:Ljava/util/ArrayList;

    .line 5303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->textYLayouts:Ljava/util/ArrayList;

    .line 5314
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v8, 0x41900000    # 18.0f

    .line 5412
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    if-nez v5, :cond_1

    .line 5438
    :cond_0
    return-void

    .line 5415
    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->textLayouts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5416
    .local v1, "count":I
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$BlockListCell;->getMeasuredWidth()I

    move-result v4

    .line 5417
    .local v4, "width":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 5418
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->textLayouts:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/StaticLayout;

    .line 5419
    .local v2, "textLayout":Landroid/text/StaticLayout;
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->textNumLayouts:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/StaticLayout;

    .line 5420
    .local v3, "textLayout2":Landroid/text/StaticLayout;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5421
    iget-boolean v5, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->hasRtl:Z

    if-eqz v5, :cond_4

    .line 5422
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int v5, v4, v5

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    sub-int/2addr v5, v6

    int-to-float v6, v5

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->textYLayouts:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5426
    :goto_1
    if-eqz v3, :cond_2

    .line 5427
    invoke-virtual {v3, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 5429
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 5430
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5431
    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->textX:I

    int-to-float v6, v5

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->textYLayouts:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5432
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v5, p1, v2}, Lorg/telegram/ui/ArticleViewer;->access$9400(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Landroid/text/StaticLayout;)V

    .line 5433
    if-eqz v2, :cond_3

    .line 5434
    invoke-virtual {v2, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 5436
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 5417
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5424
    :cond_4
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v6, v5

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->textYLayouts:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 5337
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 5338
    .local v8, "width":I
    const/4 v3, 0x0

    .line 5339
    .local v3, "height":I
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->hasRtl:Z

    .line 5340
    const/4 v9, 0x0

    iput v9, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->maxLetterWidth:I

    .line 5342
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    if-eqz v9, :cond_b

    .line 5343
    iget v9, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->lastCreatedWidth:I

    if-eq v9, v8, :cond_9

    .line 5344
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->textLayouts:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 5345
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->textYLayouts:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 5346
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->textNumLayouts:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 5347
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;->items:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 5349
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v2, :cond_6

    .line 5350
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;->items:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$RichText;

    .line 5351
    .local v4, "item":Lorg/telegram/tgnet/TLRPC$RichText;
    if-nez v0, :cond_0

    .line 5352
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v10, 0x0

    const/high16 v11, 0x41c00000    # 24.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    sub-int v11, v8, v11

    iget v12, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->maxLetterWidth:I

    sub-int/2addr v11, v12

    iget-object v12, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    invoke-static {v9, v10, v4, v11, v12}, Lorg/telegram/ui/ArticleViewer;->access$9300(Lorg/telegram/ui/ArticleViewer;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;ILorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/StaticLayout;

    move-result-object v7

    .line 5353
    .local v7, "textLayout":Landroid/text/StaticLayout;
    if-eqz v7, :cond_0

    .line 5354
    invoke-virtual {v7}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v5

    .line 5355
    .local v5, "lCount":I
    const/4 v1, 0x0

    .local v1, "b":I
    :goto_1
    if-ge v1, v5, :cond_0

    .line 5356
    invoke-virtual {v7, v1}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v9

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_2

    .line 5357
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->hasRtl:Z

    .line 5358
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lorg/telegram/ui/ArticleViewer;->access$12202(Lorg/telegram/ui/ArticleViewer;I)I

    .line 5365
    .end local v1    # "b":I
    .end local v5    # "lCount":I
    .end local v7    # "textLayout":Landroid/text/StaticLayout;
    :cond_0
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;->ordered:Z

    if-eqz v9, :cond_4

    .line 5366
    iget-boolean v9, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->hasRtl:Z

    if-eqz v9, :cond_3

    .line 5367
    const-string/jumbo v9, ".%d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    add-int/lit8 v12, v0, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 5374
    .local v6, "num":Ljava/lang/String;
    :goto_2
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/high16 v10, 0x42580000    # 54.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int v10, v8, v10

    iget-object v11, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    invoke-static {v9, v6, v4, v10, v11}, Lorg/telegram/ui/ArticleViewer;->access$9300(Lorg/telegram/ui/ArticleViewer;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;ILorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/StaticLayout;

    move-result-object v7

    .line 5375
    .restart local v7    # "textLayout":Landroid/text/StaticLayout;
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->textNumLayouts:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5376
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;->ordered:Z

    if-eqz v9, :cond_5

    .line 5377
    if-eqz v7, :cond_1

    .line 5378
    iget v9, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->maxLetterWidth:I

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v10

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->maxLetterWidth:I

    .line 5349
    :cond_1
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 5355
    .end local v6    # "num":Ljava/lang/String;
    .restart local v1    # "b":I
    .restart local v5    # "lCount":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5369
    .end local v1    # "b":I
    .end local v5    # "lCount":I
    .end local v7    # "textLayout":Landroid/text/StaticLayout;
    :cond_3
    const-string/jumbo v9, "%d."

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    add-int/lit8 v12, v0, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "num":Ljava/lang/String;
    goto :goto_2

    .line 5372
    .end local v6    # "num":Ljava/lang/String;
    :cond_4
    const-string/jumbo v6, "\u2022"

    .restart local v6    # "num":Ljava/lang/String;
    goto :goto_2

    .line 5380
    .restart local v7    # "textLayout":Landroid/text/StaticLayout;
    :cond_5
    if-nez v0, :cond_1

    .line 5381
    const/high16 v9, 0x41400000    # 12.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    iput v9, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->maxLetterWidth:I

    goto :goto_3

    .line 5385
    .end local v4    # "item":Lorg/telegram/tgnet/TLRPC$RichText;
    .end local v6    # "num":Ljava/lang/String;
    .end local v7    # "textLayout":Landroid/text/StaticLayout;
    :cond_6
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_8

    .line 5386
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;->items:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$RichText;

    .line 5387
    .restart local v4    # "item":Lorg/telegram/tgnet/TLRPC$RichText;
    const/high16 v9, 0x41000000    # 8.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v3, v9

    .line 5388
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v10, 0x0

    const/high16 v11, 0x42280000    # 42.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    sub-int v11, v8, v11

    iget v12, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->maxLetterWidth:I

    sub-int/2addr v11, v12

    iget-object v12, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    invoke-static {v9, v10, v4, v11, v12}, Lorg/telegram/ui/ArticleViewer;->access$9300(Lorg/telegram/ui/ArticleViewer;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;ILorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/StaticLayout;

    move-result-object v7

    .line 5389
    .restart local v7    # "textLayout":Landroid/text/StaticLayout;
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->textYLayouts:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5390
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->textLayouts:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5391
    if-eqz v7, :cond_7

    .line 5392
    invoke-virtual {v7}, Landroid/text/StaticLayout;->getHeight()I

    move-result v9

    add-int/2addr v3, v9

    .line 5385
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 5395
    .end local v4    # "item":Lorg/telegram/tgnet/TLRPC$RichText;
    .end local v7    # "textLayout":Landroid/text/StaticLayout;
    :cond_8
    iget-boolean v9, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->hasRtl:Z

    if-eqz v9, :cond_a

    .line 5396
    const/high16 v9, 0x41900000    # 18.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    iput v9, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->textX:I

    .line 5400
    :goto_5
    const/high16 v9, 0x41000000    # 8.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v3, v9

    .line 5407
    .end local v0    # "a":I
    .end local v2    # "count":I
    :cond_9
    :goto_6
    invoke-virtual {p0, v8, v3}, Lorg/telegram/ui/ArticleViewer$BlockListCell;->setMeasuredDimension(II)V

    .line 5408
    return-void

    .line 5398
    .restart local v0    # "a":I
    .restart local v2    # "count":I
    :cond_a
    const/high16 v9, 0x41c00000    # 24.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    iget v10, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->maxLetterWidth:I

    add-int/2addr v9, v10

    iput v9, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->textX:I

    goto :goto_5

    .line 5404
    .end local v0    # "a":I
    .end local v2    # "count":I
    :cond_b
    const/4 v3, 0x1

    goto :goto_6
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5324
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->textLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 5325
    .local v7, "count":I
    const/high16 v0, 0x42100000    # 36.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    .line 5326
    .local v4, "textX":I
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_0
    if-ge v6, v7, :cond_1

    .line 5327
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->textLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/StaticLayout;

    .line 5328
    .local v3, "textLayout":Landroid/text/StaticLayout;
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->textYLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v1, p1

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/ArticleViewer;->access$9200(Lorg/telegram/ui/ArticleViewer;Landroid/view/MotionEvent;Landroid/view/View;Landroid/text/StaticLayout;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5329
    const/4 v0, 0x1

    .line 5332
    .end local v3    # "textLayout":Landroid/text/StaticLayout;
    :goto_1
    return v0

    .line 5326
    .restart local v3    # "textLayout":Landroid/text/StaticLayout;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 5332
    .end local v3    # "textLayout":Landroid/text/StaticLayout;
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;)V
    .locals 1
    .param p1, "block"    # Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    .prologue
    .line 5317
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    .line 5318
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockListCell;->lastCreatedWidth:I

    .line 5319
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$BlockListCell;->requestLayout()V

    .line 5320
    return-void
.end method
