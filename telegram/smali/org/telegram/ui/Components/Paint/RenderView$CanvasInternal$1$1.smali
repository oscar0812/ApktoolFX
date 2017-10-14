.class Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$1$1;
.super Ljava/lang/Object;
.source "RenderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$1;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$1;

    .prologue
    .line 434
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$1$1;->this$2:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$1$1;->this$2:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$1;->this$1:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->access$702(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;Z)Z

    .line 438
    return-void
.end method
