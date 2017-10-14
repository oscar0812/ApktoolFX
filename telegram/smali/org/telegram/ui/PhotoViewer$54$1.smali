.class Lorg/telegram/ui/PhotoViewer$54$1;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$54;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$54;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$54;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PhotoViewer$54;

    .prologue
    .line 5127
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$54$1;->this$1:Lorg/telegram/ui/PhotoViewer$54;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5130
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$54$1;->this$1:Lorg/telegram/ui/PhotoViewer$54;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$54;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$11500(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5131
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$54$1;->this$1:Lorg/telegram/ui/PhotoViewer$54;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$54;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$11500(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 5132
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$54$1;->this$1:Lorg/telegram/ui/PhotoViewer$54;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$54;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$11502(Lorg/telegram/ui/PhotoViewer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 5134
    :cond_0
    return-void
.end method
