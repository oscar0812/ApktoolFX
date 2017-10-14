.class Lorg/telegram/ui/Components/PipRoundVideoView$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PipRoundVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PipRoundVideoView;->animateToBoundsMaybe()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PipRoundVideoView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PipRoundVideoView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/PipRoundVideoView;

    .prologue
    .line 498
    iput-object p1, p0, Lorg/telegram/ui/Components/PipRoundVideoView$7;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 501
    iget-object v0, p0, Lorg/telegram/ui/Components/PipRoundVideoView$7;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PipRoundVideoView;->close(Z)V

    .line 502
    iget-object v0, p0, Lorg/telegram/ui/Components/PipRoundVideoView$7;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$800(Lorg/telegram/ui/Components/PipRoundVideoView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lorg/telegram/ui/Components/PipRoundVideoView$7;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$800(Lorg/telegram/ui/Components/PipRoundVideoView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 505
    :cond_0
    return-void
.end method
