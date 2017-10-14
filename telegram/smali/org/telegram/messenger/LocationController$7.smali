.class Lorg/telegram/messenger/LocationController$7;
.super Ljava/lang/Object;
.source "LocationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/LocationController;->removeSharingLocation(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/LocationController;

.field final synthetic val$did:J


# direct methods
.method constructor <init>(Lorg/telegram/messenger/LocationController;J)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/LocationController;

    .prologue
    .line 468
    iput-object p1, p0, Lorg/telegram/messenger/LocationController$7;->this$0:Lorg/telegram/messenger/LocationController;

    iput-wide p2, p0, Lorg/telegram/messenger/LocationController$7;->val$did:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 471
    iget-object v2, p0, Lorg/telegram/messenger/LocationController$7;->this$0:Lorg/telegram/messenger/LocationController;

    invoke-static {v2}, Lorg/telegram/messenger/LocationController;->access$700(Lorg/telegram/messenger/LocationController;)Ljava/util/HashMap;

    move-result-object v2

    iget-wide v4, p0, Lorg/telegram/messenger/LocationController$7;->val$did:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    .line 472
    .local v0, "info":Lorg/telegram/messenger/LocationController$SharingLocationInfo;
    if-eqz v0, :cond_0

    .line 473
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;-><init>()V

    .line 474
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;
    iget-wide v2, v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    long-to-int v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 475
    iget v2, v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->mid:I

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->id:I

    .line 476
    iput-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->stop_geo_live:Z

    .line 477
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/LocationController$7$1;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/LocationController$7$1;-><init>(Lorg/telegram/messenger/LocationController$7;)V

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 486
    iget-object v2, p0, Lorg/telegram/messenger/LocationController$7;->this$0:Lorg/telegram/messenger/LocationController;

    invoke-static {v2}, Lorg/telegram/messenger/LocationController;->access$600(Lorg/telegram/messenger/LocationController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 487
    iget-object v2, p0, Lorg/telegram/messenger/LocationController$7;->this$0:Lorg/telegram/messenger/LocationController;

    invoke-static {v2, v0, v6}, Lorg/telegram/messenger/LocationController;->access$800(Lorg/telegram/messenger/LocationController;Lorg/telegram/messenger/LocationController$SharingLocationInfo;I)V

    .line 488
    new-instance v2, Lorg/telegram/messenger/LocationController$7$2;

    invoke-direct {v2, p0, v0}, Lorg/telegram/messenger/LocationController$7$2;-><init>(Lorg/telegram/messenger/LocationController$7;Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 499
    iget-object v2, p0, Lorg/telegram/messenger/LocationController$7;->this$0:Lorg/telegram/messenger/LocationController;

    invoke-static {v2}, Lorg/telegram/messenger/LocationController;->access$600(Lorg/telegram/messenger/LocationController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 500
    iget-object v2, p0, Lorg/telegram/messenger/LocationController$7;->this$0:Lorg/telegram/messenger/LocationController;

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocationController;->access$1200(Lorg/telegram/messenger/LocationController;Z)V

    .line 504
    .end local v1    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;
    :cond_0
    return-void
.end method
