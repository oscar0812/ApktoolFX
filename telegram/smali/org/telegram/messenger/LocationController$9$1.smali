.class Lorg/telegram/messenger/LocationController$9$1;
.super Ljava/lang/Object;
.source "LocationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/LocationController$9;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/LocationController$9;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/LocationController$9;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/LocationController$9;

    .prologue
    .line 624
    iput-object p1, p0, Lorg/telegram/messenger/LocationController$9$1;->this$1:Lorg/telegram/messenger/LocationController$9;

    iput-object p2, p0, Lorg/telegram/messenger/LocationController$9$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 627
    iget-object v2, p0, Lorg/telegram/messenger/LocationController$9$1;->this$1:Lorg/telegram/messenger/LocationController$9;

    iget-object v2, v2, Lorg/telegram/messenger/LocationController$9;->this$0:Lorg/telegram/messenger/LocationController;

    invoke-static {v2}, Lorg/telegram/messenger/LocationController;->access$1400(Lorg/telegram/messenger/LocationController;)Landroid/util/LongSparseArray;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/LocationController$9$1;->this$1:Lorg/telegram/messenger/LocationController$9;

    iget-wide v4, v3, Lorg/telegram/messenger/LocationController$9;->val$did:J

    invoke-virtual {v2, v4, v5}, Landroid/util/LongSparseArray;->delete(J)V

    .line 628
    iget-object v1, p0, Lorg/telegram/messenger/LocationController$9$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .line 629
    .local v1, "res":Lorg/telegram/tgnet/TLRPC$messages_Messages;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 630
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeoLive;

    if-nez v2, :cond_0

    .line 631
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 632
    add-int/lit8 v0, v0, -0x1

    .line 629
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 635
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v8}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 636
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v8}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 637
    iget-object v2, p0, Lorg/telegram/messenger/LocationController$9$1;->this$1:Lorg/telegram/messenger/LocationController$9;

    iget-object v2, v2, Lorg/telegram/messenger/LocationController$9;->this$0:Lorg/telegram/messenger/LocationController;

    iget-object v2, v2, Lorg/telegram/messenger/LocationController;->locationsCache:Ljava/util/HashMap;

    iget-object v3, p0, Lorg/telegram/messenger/LocationController$9$1;->this$1:Lorg/telegram/messenger/LocationController$9;

    iget-wide v4, v3, Lorg/telegram/messenger/LocationController$9;->val$did:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->liveLocationsCacheChanged:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/telegram/messenger/LocationController$9$1;->this$1:Lorg/telegram/messenger/LocationController$9;

    iget-wide v6, v5, Lorg/telegram/messenger/LocationController$9;->val$did:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 639
    return-void
.end method
