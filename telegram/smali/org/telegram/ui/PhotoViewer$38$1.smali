.class Lorg/telegram/ui/PhotoViewer$38$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$38;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$38;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$38;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PhotoViewer$38;

    .prologue
    .line 3204
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$38$1;->this$1:Lorg/telegram/ui/PhotoViewer$38;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 3207
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$38$1;->this$1:Lorg/telegram/ui/PhotoViewer$38;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$38;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$2300(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3208
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$38$1;->this$1:Lorg/telegram/ui/PhotoViewer$38;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$38;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$9900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setVisibility(I)V

    .line 3209
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$38$1;->this$1:Lorg/telegram/ui/PhotoViewer$38;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$38;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$4400(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3210
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$38$1;->this$1:Lorg/telegram/ui/PhotoViewer$38;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$38;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$2400(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$38$1;->this$1:Lorg/telegram/ui/PhotoViewer$38;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$38;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$2400(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3212
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$38$1;->this$1:Lorg/telegram/ui/PhotoViewer$38;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$38;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$8000(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    if-nez v0, :cond_1

    .line 3213
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$38$1;->this$1:Lorg/telegram/ui/PhotoViewer$38;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$38;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$2500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 3214
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$38$1;->this$1:Lorg/telegram/ui/PhotoViewer$38;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$38;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$2600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CounterView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer$CounterView;->setVisibility(I)V

    .line 3216
    :cond_1
    return-void

    .line 3210
    :cond_2
    const/4 v0, 0x4

    goto :goto_0
.end method
