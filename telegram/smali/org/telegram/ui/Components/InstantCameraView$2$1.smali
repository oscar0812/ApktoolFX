.class Lorg/telegram/ui/Components/InstantCameraView$2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "InstantCameraView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/InstantCameraView$2;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/InstantCameraView$2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/InstantCameraView$2;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/Components/InstantCameraView$2;

    .prologue
    .line 212
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$2$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$2;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 215
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$2$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$2;

    iget-object v0, v0, Lorg/telegram/ui/Components/InstantCameraView$2;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$600(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$2$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$2;

    iget-object v0, v0, Lorg/telegram/ui/Components/InstantCameraView$2;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$602(Lorg/telegram/ui/Components/InstantCameraView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 218
    :cond_0
    return-void
.end method
