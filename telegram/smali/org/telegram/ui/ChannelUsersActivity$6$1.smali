.class Lorg/telegram/ui/ChannelUsersActivity$6$1;
.super Ljava/lang/Object;
.source "ChannelUsersActivity.java"

# interfaces
.implements Lorg/telegram/ui/ChannelRightsEditActivity$ChannelRightsEditActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelUsersActivity$6;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChannelUsersActivity$6;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelUsersActivity$6;I)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChannelUsersActivity$6;

    .prologue
    .line 605
    iput-object p1, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$6;

    iput p2, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSetRights(ILorg/telegram/tgnet/TLRPC$TL_channelAdminRights;Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;)V
    .locals 6
    .param p1, "rights"    # I
    .param p2, "rightsAdmin"    # Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;
    .param p3, "rightsBanned"    # Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    .prologue
    const/4 v5, 0x1

    .line 608
    iget-object v3, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$6;

    iget-object v3, v3, Lorg/telegram/ui/ChannelUsersActivity$6;->val$actions:Ljava/util/ArrayList;

    iget v4, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1;->val$i:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_3

    .line 609
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$6;

    iget-object v3, v3, Lorg/telegram/ui/ChannelUsersActivity$6;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelUsersActivity;->access$1600(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 610
    iget-object v3, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$6;

    iget-object v3, v3, Lorg/telegram/ui/ChannelUsersActivity$6;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelUsersActivity;->access$1600(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 611
    .local v2, "p":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    iget-object v4, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$6;

    iget-object v4, v4, Lorg/telegram/ui/ChannelUsersActivity$6;->val$participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    if-ne v3, v4, :cond_2

    .line 613
    if-ne p1, v5, :cond_1

    .line 614
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;-><init>()V

    .line 618
    .local v1, "newPart":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    :goto_1
    iput-object p2, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    .line 619
    iput-object p3, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    .line 620
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v3

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->inviter_id:I

    .line 621
    iget-object v3, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$6;

    iget-object v3, v3, Lorg/telegram/ui/ChannelUsersActivity$6;->val$participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    .line 622
    iget-object v3, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$6;

    iget-object v3, v3, Lorg/telegram/ui/ChannelUsersActivity$6;->val$participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->date:I

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->date:I

    .line 623
    iget-object v3, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$6;

    iget-object v3, v3, Lorg/telegram/ui/ChannelUsersActivity$6;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelUsersActivity;->access$1600(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 640
    .end local v0    # "a":I
    .end local v1    # "newPart":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    .end local v2    # "p":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    :cond_0
    :goto_2
    return-void

    .line 616
    .restart local v0    # "a":I
    .restart local v2    # "p":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    :cond_1
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipant;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipant;-><init>()V

    .restart local v1    # "newPart":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    goto :goto_1

    .line 609
    .end local v1    # "newPart":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 627
    .end local v0    # "a":I
    .end local v2    # "p":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$6;

    iget-object v3, v3, Lorg/telegram/ui/ChannelUsersActivity$6;->val$actions:Ljava/util/ArrayList;

    iget v4, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1;->val$i:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 628
    if-nez p1, :cond_0

    .line 629
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_3
    iget-object v3, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$6;

    iget-object v3, v3, Lorg/telegram/ui/ChannelUsersActivity$6;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelUsersActivity;->access$1600(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 630
    iget-object v3, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$6;

    iget-object v3, v3, Lorg/telegram/ui/ChannelUsersActivity$6;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelUsersActivity;->access$1600(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 631
    .restart local v2    # "p":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    iget-object v4, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$6;

    iget-object v4, v4, Lorg/telegram/ui/ChannelUsersActivity$6;->val$participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    if-ne v3, v4, :cond_4

    .line 632
    iget-object v3, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$6;

    iget-object v3, v3, Lorg/telegram/ui/ChannelUsersActivity$6;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelUsersActivity;->access$1600(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 633
    iget-object v3, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$6;

    iget-object v3, v3, Lorg/telegram/ui/ChannelUsersActivity$6;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelUsersActivity;->access$1700(Lorg/telegram/ui/ChannelUsersActivity;)V

    .line 634
    iget-object v3, p0, Lorg/telegram/ui/ChannelUsersActivity$6$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$6;

    iget-object v3, v3, Lorg/telegram/ui/ChannelUsersActivity$6;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelUsersActivity;->access$400(Lorg/telegram/ui/ChannelUsersActivity;)Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 629
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method
