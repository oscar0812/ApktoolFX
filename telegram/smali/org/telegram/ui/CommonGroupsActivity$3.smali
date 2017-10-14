.class Lorg/telegram/ui/CommonGroupsActivity$3;
.super Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;
.source "CommonGroupsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CommonGroupsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/CommonGroupsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CommonGroupsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/CommonGroupsActivity;

    .prologue
    .line 112
    iput-object p1, p0, Lorg/telegram/ui/CommonGroupsActivity$3;->this$0:Lorg/telegram/ui/CommonGroupsActivity;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
    .locals 6
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 115
    iget-object v3, p0, Lorg/telegram/ui/CommonGroupsActivity$3;->this$0:Lorg/telegram/ui/CommonGroupsActivity;

    invoke-static {v3}, Lorg/telegram/ui/CommonGroupsActivity;->access$100(Lorg/telegram/ui/CommonGroupsActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 116
    .local v0, "firstVisibleItem":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    const/4 v2, 0x0

    .line 117
    .local v2, "visibleItemCount":I
    :goto_0
    if-lez v2, :cond_0

    .line 118
    iget-object v3, p0, Lorg/telegram/ui/CommonGroupsActivity$3;->this$0:Lorg/telegram/ui/CommonGroupsActivity;

    invoke-static {v3}, Lorg/telegram/ui/CommonGroupsActivity;->access$200(Lorg/telegram/ui/CommonGroupsActivity;)Lorg/telegram/ui/CommonGroupsActivity$ListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/CommonGroupsActivity$ListAdapter;->getItemCount()I

    move-result v1

    .line 119
    .local v1, "totalItemCount":I
    iget-object v3, p0, Lorg/telegram/ui/CommonGroupsActivity$3;->this$0:Lorg/telegram/ui/CommonGroupsActivity;

    invoke-static {v3}, Lorg/telegram/ui/CommonGroupsActivity;->access$300(Lorg/telegram/ui/CommonGroupsActivity;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/CommonGroupsActivity$3;->this$0:Lorg/telegram/ui/CommonGroupsActivity;

    invoke-static {v3}, Lorg/telegram/ui/CommonGroupsActivity;->access$400(Lorg/telegram/ui/CommonGroupsActivity;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/CommonGroupsActivity$3;->this$0:Lorg/telegram/ui/CommonGroupsActivity;

    invoke-static {v3}, Lorg/telegram/ui/CommonGroupsActivity;->access$000(Lorg/telegram/ui/CommonGroupsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    add-int v3, v0, v2

    add-int/lit8 v4, v1, -0x5

    if-lt v3, v4, :cond_0

    .line 120
    iget-object v4, p0, Lorg/telegram/ui/CommonGroupsActivity$3;->this$0:Lorg/telegram/ui/CommonGroupsActivity;

    iget-object v3, p0, Lorg/telegram/ui/CommonGroupsActivity$3;->this$0:Lorg/telegram/ui/CommonGroupsActivity;

    invoke-static {v3}, Lorg/telegram/ui/CommonGroupsActivity;->access$000(Lorg/telegram/ui/CommonGroupsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v5, p0, Lorg/telegram/ui/CommonGroupsActivity$3;->this$0:Lorg/telegram/ui/CommonGroupsActivity;

    invoke-static {v5}, Lorg/telegram/ui/CommonGroupsActivity;->access$000(Lorg/telegram/ui/CommonGroupsActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Chat;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    const/16 v5, 0x64

    invoke-static {v4, v3, v5}, Lorg/telegram/ui/CommonGroupsActivity;->access$500(Lorg/telegram/ui/CommonGroupsActivity;II)V

    .line 123
    .end local v1    # "totalItemCount":I
    :cond_0
    return-void

    .line 116
    .end local v2    # "visibleItemCount":I
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/CommonGroupsActivity$3;->this$0:Lorg/telegram/ui/CommonGroupsActivity;

    invoke-static {v3}, Lorg/telegram/ui/CommonGroupsActivity;->access$100(Lorg/telegram/ui/CommonGroupsActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    goto :goto_0
.end method
