.class final Lorg/telegram/messenger/query/StickersQuery$17;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery;->processLoadedFeaturedStickers(Ljava/util/ArrayList;Ljava/util/ArrayList;ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cache:Z

.field final synthetic val$date:I

.field final synthetic val$hash:I

.field final synthetic val$res:Ljava/util/ArrayList;

.field final synthetic val$unreadStickers:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(ZLjava/util/ArrayList;IILjava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 817
    iput-boolean p1, p0, Lorg/telegram/messenger/query/StickersQuery$17;->val$cache:Z

    iput-object p2, p0, Lorg/telegram/messenger/query/StickersQuery$17;->val$res:Ljava/util/ArrayList;

    iput p3, p0, Lorg/telegram/messenger/query/StickersQuery$17;->val$date:I

    iput p4, p0, Lorg/telegram/messenger/query/StickersQuery$17;->val$hash:I

    iput-object p5, p0, Lorg/telegram/messenger/query/StickersQuery$17;->val$unreadStickers:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v12, 0x0

    .line 820
    iget-boolean v5, p0, Lorg/telegram/messenger/query/StickersQuery$17;->val$cache:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/telegram/messenger/query/StickersQuery$17;->val$res:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    div-long/2addr v8, v6

    iget v5, p0, Lorg/telegram/messenger/query/StickersQuery$17;->val$date:I

    int-to-long v10, v5

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/16 v10, 0xe10

    cmp-long v5, v8, v10

    if-gez v5, :cond_1

    :cond_0
    iget-boolean v5, p0, Lorg/telegram/messenger/query/StickersQuery$17;->val$cache:Z

    if-nez v5, :cond_4

    iget-object v5, p0, Lorg/telegram/messenger/query/StickersQuery$17;->val$res:Ljava/util/ArrayList;

    if-nez v5, :cond_4

    iget v5, p0, Lorg/telegram/messenger/query/StickersQuery$17;->val$hash:I

    if-nez v5, :cond_4

    .line 821
    :cond_1
    new-instance v5, Lorg/telegram/messenger/query/StickersQuery$17$1;

    invoke-direct {v5, p0}, Lorg/telegram/messenger/query/StickersQuery$17$1;-><init>(Lorg/telegram/messenger/query/StickersQuery$17;)V

    iget-object v8, p0, Lorg/telegram/messenger/query/StickersQuery$17;->val$res:Ljava/util/ArrayList;

    if-nez v8, :cond_3

    iget-boolean v8, p0, Lorg/telegram/messenger/query/StickersQuery$17;->val$cache:Z

    if-nez v8, :cond_3

    :goto_0
    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 830
    iget-object v5, p0, Lorg/telegram/messenger/query/StickersQuery$17;->val$res:Ljava/util/ArrayList;

    if-nez v5, :cond_4

    .line 871
    :cond_2
    :goto_1
    return-void

    .line 821
    :cond_3
    const-wide/16 v6, 0x0

    goto :goto_0

    .line 834
    :cond_4
    iget-object v5, p0, Lorg/telegram/messenger/query/StickersQuery$17;->val$res:Ljava/util/ArrayList;

    if-eqz v5, :cond_7

    .line 836
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 837
    .local v4, "stickerSetsNew":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$StickerSetCovered;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 839
    .local v3, "stickerSetsByIdNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$StickerSetCovered;>;"
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    iget-object v5, p0, Lorg/telegram/messenger/query/StickersQuery$17;->val$res:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_5

    .line 840
    iget-object v5, p0, Lorg/telegram/messenger/query/StickersQuery$17;->val$res:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .line 841
    .local v2, "stickerSet":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 842
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 845
    .end local v2    # "stickerSet":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    :cond_5
    iget-boolean v5, p0, Lorg/telegram/messenger/query/StickersQuery$17;->val$cache:Z

    if-nez v5, :cond_6

    .line 846
    iget-object v5, p0, Lorg/telegram/messenger/query/StickersQuery$17;->val$unreadStickers:Ljava/util/ArrayList;

    iget v6, p0, Lorg/telegram/messenger/query/StickersQuery$17;->val$date:I

    iget v7, p0, Lorg/telegram/messenger/query/StickersQuery$17;->val$hash:I

    invoke-static {v4, v5, v6, v7}, Lorg/telegram/messenger/query/StickersQuery;->access$1400(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 848
    :cond_6
    new-instance v5, Lorg/telegram/messenger/query/StickersQuery$17$2;

    invoke-direct {v5, p0, v3, v4}, Lorg/telegram/messenger/query/StickersQuery$17$2;-><init>(Lorg/telegram/messenger/query/StickersQuery$17;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 859
    .end local v0    # "a":I
    .end local v3    # "stickerSetsByIdNew":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$StickerSetCovered;>;"
    .end local v4    # "stickerSetsNew":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$StickerSetCovered;>;"
    :catch_0
    move-exception v1

    .line 860
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 862
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_7
    iget-boolean v5, p0, Lorg/telegram/messenger/query/StickersQuery$17;->val$cache:Z

    if-nez v5, :cond_2

    .line 863
    new-instance v5, Lorg/telegram/messenger/query/StickersQuery$17$3;

    invoke-direct {v5, p0}, Lorg/telegram/messenger/query/StickersQuery$17$3;-><init>(Lorg/telegram/messenger/query/StickersQuery$17;)V

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 869
    iget v5, p0, Lorg/telegram/messenger/query/StickersQuery$17;->val$date:I

    const/4 v6, 0x0

    invoke-static {v12, v12, v5, v6}, Lorg/telegram/messenger/query/StickersQuery;->access$1400(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    goto :goto_1
.end method
