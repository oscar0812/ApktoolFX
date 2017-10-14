.class Lorg/telegram/ui/CallLogActivity$5;
.super Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;
.source "CallLogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CallLogActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/CallLogActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CallLogActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/CallLogActivity;

    .prologue
    .line 258
    iput-object p1, p0, Lorg/telegram/ui/CallLogActivity$5;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
    .locals 12
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 261
    iget-object v9, p0, Lorg/telegram/ui/CallLogActivity$5;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {v9}, Lorg/telegram/ui/CallLogActivity;->access$400(Lorg/telegram/ui/CallLogActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    .line 262
    .local v2, "firstVisibleItem":I
    const/4 v9, -0x1

    if-ne v2, v9, :cond_4

    const/4 v8, 0x0

    .line 263
    .local v8, "visibleItemCount":I
    :goto_0
    if-lez v8, :cond_0

    .line 264
    iget-object v9, p0, Lorg/telegram/ui/CallLogActivity$5;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {v9}, Lorg/telegram/ui/CallLogActivity;->access$500(Lorg/telegram/ui/CallLogActivity;)Lorg/telegram/ui/CallLogActivity$ListAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/CallLogActivity$ListAdapter;->getItemCount()I

    move-result v7

    .line 265
    .local v7, "totalItemCount":I
    iget-object v9, p0, Lorg/telegram/ui/CallLogActivity$5;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {v9}, Lorg/telegram/ui/CallLogActivity;->access$600(Lorg/telegram/ui/CallLogActivity;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lorg/telegram/ui/CallLogActivity$5;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {v9}, Lorg/telegram/ui/CallLogActivity;->access$700(Lorg/telegram/ui/CallLogActivity;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lorg/telegram/ui/CallLogActivity$5;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {v9}, Lorg/telegram/ui/CallLogActivity;->access$200(Lorg/telegram/ui/CallLogActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    add-int v9, v2, v8

    add-int/lit8 v10, v7, -0x5

    if-lt v9, v10, :cond_0

    .line 266
    iget-object v9, p0, Lorg/telegram/ui/CallLogActivity$5;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {v9}, Lorg/telegram/ui/CallLogActivity;->access$200(Lorg/telegram/ui/CallLogActivity;)Ljava/util/ArrayList;

    move-result-object v9

    iget-object v10, p0, Lorg/telegram/ui/CallLogActivity$5;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {v10}, Lorg/telegram/ui/CallLogActivity;->access$200(Lorg/telegram/ui/CallLogActivity;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/CallLogActivity$CallLogRow;

    .line 267
    .local v4, "row":Lorg/telegram/ui/CallLogActivity$CallLogRow;
    iget-object v10, p0, Lorg/telegram/ui/CallLogActivity$5;->this$0:Lorg/telegram/ui/CallLogActivity;

    iget-object v9, v4, Lorg/telegram/ui/CallLogActivity$CallLogRow;->calls:Ljava/util/List;

    iget-object v11, v4, Lorg/telegram/ui/CallLogActivity$CallLogRow;->calls:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$Message;

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    const/16 v11, 0x64

    invoke-static {v10, v9, v11}, Lorg/telegram/ui/CallLogActivity;->access$800(Lorg/telegram/ui/CallLogActivity;II)V

    .line 271
    .end local v4    # "row":Lorg/telegram/ui/CallLogActivity$CallLogRow;
    .end local v7    # "totalItemCount":I
    :cond_0
    iget-object v9, p0, Lorg/telegram/ui/CallLogActivity$5;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {v9}, Lorg/telegram/ui/CallLogActivity;->access$900(Lorg/telegram/ui/CallLogActivity;)Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/ImageView;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_3

    .line 272
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 273
    .local v5, "topChild":Landroid/view/View;
    const/4 v1, 0x0

    .line 274
    .local v1, "firstViewTop":I
    if-eqz v5, :cond_1

    .line 275
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v1

    .line 278
    :cond_1
    const/4 v0, 0x1

    .line 279
    .local v0, "changed":Z
    iget-object v9, p0, Lorg/telegram/ui/CallLogActivity$5;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {v9}, Lorg/telegram/ui/CallLogActivity;->access$1000(Lorg/telegram/ui/CallLogActivity;)I

    move-result v9

    if-ne v9, v2, :cond_7

    .line 280
    iget-object v9, p0, Lorg/telegram/ui/CallLogActivity$5;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {v9}, Lorg/telegram/ui/CallLogActivity;->access$1100(Lorg/telegram/ui/CallLogActivity;)I

    move-result v9

    sub-int v6, v9, v1

    .line 281
    .local v6, "topDelta":I
    iget-object v9, p0, Lorg/telegram/ui/CallLogActivity$5;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {v9}, Lorg/telegram/ui/CallLogActivity;->access$1100(Lorg/telegram/ui/CallLogActivity;)I

    move-result v9

    if-ge v1, v9, :cond_5

    const/4 v3, 0x1

    .line 282
    .local v3, "goingDown":Z
    :goto_1
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_6

    const/4 v0, 0x1

    .line 286
    .end local v6    # "topDelta":I
    :goto_2
    if-eqz v0, :cond_2

    iget-object v9, p0, Lorg/telegram/ui/CallLogActivity$5;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {v9}, Lorg/telegram/ui/CallLogActivity;->access$1200(Lorg/telegram/ui/CallLogActivity;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 287
    iget-object v9, p0, Lorg/telegram/ui/CallLogActivity$5;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {v9, v3}, Lorg/telegram/ui/CallLogActivity;->access$1300(Lorg/telegram/ui/CallLogActivity;Z)V

    .line 289
    :cond_2
    iget-object v9, p0, Lorg/telegram/ui/CallLogActivity$5;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {v9, v2}, Lorg/telegram/ui/CallLogActivity;->access$1002(Lorg/telegram/ui/CallLogActivity;I)I

    .line 290
    iget-object v9, p0, Lorg/telegram/ui/CallLogActivity$5;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {v9, v1}, Lorg/telegram/ui/CallLogActivity;->access$1102(Lorg/telegram/ui/CallLogActivity;I)I

    .line 291
    iget-object v9, p0, Lorg/telegram/ui/CallLogActivity$5;->this$0:Lorg/telegram/ui/CallLogActivity;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lorg/telegram/ui/CallLogActivity;->access$1202(Lorg/telegram/ui/CallLogActivity;Z)Z

    .line 293
    .end local v0    # "changed":Z
    .end local v1    # "firstViewTop":I
    .end local v3    # "goingDown":Z
    .end local v5    # "topChild":Landroid/view/View;
    :cond_3
    return-void

    .line 262
    .end local v8    # "visibleItemCount":I
    :cond_4
    iget-object v9, p0, Lorg/telegram/ui/CallLogActivity$5;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {v9}, Lorg/telegram/ui/CallLogActivity;->access$400(Lorg/telegram/ui/CallLogActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v9

    sub-int/2addr v9, v2

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    add-int/lit8 v8, v9, 0x1

    goto/16 :goto_0

    .line 281
    .restart local v0    # "changed":Z
    .restart local v1    # "firstViewTop":I
    .restart local v5    # "topChild":Landroid/view/View;
    .restart local v6    # "topDelta":I
    .restart local v8    # "visibleItemCount":I
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .line 282
    .restart local v3    # "goingDown":Z
    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    .line 284
    .end local v3    # "goingDown":Z
    .end local v6    # "topDelta":I
    :cond_7
    iget-object v9, p0, Lorg/telegram/ui/CallLogActivity$5;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {v9}, Lorg/telegram/ui/CallLogActivity;->access$1000(Lorg/telegram/ui/CallLogActivity;)I

    move-result v9

    if-le v2, v9, :cond_8

    const/4 v3, 0x1

    .restart local v3    # "goingDown":Z
    :goto_3
    goto :goto_2

    .end local v3    # "goingDown":Z
    :cond_8
    const/4 v3, 0x0

    goto :goto_3
.end method
