.class Lorg/telegram/ui/ArticleViewer$12;
.super Landroid/widget/FrameLayout;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer;->setParentActivity(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ArticleViewer;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 2164
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$12;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2167
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer$12;->getMeasuredWidth()I

    move-result v16

    .line 2168
    .local v16, "width":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer$12;->getMeasuredHeight()I

    move-result v10

    .line 2169
    .local v10, "height":I
    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, v16

    int-to-float v4, v0

    int-to-float v5, v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer$12;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$5300(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/Paint;

    move-result-object v6

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2170
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer$12;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$5400(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2200
    :cond_0
    :goto_0
    return-void

    .line 2173
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer$12;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$5400(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v9

    .line 2174
    .local v9, "first":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer$12;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$5400(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v12

    .line 2175
    .local v12, "last":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer$12;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$5400(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getItemCount()I

    move-result v8

    .line 2177
    .local v8, "count":I
    add-int/lit8 v1, v8, -0x2

    if-lt v12, v1, :cond_2

    .line 2178
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer$12;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$5400(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v1

    add-int/lit8 v2, v8, -0x2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v13

    .line 2182
    .local v13, "view":Landroid/view/View;
    :goto_1
    if-eqz v13, :cond_0

    .line 2186
    move/from16 v0, v16

    int-to-float v1, v0

    add-int/lit8 v2, v8, -0x1

    int-to-float v2, v2

    div-float v11, v1, v2

    .line 2188
    .local v11, "itemProgress":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer$12;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$5400(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getChildCount()I

    move-result v7

    .line 2190
    .local v7, "childCount":I
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v14, v1

    .line 2192
    .local v14, "viewHeight":F
    add-int/lit8 v1, v8, -0x2

    if-lt v12, v1, :cond_3

    .line 2193
    add-int/lit8 v1, v8, -0x2

    sub-int/2addr v1, v9

    int-to-float v1, v1

    mul-float/2addr v1, v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$12;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->access$3700(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v1, v2

    div-float v15, v1, v14

    .line 2197
    .local v15, "viewProgress":F
    :goto_2
    int-to-float v1, v9

    mul-float/2addr v1, v11

    add-float v4, v1, v15

    .line 2199
    .local v4, "progress":F
    const/4 v2, 0x0

    const/4 v3, 0x0

    int-to-float v5, v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer$12;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$5500(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/Paint;

    move-result-object v6

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 2180
    .end local v4    # "progress":F
    .end local v7    # "childCount":I
    .end local v11    # "itemProgress":F
    .end local v13    # "view":Landroid/view/View;
    .end local v14    # "viewHeight":F
    .end local v15    # "viewProgress":F
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer$12;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$5400(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v1

    invoke-virtual {v1, v9}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v13

    .restart local v13    # "view":Landroid/view/View;
    goto :goto_1

    .line 2195
    .restart local v7    # "childCount":I
    .restart local v11    # "itemProgress":F
    .restart local v14    # "viewHeight":F
    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ArticleViewer$12;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v5}, Lorg/telegram/ui/ArticleViewer;->access$3700(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RecyclerListView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v14

    div-float/2addr v2, v14

    sub-float/2addr v1, v2

    mul-float v15, v11, v1

    .restart local v15    # "viewProgress":F
    goto :goto_2
.end method
