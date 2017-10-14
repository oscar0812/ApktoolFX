.class Lorg/telegram/messenger/LocationController$1;
.super Ljava/lang/Object;
.source "LocationController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/LocationController;->broadcastLastKnownLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/LocationController;

.field final synthetic val$info:Lorg/telegram/messenger/LocationController$SharingLocationInfo;

.field final synthetic val$reqId:[I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/LocationController;Lorg/telegram/messenger/LocationController$SharingLocationInfo;[I)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/LocationController;

    .prologue
    .line 218
    iput-object p1, p0, Lorg/telegram/messenger/LocationController$1;->this$0:Lorg/telegram/messenger/LocationController;

    iput-object p2, p0, Lorg/telegram/messenger/LocationController$1;->val$info:Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    iput-object p3, p0, Lorg/telegram/messenger/LocationController$1;->val$reqId:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 9
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    const/4 v8, 0x0

    .line 221
    if-eqz p2, :cond_1

    .line 222
    iget-object v4, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v5, "MESSAGE_ID_INVALID"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 223
    iget-object v4, p0, Lorg/telegram/messenger/LocationController$1;->this$0:Lorg/telegram/messenger/LocationController;

    invoke-static {v4}, Lorg/telegram/messenger/LocationController;->access$600(Lorg/telegram/messenger/LocationController;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/messenger/LocationController$1;->val$info:Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 224
    iget-object v4, p0, Lorg/telegram/messenger/LocationController$1;->this$0:Lorg/telegram/messenger/LocationController;

    invoke-static {v4}, Lorg/telegram/messenger/LocationController;->access$700(Lorg/telegram/messenger/LocationController;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/messenger/LocationController$1;->val$info:Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    iget-wide v6, v5, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v4, p0, Lorg/telegram/messenger/LocationController$1;->this$0:Lorg/telegram/messenger/LocationController;

    iget-object v5, p0, Lorg/telegram/messenger/LocationController$1;->val$info:Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lorg/telegram/messenger/LocationController;->access$800(Lorg/telegram/messenger/LocationController;Lorg/telegram/messenger/LocationController$SharingLocationInfo;I)V

    .line 226
    iget-object v4, p0, Lorg/telegram/messenger/LocationController$1;->this$0:Lorg/telegram/messenger/LocationController;

    invoke-static {v4}, Lorg/telegram/messenger/LocationController;->access$900(Lorg/telegram/messenger/LocationController;)Landroid/util/SparseIntArray;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/messenger/LocationController$1;->val$reqId:[I

    aget v5, v5, v8

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->delete(I)V

    .line 227
    new-instance v4, Lorg/telegram/messenger/LocationController$1$1;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/LocationController$1$1;-><init>(Lorg/telegram/messenger/LocationController$1;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 257
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v3, p1

    .line 241
    check-cast v3, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 242
    .local v3, "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    const/4 v2, 0x0

    .line 243
    .local v2, "updated":Z
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 244
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Update;

    .line 245
    .local v1, "update":Lorg/telegram/tgnet/TLRPC$Update;
    instance-of v4, v1, Lorg/telegram/tgnet/TLRPC$TL_updateEditMessage;

    if-eqz v4, :cond_3

    .line 246
    const/4 v2, 0x1

    .line 247
    iget-object v4, p0, Lorg/telegram/messenger/LocationController$1;->val$info:Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    iget-object v4, v4, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->messageObject:Lorg/telegram/messenger/MessageObject;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_updateEditMessage;

    .end local v1    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_updateEditMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iput-object v5, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    .line 243
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 248
    .restart local v1    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_3
    instance-of v4, v1, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;

    if-eqz v4, :cond_2

    .line 249
    const/4 v2, 0x1

    .line 250
    iget-object v4, p0, Lorg/telegram/messenger/LocationController$1;->val$info:Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    iget-object v4, v4, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->messageObject:Lorg/telegram/messenger/MessageObject;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;

    .end local v1    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iput-object v5, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    goto :goto_2

    .line 253
    :cond_4
    if-eqz v2, :cond_5

    .line 254
    iget-object v4, p0, Lorg/telegram/messenger/LocationController$1;->this$0:Lorg/telegram/messenger/LocationController;

    iget-object v5, p0, Lorg/telegram/messenger/LocationController$1;->val$info:Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    invoke-static {v4, v5, v8}, Lorg/telegram/messenger/LocationController;->access$800(Lorg/telegram/messenger/LocationController;Lorg/telegram/messenger/LocationController$SharingLocationInfo;I)V

    .line 256
    :cond_5
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v3, v8}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    goto :goto_0
.end method
