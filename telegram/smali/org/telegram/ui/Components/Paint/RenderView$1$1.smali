.class Lorg/telegram/ui/Components/Paint/RenderView$1$1;
.super Ljava/lang/Object;
.source "RenderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Paint/RenderView$1;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/Paint/RenderView$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/RenderView$1;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/Components/Paint/RenderView$1;

    .prologue
    .line 85
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView$1$1;->this$1:Lorg/telegram/ui/Components/Paint/RenderView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$1$1;->this$1:Lorg/telegram/ui/Components/Paint/RenderView$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/RenderView$1;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->access$000(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$1$1;->this$1:Lorg/telegram/ui/Components/Paint/RenderView$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/RenderView$1;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->access$000(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->requestRender()V

    .line 91
    :cond_0
    return-void
.end method
