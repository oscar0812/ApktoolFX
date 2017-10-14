.class Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$3;
.super Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->select(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

.field final synthetic val$prevSelected:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

.field final synthetic val$swipeDir:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;IIFFFFILorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;
    .param p2, "viewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p3, "animationType"    # I
    .param p4, "actionState"    # I
    .param p5, "startDx"    # F
    .param p6, "startDy"    # F
    .param p7, "targetX"    # F
    .param p8, "targetY"    # F

    .prologue
    .line 609
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$3;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iput p9, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$3;->val$swipeDir:I

    iput-object p10, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$3;->val$prevSelected:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    invoke-direct/range {p0 .. p8}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;-><init>(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;IIFFFF)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/support/v4/animation/ValueAnimatorCompat;)V
    .locals 3
    .param p1, "animation"    # Landroid/support/v4/animation/ValueAnimatorCompat;

    .prologue
    .line 612
    invoke-super {p0, p1}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->onAnimationEnd(Landroid/support/v4/animation/ValueAnimatorCompat;)V

    .line 613
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$3;->mOverridden:Z

    if-eqz v0, :cond_1

    .line 634
    :cond_0
    :goto_0
    return-void

    .line 616
    :cond_1
    iget v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$3;->val$swipeDir:I

    if-gtz v0, :cond_3

    .line 618
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$3;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mCallback:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$3;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$3;->val$prevSelected:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;->clearView(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 631
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$3;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$3;->val$prevSelected:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v0, v1, :cond_0

    .line 632
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$3;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$3;->val$prevSelected:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    goto :goto_0

    .line 622
    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$3;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$3;->val$prevSelected:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 623
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$3;->mIsPendingCleanup:Z

    .line 624
    iget v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$3;->val$swipeDir:I

    if-lez v0, :cond_2

    .line 627
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$3;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$3;->val$swipeDir:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->postDispatchSwipe(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;I)V

    goto :goto_1
.end method
