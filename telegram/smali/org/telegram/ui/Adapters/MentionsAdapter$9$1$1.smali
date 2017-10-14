.class Lorg/telegram/ui/Adapters/MentionsAdapter$9$1$1;
.super Ljava/lang/Object;
.source "MentionsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/MentionsAdapter$9$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/Adapters/MentionsAdapter$9$1;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/MentionsAdapter$9$1;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/Adapters/MentionsAdapter$9$1;

    .prologue
    .line 792
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$9$1$1;->this$2:Lorg/telegram/ui/Adapters/MentionsAdapter$9$1;

    iput-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$9$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$9$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 795
    iget-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$9$1$1;->this$2:Lorg/telegram/ui/Adapters/MentionsAdapter$9$1;

    iget-object v5, v5, Lorg/telegram/ui/Adapters/MentionsAdapter$9$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$9;

    iget-object v5, v5, Lorg/telegram/ui/Adapters/MentionsAdapter$9;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-static {v5}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$3100(Lorg/telegram/ui/Adapters/MentionsAdapter;)I

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$9$1$1;->this$2:Lorg/telegram/ui/Adapters/MentionsAdapter$9$1;

    iget v5, v5, Lorg/telegram/ui/Adapters/MentionsAdapter$9$1;->val$currentReqId:I

    iget-object v6, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$9$1$1;->this$2:Lorg/telegram/ui/Adapters/MentionsAdapter$9$1;

    iget-object v6, v6, Lorg/telegram/ui/Adapters/MentionsAdapter$9$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$9;

    iget-object v6, v6, Lorg/telegram/ui/Adapters/MentionsAdapter$9;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-static {v6}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$3000(Lorg/telegram/ui/Adapters/MentionsAdapter;)I

    move-result v6

    if-ne v5, v6, :cond_4

    iget-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$9$1$1;->this$2:Lorg/telegram/ui/Adapters/MentionsAdapter$9$1;

    iget-object v5, v5, Lorg/telegram/ui/Adapters/MentionsAdapter$9$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$9;

    iget-object v5, v5, Lorg/telegram/ui/Adapters/MentionsAdapter$9;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-static {v5}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$2400(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/util/HashMap;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$9$1$1;->this$2:Lorg/telegram/ui/Adapters/MentionsAdapter$9$1;

    iget-object v5, v5, Lorg/telegram/ui/Adapters/MentionsAdapter$9$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$9;

    iget-object v5, v5, Lorg/telegram/ui/Adapters/MentionsAdapter$9;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-static {v5}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$2300(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 796
    iget-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$9$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v5, :cond_4

    .line 797
    iget-object v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$9$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;

    .line 798
    .local v3, "res":Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;->users:Ljava/util/ArrayList;

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 799
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 800
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v1

    .line 801
    .local v1, "currentUserId":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 802
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 803
    .local v2, "participant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    iget-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$9$1$1;->this$2:Lorg/telegram/ui/Adapters/MentionsAdapter$9$1;

    iget-object v5, v5, Lorg/telegram/ui/Adapters/MentionsAdapter$9$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$9;

    iget-object v5, v5, Lorg/telegram/ui/Adapters/MentionsAdapter$9;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-static {v5}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$2400(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/util/HashMap;

    move-result-object v5

    iget v6, v2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$9$1$1;->this$2:Lorg/telegram/ui/Adapters/MentionsAdapter$9$1;

    iget-object v5, v5, Lorg/telegram/ui/Adapters/MentionsAdapter$9$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$9;

    iget-object v5, v5, Lorg/telegram/ui/Adapters/MentionsAdapter$9;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-static {v5}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$3200(Lorg/telegram/ui/Adapters/MentionsAdapter;)Z

    move-result v5

    if-nez v5, :cond_1

    iget v5, v2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    if-ne v5, v1, :cond_1

    .line 801
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 806
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget v6, v2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 807
    .local v4, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v4, :cond_2

    .line 817
    .end local v0    # "a":I
    .end local v1    # "currentUserId":I
    .end local v2    # "participant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    .end local v3    # "res":Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;
    .end local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :goto_2
    return-void

    .line 810
    .restart local v0    # "a":I
    .restart local v1    # "currentUserId":I
    .restart local v2    # "participant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    .restart local v3    # "res":Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;
    .restart local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$9$1$1;->this$2:Lorg/telegram/ui/Adapters/MentionsAdapter$9$1;

    iget-object v5, v5, Lorg/telegram/ui/Adapters/MentionsAdapter$9$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$9;

    iget-object v5, v5, Lorg/telegram/ui/Adapters/MentionsAdapter$9;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-static {v5}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$2300(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 812
    .end local v2    # "participant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    .end local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$9$1$1;->this$2:Lorg/telegram/ui/Adapters/MentionsAdapter$9$1;

    iget-object v5, v5, Lorg/telegram/ui/Adapters/MentionsAdapter$9$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$9;

    iget-object v5, v5, Lorg/telegram/ui/Adapters/MentionsAdapter$9;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-virtual {v5}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    .line 816
    .end local v0    # "a":I
    .end local v1    # "currentUserId":I
    .end local v3    # "res":Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;
    :cond_4
    iget-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$9$1$1;->this$2:Lorg/telegram/ui/Adapters/MentionsAdapter$9$1;

    iget-object v5, v5, Lorg/telegram/ui/Adapters/MentionsAdapter$9$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$9;

    iget-object v5, v5, Lorg/telegram/ui/Adapters/MentionsAdapter$9;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-static {v5, v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$3102(Lorg/telegram/ui/Adapters/MentionsAdapter;I)I

    goto :goto_2
.end method
