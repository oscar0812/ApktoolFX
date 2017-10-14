.class Lorg/telegram/ui/PhotoViewer$40$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$40;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$40;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$40;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PhotoViewer$40;

    .prologue
    .line 3315
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$40$1;->this$1:Lorg/telegram/ui/PhotoViewer$40;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 3324
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$40$1;->this$1:Lorg/telegram/ui/PhotoViewer$40;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$7700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoCropView;->onAppeared()V

    .line 3326
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$40$1;->this$1:Lorg/telegram/ui/PhotoViewer$40;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$9402(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 3327
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$40$1;->this$1:Lorg/telegram/ui/PhotoViewer$40;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$40$1;->this$1:Lorg/telegram/ui/PhotoViewer$40;

    iget v1, v1, Lorg/telegram/ui/PhotoViewer$40;->val$mode:I

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$7602(Lorg/telegram/ui/PhotoViewer;I)I

    .line 3328
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$40$1;->this$1:Lorg/telegram/ui/PhotoViewer$40;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v3}, Lorg/telegram/ui/PhotoViewer;->access$9602(Lorg/telegram/ui/PhotoViewer;F)F

    .line 3329
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$40$1;->this$1:Lorg/telegram/ui/PhotoViewer$40;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v2}, Lorg/telegram/ui/PhotoViewer;->access$9702(Lorg/telegram/ui/PhotoViewer;F)F

    .line 3330
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$40$1;->this$1:Lorg/telegram/ui/PhotoViewer$40;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v2}, Lorg/telegram/ui/PhotoViewer;->access$9802(Lorg/telegram/ui/PhotoViewer;F)F

    .line 3331
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$40$1;->this$1:Lorg/telegram/ui/PhotoViewer$40;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v3}, Lorg/telegram/ui/PhotoViewer;->access$3602(Lorg/telegram/ui/PhotoViewer;F)F

    .line 3332
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$40$1;->this$1:Lorg/telegram/ui/PhotoViewer$40;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$40$1;->this$1:Lorg/telegram/ui/PhotoViewer$40;

    iget-object v1, v1, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$3600(Lorg/telegram/ui/PhotoViewer;)F

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$3900(Lorg/telegram/ui/PhotoViewer;F)V

    .line 3333
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$40$1;->this$1:Lorg/telegram/ui/PhotoViewer$40;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    .line 3334
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 3318
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$40$1;->this$1:Lorg/telegram/ui/PhotoViewer$40;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$9100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setVisibility(I)V

    .line 3319
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$40$1;->this$1:Lorg/telegram/ui/PhotoViewer$40;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$7700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PhotoCropView;->setVisibility(I)V

    .line 3320
    return-void
.end method
