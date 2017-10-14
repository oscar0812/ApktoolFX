.class Lorg/telegram/messenger/query/StickersQuery$24$1$1$1;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery$24$1$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/messenger/query/StickersQuery$24$1$1;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/query/StickersQuery$24$1$1;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/messenger/query/StickersQuery$24$1$1;

    .prologue
    .line 1127
    iput-object p1, p0, Lorg/telegram/messenger/query/StickersQuery$24$1$1$1;->this$2:Lorg/telegram/messenger/query/StickersQuery$24$1$1;

    iput-object p2, p0, Lorg/telegram/messenger/query/StickersQuery$24$1$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 1130
    iget-object v1, p0, Lorg/telegram/messenger/query/StickersQuery$24$1$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 1131
    .local v1, "res1":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    iget-object v2, p0, Lorg/telegram/messenger/query/StickersQuery$24$1$1$1;->this$2:Lorg/telegram/messenger/query/StickersQuery$24$1$1;

    iget-object v2, v2, Lorg/telegram/messenger/query/StickersQuery$24$1$1;->val$newStickerArray:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/messenger/query/StickersQuery$24$1$1$1;->this$2:Lorg/telegram/messenger/query/StickersQuery$24$1$1;

    iget v3, v3, Lorg/telegram/messenger/query/StickersQuery$24$1$1;->val$index:I

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1132
    iget-object v2, p0, Lorg/telegram/messenger/query/StickersQuery$24$1$1$1;->this$2:Lorg/telegram/messenger/query/StickersQuery$24$1$1;

    iget-object v2, v2, Lorg/telegram/messenger/query/StickersQuery$24$1$1;->val$newStickerSets:Ljava/util/HashMap;

    iget-object v3, p0, Lorg/telegram/messenger/query/StickersQuery$24$1$1$1;->this$2:Lorg/telegram/messenger/query/StickersQuery$24$1$1;

    iget-object v3, v3, Lorg/telegram/messenger/query/StickersQuery$24$1$1;->val$stickerSet:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    iget-object v2, p0, Lorg/telegram/messenger/query/StickersQuery$24$1$1$1;->this$2:Lorg/telegram/messenger/query/StickersQuery$24$1$1;

    iget-object v2, v2, Lorg/telegram/messenger/query/StickersQuery$24$1$1;->val$newStickerSets:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/messenger/query/StickersQuery$24$1$1$1;->this$2:Lorg/telegram/messenger/query/StickersQuery$24$1$1;

    iget-object v3, v3, Lorg/telegram/messenger/query/StickersQuery$24$1$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_messages_allStickers;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_allStickers;->sets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 1134
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/query/StickersQuery$24$1$1$1;->this$2:Lorg/telegram/messenger/query/StickersQuery$24$1$1;

    iget-object v2, v2, Lorg/telegram/messenger/query/StickersQuery$24$1$1;->val$newStickerArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1135
    iget-object v2, p0, Lorg/telegram/messenger/query/StickersQuery$24$1$1$1;->this$2:Lorg/telegram/messenger/query/StickersQuery$24$1$1;

    iget-object v2, v2, Lorg/telegram/messenger/query/StickersQuery$24$1$1;->val$newStickerArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1136
    iget-object v2, p0, Lorg/telegram/messenger/query/StickersQuery$24$1$1$1;->this$2:Lorg/telegram/messenger/query/StickersQuery$24$1$1;

    iget-object v2, v2, Lorg/telegram/messenger/query/StickersQuery$24$1$1;->val$newStickerArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1134
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1139
    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/query/StickersQuery$24$1$1$1;->this$2:Lorg/telegram/messenger/query/StickersQuery$24$1$1;

    iget-object v2, v2, Lorg/telegram/messenger/query/StickersQuery$24$1$1;->this$1:Lorg/telegram/messenger/query/StickersQuery$24$1;

    iget-object v2, v2, Lorg/telegram/messenger/query/StickersQuery$24$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$24;

    iget v2, v2, Lorg/telegram/messenger/query/StickersQuery$24;->val$type:I

    iget-object v3, p0, Lorg/telegram/messenger/query/StickersQuery$24$1$1$1;->this$2:Lorg/telegram/messenger/query/StickersQuery$24$1$1;

    iget-object v3, v3, Lorg/telegram/messenger/query/StickersQuery$24$1$1;->val$newStickerArray:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v5, v6

    iget-object v6, p0, Lorg/telegram/messenger/query/StickersQuery$24$1$1$1;->this$2:Lorg/telegram/messenger/query/StickersQuery$24$1$1;

    iget-object v6, v6, Lorg/telegram/messenger/query/StickersQuery$24$1$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_messages_allStickers;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_allStickers;->hash:I

    invoke-static {v2, v3, v4, v5, v6}, Lorg/telegram/messenger/query/StickersQuery;->access$2200(ILjava/util/ArrayList;ZII)V

    .line 1141
    .end local v0    # "a":I
    :cond_2
    return-void
.end method
