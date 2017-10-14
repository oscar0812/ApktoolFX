.class Lorg/telegram/ui/Components/WebPlayerView$ControlsView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WebPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->show(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/WebPlayerView$ControlsView;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    .prologue
    .line 1288
    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView$3;->this$1:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 1291
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView$3;->this$1:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->access$4402(Lorg/telegram/ui/Components/WebPlayerView$ControlsView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 1292
    return-void
.end method
