.class Lorg/telegram/ui/ProfileActivity$9$1$1;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Lorg/telegram/ui/ChannelRightsEditActivity$ChannelRightsEditActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity$9$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/ProfileActivity$9$1;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity$9$1;I)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/ProfileActivity$9$1;

    .prologue
    .line 888
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$9$1$1;->this$2:Lorg/telegram/ui/ProfileActivity$9$1;

    iput p2, p0, Lorg/telegram/ui/ProfileActivity$9$1$1;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSetRights(ILorg/telegram/tgnet/TLRPC$TL_channelAdminRights;Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;)V
    .locals 7
    .param p1, "rights"    # I
    .param p2, "rightsAdmin"    # Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;
    .param p3, "rightsBanned"    # Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    .prologue
    const/4 v6, 0x1

    .line 891
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$9$1$1;->this$2:Lorg/telegram/ui/ProfileActivity$9$1;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9$1;->val$actions:Ljava/util/ArrayList;

    iget v5, p0, Lorg/telegram/ui/ProfileActivity$9$1$1;->val$i:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_2

    .line 892
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$9$1$1;->this$2:Lorg/telegram/ui/ProfileActivity$9$1;

    iget-object v2, v4, Lorg/telegram/ui/ProfileActivity$9$1;->val$user:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    .line 893
    .local v2, "channelParticipant":Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;
    if-ne p1, v6, :cond_1

    .line 894
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;-><init>()V

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 898
    :goto_0
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v5

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->inviter_id:I

    .line 899
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$9$1$1;->this$2:Lorg/telegram/ui/ProfileActivity$9$1;

    iget-object v5, v5, Lorg/telegram/ui/ProfileActivity$9$1;->val$user:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    .line 900
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$9$1$1;->this$2:Lorg/telegram/ui/ProfileActivity$9$1;

    iget-object v5, v5, Lorg/telegram/ui/ProfileActivity$9$1;->val$user:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->date:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->date:I

    .line 901
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iput-object p3, v4, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    .line 902
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iput-object p2, v4, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    .line 936
    .end local v2    # "channelParticipant":Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;
    :cond_0
    :goto_1
    return-void

    .line 896
    .restart local v2    # "channelParticipant":Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;
    :cond_1
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_channelParticipant;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipant;-><init>()V

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    goto :goto_0

    .line 903
    .end local v2    # "channelParticipant":Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$9$1$1;->this$2:Lorg/telegram/ui/ProfileActivity$9$1;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9$1;->val$actions:Ljava/util/ArrayList;

    iget v5, p0, Lorg/telegram/ui/ProfileActivity$9$1$1;->val$i:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 904
    if-nez p1, :cond_0

    .line 905
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$9$1$1;->this$2:Lorg/telegram/ui/ProfileActivity$9$1;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9$1;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$9$1$1;->this$2:Lorg/telegram/ui/ProfileActivity$9$1;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9$1;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$9$1$1;->this$2:Lorg/telegram/ui/ProfileActivity$9$1;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9$1;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v4, :cond_0

    .line 906
    const/4 v1, 0x0

    .line 907
    .local v1, "changed":Z
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$9$1$1;->this$2:Lorg/telegram/ui/ProfileActivity$9$1;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9$1;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 908
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$9$1$1;->this$2:Lorg/telegram/ui/ProfileActivity$9$1;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9$1;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 909
    .local v3, "p":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    iget v4, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$9$1$1;->this$2:Lorg/telegram/ui/ProfileActivity$9$1;

    iget-object v5, v5, Lorg/telegram/ui/ProfileActivity$9$1;->val$user:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    if-ne v4, v5, :cond_6

    .line 910
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$9$1$1;->this$2:Lorg/telegram/ui/ProfileActivity$9$1;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9$1;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 911
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$9$1$1;->this$2:Lorg/telegram/ui/ProfileActivity$9$1;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9$1;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v4

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    .line 913
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$9$1$1;->this$2:Lorg/telegram/ui/ProfileActivity$9$1;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9$1;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 914
    const/4 v1, 0x1

    .line 918
    .end local v3    # "p":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$9$1$1;->this$2:Lorg/telegram/ui/ProfileActivity$9$1;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9$1;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$9$1$1;->this$2:Lorg/telegram/ui/ProfileActivity$9$1;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9$1;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v4, :cond_5

    .line 919
    const/4 v0, 0x0

    :goto_3
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$9$1$1;->this$2:Lorg/telegram/ui/ProfileActivity$9$1;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9$1;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 920
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$9$1$1;->this$2:Lorg/telegram/ui/ProfileActivity$9$1;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9$1;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 921
    .local v3, "p":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    iget v4, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$9$1$1;->this$2:Lorg/telegram/ui/ProfileActivity$9$1;

    iget-object v5, v5, Lorg/telegram/ui/ProfileActivity$9$1;->val$user:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    if-ne v4, v5, :cond_7

    .line 922
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$9$1$1;->this$2:Lorg/telegram/ui/ProfileActivity$9$1;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9$1;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 923
    const/4 v1, 0x1

    .line 928
    .end local v3    # "p":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_5
    if-eqz v1, :cond_0

    .line 929
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$9$1$1;->this$2:Lorg/telegram/ui/ProfileActivity$9$1;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9$1;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$3500(Lorg/telegram/ui/ProfileActivity;)V

    .line 930
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$9$1$1;->this$2:Lorg/telegram/ui/ProfileActivity$9$1;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9$1;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$3600(Lorg/telegram/ui/ProfileActivity;)V

    .line 931
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$9$1$1;->this$2:Lorg/telegram/ui/ProfileActivity$9$1;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9$1;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iget-object v4, v4, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$2000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_1

    .line 907
    .local v3, "p":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 919
    .local v3, "p":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method
