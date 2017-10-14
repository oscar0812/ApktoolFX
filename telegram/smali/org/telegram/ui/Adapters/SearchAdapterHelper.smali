.class public Lorg/telegram/ui/Adapters/SearchAdapterHelper;
.super Ljava/lang/Object;
.source "SearchAdapterHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;,
        Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;
    }
.end annotation


# instance fields
.field private channelLastReqId:I

.field private channelLastReqId2:I

.field private channelReqId:I

.field private channelReqId2:I

.field private delegate:Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;

.field private globalSearch:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;"
        }
    .end annotation
.end field

.field private groupSearch:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$ChannelParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private groupSearch2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$ChannelParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private hashtags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;",
            ">;"
        }
    .end annotation
.end field

.field private hashtagsByText:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;",
            ">;"
        }
    .end annotation
.end field

.field private hashtagsLoadedFromDb:Z

.field private lastFoundChannel:Ljava/lang/String;

.field private lastFoundChannel2:Ljava/lang/String;

.field private lastFoundUsername:Ljava/lang/String;

.field private lastReqId:I

.field private reqId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->reqId:I

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->lastFoundUsername:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearch:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->groupSearch:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->groupSearch2:Ljava/util/ArrayList;

    .line 50
    iput v1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->channelReqId:I

    .line 54
    iput v1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->channelReqId2:I

    .line 60
    iput-boolean v1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtagsLoadedFromDb:Z

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Adapters/SearchAdapterHelper;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    .prologue
    .line 29
    iget v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->channelLastReqId:I

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Adapters/SearchAdapterHelper;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    .prologue
    .line 29
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearch:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Adapters/SearchAdapterHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/SearchAdapterHelper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->lastFoundChannel:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Adapters/SearchAdapterHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/SearchAdapterHelper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->lastFoundUsername:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Adapters/SearchAdapterHelper;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/SearchAdapterHelper;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->reqId:I

    return p1
.end method

.method static synthetic access$202(Lorg/telegram/ui/Adapters/SearchAdapterHelper;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/SearchAdapterHelper;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 29
    iput-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->groupSearch:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Adapters/SearchAdapterHelper;)Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    .prologue
    .line 29
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->delegate:Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;

    return-object v0
.end method

.method static synthetic access$402(Lorg/telegram/ui/Adapters/SearchAdapterHelper;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/SearchAdapterHelper;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->channelReqId:I

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/Adapters/SearchAdapterHelper;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    .prologue
    .line 29
    iget v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->channelLastReqId2:I

    return v0
.end method

.method static synthetic access$602(Lorg/telegram/ui/Adapters/SearchAdapterHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/SearchAdapterHelper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->lastFoundChannel2:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lorg/telegram/ui/Adapters/SearchAdapterHelper;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/SearchAdapterHelper;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 29
    iput-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->groupSearch2:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$802(Lorg/telegram/ui/Adapters/SearchAdapterHelper;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/SearchAdapterHelper;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->channelReqId2:I

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/Adapters/SearchAdapterHelper;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    .prologue
    .line 29
    iget v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->lastReqId:I

    return v0
.end method

.method private putRecentHashtags(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 286
    .local p1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;>;"
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Adapters/SearchAdapterHelper$5;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$5;-><init>(Lorg/telegram/ui/Adapters/SearchAdapterHelper;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 316
    return-void
.end method


# virtual methods
.method public addHashtagsFromMessage(Ljava/lang/CharSequence;)V
    .locals 12
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 251
    if-nez p1, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    const/4 v0, 0x0

    .line 255
    .local v0, "changed":Z
    const-string/jumbo v7, "(^|\\s)#[\\w@\\.]+"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 256
    .local v5, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 257
    .local v4, "matcher":Ljava/util/regex/Matcher;
    :goto_1
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 258
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    .line 259
    .local v6, "start":I
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 260
    .local v1, "end":I
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0x40

    if-eq v7, v8, :cond_2

    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0x23

    if-eq v7, v8, :cond_2

    .line 261
    add-int/lit8 v6, v6, 0x1

    .line 263
    :cond_2
    invoke-interface {p1, v6, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, "hashtag":Ljava/lang/String;
    iget-object v7, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtagsByText:Ljava/util/HashMap;

    if-nez v7, :cond_3

    .line 265
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtagsByText:Ljava/util/HashMap;

    .line 266
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtags:Ljava/util/ArrayList;

    .line 268
    :cond_3
    iget-object v7, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtagsByText:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;

    .line 269
    .local v3, "hashtagObject":Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;
    if-nez v3, :cond_4

    .line 270
    new-instance v3, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;

    .end local v3    # "hashtagObject":Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;
    invoke-direct {v3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;-><init>()V

    .line 271
    .restart local v3    # "hashtagObject":Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;
    iput-object v2, v3, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;->hashtag:Ljava/lang/String;

    .line 272
    iget-object v7, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtagsByText:Ljava/util/HashMap;

    iget-object v8, v3, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;->hashtag:Ljava/lang/String;

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    long-to-int v7, v8

    iput v7, v3, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;->date:I

    .line 277
    iget-object v7, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtags:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 278
    const/4 v0, 0x1

    .line 279
    goto :goto_1

    .line 274
    :cond_4
    iget-object v7, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtags:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 280
    .end local v1    # "end":I
    .end local v2    # "hashtag":Ljava/lang/String;
    .end local v3    # "hashtagObject":Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;
    .end local v6    # "start":I
    :cond_5
    if-eqz v0, :cond_0

    .line 281
    iget-object v7, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtags:Ljava/util/ArrayList;

    invoke-direct {p0, v7}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->putRecentHashtags(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public clearRecentHashtags()V
    .locals 2

    .prologue
    .line 347
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtags:Ljava/util/ArrayList;

    .line 348
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtagsByText:Ljava/util/HashMap;

    .line 349
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Adapters/SearchAdapterHelper$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$6;-><init>(Lorg/telegram/ui/Adapters/SearchAdapterHelper;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 359
    return-void
.end method

.method public getGlobalSearch()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearch:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getGroupSearch()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$ChannelParticipant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 323
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->groupSearch:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getGroupSearch2()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$ChannelParticipant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 327
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->groupSearch2:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHashtags()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtags:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLastFoundChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->lastFoundChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getLastFoundChannel2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->lastFoundChannel2:Ljava/lang/String;

    return-object v0
.end method

.method public getLastFoundUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->lastFoundUsername:Ljava/lang/String;

    return-object v0
.end method

.method public loadRecentHashtags()Z
    .locals 2

    .prologue
    .line 202
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtagsLoadedFromDb:Z

    if-eqz v0, :cond_0

    .line 203
    const/4 v0, 0x1

    .line 243
    :goto_0
    return v0

    .line 205
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Adapters/SearchAdapterHelper$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$4;-><init>(Lorg/telegram/ui/Adapters/SearchAdapterHelper;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 243
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public queryServerSearch(Ljava/lang/String;ZZZZIZ)V
    .locals 10
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "allowUsername"    # Z
    .param p3, "allowChats"    # Z
    .param p4, "allowBots"    # Z
    .param p5, "allowSelf"    # Z
    .param p6, "channelId"    # I
    .param p7, "kicked"    # Z

    .prologue
    .line 63
    iget v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->reqId:I

    if-eqz v0, :cond_0

    .line 64
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->reqId:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->reqId:I

    .line 67
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->channelReqId:I

    if-eqz v0, :cond_1

    .line 68
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->channelReqId:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->channelReqId:I

    .line 71
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->channelReqId2:I

    if-eqz v0, :cond_2

    .line 72
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->channelReqId2:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->channelReqId2:I

    .line 75
    :cond_2
    if-nez p1, :cond_4

    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->groupSearch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->groupSearch2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 78
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->lastReqId:I

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->channelLastReqId:I

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->channelLastReqId2:I

    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->delegate:Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;->onDataSetChanged()V

    .line 195
    :cond_3
    :goto_0
    return-void

    .line 85
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    if-eqz p6, :cond_7

    .line 86
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;-><init>()V

    .line 87
    .local v8, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;
    if-eqz p7, :cond_6

    .line 88
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsBanned;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsBanned;-><init>()V

    iput-object v0, v8, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    .line 92
    :goto_1
    iget-object v0, v8, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;->q:Ljava/lang/String;

    .line 93
    const/16 v0, 0x32

    iput v0, v8, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->limit:I

    .line 94
    const/4 v0, 0x0

    iput v0, v8, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->offset:I

    .line 95
    invoke-static/range {p6 .. p6}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v0

    iput-object v0, v8, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 96
    iget v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->channelLastReqId:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->channelLastReqId:I

    .line 97
    .local v2, "currentReqId":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Adapters/SearchAdapterHelper$1;

    invoke-direct {v1, p0, v2, p1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$1;-><init>(Lorg/telegram/ui/Adapters/SearchAdapterHelper;ILjava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v8, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->channelReqId:I

    .line 117
    if-eqz p7, :cond_5

    .line 118
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;

    .end local v8    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;
    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;-><init>()V

    .line 119
    .restart local v8    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsKicked;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsKicked;-><init>()V

    iput-object v0, v8, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    .line 120
    iget-object v0, v8, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;->q:Ljava/lang/String;

    .line 121
    const/16 v0, 0x32

    iput v0, v8, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->limit:I

    .line 122
    const/4 v0, 0x0

    iput v0, v8, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->offset:I

    .line 123
    invoke-static/range {p6 .. p6}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v0

    iput-object v0, v8, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 124
    iget v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->channelLastReqId2:I

    add-int/lit8 v7, v0, 0x1

    iput v7, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->channelLastReqId2:I

    .line 125
    .local v7, "currentReqId2":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Adapters/SearchAdapterHelper$2;

    invoke-direct {v1, p0, v7, p1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$2;-><init>(Lorg/telegram/ui/Adapters/SearchAdapterHelper;ILjava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v8, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->channelReqId2:I

    .line 152
    .end local v2    # "currentReqId":I
    .end local v7    # "currentReqId2":I
    .end local v8    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;
    :cond_5
    :goto_2
    if-eqz p2, :cond_3

    .line 153
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_8

    .line 154
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_contacts_search;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_contacts_search;-><init>()V

    .line 155
    .local v8, "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_search;
    iput-object p1, v8, Lorg/telegram/tgnet/TLRPC$TL_contacts_search;->q:Ljava/lang/String;

    .line 156
    const/16 v0, 0x32

    iput v0, v8, Lorg/telegram/tgnet/TLRPC$TL_contacts_search;->limit:I

    .line 157
    iget v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->lastReqId:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->lastReqId:I

    .line 158
    .restart local v2    # "currentReqId":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v9

    new-instance v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$3;

    move-object v1, p0

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$3;-><init>(Lorg/telegram/ui/Adapters/SearchAdapterHelper;IZZZLjava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {v9, v8, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->reqId:I

    goto/16 :goto_0

    .line 90
    .end local v2    # "currentReqId":I
    .local v8, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;
    :cond_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsSearch;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsSearch;-><init>()V

    iput-object v0, v8, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    goto/16 :goto_1

    .line 147
    .end local v8    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->groupSearch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 148
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->groupSearch2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 149
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->channelLastReqId:I

    .line 150
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->delegate:Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;->onDataSetChanged()V

    goto :goto_2

    .line 190
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 191
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->lastReqId:I

    .line 192
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->delegate:Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;->onDataSetChanged()V

    goto/16 :goto_0
.end method

.method public setDelegate(Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;)V
    .locals 0
    .param p1, "searchAdapterHelperDelegate"    # Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;

    .prologue
    .line 247
    iput-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->delegate:Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;

    .line 248
    return-void
.end method

.method public setHashtags(Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 362
    .local p1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;>;"
    .local p2, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;>;"
    iput-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtags:Ljava/util/ArrayList;

    .line 363
    iput-object p2, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtagsByText:Ljava/util/HashMap;

    .line 364
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtagsLoadedFromDb:Z

    .line 365
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->delegate:Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;

    invoke-interface {v0, p1, p2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;->onSetHashtags(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 366
    return-void
.end method

.method public unloadRecentHashtags()V
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtagsLoadedFromDb:Z

    .line 199
    return-void
.end method
