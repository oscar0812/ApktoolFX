.class Lorg/telegram/ui/Components/Paint/Painting$5;
.super Ljava/lang/Object;
.source "Painting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Paint/Painting;->onPause(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/Painting;

.field final synthetic val$completionRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/Painting;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/Paint/Painting;

    .prologue
    .line 475
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting$5;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/Painting$5;->val$completionRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 478
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting$5;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-static {v1, v3}, Lorg/telegram/ui/Components/Paint/Painting;->access$2002(Lorg/telegram/ui/Components/Paint/Painting;Z)Z

    .line 479
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting$5;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Painting$5;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/Painting;->getBounds()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/Paint/Painting;->getPaintingData(Landroid/graphics/RectF;Z)Lorg/telegram/ui/Components/Paint/Painting$PaintingData;

    move-result-object v0

    .line 480
    .local v0, "data":Lorg/telegram/ui/Components/Paint/Painting$PaintingData;
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting$5;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    new-instance v2, Lorg/telegram/ui/Components/Paint/Slice;

    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Painting$PaintingData;->data:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Painting$5;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Painting;->getBounds()Landroid/graphics/RectF;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Painting$5;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-static {v5}, Lorg/telegram/ui/Components/Paint/Painting;->access$900(Lorg/telegram/ui/Components/Paint/Painting;)Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;

    move-result-object v5

    invoke-interface {v5}, Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;->requestDispatchQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lorg/telegram/ui/Components/Paint/Slice;-><init>(Ljava/nio/ByteBuffer;Landroid/graphics/RectF;Lorg/telegram/messenger/DispatchQueue;)V

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/Paint/Painting;->access$2102(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Slice;)Lorg/telegram/ui/Components/Paint/Slice;

    .line 482
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting$5;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Paint/Painting;->cleanResources(Z)V

    .line 484
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting$5;->val$completionRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 485
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting$5;->val$completionRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 486
    :cond_0
    return-void
.end method
