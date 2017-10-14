.class Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$4;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->postDispatchSwipe(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

.field final synthetic val$anim:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;

.field final synthetic val$swipeDir:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    .prologue
    .line 673
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$4;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iput-object p2, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$4;->val$anim:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;

    iput p3, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$4;->val$swipeDir:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 676
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$4;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$4;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$4;->val$anim:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;

    iget-boolean v1, v1, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$4;->val$anim:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .line 678
    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 679
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$4;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getItemAnimator()Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    .line 683
    .local v0, "animator":Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->isRunning(Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$4;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    .line 684
    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->hasRunningRecoverAnim()Z

    move-result v1

    if-nez v1, :cond_2

    .line 685
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$4;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mCallback:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$4;->val$anim:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;

    iget-object v2, v2, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    iget v3, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$4;->val$swipeDir:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;->onSwiped(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V

    .line 690
    .end local v0    # "animator":Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;
    :cond_1
    :goto_0
    return-void

    .line 687
    .restart local v0    # "animator":Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;
    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$4;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v1, p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
