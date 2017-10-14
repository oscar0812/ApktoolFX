.class Lorg/telegram/ui/ArchivedStickersActivity$3;
.super Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;
.source "ArchivedStickersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArchivedStickersActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ArchivedStickersActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArchivedStickersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ArchivedStickersActivity;

    .prologue
    .line 159
    iput-object p1, p0, Lorg/telegram/ui/ArchivedStickersActivity$3;->this$0:Lorg/telegram/ui/ArchivedStickersActivity;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
    .locals 2
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 162
    iget-object v0, p0, Lorg/telegram/ui/ArchivedStickersActivity$3;->this$0:Lorg/telegram/ui/ArchivedStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ArchivedStickersActivity;->access$300(Lorg/telegram/ui/ArchivedStickersActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArchivedStickersActivity$3;->this$0:Lorg/telegram/ui/ArchivedStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ArchivedStickersActivity;->access$400(Lorg/telegram/ui/ArchivedStickersActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArchivedStickersActivity$3;->this$0:Lorg/telegram/ui/ArchivedStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ArchivedStickersActivity;->access$500(Lorg/telegram/ui/ArchivedStickersActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity$3;->this$0:Lorg/telegram/ui/ArchivedStickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ArchivedStickersActivity;->access$600(Lorg/telegram/ui/ArchivedStickersActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-le v0, v1, :cond_0

    .line 163
    iget-object v0, p0, Lorg/telegram/ui/ArchivedStickersActivity$3;->this$0:Lorg/telegram/ui/ArchivedStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ArchivedStickersActivity;->access$700(Lorg/telegram/ui/ArchivedStickersActivity;)V

    .line 165
    :cond_0
    return-void
.end method
