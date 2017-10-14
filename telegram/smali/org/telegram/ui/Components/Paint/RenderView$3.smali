.class Lorg/telegram/ui/Components/Paint/RenderView$3;
.super Ljava/lang/Object;
.source "RenderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Paint/RenderView;->shutdown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/RenderView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/RenderView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/Paint/RenderView;

    .prologue
    .line 250
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView$3;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$3;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->access$200(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$3;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/RenderView;->access$1000(Lorg/telegram/ui/Components/Paint/RenderView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Painting;->cleanResources(Z)V

    .line 254
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$3;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->access$000(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->shutdown()V

    .line 255
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$3;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->access$002(Lorg/telegram/ui/Components/Paint/RenderView;Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    .line 256
    return-void
.end method
