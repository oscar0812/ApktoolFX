.class Lorg/telegram/ui/ChannelAdminLogActivity$8;
.super Lorg/telegram/messenger/support/widget/LinearLayoutManager;
.source "ChannelAdminLogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelAdminLogActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelAdminLogActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelAdminLogActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChannelAdminLogActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 714
    iput-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$8;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-direct {p0, p2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public smoothScrollToPosition(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)V
    .locals 2
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p3, "position"    # I

    .prologue
    .line 722
    new-instance v0, Lorg/telegram/messenger/support/widget/LinearSmoothScrollerMiddle;

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/support/widget/LinearSmoothScrollerMiddle;-><init>(Landroid/content/Context;)V

    .line 723
    .local v0, "linearSmoothScroller":Lorg/telegram/messenger/support/widget/LinearSmoothScrollerMiddle;
    invoke-virtual {v0, p3}, Lorg/telegram/messenger/support/widget/LinearSmoothScrollerMiddle;->setTargetPosition(I)V

    .line 724
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChannelAdminLogActivity$8;->startSmoothScroll(Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;)V

    .line 725
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    .prologue
    .line 717
    const/4 v0, 0x0

    return v0
.end method
