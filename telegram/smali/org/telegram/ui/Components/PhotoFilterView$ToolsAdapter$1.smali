.class Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$1;
.super Ljava/lang/Object;
.source "PhotoFilterView.java"

# interfaces
.implements Lorg/telegram/ui/Components/PhotoEditorSeekBar$PhotoEditorSeekBarDelegate;


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
    .line 2257
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(II)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "progress"    # I

    .prologue
    .line 2260
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6000(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 2261
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v1, p2

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6102(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    .line 2283
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2284
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->requestRender(Z)V

    .line 2286
    :cond_1
    return-void

    .line 2262
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 2263
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v1, p2

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6302(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto :goto_0

    .line 2264
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6400(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 2265
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v1, p2

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6502(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto :goto_0

    .line 2266
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6600(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 2267
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v1, p2

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6702(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto :goto_0

    .line 2268
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6800(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p1, v0, :cond_6

    .line 2269
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v1, p2

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6902(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto :goto_0

    .line 2270
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7000(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 2271
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v1, p2

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7102(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto :goto_0

    .line 2272
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p1, v0, :cond_8

    .line 2273
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v1, p2

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7302(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto/16 :goto_0

    .line 2274
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7400(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p1, v0, :cond_9

    .line 2275
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v1, p2

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7502(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto/16 :goto_0

    .line 2276
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7600(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p1, v0, :cond_a

    .line 2277
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v1, p2

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7702(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto/16 :goto_0

    .line 2278
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7800(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p1, v0, :cond_b

    .line 2279
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v1, p2

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7902(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto/16 :goto_0

    .line 2280
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$8000(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2281
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v1, p2

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$8102(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto/16 :goto_0
.end method
