.class Lorg/telegram/ui/Components/AudioPlayerAlert$5;
.super Ljava/lang/Object;
.source "AudioPlayerAlert.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AudioPlayerAlert;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/AudioPlayerAlert;

    .prologue
    .line 392
    iput-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$5;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 396
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$5;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$3100(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/animation/AnimatorSet;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 397
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$5;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$3100(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 398
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$5;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    const/4 v5, 0x0

    invoke-static {v2, v5}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$3102(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 400
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$5;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {v2, v5}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$3102(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 401
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$5;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$000(Lorg/telegram/ui/Components/AudioPlayerAlert;)I

    move-result v2

    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$5;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$1300(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBar;->getMeasuredHeight()I

    move-result v5

    if-gt v2, v5, :cond_3

    .line 402
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$5;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$3100(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/animation/AnimatorSet;

    move-result-object v2

    new-array v5, v3, [Landroid/animation/Animator;

    iget-object v6, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$5;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    const-string/jumbo v7, "fullAnimationProgress"

    new-array v8, v3, [F

    iget-object v9, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$5;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v9}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$3200(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z

    move-result v9

    if-eqz v9, :cond_2

    :goto_0
    aput v0, v8, v4

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v5, v4

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 410
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$5;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$3100(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 411
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$5;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$3100(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/animation/AnimatorSet;

    move-result-object v0

    const-wide/16 v6, 0xfa

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 412
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$5;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$3100(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/AudioPlayerAlert$5$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/AudioPlayerAlert$5$1;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert$5;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 432
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$5;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$3100(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 433
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$5;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$2000(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$5;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$2100(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 436
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$5;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$3400(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 437
    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$5;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$5;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$3200(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v3

    :goto_2
    invoke-static {v1, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$3202(Lorg/telegram/ui/Components/AudioPlayerAlert;Z)Z

    .line 438
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$5;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$500(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setScrollEnabled(Z)V

    .line 439
    return-void

    :cond_2
    move v0, v1

    .line 402
    goto :goto_0

    .line 404
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$5;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$3100(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/animation/AnimatorSet;

    move-result-object v5

    const/4 v2, 0x4

    new-array v6, v2, [Landroid/animation/Animator;

    iget-object v7, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$5;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    const-string/jumbo v8, "fullAnimationProgress"

    new-array v9, v3, [F

    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$5;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$3200(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v0

    :goto_3
    aput v2, v9, v4

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v6, v4

    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$5;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    .line 405
    invoke-static {v2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$1300(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v7

    const-string/jumbo v8, "alpha"

    new-array v9, v3, [F

    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$5;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$3200(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v0

    :goto_4
    aput v2, v9, v4

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v6, v3

    const/4 v7, 0x2

    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$5;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    .line 406
    invoke-static {v2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$1400(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/view/View;

    move-result-object v8

    const-string/jumbo v9, "alpha"

    new-array v10, v3, [F

    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$5;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$3200(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v0

    :goto_5
    aput v2, v10, v4

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v6, v7

    const/4 v2, 0x3

    iget-object v7, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$5;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    .line 407
    invoke-static {v7}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$3300(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/view/View;

    move-result-object v7

    const-string/jumbo v8, "alpha"

    new-array v9, v3, [F

    iget-object v10, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$5;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v10}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$3200(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z

    move-result v10

    if-eqz v10, :cond_7

    :goto_6
    aput v0, v9, v4

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v6, v2

    .line 404
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_1

    :cond_4
    move v2, v1

    goto :goto_3

    :cond_5
    move v2, v1

    .line 405
    goto :goto_4

    :cond_6
    move v2, v1

    .line 406
    goto :goto_5

    :cond_7
    move v0, v1

    .line 407
    goto :goto_6

    :cond_8
    move v0, v4

    .line 437
    goto/16 :goto_2
.end method
