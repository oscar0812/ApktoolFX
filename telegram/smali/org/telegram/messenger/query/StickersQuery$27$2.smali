.class Lorg/telegram/messenger/query/StickersQuery$27$2;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery$27;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/query/StickersQuery$27;

.field final synthetic val$allStickersNew:Ljava/util/HashMap;

.field final synthetic val$stickerSetsByIdNew:Ljava/util/HashMap;

.field final synthetic val$stickerSetsByNameNew:Ljava/util/HashMap;

.field final synthetic val$stickerSetsNew:Ljava/util/ArrayList;

.field final synthetic val$stickersByEmojiNew:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/query/StickersQuery$27;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/query/StickersQuery$27;

    .prologue
    .line 1313
    iput-object p1, p0, Lorg/telegram/messenger/query/StickersQuery$27$2;->this$0:Lorg/telegram/messenger/query/StickersQuery$27;

    iput-object p2, p0, Lorg/telegram/messenger/query/StickersQuery$27$2;->val$stickerSetsByIdNew:Ljava/util/HashMap;

    iput-object p3, p0, Lorg/telegram/messenger/query/StickersQuery$27$2;->val$stickerSetsByNameNew:Ljava/util/HashMap;

    iput-object p4, p0, Lorg/telegram/messenger/query/StickersQuery$27$2;->val$stickerSetsNew:Ljava/util/ArrayList;

    iput-object p5, p0, Lorg/telegram/messenger/query/StickersQuery$27$2;->val$allStickersNew:Ljava/util/HashMap;

    iput-object p6, p0, Lorg/telegram/messenger/query/StickersQuery$27$2;->val$stickersByEmojiNew:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1316
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->access$2800()[Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/query/StickersQuery$27$2;->this$0:Lorg/telegram/messenger/query/StickersQuery$27;

    iget v3, v3, Lorg/telegram/messenger/query/StickersQuery$27;->val$type:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1317
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->access$2800()[Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/query/StickersQuery$27$2;->this$0:Lorg/telegram/messenger/query/StickersQuery$27;

    iget v3, v3, Lorg/telegram/messenger/query/StickersQuery$27;->val$type:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    .line 1318
    .local v1, "set":Lorg/telegram/tgnet/TLRPC$StickerSet;
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->access$2300()Ljava/util/HashMap;

    move-result-object v2

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1319
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->access$2900()Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1316
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1321
    .end local v1    # "set":Lorg/telegram/tgnet/TLRPC$StickerSet;
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->access$2300()Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/query/StickersQuery$27$2;->val$stickerSetsByIdNew:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1322
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->access$2900()Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/query/StickersQuery$27$2;->val$stickerSetsByNameNew:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1323
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->access$2800()[Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/query/StickersQuery$27$2;->this$0:Lorg/telegram/messenger/query/StickersQuery$27;

    iget v3, v3, Lorg/telegram/messenger/query/StickersQuery$27;->val$type:I

    iget-object v4, p0, Lorg/telegram/messenger/query/StickersQuery$27$2;->val$stickerSetsNew:Ljava/util/ArrayList;

    aput-object v4, v2, v3

    .line 1324
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->access$2600()[I

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/query/StickersQuery$27$2;->this$0:Lorg/telegram/messenger/query/StickersQuery$27;

    iget v3, v3, Lorg/telegram/messenger/query/StickersQuery$27;->val$type:I

    iget-object v4, p0, Lorg/telegram/messenger/query/StickersQuery$27$2;->this$0:Lorg/telegram/messenger/query/StickersQuery$27;

    iget v4, v4, Lorg/telegram/messenger/query/StickersQuery$27;->val$hash:I

    aput v4, v2, v3

    .line 1325
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->access$3000()[I

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/query/StickersQuery$27$2;->this$0:Lorg/telegram/messenger/query/StickersQuery$27;

    iget v3, v3, Lorg/telegram/messenger/query/StickersQuery$27;->val$type:I

    iget-object v4, p0, Lorg/telegram/messenger/query/StickersQuery$27$2;->this$0:Lorg/telegram/messenger/query/StickersQuery$27;

    iget v4, v4, Lorg/telegram/messenger/query/StickersQuery$27;->val$date:I

    aput v4, v2, v3

    .line 1326
    iget-object v2, p0, Lorg/telegram/messenger/query/StickersQuery$27$2;->this$0:Lorg/telegram/messenger/query/StickersQuery$27;

    iget v2, v2, Lorg/telegram/messenger/query/StickersQuery$27;->val$type:I

    if-nez v2, :cond_1

    .line 1327
    iget-object v2, p0, Lorg/telegram/messenger/query/StickersQuery$27$2;->val$allStickersNew:Ljava/util/HashMap;

    invoke-static {v2}, Lorg/telegram/messenger/query/StickersQuery;->access$3102(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 1328
    iget-object v2, p0, Lorg/telegram/messenger/query/StickersQuery$27$2;->val$stickersByEmojiNew:Ljava/util/HashMap;

    invoke-static {v2}, Lorg/telegram/messenger/query/StickersQuery;->access$3202(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 1330
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoaded:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/telegram/messenger/query/StickersQuery$27$2;->this$0:Lorg/telegram/messenger/query/StickersQuery$27;

    iget v6, v6, Lorg/telegram/messenger/query/StickersQuery$27;->val$type:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1331
    return-void
.end method
