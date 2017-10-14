.class public Lorg/telegram/ui/Adapters/StickersAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "StickersAdapter.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Adapters/StickersAdapter$StickersAdapterDelegate;
    }
.end annotation


# instance fields
.field private delegate:Lorg/telegram/ui/Adapters/StickersAdapter$StickersAdapterDelegate;

.field private lastSticker:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private stickers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation
.end field

.field private stickersToLoad:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private visible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Adapters/StickersAdapter$StickersAdapterDelegate;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "delegate"    # Lorg/telegram/ui/Adapters/StickersAdapter$StickersAdapterDelegate;

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickersToLoad:Ljava/util/ArrayList;

    .line 43
    iput-object p1, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->delegate:Lorg/telegram/ui/Adapters/StickersAdapter$StickersAdapterDelegate;

    .line 45
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/telegram/messenger/query/StickersQuery;->checkStickers(I)V

    .line 46
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/telegram/messenger/query/StickersQuery;->checkStickers(I)V

    .line 47
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 48
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 49
    return-void
.end method

.method private checkStickerFilesExistAndDownload()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 70
    iget-object v5, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    if-nez v5, :cond_0

    .line 83
    :goto_0
    return v4

    .line 73
    :cond_0
    iget-object v5, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickersToLoad:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 74
    const/16 v5, 0xa

    iget-object v6, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 75
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 76
    iget-object v5, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Document;

    .line 77
    .local v1, "document":Lorg/telegram/tgnet/TLRPC$Document;
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v6, "webp"

    invoke-static {v5, v6, v8}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v2

    .line 78
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 79
    iget-object v5, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickersToLoad:Ljava/util/ArrayList;

    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v7, "webp"

    invoke-static {v6, v7}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v5

    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-string/jumbo v7, "webp"

    invoke-virtual {v5, v6, v7, v4, v8}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;II)V

    .line 75
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 83
    .end local v1    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .end local v2    # "f":Ljava/io/File;
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickersToLoad:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    goto :goto_0
.end method


# virtual methods
.method public clearStickers()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 161
    iput-object v0, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->lastSticker:Ljava/lang/String;

    .line 162
    iput-object v0, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    .line 163
    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickersToLoad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 164
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/StickersAdapter;->notifyDataSetChanged()V

    .line 165
    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 58
    sget v2, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    if-eq p1, v2, :cond_0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    if-ne p1, v2, :cond_2

    .line 59
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickersToLoad:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->visible:Z

    if-eqz v2, :cond_2

    .line 60
    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/String;

    .line 61
    .local v0, "fileName":Ljava/lang/String;
    iget-object v2, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickersToLoad:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 62
    iget-object v2, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickersToLoad:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 63
    iget-object v2, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->delegate:Lorg/telegram/ui/Adapters/StickersAdapter$StickersAdapterDelegate;

    iget-object v3, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickersToLoad:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-interface {v2, v1}, Lorg/telegram/ui/Adapters/StickersAdapter$StickersAdapterDelegate;->needChangePanelVisibility(Z)V

    .line 67
    .end local v0    # "fileName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public getItem(I)Lorg/telegram/tgnet/TLRPC$Document;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method public loadStikersForEmoji(Ljava/lang/CharSequence;)V
    .locals 13
    .param p1, "emoji"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v12, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 87
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/16 v10, 0xe

    if-gt v7, v10, :cond_3

    move v6, v8

    .line 88
    .local v6, "search":Z
    :goto_0
    if-eqz v6, :cond_6

    .line 89
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 90
    .local v3, "length":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    if-ge v0, v3, :cond_5

    .line 91
    add-int/lit8 v7, v3, -0x1

    if-ge v0, v7, :cond_4

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const v10, 0xd83c

    if-ne v7, v10, :cond_0

    add-int/lit8 v7, v0, 0x1

    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const v10, 0xdffb

    if-lt v7, v10, :cond_0

    add-int/lit8 v7, v0, 0x1

    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const v10, 0xdfff

    if-le v7, v10, :cond_1

    :cond_0
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v10, 0x200d

    if-ne v7, v10, :cond_4

    add-int/lit8 v7, v0, 0x1

    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v10, 0x2640

    if-eq v7, v10, :cond_1

    add-int/lit8 v7, v0, 0x1

    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v10, 0x2642

    if-ne v7, v10, :cond_4

    .line 92
    :cond_1
    new-array v7, v12, [Ljava/lang/CharSequence;

    invoke-interface {p1, v9, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    aput-object v10, v7, v9

    add-int/lit8 v10, v0, 0x2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    invoke-interface {p1, v10, v11}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    aput-object v10, v7, v8

    invoke-static {v7}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 93
    add-int/lit8 v3, v3, -0x2

    .line 94
    add-int/lit8 v0, v0, -0x1

    .line 90
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "a":I
    .end local v3    # "length":I
    .end local v6    # "search":Z
    :cond_3
    move v6, v9

    .line 87
    goto :goto_0

    .line 95
    .restart local v0    # "a":I
    .restart local v3    # "length":I
    .restart local v6    # "search":Z
    :cond_4
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const v10, 0xfe0f

    if-ne v7, v10, :cond_2

    .line 96
    new-array v7, v12, [Ljava/lang/CharSequence;

    invoke-interface {p1, v9, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    aput-object v10, v7, v9

    add-int/lit8 v10, v0, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    invoke-interface {p1, v10, v11}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    aput-object v10, v7, v8

    invoke-static {v7}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 97
    add-int/lit8 v3, v3, -0x1

    .line 98
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 101
    :cond_5
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->lastSticker:Ljava/lang/String;

    .line 102
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->getAllStickers()Ljava/util/HashMap;

    move-result-object v1

    .line 103
    .local v1, "allStickers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;>;"
    if-eqz v1, :cond_6

    .line 104
    iget-object v7, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->lastSticker:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 105
    .local v4, "newStickers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    iget-object v7, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz v7, :cond_8

    if-nez v4, :cond_8

    .line 106
    iget-boolean v7, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->visible:Z

    if-eqz v7, :cond_6

    .line 107
    iget-object v7, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->delegate:Lorg/telegram/ui/Adapters/StickersAdapter$StickersAdapterDelegate;

    invoke-interface {v7, v9}, Lorg/telegram/ui/Adapters/StickersAdapter$StickersAdapterDelegate;->needChangePanelVisibility(Z)V

    .line 108
    iput-boolean v9, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->visible:Z

    .line 152
    .end local v0    # "a":I
    .end local v1    # "allStickers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;>;"
    .end local v3    # "length":I
    .end local v4    # "newStickers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    :cond_6
    :goto_3
    if-nez v6, :cond_7

    .line 153
    iget-boolean v7, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->visible:Z

    if-eqz v7, :cond_7

    iget-object v7, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz v7, :cond_7

    .line 154
    iput-boolean v9, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->visible:Z

    .line 155
    iget-object v7, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->delegate:Lorg/telegram/ui/Adapters/StickersAdapter$StickersAdapterDelegate;

    invoke-interface {v7, v9}, Lorg/telegram/ui/Adapters/StickersAdapter$StickersAdapterDelegate;->needChangePanelVisibility(Z)V

    .line 158
    :cond_7
    return-void

    .line 111
    .restart local v0    # "a":I
    .restart local v1    # "allStickers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;>;"
    .restart local v3    # "length":I
    .restart local v4    # "newStickers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    :cond_8
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_a

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_4
    iput-object v7, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    .line 112
    iget-object v7, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz v7, :cond_9

    .line 113
    invoke-static {v9}, Lorg/telegram/messenger/query/StickersQuery;->getRecentStickersNoCopy(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 114
    .local v5, "recentStickers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    invoke-static {v12}, Lorg/telegram/messenger/query/StickersQuery;->getRecentStickersNoCopy(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 115
    .local v2, "favsStickers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_9

    .line 116
    iget-object v7, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    new-instance v10, Lorg/telegram/ui/Adapters/StickersAdapter$1;

    invoke-direct {v10, p0, v2, v5}, Lorg/telegram/ui/Adapters/StickersAdapter$1;-><init>(Lorg/telegram/ui/Adapters/StickersAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v7, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 145
    .end local v2    # "favsStickers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    .end local v5    # "recentStickers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    :cond_9
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/StickersAdapter;->checkStickerFilesExistAndDownload()Z

    .line 146
    iget-object v10, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->delegate:Lorg/telegram/ui/Adapters/StickersAdapter$StickersAdapterDelegate;

    iget-object v7, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz v7, :cond_b

    iget-object v7, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_b

    iget-object v7, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickersToLoad:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_b

    move v7, v8

    :goto_5
    invoke-interface {v10, v7}, Lorg/telegram/ui/Adapters/StickersAdapter$StickersAdapterDelegate;->needChangePanelVisibility(Z)V

    .line 147
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/StickersAdapter;->notifyDataSetChanged()V

    .line 148
    iput-boolean v8, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->visible:Z

    goto :goto_3

    .line 111
    :cond_a
    const/4 v7, 0x0

    goto :goto_4

    :cond_b
    move v7, v9

    .line 146
    goto :goto_5
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1, "viewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "i"    # I

    .prologue
    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, "side":I
    if-nez p2, :cond_2

    .line 191
    iget-object v1, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 192
    const/4 v0, 0x2

    .line 199
    :cond_0
    :goto_0
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/StickerCell;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/Cells/StickerCell;->setSticker(Lorg/telegram/tgnet/TLRPC$Document;I)V

    .line 200
    return-void

    .line 194
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 196
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p2, v1, :cond_0

    .line 197
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "i"    # I

    .prologue
    .line 183
    new-instance v0, Lorg/telegram/ui/Cells/StickerCell;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/StickersAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/StickerCell;-><init>(Landroid/content/Context;)V

    .line 184
    .local v0, "view":Lorg/telegram/ui/Cells/StickerCell;
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 52
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 53
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 54
    return-void
.end method
