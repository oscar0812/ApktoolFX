.class Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$2;
.super Ljava/lang/Object;
.source "PhotoFilterView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    .prologue
    .line 2290
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$2;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2293
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/PhotoEditRadioCell;

    .line 2294
    .local v0, "cell":Lorg/telegram/ui/Cells/PhotoEditRadioCell;
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoEditRadioCell;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2295
    .local v1, "row":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$2;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    iget-object v3, v3, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/PhotoFilterView;->access$8200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 2296
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$2;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    iget-object v2, v2, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoEditRadioCell;->getCurrentColor()I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1402(Lorg/telegram/ui/Components/PhotoFilterView;I)I

    .line 2300
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$2;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    iget-object v2, v2, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2301
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$2;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    iget-object v2, v2, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->requestRender(Z)V

    .line 2303
    :cond_0
    return-void

    .line 2298
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$2;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    iget-object v2, v2, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoEditRadioCell;->getCurrentColor()I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1202(Lorg/telegram/ui/Components/PhotoFilterView;I)I

    goto :goto_0
.end method
