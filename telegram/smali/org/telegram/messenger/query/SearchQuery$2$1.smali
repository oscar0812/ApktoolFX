.class Lorg/telegram/messenger/query/SearchQuery$2$1;
.super Ljava/lang/Object;
.source "SearchQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/SearchQuery$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/query/SearchQuery$2;

.field final synthetic val$chats:Ljava/util/ArrayList;

.field final synthetic val$hintsNew:Ljava/util/ArrayList;

.field final synthetic val$inlineBotsNew:Ljava/util/ArrayList;

.field final synthetic val$users:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/query/SearchQuery$2;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/query/SearchQuery$2;

    .prologue
    .line 293
    iput-object p1, p0, Lorg/telegram/messenger/query/SearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/SearchQuery$2;

    iput-object p2, p0, Lorg/telegram/messenger/query/SearchQuery$2$1;->val$users:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/messenger/query/SearchQuery$2$1;->val$chats:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/telegram/messenger/query/SearchQuery$2$1;->val$hintsNew:Ljava/util/ArrayList;

    iput-object p5, p0, Lorg/telegram/messenger/query/SearchQuery$2$1;->val$inlineBotsNew:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 296
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/query/SearchQuery$2$1;->val$users:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 297
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/query/SearchQuery$2$1;->val$chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 298
    invoke-static {v6}, Lorg/telegram/messenger/query/SearchQuery;->access$202(Z)Z

    .line 299
    invoke-static {v2}, Lorg/telegram/messenger/query/SearchQuery;->access$302(Z)Z

    .line 300
    iget-object v0, p0, Lorg/telegram/messenger/query/SearchQuery$2$1;->val$hintsNew:Ljava/util/ArrayList;

    sput-object v0, Lorg/telegram/messenger/query/SearchQuery;->hints:Ljava/util/ArrayList;

    .line 301
    iget-object v0, p0, Lorg/telegram/messenger/query/SearchQuery$2$1;->val$inlineBotsNew:Ljava/util/ArrayList;

    sput-object v0, Lorg/telegram/messenger/query/SearchQuery;->inlineBots:Ljava/util/ArrayList;

    .line 302
    invoke-static {}, Lorg/telegram/messenger/query/SearchQuery;->buildShortcuts()V

    .line 303
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->reloadHints:I

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 304
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->reloadInlineHints:I

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 305
    sget v0, Lorg/telegram/messenger/UserConfig;->lastHintsSyncTime:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const v1, 0x15180

    if-lt v0, v1, :cond_0

    .line 306
    invoke-static {v6}, Lorg/telegram/messenger/query/SearchQuery;->loadHints(Z)V

    .line 308
    :cond_0
    return-void
.end method
