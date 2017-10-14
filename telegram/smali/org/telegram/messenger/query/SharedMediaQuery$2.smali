.class final Lorg/telegram/messenger/query/SharedMediaQuery$2;
.super Ljava/lang/Object;
.source "SharedMediaQuery.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaCount(JIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$classGuid:I

.field final synthetic val$type:I

.field final synthetic val$uid:J


# direct methods
.method constructor <init>(JII)V
    .locals 1

    .prologue
    .line 113
    iput-wide p1, p0, Lorg/telegram/messenger/query/SharedMediaQuery$2;->val$uid:J

    iput p3, p0, Lorg/telegram/messenger/query/SharedMediaQuery$2;->val$type:I

    iput p4, p0, Lorg/telegram/messenger/query/SharedMediaQuery$2;->val$classGuid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    const/4 v5, 0x1

    .line 116
    if-nez p2, :cond_0

    move-object v0, p1

    .line 117
    check-cast v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .line 118
    .local v0, "res":Lorg/telegram/tgnet/TLRPC$messages_Messages;
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4, v5, v5}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 120
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;

    if-eqz v2, :cond_1

    .line 121
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 125
    .local v1, "count":I
    :goto_0
    new-instance v2, Lorg/telegram/messenger/query/SharedMediaQuery$2$1;

    invoke-direct {v2, p0, v0}, Lorg/telegram/messenger/query/SharedMediaQuery$2$1;-><init>(Lorg/telegram/messenger/query/SharedMediaQuery$2;Lorg/telegram/tgnet/TLRPC$messages_Messages;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 133
    iget-wide v2, p0, Lorg/telegram/messenger/query/SharedMediaQuery$2;->val$uid:J

    iget v4, p0, Lorg/telegram/messenger/query/SharedMediaQuery$2;->val$type:I

    iget v5, p0, Lorg/telegram/messenger/query/SharedMediaQuery$2;->val$classGuid:I

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lorg/telegram/messenger/query/SharedMediaQuery;->access$100(IJIIZ)V

    .line 135
    .end local v0    # "res":Lorg/telegram/tgnet/TLRPC$messages_Messages;
    .end local v1    # "count":I
    :cond_0
    return-void

    .line 123
    .restart local v0    # "res":Lorg/telegram/tgnet/TLRPC$messages_Messages;
    :cond_1
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->count:I

    .restart local v1    # "count":I
    goto :goto_0
.end method
