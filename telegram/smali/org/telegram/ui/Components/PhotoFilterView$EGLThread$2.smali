.class Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$2;
.super Ljava/lang/Object;
.source "PhotoFilterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->getTexture()Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

.field final synthetic val$object:[Landroid/graphics/Bitmap;

.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;[Landroid/graphics/Bitmap;Ljava/util/concurrent/Semaphore;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    .prologue
    .line 1503
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$2;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    iput-object p2, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$2;->val$object:[Landroid/graphics/Bitmap;

    iput-object p3, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$2;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const v6, 0x8d40

    const/4 v1, 0x0

    .line 1506
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$2;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->access$4300(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)[I

    move-result-object v2

    aget v2, v2, v0

    invoke-static {v6, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 1507
    const v2, 0x8ce0

    const/16 v3, 0xde1

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$2;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    invoke-static {v4}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->access$3700(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)[I

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$2;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    invoke-static {v5}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->access$3200(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v1

    :cond_0
    aget v0, v4, v0

    invoke-static {v6, v2, v3, v0, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 1508
    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 1509
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$2;->val$object:[Landroid/graphics/Bitmap;

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$2;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->access$4400(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1510
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$2;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1511
    invoke-static {v6, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 1512
    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 1513
    return-void
.end method
