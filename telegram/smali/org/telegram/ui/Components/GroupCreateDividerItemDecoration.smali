.class public Lorg/telegram/ui/Components/GroupCreateDividerItemDecoration;
.super Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;
.source "GroupCreateDividerItemDecoration.java"


# instance fields
.field private searching:Z

.field private single:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$State;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p4, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 47
    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$State;)V

    .line 52
    const/4 v0, 0x1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 53
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$State;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p3, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 34
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->getWidth()I

    move-result v11

    .line 36
    .local v11, "width":I
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildCount()I

    move-result v1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/GroupCreateDividerItemDecoration;->single:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sub-int v7, v1, v0

    .line 37
    .local v7, "childCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v7, :cond_3

    .line 38
    invoke-virtual {p2, v8}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 39
    .local v6, "child":Landroid/view/View;
    invoke-virtual {p2, v6}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v9

    .line 40
    .local v9, "position":I
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v10

    .line 41
    .local v10, "top":I
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_2
    int-to-float v2, v10

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_2

    const/high16 v0, 0x42900000    # 72.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    :goto_3
    sub-int v0, v11, v0

    int-to-float v3, v0

    int-to-float v4, v10

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 37
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 36
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "childCount":I
    .end local v8    # "i":I
    .end local v9    # "position":I
    .end local v10    # "top":I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 41
    .restart local v6    # "child":Landroid/view/View;
    .restart local v7    # "childCount":I
    .restart local v8    # "i":I
    .restart local v9    # "position":I
    .restart local v10    # "top":I
    :cond_1
    const/high16 v0, 0x42900000    # 72.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v1, v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    .line 43
    .end local v6    # "child":Landroid/view/View;
    .end local v9    # "position":I
    .end local v10    # "top":I
    :cond_3
    return-void
.end method

.method public setSearching(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lorg/telegram/ui/Components/GroupCreateDividerItemDecoration;->searching:Z

    .line 26
    return-void
.end method

.method public setSingle(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lorg/telegram/ui/Components/GroupCreateDividerItemDecoration;->single:Z

    .line 30
    return-void
.end method
