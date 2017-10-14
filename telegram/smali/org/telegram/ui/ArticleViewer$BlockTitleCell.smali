.class Lorg/telegram/ui/ArticleViewer$BlockTitleCell;
.super Landroid/view/View;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockTitleCell"
.end annotation


# instance fields
.field private currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;

.field private lastCreatedWidth:I

.field private textLayout:Landroid/text/StaticLayout;

.field private textX:I

.field private textY:I

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 6225
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 6226
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 6222
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->textX:I

    .line 6227
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 6281
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;

    if-nez v0, :cond_1

    .line 6291
    :cond_0
    :goto_0
    return-void

    .line 6284
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_0

    .line 6285
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 6286
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->textX:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->textY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6287
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->textLayout:Landroid/text/StaticLayout;

    invoke-static {v0, p1, v1}, Lorg/telegram/ui/ArticleViewer;->access$9400(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Landroid/text/StaticLayout;)V

    .line 6288
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 6289
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v11, -0x1

    const/high16 v10, 0x41800000    # 16.0f

    const/high16 v9, 0x41000000    # 8.0f

    .line 6242
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 6243
    .local v3, "width":I
    const/4 v2, 0x0

    .line 6245
    .local v2, "height":I
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;

    if-eqz v4, :cond_5

    .line 6246
    iget v4, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->lastCreatedWidth:I

    if-eq v4, v3, :cond_2

    .line 6247
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    const/high16 v7, 0x42100000    # 36.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int v7, v3, v7

    iget-object v8, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;

    invoke-static {v4, v5, v6, v7, v8}, Lorg/telegram/ui/ArticleViewer;->access$9300(Lorg/telegram/ui/ArticleViewer;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;ILorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/StaticLayout;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->textLayout:Landroid/text/StaticLayout;

    .line 6248
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v4, :cond_1

    .line 6249
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 6250
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer;->access$12200(Lorg/telegram/ui/ArticleViewer;)I

    move-result v4

    if-ne v4, v11, :cond_1

    .line 6251
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    .line 6252
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 6253
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v0}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 6254
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lorg/telegram/ui/ArticleViewer;->access$12202(Lorg/telegram/ui/ArticleViewer;I)I

    .line 6258
    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer;->access$12200(Lorg/telegram/ui/ArticleViewer;)I

    move-result v4

    if-ne v4, v11, :cond_1

    .line 6259
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/telegram/ui/ArticleViewer;->access$12202(Lorg/telegram/ui/ArticleViewer;I)I

    .line 6263
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;->first:Z

    if-eqz v4, :cond_4

    .line 6264
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v2, v4

    .line 6265
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iput v4, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->textY:I

    .line 6276
    :cond_2
    :goto_1
    invoke-virtual {p0, v3, v2}, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->setMeasuredDimension(II)V

    .line 6277
    return-void

    .line 6252
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6267
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_4
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iput v4, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->textY:I

    goto :goto_1

    .line 6273
    :cond_5
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 6237
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->textLayout:Landroid/text/StaticLayout;

    iget v4, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->textX:I

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->textY:I

    move-object v1, p1

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/ArticleViewer;->access$9200(Lorg/telegram/ui/ArticleViewer;Landroid/view/MotionEvent;Landroid/view/View;Landroid/text/StaticLayout;II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;)V
    .locals 1
    .param p1, "block"    # Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;

    .prologue
    .line 6230
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;

    .line 6231
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->lastCreatedWidth:I

    .line 6232
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->requestLayout()V

    .line 6233
    return-void
.end method
