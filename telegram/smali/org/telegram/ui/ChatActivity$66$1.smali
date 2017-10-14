.class Lorg/telegram/ui/ChatActivity$66$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$66;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$66;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$66;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChatActivity$66;

    .prologue
    .line 3976
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$66$1;->this$1:Lorg/telegram/ui/ChatActivity$66;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 3979
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$66$1;->this$1:Lorg/telegram/ui/ChatActivity$66;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$66;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$7700(Lorg/telegram/ui/ChatActivity;)Landroid/widget/TextView;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3996
    :goto_0
    return-void

    .line 3982
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 3983
    .local v0, "AnimatorSet":Landroid/animation/AnimatorSet;
    new-array v1, v4, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$66$1;->this$1:Lorg/telegram/ui/ChatActivity$66;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$66;->this$0:Lorg/telegram/ui/ChatActivity;

    .line 3984
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$7700(Lorg/telegram/ui/ChatActivity;)Landroid/widget/TextView;

    move-result-object v2

    const-string/jumbo v3, "alpha"

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    .line 3983
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3986
    new-instance v1, Lorg/telegram/ui/ChatActivity$66$1$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChatActivity$66$1$1;-><init>(Lorg/telegram/ui/ChatActivity$66$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3994
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3995
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method
