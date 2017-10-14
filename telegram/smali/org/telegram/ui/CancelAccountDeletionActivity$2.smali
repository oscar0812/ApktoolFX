.class Lorg/telegram/ui/CancelAccountDeletionActivity$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CancelAccountDeletionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CancelAccountDeletionActivity;->setPage(IZLandroid/os/Bundle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/CancelAccountDeletionActivity;

.field final synthetic val$newView:Lorg/telegram/ui/Components/SlideView;

.field final synthetic val$outView:Lorg/telegram/ui/Components/SlideView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CancelAccountDeletionActivity;Lorg/telegram/ui/Components/SlideView;Lorg/telegram/ui/Components/SlideView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/CancelAccountDeletionActivity;

    .prologue
    .line 266
    iput-object p1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$2;->this$0:Lorg/telegram/ui/CancelAccountDeletionActivity;

    iput-object p2, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$2;->val$newView:Lorg/telegram/ui/Components/SlideView;

    iput-object p3, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$2;->val$outView:Lorg/telegram/ui/Components/SlideView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 274
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$2;->val$outView:Lorg/telegram/ui/Components/SlideView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SlideView;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$2;->val$outView:Lorg/telegram/ui/Components/SlideView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SlideView;->setX(F)V

    .line 276
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 269
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$2;->val$newView:Lorg/telegram/ui/Components/SlideView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SlideView;->setVisibility(I)V

    .line 270
    return-void
.end method
