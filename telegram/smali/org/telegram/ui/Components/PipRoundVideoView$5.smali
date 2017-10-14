.class Lorg/telegram/ui/Components/PipRoundVideoView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PipRoundVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PipRoundVideoView;->showTemporary(Z)V
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
    .line 382
    iput-object p1, p0, Lorg/telegram/ui/Components/PipRoundVideoView$5;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 385
    iget-object v0, p0, Lorg/telegram/ui/Components/PipRoundVideoView$5;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$700(Lorg/telegram/ui/Components/PipRoundVideoView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lorg/telegram/ui/Components/PipRoundVideoView$5;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$702(Lorg/telegram/ui/Components/PipRoundVideoView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 388
    :cond_0
    return-void
.end method
