.class Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$1;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Lorg/telegram/messenger/support/widget/ViewBoundsCheck$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    .prologue
    .line 6887
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$1;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 6900
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$1;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 6890
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$1;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getChildEnd(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 6922
    .line 6923
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    .line 6924
    .local v0, "params":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$1;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getChildStart(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 6915
    .line 6916
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    .line 6917
    .local v0, "params":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$1;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int/2addr v1, v2

    return v1
.end method

.method public getParent()Landroid/view/View;
    .locals 1

    .prologue
    .line 6895
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$1;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    return-object v0
.end method

.method public getParentEnd()I
    .locals 2

    .prologue
    .line 6910
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$1;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$1;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getParentStart()I
    .locals 1

    .prologue
    .line 6905
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$1;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v0

    return v0
.end method
