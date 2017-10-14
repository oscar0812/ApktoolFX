.class Lorg/telegram/ui/Adapters/MentionsAdapter$9;
.super Ljava/lang/Object;
.source "MentionsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/MentionsAdapter;->searchUsernameOrHashtag(Ljava/lang/String;ILjava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

.field final synthetic val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

.field final synthetic val$usernameString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/MentionsAdapter;Lorg/telegram/tgnet/TLRPC$Chat;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Adapters/MentionsAdapter;

    .prologue
    .line 776
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$9;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    iput-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$9;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iput-object p3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$9;->val$usernameString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 779
    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$9;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-static {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$2900(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/lang/Runnable;

    move-result-object v2

    if-eq v2, p0, :cond_0

    .line 821
    :goto_0
    return-void

    .line 782
    :cond_0
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;-><init>()V

    .line 783
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;
    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$9;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 784
    const/16 v2, 0x14

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->limit:I

    .line 785
    const/4 v2, 0x0

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->offset:I

    .line 786
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsSearch;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsSearch;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    .line 787
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    iget-object v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$9;->val$usernameString:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;->q:Ljava/lang/String;

    .line 788
    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$9;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-static {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$3004(Lorg/telegram/ui/Adapters/MentionsAdapter;)I

    move-result v0

    .line 789
    .local v0, "currentReqId":I
    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$9;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Adapters/MentionsAdapter$9$1;

    invoke-direct {v4, p0, v0}, Lorg/telegram/ui/Adapters/MentionsAdapter$9$1;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter$9;I)V

    invoke-virtual {v3, v1, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$3102(Lorg/telegram/ui/Adapters/MentionsAdapter;I)I

    goto :goto_0
.end method
