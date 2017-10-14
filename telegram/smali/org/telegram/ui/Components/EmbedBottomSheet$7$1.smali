.class Lorg/telegram/ui/Components/EmbedBottomSheet$7$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EmbedBottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmbedBottomSheet$7;->prepareToSwitchInlineMode(ZLjava/lang/Runnable;FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/EmbedBottomSheet$7;

.field final synthetic val$switchInlineModeRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmbedBottomSheet$7;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/Components/EmbedBottomSheet$7;

    .prologue
    .line 389
    iput-object p1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7$1;->this$1:Lorg/telegram/ui/Components/EmbedBottomSheet$7;

    iput-object p2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7$1;->val$switchInlineModeRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 392
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7$1;->this$1:Lorg/telegram/ui/Components/EmbedBottomSheet$7;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$800(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 393
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7$1;->this$1:Lorg/telegram/ui/Components/EmbedBottomSheet$7;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$800(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 394
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7$1;->this$1:Lorg/telegram/ui/Components/EmbedBottomSheet$7;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$7;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$800(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 396
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$7$1;->val$switchInlineModeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 397
    return-void
.end method
