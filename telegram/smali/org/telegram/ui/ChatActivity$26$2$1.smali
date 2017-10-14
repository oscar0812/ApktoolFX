.class Lorg/telegram/ui/ChatActivity$26$2$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$26$2;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/ChatActivity$26$2;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$26$2;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/ChatActivity$26$2;

    .prologue
    .line 2127
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$26$2$1;->this$2:Lorg/telegram/ui/ChatActivity$26$2;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$26$2$1;->val$response:Lorg/telegram/tgnet/TLObject;

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$26$2$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 2130
    iget-object v9, p0, Lorg/telegram/ui/ChatActivity$26$2$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v9, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .line 2131
    .local v9, "res":Lorg/telegram/tgnet/TLRPC$messages_Messages;
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$26$2$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v0, :cond_0

    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2132
    :cond_0
    if-eqz v9, :cond_1

    .line 2133
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$26$2$1;->this$2:Lorg/telegram/ui/ChatActivity$26$2;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$26$2;->this$1:Lorg/telegram/ui/ChatActivity$26;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v3, v9, Lorg/telegram/tgnet/TLRPC$messages_Messages;->count:I

    invoke-static {v0, v3}, Lorg/telegram/ui/ChatActivity;->access$10402(Lorg/telegram/ui/ChatActivity;I)I

    .line 2137
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$26$2$1;->this$2:Lorg/telegram/ui/ChatActivity$26$2;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity$26$2;->this$1:Lorg/telegram/ui/ChatActivity$26;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v4

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$26$2$1;->this$2:Lorg/telegram/ui/ChatActivity$26$2;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity$26$2;->this$1:Lorg/telegram/ui/ChatActivity$26;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$10400(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    invoke-virtual {v0, v4, v5, v3}, Lorg/telegram/messenger/MessagesStorage;->resetMentionsCount(JI)V

    .line 2138
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$26$2$1;->this$2:Lorg/telegram/ui/ChatActivity$26$2;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$26$2;->this$1:Lorg/telegram/ui/ChatActivity$26;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$10400(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    if-nez v0, :cond_2

    .line 2139
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$26$2$1;->this$2:Lorg/telegram/ui/ChatActivity$26$2;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$26$2;->this$1:Lorg/telegram/ui/ChatActivity$26;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v10}, Lorg/telegram/ui/ChatActivity;->access$10202(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 2140
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$26$2$1;->this$2:Lorg/telegram/ui/ChatActivity$26$2;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$26$2;->this$1:Lorg/telegram/ui/ChatActivity$26;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v2, v10}, Lorg/telegram/ui/ChatActivity;->access$10500(Lorg/telegram/ui/ChatActivity;ZZ)V

    .line 2159
    :goto_1
    return-void

    .line 2135
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$26$2$1;->this$2:Lorg/telegram/ui/ChatActivity$26$2;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$26$2;->this$1:Lorg/telegram/ui/ChatActivity$26;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v2}, Lorg/telegram/ui/ChatActivity;->access$10402(Lorg/telegram/ui/ChatActivity;I)I

    goto :goto_0

    .line 2142
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$26$2$1;->this$2:Lorg/telegram/ui/ChatActivity$26$2;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$26$2;->this$1:Lorg/telegram/ui/ChatActivity$26;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$10600(Lorg/telegram/ui/ChatActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v3, "%d"

    new-array v4, v10, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$26$2$1;->this$2:Lorg/telegram/ui/ChatActivity$26$2;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity$26$2;->this$1:Lorg/telegram/ui/ChatActivity$26;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$10400(Lorg/telegram/ui/ChatActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2143
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$26$2$1;->this$2:Lorg/telegram/ui/ChatActivity$26$2;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$26$2;->this$1:Lorg/telegram/ui/ChatActivity$26;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity$26;->access$10300(Lorg/telegram/ui/ChatActivity$26;)V

    goto :goto_1

    .line 2146
    :cond_3
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 2147
    .local v1, "id":I
    int-to-long v6, v1

    .line 2148
    .local v6, "mid":J
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$26$2$1;->this$2:Lorg/telegram/ui/ChatActivity$26$2;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$26$2;->this$1:Lorg/telegram/ui/ChatActivity$26;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2149
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$26$2$1;->this$2:Lorg/telegram/ui/ChatActivity$26$2;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$26$2;->this$1:Lorg/telegram/ui/ChatActivity$26;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    int-to-long v4, v0

    const/16 v0, 0x20

    shl-long/2addr v4, v0

    or-long/2addr v6, v4

    .line 2151
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$26$2$1;->this$2:Lorg/telegram/ui/ChatActivity$26$2;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$26$2;->this$1:Lorg/telegram/ui/ChatActivity$26;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$2400(Lorg/telegram/ui/ChatActivity;)[Ljava/util/HashMap;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/MessageObject;

    .line 2152
    .local v8, "object":Lorg/telegram/messenger/MessageObject;
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsMention(J)V

    .line 2153
    if-eqz v8, :cond_5

    .line 2154
    iget-object v0, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput-boolean v10, v0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    .line 2155
    iget-object v0, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput-boolean v10, v0, Lorg/telegram/tgnet/TLRPC$Message;->mentioned:Z

    .line 2157
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$26$2$1;->this$2:Lorg/telegram/ui/ChatActivity$26$2;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$26$2;->this$1:Lorg/telegram/ui/ChatActivity$26;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ChatActivity;->scrollToMessageId(IIZIZ)V

    goto/16 :goto_1
.end method
