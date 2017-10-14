.class Lorg/telegram/ui/Components/AudioPlayerAlert$5$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AudioPlayerAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AudioPlayerAlert$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/AudioPlayerAlert$5;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/AudioPlayerAlert$5;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/Components/AudioPlayerAlert$5;

    .prologue
    .line 412
    iput-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$5$1;->this$1:Lorg/telegram/ui/Components/AudioPlayerAlert$5;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 415
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$5$1;->this$1:Lorg/telegram/ui/Components/AudioPlayerAlert$5;

    iget-object v0, v0, Lorg/telegram/ui/Components/AudioPlayerAlert$5;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$3100(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 416
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$5$1;->this$1:Lorg/telegram/ui/Components/AudioPlayerAlert$5;

    iget-object v0, v0, Lorg/telegram/ui/Components/AudioPlayerAlert$5;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$3200(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 417
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$5$1;->this$1:Lorg/telegram/ui/Components/AudioPlayerAlert$5;

    iget-object v0, v0, Lorg/telegram/ui/Components/AudioPlayerAlert$5;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$500(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setScrollEnabled(Z)V

    .line 418
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$5$1;->this$1:Lorg/telegram/ui/Components/AudioPlayerAlert$5;

    iget-object v0, v0, Lorg/telegram/ui/Components/AudioPlayerAlert$5;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$2000(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$5$1;->this$1:Lorg/telegram/ui/Components/AudioPlayerAlert$5;

    iget-object v0, v0, Lorg/telegram/ui/Components/AudioPlayerAlert$5;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$2100(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 421
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$5$1;->this$1:Lorg/telegram/ui/Components/AudioPlayerAlert$5;

    iget-object v0, v0, Lorg/telegram/ui/Components/AudioPlayerAlert$5;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$3400(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 428
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$5$1;->this$1:Lorg/telegram/ui/Components/AudioPlayerAlert$5;

    iget-object v0, v0, Lorg/telegram/ui/Components/AudioPlayerAlert$5;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$3102(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 430
    :cond_1
    return-void

    .line 423
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$5$1;->this$1:Lorg/telegram/ui/Components/AudioPlayerAlert$5;

    iget-object v0, v0, Lorg/telegram/ui/Components/AudioPlayerAlert$5;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$2000(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 424
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$5$1;->this$1:Lorg/telegram/ui/Components/AudioPlayerAlert$5;

    iget-object v0, v0, Lorg/telegram/ui/Components/AudioPlayerAlert$5;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$2100(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 426
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$5$1;->this$1:Lorg/telegram/ui/Components/AudioPlayerAlert$5;

    iget-object v0, v0, Lorg/telegram/ui/Components/AudioPlayerAlert$5;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$3400(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    goto :goto_0
.end method
