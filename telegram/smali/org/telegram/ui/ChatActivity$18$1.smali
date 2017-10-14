.class Lorg/telegram/ui/ChatActivity$18$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$18;->onScrolled(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$18;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$18;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChatActivity$18;

    .prologue
    .line 1813
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$18$1;->this$1:Lorg/telegram/ui/ChatActivity$18;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1816
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$18$1;->this$1:Lorg/telegram/ui/ChatActivity$18;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$9100(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1817
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$18$1;->this$1:Lorg/telegram/ui/ChatActivity$18;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$9102(Lorg/telegram/ui/ChatActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 1819
    :cond_0
    return-void
.end method
