.class Lorg/telegram/ui/ArticleViewer$37;
.super Ljava/lang/Object;
.source "ArticleViewer.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer;->joinChannel(Lorg/telegram/ui/ArticleViewer$BlockChannelCell;Lorg/telegram/tgnet/TLRPC$Chat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;

.field final synthetic val$cell:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

.field final synthetic val$channel:Lorg/telegram/tgnet/TLRPC$Chat;

.field final synthetic val$req:Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$BlockChannelCell;Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 3291
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$37;->this$0:Lorg/telegram/ui/ArticleViewer;

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$37;->val$cell:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$37;->val$req:Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;

    iput-object p4, p0, Lorg/telegram/ui/ArticleViewer$37;->val$channel:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 9
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    const/4 v8, 0x1

    .line 3294
    if-eqz p2, :cond_0

    .line 3295
    new-instance v4, Lorg/telegram/ui/ArticleViewer$37$1;

    invoke-direct {v4, p0, p2}, Lorg/telegram/ui/ArticleViewer$37$1;-><init>(Lorg/telegram/ui/ArticleViewer$37;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3332
    :goto_0
    return-void

    .line 3304
    :cond_0
    const/4 v1, 0x0

    .local v1, "hasJoinMessage":Z
    move-object v3, p1

    .line 3305
    check-cast v3, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 3306
    .local v3, "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 3307
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Update;

    .line 3308
    .local v2, "update":Lorg/telegram/tgnet/TLRPC$Update;
    instance-of v4, v2, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    if-eqz v4, :cond_3

    .line 3309
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    .end local v2    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser;

    if-eqz v4, :cond_3

    .line 3310
    const/4 v1, 0x1

    .line 3315
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 3316
    if-nez v1, :cond_2

    .line 3317
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$37;->val$channel:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-virtual {v4, v5, v8}, Lorg/telegram/messenger/MessagesController;->generateJoinMessage(IZ)V

    .line 3319
    :cond_2
    new-instance v4, Lorg/telegram/ui/ArticleViewer$37$2;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ArticleViewer$37$2;-><init>(Lorg/telegram/ui/ArticleViewer$37;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3325
    new-instance v4, Lorg/telegram/ui/ArticleViewer$37$3;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ArticleViewer$37$3;-><init>(Lorg/telegram/ui/ArticleViewer$37;)V

    const-wide/16 v6, 0x3e8

    invoke-static {v4, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 3331
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$37;->val$channel:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-virtual {v4, v5, v6, v8, v7}, Lorg/telegram/messenger/MessagesStorage;->updateDialogsWithDeletedMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;ZI)V

    goto :goto_0

    .line 3306
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
