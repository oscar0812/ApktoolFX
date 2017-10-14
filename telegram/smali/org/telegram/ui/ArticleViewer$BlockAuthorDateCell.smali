.class Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;
.super Landroid/view/View;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockAuthorDateCell"
.end annotation


# instance fields
.field private currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

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
    .line 6129
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 6130
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 6125
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->textY:I

    .line 6131
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 6203
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

    if-nez v0, :cond_1

    .line 6213
    :cond_0
    :goto_0
    return-void

    .line 6206
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_0

    .line 6207
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 6208
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->textX:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->textY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6209
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->textLayout:Landroid/text/StaticLayout;

    invoke-static {v0, p1, v1}, Lorg/telegram/ui/ArticleViewer;->access$9400(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Landroid/text/StaticLayout;)V

    .line 6210
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 6211
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 24
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 6146
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 6147
    .local v13, "width":I
    const/4 v7, 0x0

    .line 6149
    .local v7, "height":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

    if-eqz v14, :cond_6

    .line 6150
    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->lastCreatedWidth:I

    if-eq v14, v13, :cond_4

    .line 6152
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;->author:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;->author:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

    move-object/from16 v17, v0

    invoke-static/range {v14 .. v17}, Lorg/telegram/ui/ArticleViewer;->access$12700(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 6155
    .local v5, "author":Ljava/lang/CharSequence;
    instance-of v14, v5, Landroid/text/Spannable;

    if-eqz v14, :cond_0

    move-object v10, v5

    .line 6156
    check-cast v10, Landroid/text/Spannable;

    .line 6157
    .local v10, "spannableAuthor":Landroid/text/Spannable;
    const/4 v14, 0x0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v15

    const-class v16, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v16

    invoke-interface {v10, v14, v15, v0}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/text/style/MetricAffectingSpan;

    .line 6162
    .local v11, "spans":[Landroid/text/style/MetricAffectingSpan;
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;->published_date:I

    if-eqz v14, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 6163
    const-string/jumbo v14, "ArticleDateByAuthor"

    const v15, 0x7f07009d

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->chatFullDate:Lorg/telegram/messenger/time/FastDateFormat;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;->published_date:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x3e8

    mul-long v20, v20, v22

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    aput-object v5, v16, v17

    invoke-static/range {v14 .. v16}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 6170
    .local v12, "text":Ljava/lang/CharSequence;
    :goto_1
    if-eqz v11, :cond_3

    :try_start_0
    array-length v14, v11

    if-lez v14, :cond_3

    .line 6171
    invoke-static {v12, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v8

    .line 6172
    .local v8, "idx":I
    const/4 v14, -0x1

    if-eq v8, v14, :cond_3

    .line 6173
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v14

    invoke-virtual {v14, v12}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v9

    .line 6174
    .local v9, "spannable":Landroid/text/Spannable;
    move-object v12, v9

    .line 6175
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_2
    array-length v14, v11

    if-ge v4, v14, :cond_3

    .line 6176
    aget-object v14, v11, v4

    aget-object v15, v11, v4

    invoke-interface {v10, v15}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v15

    add-int/2addr v15, v8

    aget-object v16, v11, v4

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v16

    add-int v16, v16, v8

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v9, v14, v15, v0, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6175
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 6159
    .end local v4    # "a":I
    .end local v8    # "idx":I
    .end local v9    # "spannable":Landroid/text/Spannable;
    .end local v10    # "spannableAuthor":Landroid/text/Spannable;
    .end local v11    # "spans":[Landroid/text/style/MetricAffectingSpan;
    .end local v12    # "text":Ljava/lang/CharSequence;
    :cond_0
    const/4 v10, 0x0

    .line 6160
    .restart local v10    # "spannableAuthor":Landroid/text/Spannable;
    const/4 v11, 0x0

    .restart local v11    # "spans":[Landroid/text/style/MetricAffectingSpan;
    goto/16 :goto_0

    .line 6164
    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 6165
    const-string/jumbo v14, "ArticleByAuthor"

    const v15, 0x7f07009c

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v5, v16, v17

    invoke-static/range {v14 .. v16}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "text":Ljava/lang/CharSequence;
    goto :goto_1

    .line 6167
    .end local v12    # "text":Ljava/lang/CharSequence;
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v14

    iget-object v14, v14, Lorg/telegram/messenger/LocaleController;->chatFullDate:Lorg/telegram/messenger/time/FastDateFormat;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

    iget v15, v15, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;->published_date:I

    int-to-long v0, v15

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x3e8

    mul-long v16, v16, v18

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "text":Ljava/lang/CharSequence;
    goto :goto_1

    .line 6180
    :catch_0
    move-exception v6

    .line 6181
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 6183
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v15, 0x0

    const/high16 v16, 0x42100000    # 36.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    sub-int v16, v13, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

    move-object/from16 v17, v0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v14, v12, v15, v0, v1}, Lorg/telegram/ui/ArticleViewer;->access$9300(Lorg/telegram/ui/ArticleViewer;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;ILorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/StaticLayout;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->textLayout:Landroid/text/StaticLayout;

    .line 6184
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v14, :cond_4

    .line 6185
    const/high16 v14, 0x41800000    # 16.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v15}, Landroid/text/StaticLayout;->getHeight()I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v7, v14

    .line 6186
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v14}, Lorg/telegram/ui/ArticleViewer;->access$12200(Lorg/telegram/ui/ArticleViewer;)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    .line 6187
    int-to-float v14, v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->textLayout:Landroid/text/StaticLayout;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v15

    sub-float/2addr v14, v15

    const/high16 v15, 0x41800000    # 16.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    sub-float/2addr v14, v15

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    double-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->textX:I

    .line 6198
    .end local v5    # "author":Ljava/lang/CharSequence;
    .end local v10    # "spannableAuthor":Landroid/text/Spannable;
    .end local v11    # "spans":[Landroid/text/style/MetricAffectingSpan;
    .end local v12    # "text":Ljava/lang/CharSequence;
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v7}, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->setMeasuredDimension(II)V

    .line 6199
    return-void

    .line 6189
    .restart local v5    # "author":Ljava/lang/CharSequence;
    .restart local v10    # "spannableAuthor":Landroid/text/Spannable;
    .restart local v11    # "spans":[Landroid/text/style/MetricAffectingSpan;
    .restart local v12    # "text":Ljava/lang/CharSequence;
    :cond_5
    const/high16 v14, 0x41900000    # 18.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->textX:I

    goto :goto_3

    .line 6195
    .end local v5    # "author":Ljava/lang/CharSequence;
    .end local v10    # "spannableAuthor":Landroid/text/Spannable;
    .end local v11    # "spans":[Landroid/text/style/MetricAffectingSpan;
    .end local v12    # "text":Ljava/lang/CharSequence;
    :cond_6
    const/4 v7, 0x1

    goto :goto_3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 6141
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->textLayout:Landroid/text/StaticLayout;

    iget v4, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->textX:I

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->textY:I

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

.method public setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;)V
    .locals 1
    .param p1, "block"    # Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

    .prologue
    .line 6134
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

    .line 6135
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->lastCreatedWidth:I

    .line 6136
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->requestLayout()V

    .line 6137
    return-void
.end method
