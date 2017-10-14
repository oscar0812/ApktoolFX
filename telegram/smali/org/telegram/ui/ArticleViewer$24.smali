.class Lorg/telegram/ui/ArticleViewer$24;
.super Ljava/lang/Object;
.source "ArticleViewer.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer;->open(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;Ljava/lang/String;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;

.field final synthetic val$messageObject:Lorg/telegram/messenger/MessageObject;

.field final synthetic val$webPageFinal:Lorg/telegram/tgnet/TLRPC$WebPage;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/messenger/MessageObject;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 2724
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$24;->this$0:Lorg/telegram/ui/ArticleViewer;

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$24;->val$webPageFinal:Lorg/telegram/tgnet/TLRPC$WebPage;

    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$24;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 4
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 2727
    instance-of v2, p1, Lorg/telegram/tgnet/TLRPC$TL_webPage;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 2728
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_webPage;

    .line 2729
    .local v0, "webPage":Lorg/telegram/tgnet/TLRPC$TL_webPage;
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    if-nez v2, :cond_1

    .line 2752
    .end local v0    # "webPage":Lorg/telegram/tgnet/TLRPC$TL_webPage;
    :cond_0
    :goto_0
    return-void

    .line 2732
    .restart local v0    # "webPage":Lorg/telegram/tgnet/TLRPC$TL_webPage;
    :cond_1
    new-instance v2, Lorg/telegram/ui/ArticleViewer$24$1;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/ArticleViewer$24$1;-><init>(Lorg/telegram/ui/ArticleViewer$24;Lorg/telegram/tgnet/TLRPC$TL_webPage;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2748
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2749
    .local v1, "webpages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$WebPage;>;"
    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2750
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/MessagesStorage;->putWebPages(Ljava/util/HashMap;)V

    goto :goto_0
.end method
