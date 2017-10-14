.class Lorg/telegram/ui/ArticleViewer$5;
.super Ljava/lang/Object;
.source "ArticleViewer.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer;->checkLayoutForLinks(Landroid/view/MotionEvent;Landroid/view/View;Landroid/text/StaticLayout;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;

.field final synthetic val$anchor:Ljava/lang/String;

.field final synthetic val$req:Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 1610
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$5;->this$0:Lorg/telegram/ui/ArticleViewer;

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$5;->val$anchor:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$5;->val$req:Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 1613
    new-instance v0, Lorg/telegram/ui/ArticleViewer$5$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ArticleViewer$5$1;-><init>(Lorg/telegram/ui/ArticleViewer$5;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1630
    return-void
.end method
