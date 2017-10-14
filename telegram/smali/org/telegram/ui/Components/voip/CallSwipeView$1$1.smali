.class Lorg/telegram/ui/Components/voip/CallSwipeView$1$1;
.super Ljava/lang/Object;
.source "CallSwipeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/voip/CallSwipeView$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/voip/CallSwipeView$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/voip/CallSwipeView$1;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/Components/voip/CallSwipeView$1;

    .prologue
    .line 67
    iput-object p1, p0, Lorg/telegram/ui/Components/voip/CallSwipeView$1$1;->this$1:Lorg/telegram/ui/Components/voip/CallSwipeView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView$1$1;->this$1:Lorg/telegram/ui/Components/voip/CallSwipeView$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/CallSwipeView$1;->this$0:Lorg/telegram/ui/Components/voip/CallSwipeView;

    invoke-static {v0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->access$000(Lorg/telegram/ui/Components/voip/CallSwipeView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView$1$1;->this$1:Lorg/telegram/ui/Components/voip/CallSwipeView$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/CallSwipeView$1;->this$0:Lorg/telegram/ui/Components/voip/CallSwipeView;

    invoke-static {v0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->access$000(Lorg/telegram/ui/Components/voip/CallSwipeView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 73
    :cond_0
    return-void
.end method
