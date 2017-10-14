.class Lorg/telegram/ui/Cells/PhotoEditToolCell$2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoEditToolCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/PhotoEditToolCell$2;->onProgressChanged(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Cells/PhotoEditToolCell$2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/PhotoEditToolCell$2;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/Cells/PhotoEditToolCell$2;

    .prologue
    .line 99
    iput-object p1, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell$2$1;->this$1:Lorg/telegram/ui/Cells/PhotoEditToolCell$2;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 102
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell$2$1;->this$1:Lorg/telegram/ui/Cells/PhotoEditToolCell$2;

    iget-object v0, v0, Lorg/telegram/ui/Cells/PhotoEditToolCell$2;->this$0:Lorg/telegram/ui/Cells/PhotoEditToolCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->access$300(Lorg/telegram/ui/Cells/PhotoEditToolCell;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 103
    return-void
.end method
