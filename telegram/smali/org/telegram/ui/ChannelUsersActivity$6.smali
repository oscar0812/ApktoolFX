.class Lorg/telegram/ui/ChannelUsersActivity$6;
.super Ljava/lang/Object;
.source "ChannelUsersActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelUsersActivity;->createMenuForParticipant(Lorg/telegram/tgnet/TLRPC$ChannelParticipant;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelUsersActivity;

.field final synthetic val$actions:Ljava/util/ArrayList;

.field final synthetic val$participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

.field final synthetic val$user:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelUsersActivity;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 589
    iput-object p1, p0, Lorg/telegram/ui/ChannelUsersActivity$6;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChannelUsersActivity$6;->val$actions:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/ui/ChannelUsersActivity$6;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    iput-object p4, p0, Lorg/telegram/ui/ChannelUsersActivity$6;->val$participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 592
    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$6;->val$actions:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 593
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$6;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelUsersActivity;->access$800(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ChannelUsersActivity$6;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->deleteUserFromChat(ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 594
    const/4 v7, 0x0

    .local v7, "a":I
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$6;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelUsersActivity;->access$1600(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v7, v1, :cond_0

    .line 595
    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$6;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelUsersActivity;->access$1600(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 596
    .local v8, "p":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    iget v1, v8, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$6;->val$participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    if-ne v1, v2, :cond_1

    .line 597
    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$6;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelUsersActivity;->access$1600(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 598
    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$6;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelUsersActivity;->access$1700(Lorg/telegram/ui/ChannelUsersActivity;)V

    .line 599
    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$6;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelUsersActivity;->access$400(Lorg/telegram/ui/ChannelUsersActivity;)Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->notifyDataSetChanged()V

    .line 644
    .end local v7    # "a":I
    .end local v8    # "p":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    :cond_0
    :goto_1
    return-void

    .line 594
    .restart local v7    # "a":I
    .restart local v8    # "p":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 604
    .end local v7    # "a":I
    .end local v8    # "p":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    :cond_2
    new-instance v0, Lorg/telegram/ui/ChannelRightsEditActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$6;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$6;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelUsersActivity;->access$800(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ChannelUsersActivity$6;->val$participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    iget-object v4, p0, Lorg/telegram/ui/ChannelUsersActivity$6;->val$participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    iget-object v5, p0, Lorg/telegram/ui/ChannelUsersActivity$6;->val$actions:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ChannelRightsEditActivity;-><init>(IILorg/telegram/tgnet/TLRPC$TL_channelAdminRights;Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;IZ)V

    .line 605
    .local v0, "fragment":Lorg/telegram/ui/ChannelRightsEditActivity;
    new-instance v1, Lorg/telegram/ui/ChannelUsersActivity$6$1;

    invoke-direct {v1, p0, p2}, Lorg/telegram/ui/ChannelUsersActivity$6$1;-><init>(Lorg/telegram/ui/ChannelUsersActivity$6;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChannelRightsEditActivity;->setDelegate(Lorg/telegram/ui/ChannelRightsEditActivity$ChannelRightsEditActivityDelegate;)V

    .line 642
    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$6;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ChannelUsersActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_1
.end method
