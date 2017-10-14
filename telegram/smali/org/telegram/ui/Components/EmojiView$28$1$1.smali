.class Lorg/telegram/ui/Components/EmojiView$28$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView$28$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/Components/EmojiView$28$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView$28$1;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/Components/EmojiView$28$1;

    .prologue
    .line 1846
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$28$1$1;->this$2:Lorg/telegram/ui/Components/EmojiView$28$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1849
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$28$1$1;->this$2:Lorg/telegram/ui/Components/EmojiView$28$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$28$1;->this$1:Lorg/telegram/ui/Components/EmojiView$28;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$28;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$5700(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1850
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$28$1$1;->this$2:Lorg/telegram/ui/Components/EmojiView$28$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$28$1;->this$1:Lorg/telegram/ui/Components/EmojiView$28;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$28;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$5700(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1852
    :cond_0
    return-void
.end method
