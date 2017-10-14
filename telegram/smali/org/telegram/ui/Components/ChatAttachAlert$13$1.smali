.class Lorg/telegram/ui/Components/ChatAttachAlert$13$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChatAttachAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlert$13;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ChatAttachAlert$13;

.field final synthetic val$currentImage:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert$13;Landroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/Components/ChatAttachAlert$13;

    .prologue
    .line 985
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$13$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$13;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$13$1;->val$currentImage:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 988
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$13$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$13;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$13;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5902(Lorg/telegram/ui/Components/ChatAttachAlert;Z)Z

    .line 989
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$13$1;->val$currentImage:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 990
    return-void
.end method
