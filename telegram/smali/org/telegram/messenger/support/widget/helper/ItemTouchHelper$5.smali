.class Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$5;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Lorg/telegram/messenger/support/widget/RecyclerView$ChildDrawingOrderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->addChildDrawingOrderCallback()V
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
    .line 1264
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$5;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetChildDrawingOrder(II)I
    .locals 3
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 1267
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$5;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    if-nez v1, :cond_1

    .line 1278
    .end local p2    # "i":I
    :cond_0
    :goto_0
    return p2

    .line 1270
    .restart local p2    # "i":I
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$5;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget v0, v1, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 1271
    .local v0, "childPosition":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1272
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$5;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$5;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iget-object v2, v2, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1273
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$5;->this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    iput v0, v1, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 1275
    :cond_2
    add-int/lit8 v1, p1, -0x1

    if-ne p2, v1, :cond_3

    move p2, v0

    .line 1276
    goto :goto_0

    .line 1278
    :cond_3
    if-lt p2, v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method
