.class Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$1;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    .prologue
    .line 255
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$1;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$1;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelected:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$1;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->scrollIfNecessary()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$1;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelected:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$1;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$1;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mSelected:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->moveIfNecessary(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 262
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$1;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$1;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 263
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$1;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 265
    :cond_1
    return-void
.end method
