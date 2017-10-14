.class Lorg/telegram/ui/GroupCreateActivity$SpansContainer$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GroupCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->removeSpan(Lorg/telegram/ui/Components/GroupCreateSpan;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

.field final synthetic val$span:Lorg/telegram/ui/Components/GroupCreateSpan;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCreateActivity$SpansContainer;Lorg/telegram/ui/Components/GroupCreateSpan;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    .prologue
    .line 265
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer$2;->this$1:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    iput-object p2, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer$2;->val$span:Lorg/telegram/ui/Components/GroupCreateSpan;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 268
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer$2;->this$1:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer$2;->val$span:Lorg/telegram/ui/Components/GroupCreateSpan;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->removeView(Landroid/view/View;)V

    .line 269
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer$2;->this$1:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    invoke-static {v0, v3}, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->access$902(Lorg/telegram/ui/GroupCreateActivity$SpansContainer;Landroid/view/View;)Landroid/view/View;

    .line 270
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer$2;->this$1:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    invoke-static {v0, v3}, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->access$702(Lorg/telegram/ui/GroupCreateActivity$SpansContainer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 271
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer$2;->this$1:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->access$802(Lorg/telegram/ui/GroupCreateActivity$SpansContainer;Z)Z

    .line 272
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer$2;->this$1:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    iget-object v0, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->access$000(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setAllowDrawCursor(Z)V

    .line 273
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer$2;->this$1:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    iget-object v0, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->access$400(Lorg/telegram/ui/GroupCreateActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer$2;->this$1:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    iget-object v0, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->access$000(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintVisible(Z)V

    .line 276
    :cond_0
    return-void
.end method
