.class Lorg/telegram/ui/Components/Paint/Painting$4;
.super Ljava/lang/Object;
.source "Painting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Paint/Painting;->restoreSlice(Lorg/telegram/ui/Components/Paint/Slice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/Painting;

.field final synthetic val$slice:Lorg/telegram/ui/Components/Paint/Slice;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Slice;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/Paint/Painting;

    .prologue
    .line 285
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting$4;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/Painting$4;->val$slice:Lorg/telegram/ui/Components/Paint/Slice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/16 v0, 0xde1

    .line 288
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting$4;->val$slice:Lorg/telegram/ui/Components/Paint/Slice;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Slice;->getData()Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 290
    .local v8, "buffer":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting$4;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/Painting;->access$1800(Lorg/telegram/ui/Components/Paint/Painting;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 291
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Painting$4;->val$slice:Lorg/telegram/ui/Components/Paint/Slice;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/Slice;->getX()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Painting$4;->val$slice:Lorg/telegram/ui/Components/Paint/Slice;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Slice;->getY()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Painting$4;->val$slice:Lorg/telegram/ui/Components/Paint/Slice;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Slice;->getWidth()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Painting$4;->val$slice:Lorg/telegram/ui/Components/Paint/Slice;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Paint/Slice;->getHeight()I

    move-result v5

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 292
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting$4;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Painting;->access$1900(Lorg/telegram/ui/Components/Paint/Painting;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting$4;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Painting;->access$900(Lorg/telegram/ui/Components/Paint/Painting;)Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting$4;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Painting;->access$900(Lorg/telegram/ui/Components/Paint/Painting;)Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting$4;->val$slice:Lorg/telegram/ui/Components/Paint/Slice;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Slice;->getBounds()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;->contentChanged(Landroid/graphics/RectF;)V

    .line 296
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting$4;->val$slice:Lorg/telegram/ui/Components/Paint/Slice;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Slice;->cleanResources()V

    .line 297
    return-void
.end method
