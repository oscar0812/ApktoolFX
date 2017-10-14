.class Lorg/telegram/ui/ChannelUsersActivity$9$1;
.super Ljava/lang/Object;
.source "ChannelUsersActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelUsersActivity$9;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChannelUsersActivity$9;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelUsersActivity$9;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChannelUsersActivity$9;

    .prologue
    .line 765
    iput-object p1, p0, Lorg/telegram/ui/ChannelUsersActivity$9$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$9;

    iput-object p2, p0, Lorg/telegram/ui/ChannelUsersActivity$9$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/ChannelUsersActivity$9$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 768
    iget-object v6, p0, Lorg/telegram/ui/ChannelUsersActivity$9$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$9;

    iget-object v6, v6, Lorg/telegram/ui/ChannelUsersActivity$9;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChannelUsersActivity;->access$2000(Lorg/telegram/ui/ChannelUsersActivity;)Z

    move-result v6

    if-nez v6, :cond_2

    move v1, v7

    .line 769
    .local v1, "changeFirst":Z
    :goto_0
    iget-object v6, p0, Lorg/telegram/ui/ChannelUsersActivity$9$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$9;

    iget-object v6, v6, Lorg/telegram/ui/ChannelUsersActivity$9;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v6, v8}, Lorg/telegram/ui/ChannelUsersActivity;->access$2102(Lorg/telegram/ui/ChannelUsersActivity;Z)Z

    .line 770
    iget-object v6, p0, Lorg/telegram/ui/ChannelUsersActivity$9$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$9;

    iget-object v6, v6, Lorg/telegram/ui/ChannelUsersActivity$9;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v6, v7}, Lorg/telegram/ui/ChannelUsersActivity;->access$2002(Lorg/telegram/ui/ChannelUsersActivity;Z)Z

    .line 771
    iget-object v6, p0, Lorg/telegram/ui/ChannelUsersActivity$9$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$9;

    iget-object v6, v6, Lorg/telegram/ui/ChannelUsersActivity$9;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChannelUsersActivity;->access$100(Lorg/telegram/ui/ChannelUsersActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 772
    iget-object v6, p0, Lorg/telegram/ui/ChannelUsersActivity$9$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$9;

    iget-object v6, v6, Lorg/telegram/ui/ChannelUsersActivity$9;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChannelUsersActivity;->access$100(Lorg/telegram/ui/ChannelUsersActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    .line 774
    :cond_0
    iget-object v6, p0, Lorg/telegram/ui/ChannelUsersActivity$9$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v6, :cond_9

    .line 775
    iget-object v4, p0, Lorg/telegram/ui/ChannelUsersActivity$9$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;

    .line 776
    .local v4, "res":Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;->users:Ljava/util/ArrayList;

    invoke-virtual {v6, v9, v8}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 777
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v5

    .line 778
    .local v5, "selfId":I
    iget-object v6, p0, Lorg/telegram/ui/ChannelUsersActivity$9$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$9;

    iget-object v6, v6, Lorg/telegram/ui/ChannelUsersActivity$9;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChannelUsersActivity;->access$1300(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v6

    if-eqz v6, :cond_1

    .line 779
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_1

    .line 780
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    if-ne v6, v5, :cond_3

    .line 781
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 786
    .end local v0    # "a":I
    :cond_1
    iget-object v6, p0, Lorg/telegram/ui/ChannelUsersActivity$9$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$9;

    iget-object v6, v6, Lorg/telegram/ui/ChannelUsersActivity$9;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChannelUsersActivity;->access$700(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v6

    if-nez v6, :cond_6

    .line 787
    iget-object v6, p0, Lorg/telegram/ui/ChannelUsersActivity$9$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$9;

    iget-boolean v6, v6, Lorg/telegram/ui/ChannelUsersActivity$9;->val$byEndReached:Z

    if-eqz v6, :cond_4

    .line 788
    iget-object v6, p0, Lorg/telegram/ui/ChannelUsersActivity$9$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$9;

    iget-object v6, v6, Lorg/telegram/ui/ChannelUsersActivity$9;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;->participants:Ljava/util/ArrayList;

    invoke-static {v6, v8}, Lorg/telegram/ui/ChannelUsersActivity;->access$2202(Lorg/telegram/ui/ChannelUsersActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 803
    :goto_2
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_3
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_7

    .line 804
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 805
    .local v3, "participant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    iget-object v6, p0, Lorg/telegram/ui/ChannelUsersActivity$9$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$9;

    iget-object v6, v6, Lorg/telegram/ui/ChannelUsersActivity$9;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChannelUsersActivity;->access$1200(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/HashMap;

    move-result-object v6

    iget v8, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .end local v0    # "a":I
    .end local v1    # "changeFirst":Z
    .end local v3    # "participant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    .end local v4    # "res":Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;
    .end local v5    # "selfId":I
    :cond_2
    move v1, v8

    .line 768
    goto/16 :goto_0

    .line 779
    .restart local v0    # "a":I
    .restart local v1    # "changeFirst":Z
    .restart local v4    # "res":Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;
    .restart local v5    # "selfId":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 790
    .end local v0    # "a":I
    :cond_4
    iget-object v6, p0, Lorg/telegram/ui/ChannelUsersActivity$9$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$9;

    iget-object v6, v6, Lorg/telegram/ui/ChannelUsersActivity$9;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v6, v9}, Lorg/telegram/ui/ChannelUsersActivity;->access$2202(Lorg/telegram/ui/ChannelUsersActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 791
    iget-object v6, p0, Lorg/telegram/ui/ChannelUsersActivity$9$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$9;

    iget-object v6, v6, Lorg/telegram/ui/ChannelUsersActivity$9;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChannelUsersActivity;->access$1200(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 792
    iget-object v6, p0, Lorg/telegram/ui/ChannelUsersActivity$9$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$9;

    iget-object v6, v6, Lorg/telegram/ui/ChannelUsersActivity$9;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;->participants:Ljava/util/ArrayList;

    invoke-static {v6, v9}, Lorg/telegram/ui/ChannelUsersActivity;->access$1602(Lorg/telegram/ui/ChannelUsersActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 793
    if-eqz v1, :cond_5

    .line 794
    iget-object v6, p0, Lorg/telegram/ui/ChannelUsersActivity$9$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$9;

    iget-object v6, v6, Lorg/telegram/ui/ChannelUsersActivity$9;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v6, v8}, Lorg/telegram/ui/ChannelUsersActivity;->access$2002(Lorg/telegram/ui/ChannelUsersActivity;Z)Z

    .line 796
    :cond_5
    iget-object v6, p0, Lorg/telegram/ui/ChannelUsersActivity$9$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$9;

    iget-object v6, v6, Lorg/telegram/ui/ChannelUsersActivity$9;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v6, v7}, Lorg/telegram/ui/ChannelUsersActivity;->access$1802(Lorg/telegram/ui/ChannelUsersActivity;Z)Z

    .line 797
    iget-object v6, p0, Lorg/telegram/ui/ChannelUsersActivity$9$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$9;

    iget-object v6, v6, Lorg/telegram/ui/ChannelUsersActivity$9;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    const/16 v9, 0xc8

    invoke-static {v6, v8, v9}, Lorg/telegram/ui/ChannelUsersActivity;->access$1900(Lorg/telegram/ui/ChannelUsersActivity;II)V

    goto :goto_2

    .line 800
    :cond_6
    iget-object v6, p0, Lorg/telegram/ui/ChannelUsersActivity$9$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$9;

    iget-object v6, v6, Lorg/telegram/ui/ChannelUsersActivity$9;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChannelUsersActivity;->access$1200(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 801
    iget-object v6, p0, Lorg/telegram/ui/ChannelUsersActivity$9$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$9;

    iget-object v6, v6, Lorg/telegram/ui/ChannelUsersActivity$9;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;->participants:Ljava/util/ArrayList;

    invoke-static {v6, v8}, Lorg/telegram/ui/ChannelUsersActivity;->access$1602(Lorg/telegram/ui/ChannelUsersActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_2

    .line 808
    .restart local v0    # "a":I
    :cond_7
    :try_start_0
    iget-object v6, p0, Lorg/telegram/ui/ChannelUsersActivity$9$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$9;

    iget-object v6, v6, Lorg/telegram/ui/ChannelUsersActivity$9;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChannelUsersActivity;->access$700(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lorg/telegram/ui/ChannelUsersActivity$9$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$9;

    iget-object v6, v6, Lorg/telegram/ui/ChannelUsersActivity$9;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChannelUsersActivity;->access$700(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v6

    const/4 v8, 0x2

    if-ne v6, v8, :cond_b

    .line 809
    :cond_8
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;->participants:Ljava/util/ArrayList;

    new-instance v7, Lorg/telegram/ui/ChannelUsersActivity$9$1$1;

    invoke-direct {v7, p0}, Lorg/telegram/ui/ChannelUsersActivity$9$1$1;-><init>(Lorg/telegram/ui/ChannelUsersActivity$9$1;)V

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 871
    .end local v0    # "a":I
    .end local v4    # "res":Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;
    .end local v5    # "selfId":I
    :cond_9
    :goto_4
    iget-object v6, p0, Lorg/telegram/ui/ChannelUsersActivity$9$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$9;

    iget-object v6, v6, Lorg/telegram/ui/ChannelUsersActivity$9;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChannelUsersActivity;->access$1700(Lorg/telegram/ui/ChannelUsersActivity;)V

    .line 872
    iget-object v6, p0, Lorg/telegram/ui/ChannelUsersActivity$9$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$9;

    iget-object v6, v6, Lorg/telegram/ui/ChannelUsersActivity$9;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChannelUsersActivity;->access$400(Lorg/telegram/ui/ChannelUsersActivity;)Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 873
    iget-object v6, p0, Lorg/telegram/ui/ChannelUsersActivity$9$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$9;

    iget-object v6, v6, Lorg/telegram/ui/ChannelUsersActivity$9;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChannelUsersActivity;->access$400(Lorg/telegram/ui/ChannelUsersActivity;)Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->notifyDataSetChanged()V

    .line 875
    :cond_a
    return-void

    .line 852
    .restart local v0    # "a":I
    .restart local v4    # "res":Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;
    .restart local v5    # "selfId":I
    :cond_b
    :try_start_1
    iget-object v6, p0, Lorg/telegram/ui/ChannelUsersActivity$9$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$9;

    iget-object v6, v6, Lorg/telegram/ui/ChannelUsersActivity$9;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChannelUsersActivity;->access$700(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v6

    if-ne v6, v7, :cond_9

    .line 853
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;->participants:Ljava/util/ArrayList;

    new-instance v7, Lorg/telegram/ui/ChannelUsersActivity$9$1$2;

    invoke-direct {v7, p0}, Lorg/telegram/ui/ChannelUsersActivity$9$1$2;-><init>(Lorg/telegram/ui/ChannelUsersActivity$9$1;)V

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 867
    :catch_0
    move-exception v2

    .line 868
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4
.end method
