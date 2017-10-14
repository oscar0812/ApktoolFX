.class Lorg/telegram/ui/ArticleViewer$5$1;
.super Ljava/lang/Object;
.source "ArticleViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer$5;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ArticleViewer$5;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer$5;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ArticleViewer$5;

    .prologue
    .line 1613
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$5$1;->this$1:Lorg/telegram/ui/ArticleViewer$5;

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$5$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1616
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$5$1;->this$1:Lorg/telegram/ui/ArticleViewer$5;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$5;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$4100(Lorg/telegram/ui/ArticleViewer;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1628
    :cond_0
    :goto_0
    return-void

    .line 1619
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$5$1;->this$1:Lorg/telegram/ui/ArticleViewer$5;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$5;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0, v1}, Lorg/telegram/ui/ArticleViewer;->access$4102(Lorg/telegram/ui/ArticleViewer;I)I

    .line 1620
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$5$1;->this$1:Lorg/telegram/ui/ArticleViewer$5;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$5;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0, v1}, Lorg/telegram/ui/ArticleViewer;->access$4200(Lorg/telegram/ui/ArticleViewer;Z)V

    .line 1621
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$5$1;->this$1:Lorg/telegram/ui/ArticleViewer$5;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$5;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$2000(Lorg/telegram/ui/ArticleViewer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1622
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$5$1;->val$response:Lorg/telegram/tgnet/TLObject;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_webPage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$5$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_webPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageFull;

    if-eqz v0, :cond_2

    .line 1623
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$5$1;->this$1:Lorg/telegram/ui/ArticleViewer$5;

    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer$5;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$5$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_webPage;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$5$1;->this$1:Lorg/telegram/ui/ArticleViewer$5;

    iget-object v2, v2, Lorg/telegram/ui/ArticleViewer$5;->val$anchor:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lorg/telegram/ui/ArticleViewer;->access$4300(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$WebPage;Ljava/lang/String;)V

    goto :goto_0

    .line 1625
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$5$1;->this$1:Lorg/telegram/ui/ArticleViewer$5;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$5;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$1900(Lorg/telegram/ui/ArticleViewer;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$5$1;->this$1:Lorg/telegram/ui/ArticleViewer$5;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$5;->val$req:Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;->url:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
