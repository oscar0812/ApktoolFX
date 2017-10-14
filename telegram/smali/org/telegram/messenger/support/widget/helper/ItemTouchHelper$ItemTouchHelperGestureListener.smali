.class Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemTouchHelperGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;)V
    .locals 0

    .prologue
    .line 2257
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 2258
    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2262
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2267
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    invoke-virtual {v6, p1}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    .line 2268
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2269
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v6, v6, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 2270
    .local v3, "vh":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v3, :cond_0

    .line 2271
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v6, v6, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mCallback:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v7, v7, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v6, v7, v3}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;->hasDragFlag(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2295
    .end local v3    # "vh":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_0
    :goto_0
    return-void

    .line 2274
    .restart local v3    # "vh":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 2278
    .local v2, "pointerId":I
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget v6, v6, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mActivePointerId:I

    if-ne v2, v6, :cond_0

    .line 2279
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget v6, v6, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 2280
    .local v1, "index":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 2281
    .local v4, "x":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 2282
    .local v5, "y":F
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iput v4, v6, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    .line 2283
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iput v5, v6, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    .line 2284
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    const/4 v8, 0x0

    iput v8, v7, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mDy:F

    iput v8, v6, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mDx:F

    .line 2289
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v6, v6, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mCallback:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;->isLongPressDragEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2290
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    const/4 v7, 0x2

    invoke-virtual {v6, v3, v7}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->select(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0
.end method
