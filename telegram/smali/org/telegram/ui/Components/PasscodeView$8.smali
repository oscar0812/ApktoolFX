.class Lorg/telegram/ui/Components/PasscodeView$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PasscodeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PasscodeView;->shakeTextView(FI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PasscodeView;

.field final synthetic val$num:I

.field final synthetic val$x:F


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PasscodeView;IF)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/PasscodeView;

    .prologue
    .line 783
    iput-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$8;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    iput p2, p0, Lorg/telegram/ui/Components/PasscodeView$8;->val$num:I

    iput p3, p0, Lorg/telegram/ui/Components/PasscodeView$8;->val$x:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 786
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$8;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    iget v0, p0, Lorg/telegram/ui/Components/PasscodeView$8;->val$num:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lorg/telegram/ui/Components/PasscodeView$8;->val$num:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v0, v2}, Lorg/telegram/ui/Components/PasscodeView;->access$800(Lorg/telegram/ui/Components/PasscodeView;FI)V

    .line 787
    return-void

    .line 786
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/PasscodeView$8;->val$x:F

    neg-float v0, v0

    goto :goto_0
.end method
