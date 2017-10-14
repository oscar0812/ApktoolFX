.class final Lorg/telegram/messenger/query/MessagesQuery$5;
.super Ljava/lang/Object;
.source "MessagesQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/MessagesQuery;->broadcastPinnedMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)Lorg/telegram/messenger/MessageObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$chats:Ljava/util/ArrayList;

.field final synthetic val$chatsDict:Ljava/util/HashMap;

.field final synthetic val$isCache:Z

.field final synthetic val$result:Lorg/telegram/tgnet/TLRPC$Message;

.field final synthetic val$users:Ljava/util/ArrayList;

.field final synthetic val$usersDict:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lorg/telegram/messenger/query/MessagesQuery$5;->val$users:Ljava/util/ArrayList;

    iput-boolean p2, p0, Lorg/telegram/messenger/query/MessagesQuery$5;->val$isCache:Z

    iput-object p3, p0, Lorg/telegram/messenger/query/MessagesQuery$5;->val$chats:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/telegram/messenger/query/MessagesQuery$5;->val$result:Lorg/telegram/tgnet/TLRPC$Message;

    iput-object p5, p0, Lorg/telegram/messenger/query/MessagesQuery$5;->val$usersDict:Ljava/util/HashMap;

    iput-object p6, p0, Lorg/telegram/messenger/query/MessagesQuery$5;->val$chatsDict:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 196
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/query/MessagesQuery$5;->val$users:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lorg/telegram/messenger/query/MessagesQuery$5;->val$isCache:Z

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 197
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/query/MessagesQuery$5;->val$chats:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lorg/telegram/messenger/query/MessagesQuery$5;->val$isCache:Z

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 198
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didLoadedPinnedMessage:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Lorg/telegram/messenger/MessageObject;

    iget-object v4, p0, Lorg/telegram/messenger/query/MessagesQuery$5;->val$result:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, p0, Lorg/telegram/messenger/query/MessagesQuery$5;->val$usersDict:Ljava/util/HashMap;

    iget-object v6, p0, Lorg/telegram/messenger/query/MessagesQuery$5;->val$chatsDict:Ljava/util/HashMap;

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 199
    return-void
.end method
