.class Lorg/telegram/ui/IdenticonActivity$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "IdenticonActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/IdenticonActivity;->updateEmojiButton(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/IdenticonActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/IdenticonActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/IdenticonActivity;

    .prologue
    .line 270
    iput-object p1, p0, Lorg/telegram/ui/IdenticonActivity$4;->this$0:Lorg/telegram/ui/IdenticonActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 273
    iget-object v0, p0, Lorg/telegram/ui/IdenticonActivity$4;->this$0:Lorg/telegram/ui/IdenticonActivity;

    invoke-static {v0}, Lorg/telegram/ui/IdenticonActivity;->access$400(Lorg/telegram/ui/IdenticonActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lorg/telegram/ui/IdenticonActivity$4;->this$0:Lorg/telegram/ui/IdenticonActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/IdenticonActivity;->access$402(Lorg/telegram/ui/IdenticonActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 276
    :cond_0
    return-void
.end method
