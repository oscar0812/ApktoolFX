.class Lorg/telegram/ui/ArticleViewer$8;
.super Lorg/telegram/ui/Components/RecyclerListView;
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
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 2070
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$8;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 2073
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/RecyclerListView;->onLayout(ZIIII)V

    .line 2074
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$8;->getChildCount()I

    move-result v3

    .line 2075
    .local v3, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 2076
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ArticleViewer$8;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2077
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/Integer;

    if-eqz v6, :cond_1

    .line 2078
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 2079
    .local v5, "tag":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x5a

    if-ne v6, v7, :cond_1

    .line 2080
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 2081
    .local v1, "bottom":I
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$8;->getMeasuredHeight()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 2082
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$8;->getMeasuredHeight()I

    move-result v4

    .line 2083
    .local v4, "height":I
    const/4 v6, 0x0

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int v7, v4, v7

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v2, v6, v7, v8, v4}, Landroid/view/View;->layout(IIII)V

    .line 2089
    .end local v1    # "bottom":I
    .end local v2    # "child":Landroid/view/View;
    .end local v4    # "height":I
    .end local v5    # "tag":Ljava/lang/Integer;
    :cond_0
    return-void

    .line 2075
    .restart local v2    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
