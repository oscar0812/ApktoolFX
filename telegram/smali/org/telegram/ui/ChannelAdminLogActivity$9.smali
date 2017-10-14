.class Lorg/telegram/ui/ChannelAdminLogActivity$9;
.super Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;
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
.field private final scrollValue:I

.field final synthetic this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

.field private totalDy:F


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V
    .locals 1
    .param p1, "this$0"    # Lorg/telegram/ui/ChannelAdminLogActivity;

    .prologue
    .line 731
    iput-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$9;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 733
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$9;->totalDy:F

    .line 734
    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$9;->scrollValue:I

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Lorg/telegram/messenger/support/widget/RecyclerView;I)V
    .locals 3
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 738
    if-ne p2, v1, :cond_1

    .line 739
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$9;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$3802(Lorg/telegram/ui/ChannelAdminLogActivity;Z)Z

    .line 740
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$9;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$3902(Lorg/telegram/ui/ChannelAdminLogActivity;Z)Z

    .line 746
    :cond_0
    :goto_0
    return-void

    .line 741
    :cond_1
    if-nez p2, :cond_0

    .line 742
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$9;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0, v2}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$3802(Lorg/telegram/ui/ChannelAdminLogActivity;Z)Z

    .line 743
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$9;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0, v2}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$3902(Lorg/telegram/ui/ChannelAdminLogActivity;Z)Z

    .line 744
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$9;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$4000(Lorg/telegram/ui/ChannelAdminLogActivity;Z)V

    goto :goto_0
.end method

.method public onScrolled(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
    .locals 8
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 750
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$9;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$800(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->invalidate()V

    .line 751
    if-eqz p3, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$9;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$3800(Lorg/telegram/ui/ChannelAdminLogActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$9;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$4100(Lorg/telegram/ui/ChannelAdminLogActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 752
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$9;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$4200(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/Cells/ChatActionCell;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 753
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$9;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$4300(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$9;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$4300(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 756
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$9;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$4200(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/Cells/ChatActionCell;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/ChatActionCell;->setTag(Ljava/lang/Object;)V

    .line 757
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$9;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {v0, v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$4302(Lorg/telegram/ui/ChannelAdminLogActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 758
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$9;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$4300(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 759
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$9;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$4300(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-array v1, v6, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$9;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$4200(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/Cells/ChatActionCell;

    move-result-object v2

    const-string/jumbo v3, "alpha"

    new-array v4, v6, [F

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 760
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$9;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$4300(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ChannelAdminLogActivity$9$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelAdminLogActivity$9$1;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity$9;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 768
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$9;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$4300(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 771
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$9;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0, v6}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$4400(Lorg/telegram/ui/ChannelAdminLogActivity;Z)V

    .line 772
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$9;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$3600(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    .line 773
    return-void
.end method
