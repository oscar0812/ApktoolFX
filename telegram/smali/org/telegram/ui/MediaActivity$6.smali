.class Lorg/telegram/ui/MediaActivity$6;
.super Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;
.source "MediaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/MediaActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/MediaActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/MediaActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 639
    iput-object p1, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Lorg/telegram/messenger/support/widget/RecyclerView;I)V
    .locals 2
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    const/4 v0, 0x1

    .line 642
    if-ne p2, v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$1600(Lorg/telegram/ui/MediaActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$2000(Lorg/telegram/ui/MediaActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 643
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 645
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    if-eqz p2, :cond_1

    :goto_0
    invoke-static {v1, v0}, Lorg/telegram/ui/MediaActivity;->access$2202(Lorg/telegram/ui/MediaActivity;Z)Z

    .line 646
    return-void

    .line 645
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScrolled(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
    .locals 12
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    const/16 v2, 0x32

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 650
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$1600(Lorg/telegram/ui/MediaActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$2000(Lorg/telegram/ui/MediaActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 678
    :cond_0
    :goto_0
    return-void

    .line 653
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$2300(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v7

    .line 654
    .local v7, "firstVisibleItem":I
    const/4 v0, -0x1

    if-ne v7, v0, :cond_2

    move v9, v3

    .line 655
    .local v9, "visibleItemCount":I
    :goto_1
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v8

    .line 657
    .local v8, "totalItemCount":I
    if-eqz v9, :cond_0

    add-int v0, v7, v9

    add-int/lit8 v1, v8, -0x2

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$2400(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$1000(Lorg/telegram/ui/MediaActivity;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$400(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 659
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$1000(Lorg/telegram/ui/MediaActivity;)I

    move-result v0

    if-nez v0, :cond_3

    .line 660
    const/4 v4, 0x0

    .line 670
    .local v4, "type":I
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$2400(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$1000(Lorg/telegram/ui/MediaActivity;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$300(Lorg/telegram/ui/MediaActivity$SharedMediaData;)[Z

    move-result-object v0

    aget-boolean v0, v0, v3

    if-nez v0, :cond_7

    .line 671
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$2400(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$1000(Lorg/telegram/ui/MediaActivity;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {v0, v5}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$402(Lorg/telegram/ui/MediaActivity$SharedMediaData;Z)Z

    .line 672
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$000(Lorg/telegram/ui/MediaActivity;)J

    move-result-wide v0

    iget-object v6, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v6}, Lorg/telegram/ui/MediaActivity;->access$2400(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v6

    iget-object v10, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v10}, Lorg/telegram/ui/MediaActivity;->access$1000(Lorg/telegram/ui/MediaActivity;)I

    move-result v10

    aget-object v6, v6, v10

    invoke-static {v6}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$200(Lorg/telegram/ui/MediaActivity$SharedMediaData;)[I

    move-result-object v6

    aget v3, v6, v3

    iget-object v6, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v6}, Lorg/telegram/ui/MediaActivity;->access$2500(Lorg/telegram/ui/MediaActivity;)I

    move-result v6

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMedia(JIIIZI)V

    goto/16 :goto_0

    .line 654
    .end local v4    # "type":I
    .end local v8    # "totalItemCount":I
    .end local v9    # "visibleItemCount":I
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$2300(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    sub-int/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/lit8 v9, v0, 0x1

    goto/16 :goto_1

    .line 661
    .restart local v8    # "totalItemCount":I
    .restart local v9    # "visibleItemCount":I
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$1000(Lorg/telegram/ui/MediaActivity;)I

    move-result v0

    if-ne v0, v5, :cond_4

    .line 662
    const/4 v4, 0x1

    .restart local v4    # "type":I
    goto :goto_2

    .line 663
    .end local v4    # "type":I
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$1000(Lorg/telegram/ui/MediaActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 664
    const/4 v4, 0x2

    .restart local v4    # "type":I
    goto :goto_2

    .line 665
    .end local v4    # "type":I
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$1000(Lorg/telegram/ui/MediaActivity;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 666
    const/4 v4, 0x4

    .restart local v4    # "type":I
    goto :goto_2

    .line 668
    .end local v4    # "type":I
    :cond_6
    const/4 v4, 0x3

    .restart local v4    # "type":I
    goto :goto_2

    .line 673
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$2600(Lorg/telegram/ui/MediaActivity;)J

    move-result-wide v0

    const-wide/16 v10, 0x0

    cmp-long v0, v0, v10

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$2400(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$1000(Lorg/telegram/ui/MediaActivity;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$300(Lorg/telegram/ui/MediaActivity$SharedMediaData;)[Z

    move-result-object v0

    aget-boolean v0, v0, v5

    if-nez v0, :cond_0

    .line 674
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$2400(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$1000(Lorg/telegram/ui/MediaActivity;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {v0, v5}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$402(Lorg/telegram/ui/MediaActivity$SharedMediaData;Z)Z

    .line 675
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$2600(Lorg/telegram/ui/MediaActivity;)J

    move-result-wide v0

    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$2400(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v3

    iget-object v6, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v6}, Lorg/telegram/ui/MediaActivity;->access$1000(Lorg/telegram/ui/MediaActivity;)I

    move-result v6

    aget-object v3, v3, v6

    invoke-static {v3}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$200(Lorg/telegram/ui/MediaActivity$SharedMediaData;)[I

    move-result-object v3

    aget v3, v3, v5

    iget-object v6, p0, Lorg/telegram/ui/MediaActivity$6;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v6}, Lorg/telegram/ui/MediaActivity;->access$2700(Lorg/telegram/ui/MediaActivity;)I

    move-result v6

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMedia(JIIIZI)V

    goto/16 :goto_0
.end method
