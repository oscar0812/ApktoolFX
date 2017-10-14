.class Lorg/telegram/ui/SecretMediaViewer$6;
.super Ljava/lang/Object;
.source "SecretMediaViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SecretMediaViewer;->openMedia(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SecretMediaViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SecretMediaViewer;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/SecretMediaViewer;

    .prologue
    .line 852
    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$6;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 855
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$6;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v0, v2}, Lorg/telegram/ui/SecretMediaViewer;->access$2202(Lorg/telegram/ui/SecretMediaViewer;I)I

    .line 856
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$6;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v0, v3}, Lorg/telegram/ui/SecretMediaViewer;->access$1402(Lorg/telegram/ui/SecretMediaViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 857
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$6;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v0}, Lorg/telegram/ui/SecretMediaViewer;->access$1200(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 864
    :goto_0
    return-void

    .line 860
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 861
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$6;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v0}, Lorg/telegram/ui/SecretMediaViewer;->access$1200(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 863
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$6;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v0}, Lorg/telegram/ui/SecretMediaViewer;->access$1200(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/SecretMediaViewer$FrameLayoutDrawer;->invalidate()V

    goto :goto_0
.end method
