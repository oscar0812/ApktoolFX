.class Lorg/telegram/ui/SecretMediaViewer$11$1;
.super Ljava/lang/Object;
.source "SecretMediaViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SecretMediaViewer$11;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/SecretMediaViewer$11;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SecretMediaViewer$11;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/SecretMediaViewer$11;

    .prologue
    .line 1247
    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$11$1;->this$1:Lorg/telegram/ui/SecretMediaViewer$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1250
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$11$1;->this$1:Lorg/telegram/ui/SecretMediaViewer$11;

    iget-object v0, v0, Lorg/telegram/ui/SecretMediaViewer$11;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v0}, Lorg/telegram/ui/SecretMediaViewer;->access$2300(Lorg/telegram/ui/SecretMediaViewer;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1251
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$11$1;->this$1:Lorg/telegram/ui/SecretMediaViewer$11;

    iget-object v0, v0, Lorg/telegram/ui/SecretMediaViewer$11;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v0}, Lorg/telegram/ui/SecretMediaViewer;->access$2300(Lorg/telegram/ui/SecretMediaViewer;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1252
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$11$1;->this$1:Lorg/telegram/ui/SecretMediaViewer$11;

    iget-object v0, v0, Lorg/telegram/ui/SecretMediaViewer$11;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/SecretMediaViewer;->access$2302(Lorg/telegram/ui/SecretMediaViewer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 1254
    :cond_0
    return-void
.end method
