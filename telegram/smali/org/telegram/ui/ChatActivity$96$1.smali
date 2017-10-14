.class Lorg/telegram/ui/ChatActivity$96$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$96;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$96;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$96;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChatActivity$96;

    .prologue
    .line 8925
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$96$1;->this$1:Lorg/telegram/ui/ChatActivity$96;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$96$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 8929
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$96$1;->this$1:Lorg/telegram/ui/ChatActivity$96;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$96;->val$progressDialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 8933
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$96$1;->this$1:Lorg/telegram/ui/ChatActivity$96;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$96;->val$progressDialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v3, 0x0

    aput-object v3, v2, v4

    .line 8934
    const/4 v0, 0x2

    .line 8935
    .local v0, "loadType":I
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$96$1;->val$response:Lorg/telegram/tgnet/TLObject;

    if-eqz v2, :cond_0

    .line 8936
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$96$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;

    .line 8937
    .local v1, "participant":Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;->participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    if-nez v2, :cond_0

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;->participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-nez v2, :cond_0

    .line 8938
    const/4 v0, 0x0

    .line 8941
    .end local v1    # "participant":Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$96$1;->this$1:Lorg/telegram/ui/ChatActivity$96;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$96;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$96$1;->this$1:Lorg/telegram/ui/ChatActivity$96;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity$96;->val$finalSelectedObject:Lorg/telegram/messenger/MessageObject;

    invoke-static {v2, v3, v0}, Lorg/telegram/ui/ChatActivity;->access$18400(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;I)V

    .line 8942
    return-void

    .line 8930
    .end local v0    # "loadType":I
    :catch_0
    move-exception v2

    goto :goto_0
.end method
