.class Lorg/telegram/ui/ArticleViewer$37$3;
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
    .line 3325
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$37$3;->this$1:Lorg/telegram/ui/ArticleViewer$37;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3328
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$37$3;->this$1:Lorg/telegram/ui/ArticleViewer$37;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$37;->val$channel:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->loadFullChat(IIZ)V

    .line 3329
    return-void
.end method
