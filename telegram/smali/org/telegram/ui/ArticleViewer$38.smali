.class Lorg/telegram/ui/ArticleViewer$38;
.super Ljava/lang/Object;
.source "ArticleViewer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer;->showDialog(Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 3397
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$38;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 3400
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$38;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/16 v1, 0x78

    invoke-static {v0, v1}, Lorg/telegram/ui/ArticleViewer;->access$8600(Lorg/telegram/ui/ArticleViewer;I)V

    .line 3401
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$38;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ArticleViewer;->access$8702(Lorg/telegram/ui/ArticleViewer;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 3402
    return-void
.end method
