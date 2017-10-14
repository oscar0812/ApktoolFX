.class Lorg/telegram/ui/ChatActivity$64$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$64;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$64;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$64;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChatActivity$64;

    .prologue
    .line 3852
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$64$1;->this$1:Lorg/telegram/ui/ChatActivity$64;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3855
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$64$1;->this$1:Lorg/telegram/ui/ChatActivity$64;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16000(Lorg/telegram/ui/ChatActivity;)V

    .line 3856
    return-void
.end method
