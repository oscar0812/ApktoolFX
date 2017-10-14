.class Lorg/telegram/ui/VoIPActivity$8$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VoIPActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VoIPActivity$8;->onDragCancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/VoIPActivity$8;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VoIPActivity$8;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/VoIPActivity$8;

    .prologue
    .line 421
    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity$8$2;->this$1:Lorg/telegram/ui/VoIPActivity$8;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 424
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$8$2;->this$1:Lorg/telegram/ui/VoIPActivity$8;

    iget-object v0, v0, Lorg/telegram/ui/VoIPActivity$8;->this$0:Lorg/telegram/ui/VoIPActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/VoIPActivity;->access$1402(Lorg/telegram/ui/VoIPActivity;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 425
    return-void
.end method
