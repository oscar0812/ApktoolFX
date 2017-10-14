.class Lorg/telegram/ui/Components/PipRoundVideoView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PipRoundVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PipRoundVideoView;->runShowHideAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PipRoundVideoView;Z)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/PipRoundVideoView;

    .prologue
    .line 407
    iput-object p1, p0, Lorg/telegram/ui/Components/PipRoundVideoView$6;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/PipRoundVideoView$6;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 420
    iget-object v0, p0, Lorg/telegram/ui/Components/PipRoundVideoView$6;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$700(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lorg/telegram/ui/Components/PipRoundVideoView$6;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$702(Lorg/telegram/ui/Components/PipRoundVideoView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 423
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 410
    iget-object v0, p0, Lorg/telegram/ui/Components/PipRoundVideoView$6;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$700(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 411
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PipRoundVideoView$6;->val$show:Z

    if-nez v0, :cond_0

    .line 412
    iget-object v0, p0, Lorg/telegram/ui/Components/PipRoundVideoView$6;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PipRoundVideoView;->close(Z)V

    .line 414
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PipRoundVideoView$6;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$702(Lorg/telegram/ui/Components/PipRoundVideoView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 416
    :cond_1
    return-void
.end method
