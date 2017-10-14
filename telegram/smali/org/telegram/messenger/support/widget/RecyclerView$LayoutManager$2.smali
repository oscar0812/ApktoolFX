.class Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$2;
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
    .line 6933
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$2;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 6946
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$2;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 6936
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$2;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getChildEnd(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 6969
    .line 6970
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    .line 6971
    .local v0, "params":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$2;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getChildStart(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 6962
    .line 6963
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    .line 6964
    .local v0, "params":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$2;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v1, v2

    return v1
.end method

.method public getParent()Landroid/view/View;
    .locals 1

    .prologue
    .line 6941
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$2;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    return-object v0
.end method

.method public getParentEnd()I
    .locals 2

    .prologue
    .line 6956
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$2;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$2;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    .line 6957
    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 6956
    return v0
.end method

.method public getParentStart()I
    .locals 1

    .prologue
    .line 6951
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$2;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v0

    return v0
.end method
