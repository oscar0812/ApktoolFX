.class Lorg/telegram/ui/VoIPActivity$7$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VoIPActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VoIPActivity$7;->onDragStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/VoIPActivity$7;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VoIPActivity$7;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/VoIPActivity$7;

    .prologue
    .line 341
    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity$7$1;->this$1:Lorg/telegram/ui/VoIPActivity$7;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 344
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$7$1;->this$1:Lorg/telegram/ui/VoIPActivity$7;

    iget-object v0, v0, Lorg/telegram/ui/VoIPActivity$7;->this$0:Lorg/telegram/ui/VoIPActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/VoIPActivity;->access$1202(Lorg/telegram/ui/VoIPActivity;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 345
    return-void
.end method
