.class final Lorg/telegram/messenger/query/BotQuery$1;
.super Ljava/lang/Object;
.source "BotQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/BotQuery;->clearBotKeyboard(JLjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$did:J

.field final synthetic val$messages:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;J)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lorg/telegram/messenger/query/BotQuery$1;->val$messages:Ljava/util/ArrayList;

    iput-wide p2, p0, Lorg/telegram/messenger/query/BotQuery$1;->val$did:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 40
    iget-object v2, p0, Lorg/telegram/messenger/query/BotQuery$1;->val$messages:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 41
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/query/BotQuery$1;->val$messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 42
    invoke-static {}, Lorg/telegram/messenger/query/BotQuery;->access$000()Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/query/BotQuery$1;->val$messages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 43
    .local v1, "did":Ljava/lang/Long;
    if-eqz v1, :cond_0

    .line 44
    invoke-static {}, Lorg/telegram/messenger/query/BotQuery;->access$100()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-static {}, Lorg/telegram/messenger/query/BotQuery;->access$000()Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/query/BotQuery$1;->val$messages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->botKeyboardDidLoaded:I

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v9, v4, v6

    aput-object v1, v4, v8

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 41
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    .end local v0    # "a":I
    .end local v1    # "did":Ljava/lang/Long;
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/query/BotQuery;->access$100()Ljava/util/HashMap;

    move-result-object v2

    iget-wide v4, p0, Lorg/telegram/messenger/query/BotQuery$1;->val$did:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->botKeyboardDidLoaded:I

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v9, v4, v6

    iget-wide v6, p0, Lorg/telegram/messenger/query/BotQuery$1;->val$did:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 53
    :cond_2
    return-void
.end method
