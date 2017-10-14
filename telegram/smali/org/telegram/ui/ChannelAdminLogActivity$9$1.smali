.class Lorg/telegram/ui/ChannelAdminLogActivity$9$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChannelAdminLogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelAdminLogActivity$9;->onScrolled(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChannelAdminLogActivity$9;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelAdminLogActivity$9;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChannelAdminLogActivity$9;

    .prologue
    .line 760
    iput-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$9$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$9;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 763
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$9$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$9;

    iget-object v0, v0, Lorg/telegram/ui/ChannelAdminLogActivity$9;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$4300(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$9$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$9;

    iget-object v0, v0, Lorg/telegram/ui/ChannelAdminLogActivity$9;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$4302(Lorg/telegram/ui/ChannelAdminLogActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 766
    :cond_0
    return-void
.end method
