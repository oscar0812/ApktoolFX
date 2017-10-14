.class Lorg/telegram/messenger/query/SearchQuery$3$1$1;
.super Ljava/lang/Object;
.source "SearchQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/SearchQuery$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/query/SearchQuery$3$1;

.field final synthetic val$topPeers:Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/query/SearchQuery$3$1;Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/query/SearchQuery$3$1;

    .prologue
    .line 351
    iput-object p1, p0, Lorg/telegram/messenger/query/SearchQuery$3$1$1;->this$1:Lorg/telegram/messenger/query/SearchQuery$3$1;

    iput-object p2, p0, Lorg/telegram/messenger/query/SearchQuery$3$1$1;->val$topPeers:Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 355
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v8

    const-string/jumbo v9, "DELETE FROM chat_hints WHERE 1"

    invoke-virtual {v8, v9}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 356
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    .line 357
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/messenger/query/SearchQuery$3$1$1;->val$topPeers:Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;->users:Ljava/util/ArrayList;

    iget-object v10, p0, Lorg/telegram/messenger/query/SearchQuery$3$1$1;->val$topPeers:Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;->chats:Ljava/util/ArrayList;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 359
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v8

    const-string/jumbo v9, "REPLACE INTO chat_hints VALUES(?, ?, ?, ?)"

    invoke-virtual {v8, v9}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v6

    .line 360
    .local v6, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v8, p0, Lorg/telegram/messenger/query/SearchQuery$3$1$1;->val$topPeers:Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;->categories:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_4

    .line 362
    iget-object v8, p0, Lorg/telegram/messenger/query/SearchQuery$3$1$1;->val$topPeers:Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;->categories:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPeers;

    .line 363
    .local v2, "category":Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPeers;
    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPeers;->category:Lorg/telegram/tgnet/TLRPC$TopPeerCategory;

    instance-of v8, v8, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryBotsInline;

    if-eqz v8, :cond_0

    .line 364
    const/4 v7, 0x1

    .line 368
    .local v7, "type":I
    :goto_1
    const/4 v1, 0x0

    .local v1, "b":I
    :goto_2
    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPeers;->peers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_3

    .line 369
    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPeers;->peers:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_topPeer;

    .line 371
    .local v5, "peer":Lorg/telegram/tgnet/TLRPC$TL_topPeer;
    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v8, v8, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    if-eqz v8, :cond_1

    .line 372
    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v8, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 378
    .local v3, "did":I
    :goto_3
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 379
    const/4 v8, 0x1

    invoke-virtual {v6, v8, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 380
    const/4 v8, 0x2

    invoke-virtual {v6, v8, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 381
    const/4 v8, 0x3

    iget-wide v10, v5, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->rating:D

    invoke-virtual {v6, v8, v10, v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindDouble(ID)V

    .line 382
    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 383
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 368
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 366
    .end local v1    # "b":I
    .end local v3    # "did":I
    .end local v5    # "peer":Lorg/telegram/tgnet/TLRPC$TL_topPeer;
    .end local v7    # "type":I
    :cond_0
    const/4 v7, 0x0

    .restart local v7    # "type":I
    goto :goto_1

    .line 373
    .restart local v1    # "b":I
    .restart local v5    # "peer":Lorg/telegram/tgnet/TLRPC$TL_topPeer;
    :cond_1
    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v8, v8, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    if-eqz v8, :cond_2

    .line 374
    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v3, v8

    .restart local v3    # "did":I
    goto :goto_3

    .line 376
    .end local v3    # "did":I
    :cond_2
    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v3, v8

    .restart local v3    # "did":I
    goto :goto_3

    .line 360
    .end local v3    # "did":I
    .end local v5    # "peer":Lorg/telegram/tgnet/TLRPC$TL_topPeer;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 387
    .end local v1    # "b":I
    .end local v2    # "category":Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPeers;
    .end local v7    # "type":I
    :cond_4
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 389
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    .line 390
    new-instance v8, Lorg/telegram/messenger/query/SearchQuery$3$1$1$1;

    invoke-direct {v8, p0}, Lorg/telegram/messenger/query/SearchQuery$3$1$1$1;-><init>(Lorg/telegram/messenger/query/SearchQuery$3$1$1;)V

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    .end local v0    # "a":I
    .end local v6    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :goto_4
    return-void

    .line 397
    :catch_0
    move-exception v4

    .line 398
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4
.end method
