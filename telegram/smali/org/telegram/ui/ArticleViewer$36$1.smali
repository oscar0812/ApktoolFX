.class Lorg/telegram/ui/ArticleViewer$36$1;
.super Ljava/lang/Object;
.source "ArticleViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer$36;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ArticleViewer$36;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer$36;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ArticleViewer$36;

    .prologue
    .line 3257
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$36$1;->this$1:Lorg/telegram/ui/ArticleViewer$36;

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$36$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$36$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 3260
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$36$1;->this$1:Lorg/telegram/ui/ArticleViewer$36;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$36;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1, v5}, Lorg/telegram/ui/ArticleViewer;->access$8402(Lorg/telegram/ui/ArticleViewer;Z)Z

    .line 3261
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$36$1;->this$1:Lorg/telegram/ui/ArticleViewer$36;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$36;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$5000(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$36$1;->this$1:Lorg/telegram/ui/ArticleViewer$36;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$36;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$4600(Lorg/telegram/ui/ArticleViewer;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$36$1;->this$1:Lorg/telegram/ui/ArticleViewer$36;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$36;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$4600(Lorg/telegram/ui/ArticleViewer;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3282
    :cond_0
    :goto_0
    return-void

    .line 3264
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$36$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v1, :cond_4

    .line 3265
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$36$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;

    .line 3266
    .local v0, "res":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3267
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v5}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 3268
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v5}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 3269
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v5, v4}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 3270
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$36$1;->this$1:Lorg/telegram/ui/ArticleViewer$36;

    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$36;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2, v1}, Lorg/telegram/ui/ArticleViewer;->access$8502(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$Chat;

    .line 3271
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$36$1;->this$1:Lorg/telegram/ui/ArticleViewer$36;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$36;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$8500(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$36$1;->this$1:Lorg/telegram/ui/ArticleViewer$36;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$36;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$8500(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->kicked:Z

    if-nez v1, :cond_2

    .line 3272
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$36$1;->this$1:Lorg/telegram/ui/ArticleViewer$36;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$36;->val$cell:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    invoke-virtual {v1, v5, v5}, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->setState(IZ)V

    goto :goto_0

    .line 3274
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$36$1;->this$1:Lorg/telegram/ui/ArticleViewer$36;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$36;->val$cell:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    invoke-virtual {v1, v6, v5}, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->setState(IZ)V

    goto :goto_0

    .line 3277
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$36$1;->this$1:Lorg/telegram/ui/ArticleViewer$36;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$36;->val$cell:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    invoke-virtual {v1, v6, v5}, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->setState(IZ)V

    goto :goto_0

    .line 3280
    .end local v0    # "res":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$36$1;->this$1:Lorg/telegram/ui/ArticleViewer$36;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$36;->val$cell:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    invoke-virtual {v1, v6, v5}, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->setState(IZ)V

    goto :goto_0
.end method
