.class Lorg/telegram/ui/ChannelEditActivity$8;
.super Ljava/lang/Object;
.source "ChannelEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelEditActivity;->createMenuForParticipant(Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelEditActivity;

.field final synthetic val$actions:Ljava/util/ArrayList;

.field final synthetic val$channelParticipantFinal:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

.field final synthetic val$uid:I

.field final synthetic val$userFinal:Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelEditActivity;Ljava/util/ArrayList;ILorg/telegram/tgnet/TLRPC$ChannelParticipant;Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 500
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditActivity$8;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChannelEditActivity$8;->val$actions:Ljava/util/ArrayList;

    iput p3, p0, Lorg/telegram/ui/ChannelEditActivity$8;->val$uid:I

    iput-object p4, p0, Lorg/telegram/ui/ChannelEditActivity$8;->val$channelParticipantFinal:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iput-object p5, p0, Lorg/telegram/ui/ChannelEditActivity$8;->val$userFinal:Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 503
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$8;->val$actions:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 504
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChannelEditActivity$8;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelEditActivity;->access$100(Lorg/telegram/ui/ChannelEditActivity;)I

    move-result v2

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/ChannelEditActivity$8;->val$uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity$8;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelEditActivity;->access$1000(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->deleteUserFromChat(ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 558
    :goto_0
    return-void

    .line 506
    :cond_0
    new-instance v0, Lorg/telegram/ui/ChannelRightsEditActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$8;->val$channelParticipantFinal:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    iget-object v2, p0, Lorg/telegram/ui/ChannelEditActivity$8;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelEditActivity;->access$100(Lorg/telegram/ui/ChannelEditActivity;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$8;->val$channelParticipantFinal:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity$8;->val$channelParticipantFinal:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    iget-object v5, p0, Lorg/telegram/ui/ChannelEditActivity$8;->val$actions:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ChannelRightsEditActivity;-><init>(IILorg/telegram/tgnet/TLRPC$TL_channelAdminRights;Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;IZ)V

    .line 507
    .local v0, "fragment":Lorg/telegram/ui/ChannelRightsEditActivity;
    new-instance v1, Lorg/telegram/ui/ChannelEditActivity$8$1;

    invoke-direct {v1, p0, p2}, Lorg/telegram/ui/ChannelEditActivity$8$1;-><init>(Lorg/telegram/ui/ChannelEditActivity$8;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChannelRightsEditActivity;->setDelegate(Lorg/telegram/ui/ChannelRightsEditActivity$ChannelRightsEditActivityDelegate;)V

    .line 556
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$8;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ChannelEditActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0
.end method
