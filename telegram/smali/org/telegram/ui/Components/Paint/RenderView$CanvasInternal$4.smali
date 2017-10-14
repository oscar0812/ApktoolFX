.class Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$4;
.super Ljava/lang/Object;
.source "RenderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->shutdown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    .prologue
    .line 492
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$4;->this$1:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 495
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$4;->this$1:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->finish()V

    .line 496
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 497
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 500
    :cond_0
    return-void
.end method
