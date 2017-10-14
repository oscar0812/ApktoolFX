.class public Lorg/telegram/messenger/query/DraftQuery;
.super Ljava/lang/Object;
.source "DraftQuery.java"


# static fields
.field private static draftMessages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;"
        }
    .end annotation
.end field

.field private static drafts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/telegram/tgnet/TLRPC$DraftMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static inTransaction:Z

.field private static loadingDrafts:Z

.field private static preferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    .line 39
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    sput-object v9, Lorg/telegram/messenger/query/DraftQuery;->drafts:Ljava/util/HashMap;

    .line 40
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    sput-object v9, Lorg/telegram/messenger/query/DraftQuery;->draftMessages:Ljava/util/HashMap;

    .line 46
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v10, "drafts"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    sput-object v9, Lorg/telegram/messenger/query/DraftQuery;->preferences:Landroid/content/SharedPreferences;

    .line 47
    sget-object v9, Lorg/telegram/messenger/query/DraftQuery;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v8

    .line 48
    .local v8, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 50
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    :try_start_0
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 51
    .local v5, "key":Ljava/lang/String;
    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 52
    .local v2, "did":J
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lorg/telegram/messenger/Utilities;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 53
    .local v0, "bytes":[B
    new-instance v7, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v7, v0}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    .line 54
    .local v7, "serializedData":Lorg/telegram/tgnet/SerializedData;
    const-string/jumbo v9, "r_"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 55
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v9

    const/4 v11, 0x1

    invoke-static {v7, v9, v11}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v6

    .line 56
    .local v6, "message":Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz v6, :cond_0

    .line 57
    sget-object v9, Lorg/telegram/messenger/query/DraftQuery;->draftMessages:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 65
    .end local v0    # "bytes":[B
    .end local v2    # "did":J
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v7    # "serializedData":Lorg/telegram/tgnet/SerializedData;
    :catch_0
    move-exception v9

    goto :goto_0

    .line 60
    .restart local v0    # "bytes":[B
    .restart local v2    # "did":J
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v7    # "serializedData":Lorg/telegram/tgnet/SerializedData;
    :cond_1
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v9

    const/4 v11, 0x1

    invoke-static {v7, v9, v11}, Lorg/telegram/tgnet/TLRPC$DraftMessage;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$DraftMessage;

    move-result-object v1

    .line 61
    .local v1, "draftMessage":Lorg/telegram/tgnet/TLRPC$DraftMessage;
    if-eqz v1, :cond_0

    .line 62
    sget-object v9, Lorg/telegram/messenger/query/DraftQuery;->drafts:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    .end local v0    # "bytes":[B
    .end local v1    # "draftMessage":Lorg/telegram/tgnet/TLRPC$DraftMessage;
    .end local v2    # "did":J
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "serializedData":Lorg/telegram/tgnet/SerializedData;
    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 37
    sput-boolean p0, Lorg/telegram/messenger/query/DraftQuery;->loadingDrafts:Z

    return p0
.end method

.method static synthetic access$100(JLorg/telegram/tgnet/TLRPC$Message;)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 37
    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/query/DraftQuery;->saveDraftReplyMessage(JLorg/telegram/tgnet/TLRPC$Message;)V

    return-void
.end method

.method static synthetic access$200()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lorg/telegram/messenger/query/DraftQuery;->drafts:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lorg/telegram/messenger/query/DraftQuery;->draftMessages:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lorg/telegram/messenger/query/DraftQuery;->preferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static beginTransaction()V
    .locals 1

    .prologue
    .line 309
    const/4 v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/query/DraftQuery;->inTransaction:Z

    .line 310
    return-void
.end method

.method public static cleanDraft(JZ)V
    .locals 8
    .param p0, "did"    # J
    .param p2, "replyOnly"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 291
    sget-object v0, Lorg/telegram/messenger/query/DraftQuery;->drafts:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$DraftMessage;

    .line 292
    .local v7, "draftMessage":Lorg/telegram/tgnet/TLRPC$DraftMessage;
    if-nez v7, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    if-nez p2, :cond_2

    .line 296
    sget-object v0, Lorg/telegram/messenger/query/DraftQuery;->drafts:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lorg/telegram/messenger/query/DraftQuery;->draftMessages:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lorg/telegram/messenger/query/DraftQuery;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "r_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 299
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->sortDialogs(Ljava/util/HashMap;)V

    .line 300
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 301
    :cond_2
    iget v0, v7, Lorg/telegram/tgnet/TLRPC$DraftMessage;->reply_to_msg_id:I

    if-eqz v0, :cond_0

    .line 302
    iput v3, v7, Lorg/telegram/tgnet/TLRPC$DraftMessage;->reply_to_msg_id:I

    .line 303
    iget v0, v7, Lorg/telegram/tgnet/TLRPC$DraftMessage;->flags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$DraftMessage;->flags:I

    .line 304
    iget-object v2, v7, Lorg/telegram/tgnet/TLRPC$DraftMessage;->message:Ljava/lang/String;

    iget-object v3, v7, Lorg/telegram/tgnet/TLRPC$DraftMessage;->entities:Ljava/util/ArrayList;

    iget-boolean v5, v7, Lorg/telegram/tgnet/TLRPC$DraftMessage;->no_webpage:Z

    const/4 v6, 0x1

    move-wide v0, p0

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/query/DraftQuery;->saveDraft(JLjava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;ZZ)V

    goto :goto_0
.end method

.method public static cleanup()V
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lorg/telegram/messenger/query/DraftQuery;->drafts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 98
    sget-object v0, Lorg/telegram/messenger/query/DraftQuery;->draftMessages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 99
    sget-object v0, Lorg/telegram/messenger/query/DraftQuery;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 100
    return-void
.end method

.method public static endTransaction()V
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x0

    sput-boolean v0, Lorg/telegram/messenger/query/DraftQuery;->inTransaction:Z

    .line 314
    return-void
.end method

.method public static getDraft(J)Lorg/telegram/tgnet/TLRPC$DraftMessage;
    .locals 2
    .param p0, "did"    # J

    .prologue
    .line 103
    sget-object v0, Lorg/telegram/messenger/query/DraftQuery;->drafts:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$DraftMessage;

    return-object v0
.end method

.method public static getDraftMessage(J)Lorg/telegram/tgnet/TLRPC$Message;
    .locals 2
    .param p0, "did"    # J

    .prologue
    .line 107
    sget-object v0, Lorg/telegram/messenger/query/DraftQuery;->draftMessages:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Message;

    return-object v0
.end method

.method public static loadDrafts()V
    .locals 3

    .prologue
    .line 72
    sget-boolean v1, Lorg/telegram/messenger/UserConfig;->draftsLoaded:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lorg/telegram/messenger/query/DraftQuery;->loadingDrafts:Z

    if-eqz v1, :cond_1

    .line 94
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getAllDrafts;
    :cond_0
    :goto_0
    return-void

    .line 75
    .end local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getAllDrafts;
    :cond_1
    const/4 v1, 0x1

    sput-boolean v1, Lorg/telegram/messenger/query/DraftQuery;->loadingDrafts:Z

    .line 76
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getAllDrafts;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getAllDrafts;-><init>()V

    .line 77
    .restart local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getAllDrafts;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/query/DraftQuery$1;

    invoke-direct {v2}, Lorg/telegram/messenger/query/DraftQuery$1;-><init>()V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method public static saveDraft(JLjava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;Z)V
    .locals 8
    .param p0, "did"    # J
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p4, "replyToMessage"    # Lorg/telegram/tgnet/TLRPC$Message;
    .param p5, "noWebpage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p3, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$MessageEntity;>;"
    const/4 v6, 0x0

    move-wide v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/query/DraftQuery;->saveDraft(JLjava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 112
    return-void
.end method

.method public static saveDraft(JLjava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;ZZ)V
    .locals 10
    .param p0, "did"    # J
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p4, "replyToMessage"    # Lorg/telegram/tgnet/TLRPC$Message;
    .param p5, "noWebpage"    # Z
    .param p6, "clean"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .local p3, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$MessageEntity;>;"
    const/4 v8, 0x0

    .line 116
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p4, :cond_5

    .line 117
    :cond_0
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_draftMessage;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_draftMessage;-><init>()V

    .line 121
    .local v1, "draftMessage":Lorg/telegram/tgnet/TLRPC$DraftMessage;
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, v1, Lorg/telegram/tgnet/TLRPC$DraftMessage;->date:I

    .line 122
    if-nez p2, :cond_6

    const-string/jumbo v4, ""

    :goto_1
    iput-object v4, v1, Lorg/telegram/tgnet/TLRPC$DraftMessage;->message:Ljava/lang/String;

    .line 123
    iput-boolean p5, v1, Lorg/telegram/tgnet/TLRPC$DraftMessage;->no_webpage:Z

    .line 124
    if-eqz p4, :cond_1

    .line 125
    iget v4, p4, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v4, v1, Lorg/telegram/tgnet/TLRPC$DraftMessage;->reply_to_msg_id:I

    .line 126
    iget v4, v1, Lorg/telegram/tgnet/TLRPC$DraftMessage;->flags:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v1, Lorg/telegram/tgnet/TLRPC$DraftMessage;->flags:I

    .line 128
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 129
    iput-object p3, v1, Lorg/telegram/tgnet/TLRPC$DraftMessage;->entities:Ljava/util/ArrayList;

    .line 130
    iget v4, v1, Lorg/telegram/tgnet/TLRPC$DraftMessage;->flags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v1, Lorg/telegram/tgnet/TLRPC$DraftMessage;->flags:I

    .line 133
    :cond_2
    sget-object v4, Lorg/telegram/messenger/query/DraftQuery;->drafts:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$DraftMessage;

    .line 134
    .local v0, "currentDraft":Lorg/telegram/tgnet/TLRPC$DraftMessage;
    if-nez p6, :cond_7

    .line 135
    if-eqz v0, :cond_3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->message:Ljava/lang/String;

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$DraftMessage;->message:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->reply_to_msg_id:I

    iget v5, v1, Lorg/telegram/tgnet/TLRPC$DraftMessage;->reply_to_msg_id:I

    if-ne v4, v5, :cond_3

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->no_webpage:Z

    iget-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$DraftMessage;->no_webpage:Z

    if-eq v4, v5, :cond_4

    :cond_3
    if-nez v0, :cond_7

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$DraftMessage;->message:Ljava/lang/String;

    .line 136
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, v1, Lorg/telegram/tgnet/TLRPC$DraftMessage;->reply_to_msg_id:I

    if-nez v4, :cond_7

    .line 163
    :cond_4
    :goto_2
    return-void

    .line 119
    .end local v0    # "currentDraft":Lorg/telegram/tgnet/TLRPC$DraftMessage;
    .end local v1    # "draftMessage":Lorg/telegram/tgnet/TLRPC$DraftMessage;
    :cond_5
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_draftMessageEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_draftMessageEmpty;-><init>()V

    .restart local v1    # "draftMessage":Lorg/telegram/tgnet/TLRPC$DraftMessage;
    goto :goto_0

    .line 122
    :cond_6
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 141
    .restart local v0    # "currentDraft":Lorg/telegram/tgnet/TLRPC$DraftMessage;
    :cond_7
    invoke-static {p0, p1, v1, p4, v8}, Lorg/telegram/messenger/query/DraftQuery;->saveDraft(JLorg/telegram/tgnet/TLRPC$DraftMessage;Lorg/telegram/tgnet/TLRPC$Message;Z)V

    .line 142
    long-to-int v2, p0

    .line 143
    .local v2, "lower_id":I
    if-eqz v2, :cond_8

    .line 144
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messages_saveDraft;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messages_saveDraft;-><init>()V

    .line 145
    .local v3, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_saveDraft;
    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v4

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_saveDraft;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 146
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_saveDraft;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v4, :cond_4

    .line 149
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$DraftMessage;->message:Ljava/lang/String;

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_saveDraft;->message:Ljava/lang/String;

    .line 150
    iget-boolean v4, v1, Lorg/telegram/tgnet/TLRPC$DraftMessage;->no_webpage:Z

    iput-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_saveDraft;->no_webpage:Z

    .line 151
    iget v4, v1, Lorg/telegram/tgnet/TLRPC$DraftMessage;->reply_to_msg_id:I

    iput v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_saveDraft;->reply_to_msg_id:I

    .line 152
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$DraftMessage;->entities:Ljava/util/ArrayList;

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_saveDraft;->entities:Ljava/util/ArrayList;

    .line 153
    iget v4, v1, Lorg/telegram/tgnet/TLRPC$DraftMessage;->flags:I

    iput v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_saveDraft;->flags:I

    .line 154
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v5, Lorg/telegram/messenger/query/DraftQuery$2;

    invoke-direct {v5}, Lorg/telegram/messenger/query/DraftQuery$2;-><init>()V

    invoke-virtual {v4, v3, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 161
    .end local v3    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_saveDraft;
    :cond_8
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->sortDialogs(Ljava/util/HashMap;)V

    .line 162
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public static saveDraft(JLorg/telegram/tgnet/TLRPC$DraftMessage;Lorg/telegram/tgnet/TLRPC$Message;Z)V
    .locals 18
    .param p0, "did"    # J
    .param p2, "draft"    # Lorg/telegram/tgnet/TLRPC$DraftMessage;
    .param p3, "replyToMessage"    # Lorg/telegram/tgnet/TLRPC$Message;
    .param p4, "fromServer"    # Z

    .prologue
    .line 166
    sget-object v2, Lorg/telegram/messenger/query/DraftQuery;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 167
    .local v10, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_draftMessageEmpty;

    if-eqz v2, :cond_4

    .line 168
    :cond_0
    sget-object v2, Lorg/telegram/messenger/query/DraftQuery;->drafts:Ljava/util/HashMap;

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v2, Lorg/telegram/messenger/query/DraftQuery;->draftMessages:Ljava/util/HashMap;

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v2, Lorg/telegram/messenger/query/DraftQuery;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p0

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "r_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p0

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 181
    :goto_0
    if-nez p3, :cond_5

    .line 182
    sget-object v2, Lorg/telegram/messenger/query/DraftQuery;->draftMessages:Ljava/util/HashMap;

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "r_"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 190
    :goto_1
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 191
    if-eqz p4, :cond_3

    .line 192
    move-object/from16 v0, p2

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->reply_to_msg_id:I

    if-eqz v2, :cond_2

    if-nez p3, :cond_2

    .line 193
    move-wide/from16 v0, p0

    long-to-int v11, v0

    .line 194
    .local v11, "lower_id":I
    const/4 v15, 0x0

    .line 195
    .local v15, "user":Lorg/telegram/tgnet/TLRPC$User;
    const/4 v8, 0x0

    .line 196
    .local v8, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-lez v11, :cond_6

    .line 197
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v15

    .line 201
    :goto_2
    if-nez v15, :cond_1

    if-eqz v8, :cond_2

    .line 202
    :cond_1
    move-object/from16 v0, p2

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->reply_to_msg_id:I

    int-to-long v12, v2

    .line 204
    .local v12, "messageId":J
    invoke-static {v8}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 205
    iget v2, v8, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    int-to-long v6, v2

    const/16 v2, 0x20

    shl-long/2addr v6, v2

    or-long/2addr v12, v6

    .line 206
    iget v5, v8, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    .line 210
    .local v5, "channelIdFinal":I
    :goto_3
    move-wide v3, v12

    .line 212
    .local v3, "messageIdFinal":J
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v16

    new-instance v2, Lorg/telegram/messenger/query/DraftQuery$3;

    move-wide/from16 v6, p0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/query/DraftQuery$3;-><init>(JIJ)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 267
    .end local v3    # "messageIdFinal":J
    .end local v5    # "channelIdFinal":I
    .end local v8    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v11    # "lower_id":I
    .end local v12    # "messageId":J
    .end local v15    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v6, Lorg/telegram/messenger/NotificationCenter;->newDraftReceived:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v7, v16

    invoke-virtual {v2, v6, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 269
    :cond_3
    return-void

    .line 172
    :cond_4
    sget-object v2, Lorg/telegram/messenger/query/DraftQuery;->drafts:Ljava/util/HashMap;

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v2, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :try_start_0
    new-instance v14, Lorg/telegram/tgnet/SerializedData;

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/tgnet/TLRPC$DraftMessage;->getObjectSize()I

    move-result v2

    invoke-direct {v14, v2}, Lorg/telegram/tgnet/SerializedData;-><init>(I)V

    .line 175
    .local v14, "serializedData":Lorg/telegram/tgnet/SerializedData;
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lorg/telegram/tgnet/TLRPC$DraftMessage;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v10, v2, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 177
    .end local v14    # "serializedData":Lorg/telegram/tgnet/SerializedData;
    :catch_0
    move-exception v9

    .line 178
    .local v9, "e":Ljava/lang/Exception;
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 185
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_5
    sget-object v2, Lorg/telegram/messenger/query/DraftQuery;->draftMessages:Ljava/util/HashMap;

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v2, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    new-instance v14, Lorg/telegram/tgnet/SerializedData;

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/tgnet/TLRPC$Message;->getObjectSize()I

    move-result v2

    invoke-direct {v14, v2}, Lorg/telegram/tgnet/SerializedData;-><init>(I)V

    .line 187
    .restart local v14    # "serializedData":Lorg/telegram/tgnet/SerializedData;
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lorg/telegram/tgnet/TLRPC$Message;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "r_"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v10, v2, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1

    .line 199
    .end local v14    # "serializedData":Lorg/telegram/tgnet/SerializedData;
    .restart local v8    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v11    # "lower_id":I
    .restart local v15    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_6
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    neg-int v6, v11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v8

    goto/16 :goto_2

    .line 208
    .restart local v12    # "messageId":J
    :cond_7
    const/4 v5, 0x0

    .restart local v5    # "channelIdFinal":I
    goto/16 :goto_3
.end method

.method private static saveDraftReplyMessage(JLorg/telegram/tgnet/TLRPC$Message;)V
    .locals 2
    .param p0, "did"    # J
    .param p2, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 272
    if-nez p2, :cond_0

    .line 288
    :goto_0
    return-void

    .line 275
    :cond_0
    new-instance v0, Lorg/telegram/messenger/query/DraftQuery$4;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/messenger/query/DraftQuery$4;-><init>(JLorg/telegram/tgnet/TLRPC$Message;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
