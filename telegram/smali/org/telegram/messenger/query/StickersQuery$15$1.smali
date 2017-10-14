.class Lorg/telegram/messenger/query/StickersQuery$15$1;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery$15;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/query/StickersQuery$15;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/query/StickersQuery$15;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/query/StickersQuery$15;

    .prologue
    .line 793
    iput-object p1, p0, Lorg/telegram/messenger/query/StickersQuery$15$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$15;

    iput-object p2, p0, Lorg/telegram/messenger/query/StickersQuery$15$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 796
    iget-object v1, p0, Lorg/telegram/messenger/query/StickersQuery$15$1;->val$response:Lorg/telegram/tgnet/TLObject;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_featuredStickers;

    if-eqz v1, :cond_0

    .line 797
    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$15$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_featuredStickers;

    .line 798
    .local v0, "res":Lorg/telegram/tgnet/TLRPC$TL_messages_featuredStickers;
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_featuredStickers;->sets:Ljava/util/ArrayList;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_featuredStickers;->unread:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v8

    long-to-int v3, v4

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_featuredStickers;->hash:I

    invoke-static {v1, v2, v6, v3, v4}, Lorg/telegram/messenger/query/StickersQuery;->access$1000(Ljava/util/ArrayList;Ljava/util/ArrayList;ZII)V

    .line 802
    .end local v0    # "res":Lorg/telegram/tgnet/TLRPC$TL_messages_featuredStickers;
    :goto_0
    return-void

    .line 800
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v8

    long-to-int v1, v2

    iget-object v2, p0, Lorg/telegram/messenger/query/StickersQuery$15$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$15;

    iget-object v2, v2, Lorg/telegram/messenger/query/StickersQuery$15;->val$req:Lorg/telegram/tgnet/TLRPC$TL_messages_getFeaturedStickers;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getFeaturedStickers;->hash:I

    invoke-static {v4, v4, v6, v1, v2}, Lorg/telegram/messenger/query/StickersQuery;->access$1000(Ljava/util/ArrayList;Ljava/util/ArrayList;ZII)V

    goto :goto_0
.end method
