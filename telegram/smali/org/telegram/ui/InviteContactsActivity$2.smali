.class Lorg/telegram/ui/InviteContactsActivity$2;
.super Landroid/view/ViewGroup;
.source "InviteContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/InviteContactsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/InviteContactsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/InviteContactsActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/InviteContactsActivity;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 333
    iput-object p1, p0, Lorg/telegram/ui/InviteContactsActivity$2;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 372
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 373
    .local v0, "result":Z
    iget-object v1, p0, Lorg/telegram/ui/InviteContactsActivity$2;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v1}, Lorg/telegram/ui/InviteContactsActivity;->access$1300(Lorg/telegram/ui/InviteContactsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    if-eq p2, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/InviteContactsActivity$2;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v1}, Lorg/telegram/ui/InviteContactsActivity;->access$1400(Lorg/telegram/ui/InviteContactsActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v1

    if-ne p2, v1, :cond_1

    .line 374
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/InviteContactsActivity$2;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v1}, Lorg/telegram/ui/InviteContactsActivity;->access$1500(Lorg/telegram/ui/InviteContactsActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/InviteContactsActivity$2;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v2}, Lorg/telegram/ui/InviteContactsActivity;->access$1200(Lorg/telegram/ui/InviteContactsActivity;)Landroid/widget/ScrollView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->drawHeaderShadow(Landroid/graphics/Canvas;I)V

    .line 376
    :cond_1
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v6, 0x0

    .line 361
    iget-object v1, p0, Lorg/telegram/ui/InviteContactsActivity$2;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v1}, Lorg/telegram/ui/InviteContactsActivity;->access$1200(Lorg/telegram/ui/InviteContactsActivity;)Landroid/widget/ScrollView;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/InviteContactsActivity$2;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v2}, Lorg/telegram/ui/InviteContactsActivity;->access$1200(Lorg/telegram/ui/InviteContactsActivity;)Landroid/widget/ScrollView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/InviteContactsActivity$2;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v3}, Lorg/telegram/ui/InviteContactsActivity;->access$1200(Lorg/telegram/ui/InviteContactsActivity;)Landroid/widget/ScrollView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v6, v6, v2, v3}, Landroid/widget/ScrollView;->layout(IIII)V

    .line 362
    iget-object v1, p0, Lorg/telegram/ui/InviteContactsActivity$2;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v1}, Lorg/telegram/ui/InviteContactsActivity;->access$1300(Lorg/telegram/ui/InviteContactsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/InviteContactsActivity$2;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v2}, Lorg/telegram/ui/InviteContactsActivity;->access$1200(Lorg/telegram/ui/InviteContactsActivity;)Landroid/widget/ScrollView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/InviteContactsActivity$2;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v3}, Lorg/telegram/ui/InviteContactsActivity;->access$1300(Lorg/telegram/ui/InviteContactsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/InviteContactsActivity$2;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v4}, Lorg/telegram/ui/InviteContactsActivity;->access$1200(Lorg/telegram/ui/InviteContactsActivity;)Landroid/widget/ScrollView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/InviteContactsActivity$2;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v5}, Lorg/telegram/ui/InviteContactsActivity;->access$1300(Lorg/telegram/ui/InviteContactsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RecyclerListView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v1, v6, v2, v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->layout(IIII)V

    .line 363
    iget-object v1, p0, Lorg/telegram/ui/InviteContactsActivity$2;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v1}, Lorg/telegram/ui/InviteContactsActivity;->access$1400(Lorg/telegram/ui/InviteContactsActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/InviteContactsActivity$2;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v2}, Lorg/telegram/ui/InviteContactsActivity;->access$1200(Lorg/telegram/ui/InviteContactsActivity;)Landroid/widget/ScrollView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v2

    const/high16 v3, 0x42900000    # 72.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/InviteContactsActivity$2;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v3}, Lorg/telegram/ui/InviteContactsActivity;->access$1400(Lorg/telegram/ui/InviteContactsActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EmptyTextProgressView;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/InviteContactsActivity$2;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v4}, Lorg/telegram/ui/InviteContactsActivity;->access$1200(Lorg/telegram/ui/InviteContactsActivity;)Landroid/widget/ScrollView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/InviteContactsActivity$2;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v5}, Lorg/telegram/ui/InviteContactsActivity;->access$1400(Lorg/telegram/ui/InviteContactsActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/EmptyTextProgressView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v1, v6, v2, v3, v4}, Lorg/telegram/ui/Components/EmptyTextProgressView;->layout(IIII)V

    .line 364
    sub-int v1, p5, p3

    iget-object v2, p0, Lorg/telegram/ui/InviteContactsActivity$2;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v2}, Lorg/telegram/ui/InviteContactsActivity;->access$1000(Lorg/telegram/ui/InviteContactsActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    sub-int v0, v1, v2

    .line 365
    .local v0, "y":I
    iget-object v1, p0, Lorg/telegram/ui/InviteContactsActivity$2;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v1}, Lorg/telegram/ui/InviteContactsActivity;->access$1000(Lorg/telegram/ui/InviteContactsActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/InviteContactsActivity$2;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v2}, Lorg/telegram/ui/InviteContactsActivity;->access$1000(Lorg/telegram/ui/InviteContactsActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/InviteContactsActivity$2;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v3}, Lorg/telegram/ui/InviteContactsActivity;->access$1000(Lorg/telegram/ui/InviteContactsActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v1, v6, v0, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 366
    sub-int v1, p5, p3

    iget-object v2, p0, Lorg/telegram/ui/InviteContactsActivity$2;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v2}, Lorg/telegram/ui/InviteContactsActivity;->access$1100(Lorg/telegram/ui/InviteContactsActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    sub-int v0, v1, v2

    .line 367
    iget-object v1, p0, Lorg/telegram/ui/InviteContactsActivity$2;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v1}, Lorg/telegram/ui/InviteContactsActivity;->access$1100(Lorg/telegram/ui/InviteContactsActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/InviteContactsActivity$2;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v2}, Lorg/telegram/ui/InviteContactsActivity;->access$1100(Lorg/telegram/ui/InviteContactsActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/InviteContactsActivity$2;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v3}, Lorg/telegram/ui/InviteContactsActivity;->access$1100(Lorg/telegram/ui/InviteContactsActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v1, v6, v0, v2, v3}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 368
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v7, -0x80000000

    const/high16 v8, 0x40000000    # 2.0f

    .line 336
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 337
    .local v3, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 338
    .local v1, "height":I
    invoke-virtual {p0, v3, v1}, Lorg/telegram/ui/InviteContactsActivity$2;->setMeasuredDimension(II)V

    .line 340
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-nez v4, :cond_0

    if-le v1, v3, :cond_1

    .line 341
    :cond_0
    const/high16 v4, 0x43100000    # 144.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 347
    .local v2, "maxSize":I
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/InviteContactsActivity$2;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v4}, Lorg/telegram/ui/InviteContactsActivity;->access$1000(Lorg/telegram/ui/InviteContactsActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->measure(II)V

    .line 348
    iget-object v4, p0, Lorg/telegram/ui/InviteContactsActivity$2;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v4}, Lorg/telegram/ui/InviteContactsActivity;->access$1100(Lorg/telegram/ui/InviteContactsActivity;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    const/high16 v6, 0x42400000    # 48.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/FrameLayout;->measure(II)V

    .line 349
    iget-object v4, p0, Lorg/telegram/ui/InviteContactsActivity$2;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v4}, Lorg/telegram/ui/InviteContactsActivity;->access$1000(Lorg/telegram/ui/InviteContactsActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 350
    iget-object v4, p0, Lorg/telegram/ui/InviteContactsActivity$2;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v4}, Lorg/telegram/ui/InviteContactsActivity;->access$1000(Lorg/telegram/ui/InviteContactsActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    .line 354
    .local v0, "h":I
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/InviteContactsActivity$2;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v4}, Lorg/telegram/ui/InviteContactsActivity;->access$1200(Lorg/telegram/ui/InviteContactsActivity;)Landroid/widget/ScrollView;

    move-result-object v4

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/ScrollView;->measure(II)V

    .line 355
    iget-object v4, p0, Lorg/telegram/ui/InviteContactsActivity$2;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v4}, Lorg/telegram/ui/InviteContactsActivity;->access$1300(Lorg/telegram/ui/InviteContactsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/InviteContactsActivity$2;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v6}, Lorg/telegram/ui/InviteContactsActivity;->access$1200(Lorg/telegram/ui/InviteContactsActivity;)Landroid/widget/ScrollView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v6

    sub-int v6, v1, v6

    sub-int/2addr v6, v0

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/Components/RecyclerListView;->measure(II)V

    .line 356
    iget-object v4, p0, Lorg/telegram/ui/InviteContactsActivity$2;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v4}, Lorg/telegram/ui/InviteContactsActivity;->access$1400(Lorg/telegram/ui/InviteContactsActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v4

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/InviteContactsActivity$2;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v6}, Lorg/telegram/ui/InviteContactsActivity;->access$1200(Lorg/telegram/ui/InviteContactsActivity;)Landroid/widget/ScrollView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v6

    sub-int v6, v1, v6

    const/high16 v7, 0x42900000    # 72.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/Components/EmptyTextProgressView;->measure(II)V

    .line 357
    return-void

    .line 343
    .end local v0    # "h":I
    .end local v2    # "maxSize":I
    :cond_1
    const/high16 v4, 0x42600000    # 56.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .restart local v2    # "maxSize":I
    goto/16 :goto_0

    .line 352
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/InviteContactsActivity$2;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v4}, Lorg/telegram/ui/InviteContactsActivity;->access$1100(Lorg/telegram/ui/InviteContactsActivity;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    .restart local v0    # "h":I
    goto :goto_1
.end method
