.class public Lorg/telegram/messenger/query/SearchQuery;
.super Ljava/lang/Object;
.source "SearchQuery.java"


# static fields
.field private static bitmapRect:Landroid/graphics/RectF;

.field public static hints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_topPeer;",
            ">;"
        }
    .end annotation
.end field

.field public static inlineBots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_topPeer;",
            ">;"
        }
    .end annotation
.end field

.field private static loaded:Z

.field private static loading:Z

.field private static roundPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/messenger/query/SearchQuery;->hints:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/messenger/query/SearchQuery;->inlineBots:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lorg/telegram/messenger/query/SearchQuery;->roundPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$002(Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 0
    .param p0, "x0"    # Landroid/graphics/Paint;

    .prologue
    .line 55
    sput-object p0, Lorg/telegram/messenger/query/SearchQuery;->roundPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$100()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lorg/telegram/messenger/query/SearchQuery;->bitmapRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$102(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 0
    .param p0, "x0"    # Landroid/graphics/RectF;

    .prologue
    .line 55
    sput-object p0, Lorg/telegram/messenger/query/SearchQuery;->bitmapRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 55
    sput-boolean p0, Lorg/telegram/messenger/query/SearchQuery;->loading:Z

    return p0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 55
    sput-boolean p0, Lorg/telegram/messenger/query/SearchQuery;->loaded:Z

    return p0
.end method

.method static synthetic access$400(IID)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # D

    .prologue
    .line 55
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/messenger/query/SearchQuery;->savePeer(IID)V

    return-void
.end method

.method public static buildShortcuts()V
    .locals 4

    .prologue
    .line 75
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-ge v2, v3, :cond_0

    .line 243
    .local v0, "a":I
    .local v1, "hintsFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_topPeer;>;"
    :goto_0
    return-void

    .line 78
    .end local v0    # "a":I
    .end local v1    # "hintsFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_topPeer;>;"
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .restart local v1    # "hintsFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_topPeer;>;"
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_1
    sget-object v2, Lorg/telegram/messenger/query/SearchQuery;->hints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 80
    sget-object v2, Lorg/telegram/messenger/query/SearchQuery;->hints:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 85
    :cond_1
    sget-object v2, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/query/SearchQuery$1;

    invoke-direct {v3, v1}, Lorg/telegram/messenger/query/SearchQuery$1;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 79
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static cleanup()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 66
    sput-boolean v3, Lorg/telegram/messenger/query/SearchQuery;->loading:Z

    .line 67
    sput-boolean v3, Lorg/telegram/messenger/query/SearchQuery;->loaded:Z

    .line 68
    sget-object v0, Lorg/telegram/messenger/query/SearchQuery;->hints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 69
    sget-object v0, Lorg/telegram/messenger/query/SearchQuery;->inlineBots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 70
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->reloadHints:I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 71
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->reloadInlineHints:I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method private static deletePeer(II)V
    .locals 2
    .param p0, "did"    # I
    .param p1, "type"    # I

    .prologue
    .line 589
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/query/SearchQuery$9;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/query/SearchQuery$9;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 599
    return-void
.end method

.method public static increaseInlineRaiting(I)V
    .locals 9
    .param p0, "uid"    # I

    .prologue
    const/4 v8, 0x1

    .line 412
    sget v4, Lorg/telegram/messenger/UserConfig;->botRatingLoadTime:I

    if-eqz v4, :cond_3

    .line 413
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    sget v5, Lorg/telegram/messenger/UserConfig;->botRatingLoadTime:I

    sub-int/2addr v4, v5

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 418
    .local v1, "dt":I
    :goto_0
    const/4 v3, 0x0

    .line 419
    .local v3, "peer":Lorg/telegram/tgnet/TLRPC$TL_topPeer;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    sget-object v4, Lorg/telegram/messenger/query/SearchQuery;->inlineBots:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 420
    sget-object v4, Lorg/telegram/messenger/query/SearchQuery;->inlineBots:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_topPeer;

    .line 421
    .local v2, "p":Lorg/telegram/tgnet/TLRPC$TL_topPeer;
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-ne v4, p0, :cond_4

    .line 422
    move-object v3, v2

    .line 426
    .end local v2    # "p":Lorg/telegram/tgnet/TLRPC$TL_topPeer;
    :cond_0
    if-nez v3, :cond_1

    .line 427
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_topPeer;

    .end local v3    # "peer":Lorg/telegram/tgnet/TLRPC$TL_topPeer;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_topPeer;-><init>()V

    .line 428
    .restart local v3    # "peer":Lorg/telegram/tgnet/TLRPC$TL_topPeer;
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 429
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iput p0, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 430
    sget-object v4, Lorg/telegram/messenger/query/SearchQuery;->inlineBots:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    :cond_1
    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->rating:D

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget v6, v6, Lorg/telegram/messenger/MessagesController;->ratingDecay:I

    div-int v6, v1, v6

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    iput-wide v4, v3, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->rating:D

    .line 433
    sget-object v4, Lorg/telegram/messenger/query/SearchQuery;->inlineBots:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/messenger/query/SearchQuery$4;

    invoke-direct {v5}, Lorg/telegram/messenger/query/SearchQuery$4;-><init>()V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 444
    sget-object v4, Lorg/telegram/messenger/query/SearchQuery;->inlineBots:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x14

    if-le v4, v5, :cond_2

    .line 445
    sget-object v4, Lorg/telegram/messenger/query/SearchQuery;->inlineBots:Ljava/util/ArrayList;

    sget-object v5, Lorg/telegram/messenger/query/SearchQuery;->inlineBots:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 447
    :cond_2
    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->rating:D

    invoke-static {p0, v8, v4, v5}, Lorg/telegram/messenger/query/SearchQuery;->savePeer(IID)V

    .line 448
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->reloadInlineHints:I

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 449
    return-void

    .line 415
    .end local v0    # "a":I
    .end local v1    # "dt":I
    .end local v3    # "peer":Lorg/telegram/tgnet/TLRPC$TL_topPeer;
    :cond_3
    const/16 v1, 0x3c

    .restart local v1    # "dt":I
    goto :goto_0

    .line 419
    .restart local v0    # "a":I
    .restart local v2    # "p":Lorg/telegram/tgnet/TLRPC$TL_topPeer;
    .restart local v3    # "peer":Lorg/telegram/tgnet/TLRPC$TL_topPeer;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static increasePeerRaiting(J)V
    .locals 4
    .param p0, "did"    # J

    .prologue
    .line 494
    long-to-int v0, p0

    .line 495
    .local v0, "lower_id":I
    if-gtz v0, :cond_1

    .line 566
    :cond_0
    :goto_0
    return-void

    .line 499
    :cond_1
    if-lez v0, :cond_2

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 501
    .local v1, "user":Lorg/telegram/tgnet/TLRPC$User;
    :goto_1
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v2, :cond_0

    .line 504
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/query/SearchQuery$7;

    invoke-direct {v3, p0, p1, v0}, Lorg/telegram/messenger/query/SearchQuery$7;-><init>(JI)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 499
    .end local v1    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static loadHints(Z)V
    .locals 4
    .param p0, "cache"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 246
    sget-boolean v1, Lorg/telegram/messenger/query/SearchQuery;->loading:Z

    if-eqz v1, :cond_1

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    if-eqz p0, :cond_2

    .line 250
    sget-boolean v1, Lorg/telegram/messenger/query/SearchQuery;->loaded:Z

    if-nez v1, :cond_0

    .line 253
    sput-boolean v3, Lorg/telegram/messenger/query/SearchQuery;->loading:Z

    .line 254
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/query/SearchQuery$2;

    invoke-direct {v2}, Lorg/telegram/messenger/query/SearchQuery$2;-><init>()V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 315
    sput-boolean v3, Lorg/telegram/messenger/query/SearchQuery;->loaded:Z

    goto :goto_0

    .line 317
    :cond_2
    sput-boolean v3, Lorg/telegram/messenger/query/SearchQuery;->loading:Z

    .line 318
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;-><init>()V

    .line 319
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;
    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->hash:I

    .line 320
    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->bots_pm:Z

    .line 321
    iput-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->correspondents:Z

    .line 322
    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->groups:Z

    .line 323
    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->channels:Z

    .line 324
    iput-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->bots_inline:Z

    .line 325
    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->offset:I

    .line 326
    const/16 v1, 0x14

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->limit:I

    .line 327
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/query/SearchQuery$3;

    invoke-direct {v2}, Lorg/telegram/messenger/query/SearchQuery$3;-><init>()V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method public static removeInline(I)V
    .locals 6
    .param p0, "uid"    # I

    .prologue
    .line 452
    const/4 v1, 0x0

    .line 453
    .local v1, "category":Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPeers;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    sget-object v3, Lorg/telegram/messenger/query/SearchQuery;->inlineBots:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 454
    sget-object v3, Lorg/telegram/messenger/query/SearchQuery;->inlineBots:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_topPeer;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-ne v3, p0, :cond_1

    .line 455
    sget-object v3, Lorg/telegram/messenger/query/SearchQuery;->inlineBots:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 456
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_resetTopPeerRating;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_contacts_resetTopPeerRating;-><init>()V

    .line 457
    .local v2, "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_resetTopPeerRating;
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryBotsInline;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryBotsInline;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_resetTopPeerRating;->category:Lorg/telegram/tgnet/TLRPC$TopPeerCategory;

    .line 458
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_resetTopPeerRating;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 459
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/query/SearchQuery$5;

    invoke-direct {v4}, Lorg/telegram/messenger/query/SearchQuery$5;-><init>()V

    invoke-virtual {v3, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 465
    const/4 v3, 0x1

    invoke-static {p0, v3}, Lorg/telegram/messenger/query/SearchQuery;->deletePeer(II)V

    .line 466
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->reloadInlineHints:I

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 470
    .end local v2    # "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_resetTopPeerRating;
    :cond_0
    return-void

    .line 453
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static removePeer(I)V
    .locals 7
    .param p0, "uid"    # I

    .prologue
    const/4 v6, 0x0

    .line 473
    const/4 v1, 0x0

    .line 474
    .local v1, "category":Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPeers;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    sget-object v3, Lorg/telegram/messenger/query/SearchQuery;->hints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 475
    sget-object v3, Lorg/telegram/messenger/query/SearchQuery;->hints:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_topPeer;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-ne v3, p0, :cond_1

    .line 476
    sget-object v3, Lorg/telegram/messenger/query/SearchQuery;->hints:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 477
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->reloadHints:I

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 478
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_resetTopPeerRating;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_contacts_resetTopPeerRating;-><init>()V

    .line 479
    .local v2, "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_resetTopPeerRating;
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryCorrespondents;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryCorrespondents;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_resetTopPeerRating;->category:Lorg/telegram/tgnet/TLRPC$TopPeerCategory;

    .line 480
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_resetTopPeerRating;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 481
    invoke-static {p0, v6}, Lorg/telegram/messenger/query/SearchQuery;->deletePeer(II)V

    .line 482
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/query/SearchQuery$6;

    invoke-direct {v4}, Lorg/telegram/messenger/query/SearchQuery$6;-><init>()V

    invoke-virtual {v3, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 491
    .end local v2    # "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_resetTopPeerRating;
    :cond_0
    return-void

    .line 474
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static savePeer(IID)V
    .locals 2
    .param p0, "did"    # I
    .param p1, "type"    # I
    .param p2, "rating"    # D

    .prologue
    .line 569
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/query/SearchQuery$8;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/query/SearchQuery$8;-><init>(IID)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 586
    return-void
.end method
