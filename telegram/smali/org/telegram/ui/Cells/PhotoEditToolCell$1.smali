.class Lorg/telegram/ui/Cells/PhotoEditToolCell$1;
.super Ljava/lang/Object;
.source "PhotoEditToolCell.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Cells/PhotoEditToolCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/PhotoEditToolCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/PhotoEditToolCell;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Cells/PhotoEditToolCell;

    .prologue
    .line 33
    iput-object p1, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoEditToolCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 36
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoEditToolCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->access$000(Lorg/telegram/ui/Cells/PhotoEditToolCell;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 37
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoEditToolCell;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {v0, v1}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->access$102(Lorg/telegram/ui/Cells/PhotoEditToolCell;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 38
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoEditToolCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->access$100(Lorg/telegram/ui/Cells/PhotoEditToolCell;)Landroid/animation/AnimatorSet;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoEditToolCell;

    .line 39
    invoke-static {v2}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->access$000(Lorg/telegram/ui/Cells/PhotoEditToolCell;)Landroid/widget/TextView;

    move-result-object v2

    const-string/jumbo v3, "alpha"

    new-array v4, v7, [F

    const/4 v5, 0x0

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoEditToolCell;

    .line 40
    invoke-static {v2}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->access$200(Lorg/telegram/ui/Cells/PhotoEditToolCell;)Landroid/widget/TextView;

    move-result-object v2

    const-string/jumbo v3, "alpha"

    new-array v4, v7, [F

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    .line 38
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 41
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoEditToolCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->access$100(Lorg/telegram/ui/Cells/PhotoEditToolCell;)Landroid/animation/AnimatorSet;

    move-result-object v0

    const-wide/16 v2, 0xb4

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 42
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoEditToolCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->access$100(Lorg/telegram/ui/Cells/PhotoEditToolCell;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 43
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoEditToolCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->access$100(Lorg/telegram/ui/Cells/PhotoEditToolCell;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Cells/PhotoEditToolCell$1$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Cells/PhotoEditToolCell$1$1;-><init>(Lorg/telegram/ui/Cells/PhotoEditToolCell$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 51
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell$1;->this$0:Lorg/telegram/ui/Cells/PhotoEditToolCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->access$100(Lorg/telegram/ui/Cells/PhotoEditToolCell;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 52
    return-void
.end method
