.class Lorg/telegram/ui/PhotoViewer$62$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$62;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$62;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$62;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PhotoViewer$62;

    .prologue
    .line 6503
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$62$1;->this$1:Lorg/telegram/ui/PhotoViewer$62;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 6506
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$62$1;->this$1:Lorg/telegram/ui/PhotoViewer$62;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$12100(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6507
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$62$1;->this$1:Lorg/telegram/ui/PhotoViewer$62;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$12102(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 6509
    :cond_0
    return-void
.end method
