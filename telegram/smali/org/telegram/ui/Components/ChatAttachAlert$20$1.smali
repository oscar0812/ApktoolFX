.class Lorg/telegram/ui/Components/ChatAttachAlert$20$1;
.super Ljava/lang/Object;
.source "ChatAttachAlert.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlert$20;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ChatAttachAlert$20;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert$20;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/Components/ChatAttachAlert$20;

    .prologue
    .line 1558
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$20$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1561
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$20$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$20;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$20;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$6400(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/lang/Runnable;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 1566
    :goto_0
    return-void

    .line 1564
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$20$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$20;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$20;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$6402(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 1565
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$20$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$20;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$20;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$3500(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    goto :goto_0
.end method
