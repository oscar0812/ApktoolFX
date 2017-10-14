.class Lorg/telegram/ui/Components/NumberTextView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NumberTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/NumberTextView;->setNumber(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/NumberTextView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/NumberTextView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/NumberTextView;

    .prologue
    .line 83
    iput-object p1, p0, Lorg/telegram/ui/Components/NumberTextView$1;->this$0:Lorg/telegram/ui/Components/NumberTextView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 86
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberTextView$1;->this$0:Lorg/telegram/ui/Components/NumberTextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/NumberTextView;->access$002(Lorg/telegram/ui/Components/NumberTextView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 87
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberTextView$1;->this$0:Lorg/telegram/ui/Components/NumberTextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/NumberTextView;->access$100(Lorg/telegram/ui/Components/NumberTextView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 88
    return-void
.end method
