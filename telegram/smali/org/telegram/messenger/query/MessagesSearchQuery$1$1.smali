.class Lorg/telegram/messenger/query/MessagesSearchQuery$1$1;
.super Ljava/lang/Object;
.source "MessagesSearchQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/MessagesSearchQuery$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$1;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/query/MessagesSearchQuery$1;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/query/MessagesSearchQuery$1;

    .prologue
    .line 143
    iput-object p1, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$1$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$1;

    iput-object p2, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    .line 146
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$000()J

    move-result-wide v2

    iget-object v1, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$1$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$1;

    iget-wide v4, v1, Lorg/telegram/messenger/query/MessagesSearchQuery$1;->val$mergeDialogId:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 147
    const/4 v1, 0x0

    invoke-static {v1}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$102(I)I

    .line 148
    iget-object v1, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    if-eqz v1, :cond_0

    .line 149
    iget-object v0, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .line 150
    .local v0, "res":Lorg/telegram/tgnet/TLRPC$messages_Messages;
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$200()[Z

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    aput-boolean v2, v1, v8

    .line 151
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$300()[I

    move-result-object v2

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_messagesSlice;

    if-eqz v1, :cond_1

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->count:I

    :goto_0
    aput v1, v2, v8

    .line 152
    iget-object v1, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$1$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$1;

    iget-object v1, v1, Lorg/telegram/messenger/query/MessagesSearchQuery$1;->val$req:Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->q:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$1$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$1;

    iget-wide v2, v2, Lorg/telegram/messenger/query/MessagesSearchQuery$1;->val$dialog_id:J

    iget-object v4, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$1$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$1;

    iget-wide v4, v4, Lorg/telegram/messenger/query/MessagesSearchQuery$1;->val$mergeDialogId:J

    iget-object v6, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$1$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$1;

    iget v6, v6, Lorg/telegram/messenger/query/MessagesSearchQuery$1;->val$guid:I

    iget-object v7, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$1$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$1;

    iget v7, v7, Lorg/telegram/messenger/query/MessagesSearchQuery$1;->val$direction:I

    iget-object v9, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$1$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$1;

    iget-object v9, v9, Lorg/telegram/messenger/query/MessagesSearchQuery$1;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static/range {v1 .. v9}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$400(Ljava/lang/String;JJIIZLorg/telegram/tgnet/TLRPC$User;)V

    .line 155
    .end local v0    # "res":Lorg/telegram/tgnet/TLRPC$messages_Messages;
    :cond_0
    return-void

    .line 151
    .restart local v0    # "res":Lorg/telegram/tgnet/TLRPC$messages_Messages;
    :cond_1
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0
.end method
