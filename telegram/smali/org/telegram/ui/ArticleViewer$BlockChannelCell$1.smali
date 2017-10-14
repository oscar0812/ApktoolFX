.class Lorg/telegram/ui/ArticleViewer$BlockChannelCell$1;
.super Ljava/lang/Object;
.source "ArticleViewer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer$BlockChannelCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

.field final synthetic val$this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer$BlockChannelCell;Lorg/telegram/ui/ArticleViewer;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    .prologue
    .line 5980
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell$1;->val$this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 5983
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->access$12400(Lorg/telegram/ui/ArticleViewer$BlockChannelCell;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 5988
    :goto_0
    return-void

    .line 5986
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->setState(IZ)V

    .line 5987
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    iget-object v2, v2, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->access$8500(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ArticleViewer;->access$12500(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$BlockChannelCell;Lorg/telegram/tgnet/TLRPC$Chat;)V

    goto :goto_0
.end method
