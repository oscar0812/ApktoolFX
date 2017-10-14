.class Lorg/telegram/ui/ArticleViewer$37$2;
.super Ljava/lang/Object;
.source "ArticleViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer$37;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ArticleViewer$37;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer$37;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ArticleViewer$37;

    .prologue
    .line 3319
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$37$2;->this$1:Lorg/telegram/ui/ArticleViewer$37;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3322
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$37$2;->this$1:Lorg/telegram/ui/ArticleViewer$37;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$37;->val$cell:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->setState(IZ)V

    .line 3323
    return-void
.end method
