.class public abstract Lorg/telegram/messenger/support/widget/util/SortedListAdapterCallback;
.super Lorg/telegram/messenger/support/util/SortedList$Callback;
.source "SortedListAdapterCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T2:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/telegram/messenger/support/util/SortedList$Callback",
        "<TT2;>;"
    }
.end annotation


# instance fields
.field final mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V
    .locals 0
    .param p1, "adapter"    # Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    .prologue
    .line 36
    .local p0, "this":Lorg/telegram/messenger/support/widget/util/SortedListAdapterCallback;, "Lorg/telegram/messenger/support/widget/util/SortedListAdapterCallback<TT2;>;"
    invoke-direct {p0}, Lorg/telegram/messenger/support/util/SortedList$Callback;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/util/SortedListAdapterCallback;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    .line 38
    return-void
.end method


# virtual methods
.method public onChanged(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "count"    # I

    .prologue
    .line 57
    .local p0, "this":Lorg/telegram/messenger/support/widget/util/SortedListAdapterCallback;, "Lorg/telegram/messenger/support/widget/util/SortedListAdapterCallback<TT2;>;"
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/util/SortedListAdapterCallback;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 58
    return-void
.end method

.method public onInserted(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "count"    # I

    .prologue
    .line 42
    .local p0, "this":Lorg/telegram/messenger/support/widget/util/SortedListAdapterCallback;, "Lorg/telegram/messenger/support/widget/util/SortedListAdapterCallback<TT2;>;"
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/util/SortedListAdapterCallback;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 43
    return-void
.end method

.method public onMoved(II)V
    .locals 1
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .prologue
    .line 52
    .local p0, "this":Lorg/telegram/messenger/support/widget/util/SortedListAdapterCallback;, "Lorg/telegram/messenger/support/widget/util/SortedListAdapterCallback<TT2;>;"
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/util/SortedListAdapterCallback;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 53
    return-void
.end method

.method public onRemoved(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "count"    # I

    .prologue
    .line 47
    .local p0, "this":Lorg/telegram/messenger/support/widget/util/SortedListAdapterCallback;, "Lorg/telegram/messenger/support/widget/util/SortedListAdapterCallback<TT2;>;"
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/util/SortedListAdapterCallback;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 48
    return-void
.end method
