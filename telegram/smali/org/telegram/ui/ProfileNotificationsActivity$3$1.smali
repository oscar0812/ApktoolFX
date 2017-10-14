.class Lorg/telegram/ui/ProfileNotificationsActivity$3$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ProfileNotificationsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileNotificationsActivity$3;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ProfileNotificationsActivity$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileNotificationsActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ProfileNotificationsActivity$3;

    .prologue
    .line 266
    iput-object p1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3$1;->this$1:Lorg/telegram/ui/ProfileNotificationsActivity$3;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 269
    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3$1;->this$1:Lorg/telegram/ui/ProfileNotificationsActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$500(Lorg/telegram/ui/ProfileNotificationsActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3$1;->this$1:Lorg/telegram/ui/ProfileNotificationsActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$502(Lorg/telegram/ui/ProfileNotificationsActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 272
    :cond_0
    return-void
.end method
