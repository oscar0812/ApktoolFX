.class Lorg/telegram/messenger/LocationController$8;
.super Ljava/lang/Object;
.source "LocationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/LocationController;->removeAllLocationSharings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/LocationController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/LocationController;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/LocationController;

    .prologue
    .line 517
    iput-object p1, p0, Lorg/telegram/messenger/LocationController$8;->this$0:Lorg/telegram/messenger/LocationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 520
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/LocationController$8;->this$0:Lorg/telegram/messenger/LocationController;

    invoke-static {v3}, Lorg/telegram/messenger/LocationController;->access$600(Lorg/telegram/messenger/LocationController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 521
    iget-object v3, p0, Lorg/telegram/messenger/LocationController$8;->this$0:Lorg/telegram/messenger/LocationController;

    invoke-static {v3}, Lorg/telegram/messenger/LocationController;->access$600(Lorg/telegram/messenger/LocationController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    .line 522
    .local v1, "info":Lorg/telegram/messenger/LocationController$SharingLocationInfo;
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;-><init>()V

    .line 523
    .local v2, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;
    iget-wide v4, v1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    long-to-int v3, v4

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 524
    iget v3, v1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->mid:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->id:I

    .line 525
    iput-boolean v6, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->stop_geo_live:Z

    .line 526
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/LocationController$8$1;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/LocationController$8$1;-><init>(Lorg/telegram/messenger/LocationController$8;)V

    invoke-virtual {v3, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 520
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 536
    .end local v1    # "info":Lorg/telegram/messenger/LocationController$SharingLocationInfo;
    .end local v2    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;
    :cond_0
    iget-object v3, p0, Lorg/telegram/messenger/LocationController$8;->this$0:Lorg/telegram/messenger/LocationController;

    invoke-static {v3}, Lorg/telegram/messenger/LocationController;->access$600(Lorg/telegram/messenger/LocationController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 537
    iget-object v3, p0, Lorg/telegram/messenger/LocationController$8;->this$0:Lorg/telegram/messenger/LocationController;

    invoke-static {v3}, Lorg/telegram/messenger/LocationController;->access$700(Lorg/telegram/messenger/LocationController;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 538
    iget-object v3, p0, Lorg/telegram/messenger/LocationController$8;->this$0:Lorg/telegram/messenger/LocationController;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocationController;->access$800(Lorg/telegram/messenger/LocationController;Lorg/telegram/messenger/LocationController$SharingLocationInfo;I)V

    .line 539
    iget-object v3, p0, Lorg/telegram/messenger/LocationController$8;->this$0:Lorg/telegram/messenger/LocationController;

    invoke-static {v3, v6}, Lorg/telegram/messenger/LocationController;->access$1200(Lorg/telegram/messenger/LocationController;Z)V

    .line 540
    new-instance v3, Lorg/telegram/messenger/LocationController$8$2;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/LocationController$8$2;-><init>(Lorg/telegram/messenger/LocationController$8;)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 549
    return-void
.end method
