.class Lorg/telegram/ui/ArticleViewer$37$1;
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

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer$37;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ArticleViewer$37;

    .prologue
    .line 3295
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$37$1;->this$1:Lorg/telegram/ui/ArticleViewer$37;

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$37$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3298
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$37$1;->this$1:Lorg/telegram/ui/ArticleViewer$37;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$37;->val$cell:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    invoke-virtual {v0, v5, v5}, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->setState(IZ)V

    .line 3299
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$37$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$37$1;->this$1:Lorg/telegram/ui/ArticleViewer$37;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$37;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$5000(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$37$1;->this$1:Lorg/telegram/ui/ArticleViewer$37;

    iget-object v2, v2, Lorg/telegram/ui/ArticleViewer$37;->val$req:Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/Components/AlertsCreator;->processError(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    .line 3300
    return-void
.end method
