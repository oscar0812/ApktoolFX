.class Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation$1;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Landroid/support/v4/animation/AnimatorUpdateListenerCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;-><init>(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;IIFFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;

.field final synthetic val$this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;

    .prologue
    .line 2341
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation$1;->this$1:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;

    iput-object p2, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation$1;->val$this$0:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/support/v4/animation/ValueAnimatorCompat;)V
    .locals 2
    .param p1, "animation"    # Landroid/support/v4/animation/ValueAnimatorCompat;

    .prologue
    .line 2344
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation$1;->this$1:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;

    invoke-interface {p1}, Landroid/support/v4/animation/ValueAnimatorCompat;->getAnimatedFraction()F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$RecoverAnimation;->setFraction(F)V

    .line 2345
    return-void
.end method
