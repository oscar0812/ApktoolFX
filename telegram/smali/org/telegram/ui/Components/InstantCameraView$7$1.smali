.class Lorg/telegram/ui/Components/InstantCameraView$7$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "InstantCameraView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/InstantCameraView$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/InstantCameraView$7;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/InstantCameraView$7;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/Components/InstantCameraView$7;

    .prologue
    .line 318
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$7$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$7;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 321
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$7$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$7;

    iget-object v0, v0, Lorg/telegram/ui/Components/InstantCameraView$7;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1200(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$7$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$7;

    iget-object v0, v0, Lorg/telegram/ui/Components/InstantCameraView$7;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f020044

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 322
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$7$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$7;

    iget-object v0, v0, Lorg/telegram/ui/Components/InstantCameraView$7;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1200(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/widget/ImageView;

    move-result-object v0

    const-string/jumbo v1, "scaleX"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 323
    return-void

    .line 321
    :cond_0
    const v0, 0x7f020045

    goto :goto_0
.end method
