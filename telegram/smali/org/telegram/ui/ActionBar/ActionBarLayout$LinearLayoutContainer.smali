.class public Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;
.super Landroid/widget/LinearLayout;
.source "ActionBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/ActionBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LinearLayoutContainer"
.end annotation


# instance fields
.field private isKeyboardVisible:Z

.field private rect:Landroid/graphics/Rect;

.field final synthetic this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .line 56
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->rect:Landroid/graphics/Rect;

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->setOrientation(I)V

    .line 58
    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    .prologue
    .line 50
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->isKeyboardVisible:Z

    return v0
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 62
    instance-of v5, p2, Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v5, :cond_1

    .line 63
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v3

    .line 84
    :cond_0
    :goto_0
    return v3

    .line 65
    :cond_1
    const/4 v1, 0x0

    .line 66
    .local v1, "actionBarHeight":I
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->getChildCount()I

    move-result v2

    .line 67
    .local v2, "childCount":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    if-ge v0, v2, :cond_4

    .line 68
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 69
    .local v4, "view":Landroid/view/View;
    if-ne v4, p2, :cond_3

    .line 67
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 72
    :cond_3
    instance-of v5, v4, Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    move-object v5, v4

    .line 73
    check-cast v5, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBar;->getCastShadows()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 74
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 79
    .end local v4    # "view":Landroid/view/View;
    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v3

    .line 80
    .local v3, "result":Z
    if-eqz v1, :cond_0

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$000()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 81
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$000()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->getMeasuredWidth()I

    move-result v7

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$000()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    add-int/2addr v8, v1

    invoke-virtual {v5, v6, v1, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 82
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$000()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v3, 0x0

    .line 95
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 97
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 98
    .local v0, "rootView":Landroid/view/View;
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 99
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-eqz v2, :cond_2

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_0
    sub-int v2, v4, v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getViewInset(Landroid/view/View;)I

    move-result v4

    sub-int v1, v2, v4

    .line 100
    .local v1, "usableViewHeight":I
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v4

    sub-int v2, v1, v2

    if-lez v2, :cond_0

    const/4 v3, 0x1

    :cond_0
    iput-boolean v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->isKeyboardVisible:Z

    .line 101
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$100(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$200(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->isKeyboardVisible:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$300(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->isKeyboardVisible:Z

    if-nez v2, :cond_1

    .line 102
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$100(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 103
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$100(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 104
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$102(Lorg/telegram/ui/ActionBar/ActionBarLayout;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 106
    :cond_1
    return-void

    .end local v1    # "usableViewHeight":I
    :cond_2
    move v2, v3

    .line 99
    goto :goto_0
.end method
