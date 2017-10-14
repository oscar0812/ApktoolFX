.class final Lorg/telegram/messenger/query/DraftQuery$4;
.super Ljava/lang/Object;
.source "DraftQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/DraftQuery;->saveDraftReplyMessage(JLorg/telegram/tgnet/TLRPC$Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$did:J

.field final synthetic val$message:Lorg/telegram/tgnet/TLRPC$Message;


# direct methods
.method constructor <init>(JLorg/telegram/tgnet/TLRPC$Message;)V
    .locals 1

    .prologue
    .line 275
    iput-wide p1, p0, Lorg/telegram/messenger/query/DraftQuery$4;->val$did:J

    iput-object p3, p0, Lorg/telegram/messenger/query/DraftQuery$4;->val$message:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 278
    invoke-static {}, Lorg/telegram/messenger/query/DraftQuery;->access$200()Ljava/util/HashMap;

    move-result-object v2

    iget-wide v4, p0, Lorg/telegram/messenger/query/DraftQuery$4;->val$did:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$DraftMessage;

    .line 279
    .local v0, "draftMessage":Lorg/telegram/tgnet/TLRPC$DraftMessage;
    if-eqz v0, :cond_0

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->reply_to_msg_id:I

    iget-object v3, p0, Lorg/telegram/messenger/query/DraftQuery$4;->val$message:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ne v2, v3, :cond_0

    .line 280
    invoke-static {}, Lorg/telegram/messenger/query/DraftQuery;->access$300()Ljava/util/HashMap;

    move-result-object v2

    iget-wide v4, p0, Lorg/telegram/messenger/query/DraftQuery$4;->val$did:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/query/DraftQuery$4;->val$message:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    new-instance v1, Lorg/telegram/tgnet/SerializedData;

    iget-object v2, p0, Lorg/telegram/messenger/query/DraftQuery$4;->val$message:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2}, Lorg/telegram/tgnet/TLRPC$Message;->getObjectSize()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/telegram/tgnet/SerializedData;-><init>(I)V

    .line 282
    .local v1, "serializedData":Lorg/telegram/tgnet/SerializedData;
    iget-object v2, p0, Lorg/telegram/messenger/query/DraftQuery$4;->val$message:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v1}, Lorg/telegram/tgnet/TLRPC$Message;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 283
    invoke-static {}, Lorg/telegram/messenger/query/DraftQuery;->access$400()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "r_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lorg/telegram/messenger/query/DraftQuery$4;->val$did:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 284
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->newDraftReceived:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, p0, Lorg/telegram/messenger/query/DraftQuery$4;->val$did:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 286
    .end local v1    # "serializedData":Lorg/telegram/tgnet/SerializedData;
    :cond_0
    return-void
.end method
