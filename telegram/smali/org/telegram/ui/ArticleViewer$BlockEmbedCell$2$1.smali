.class Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2$1;
.super Ljava/lang/Object;
.source "ArticleViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2;

    .prologue
    .line 4725
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2$1;->this$2:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 4728
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2$1;->this$2:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$11000(Lorg/telegram/ui/ArticleViewer;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4729
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2$1;->this$2:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$1500(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2$1;->this$2:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$11000(Lorg/telegram/ui/ArticleViewer;)Landroid/view/View;

    move-result-object v1

    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4730
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2$1;->this$2:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$1500(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4732
    :cond_0
    return-void
.end method
