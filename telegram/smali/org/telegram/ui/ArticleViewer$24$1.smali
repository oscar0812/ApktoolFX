.class Lorg/telegram/ui/ArticleViewer$24$1;
.super Ljava/lang/Object;
.source "ArticleViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer$24;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ArticleViewer$24;

.field final synthetic val$webPage:Lorg/telegram/tgnet/TLRPC$TL_webPage;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer$24;Lorg/telegram/tgnet/TLRPC$TL_webPage;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ArticleViewer$24;

    .prologue
    .line 2732
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$24$1;->this$1:Lorg/telegram/ui/ArticleViewer$24;

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$24$1;->val$webPage:Lorg/telegram/tgnet/TLRPC$TL_webPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2735
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$24$1;->this$1:Lorg/telegram/ui/ArticleViewer$24;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$24;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$7600(Lorg/telegram/ui/ArticleViewer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$24$1;->this$1:Lorg/telegram/ui/ArticleViewer$24;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$24;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$7600(Lorg/telegram/ui/ArticleViewer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$24$1;->this$1:Lorg/telegram/ui/ArticleViewer$24;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$24;->val$webPageFinal:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$24$1;->val$webPage:Lorg/telegram/tgnet/TLRPC$TL_webPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    if-eqz v0, :cond_1

    .line 2736
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$24$1;->this$1:Lorg/telegram/ui/ArticleViewer$24;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$24;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    .line 2737
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$24$1;->this$1:Lorg/telegram/ui/ArticleViewer$24;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$24;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$24$1;->val$webPage:Lorg/telegram/tgnet/TLRPC$TL_webPage;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 2739
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$24$1;->this$1:Lorg/telegram/ui/ArticleViewer$24;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$24;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$7600(Lorg/telegram/ui/ArticleViewer;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$24$1;->val$webPage:Lorg/telegram/tgnet/TLRPC$TL_webPage;

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2740
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$24$1;->this$1:Lorg/telegram/ui/ArticleViewer$24;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$24;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$7600(Lorg/telegram/ui/ArticleViewer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2741
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$24$1;->this$1:Lorg/telegram/ui/ArticleViewer$24;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$24;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$24$1;->val$webPage:Lorg/telegram/tgnet/TLRPC$TL_webPage;

    invoke-static {v0, v1}, Lorg/telegram/ui/ArticleViewer;->access$4702(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$WebPage;)Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 2742
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "articles"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "article"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$24$1;->this$1:Lorg/telegram/ui/ArticleViewer$24;

    iget-object v2, v2, Lorg/telegram/ui/ArticleViewer$24;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->access$4700(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v2

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2743
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$24$1;->this$1:Lorg/telegram/ui/ArticleViewer$24;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$24;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0, v4}, Lorg/telegram/ui/ArticleViewer;->access$7700(Lorg/telegram/ui/ArticleViewer;Z)V

    .line 2746
    :cond_1
    return-void
.end method
