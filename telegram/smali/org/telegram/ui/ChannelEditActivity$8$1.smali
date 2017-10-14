.class Lorg/telegram/ui/ChannelEditActivity$8$1;
.super Ljava/lang/Object;
.source "ChannelEditActivity.java"

# interfaces
.implements Lorg/telegram/ui/ChannelRightsEditActivity$ChannelRightsEditActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelEditActivity$8;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChannelEditActivity$8;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelEditActivity$8;I)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChannelEditActivity$8;

    .prologue
    .line 507
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditActivity$8$1;->this$1:Lorg/telegram/ui/ChannelEditActivity$8;

    iput p2, p0, Lorg/telegram/ui/ChannelEditActivity$8$1;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSetRights(ILorg/telegram/tgnet/TLRPC$TL_channelAdminRights;Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;)V
    .locals 9
    .param p1, "rights"    # I
    .param p2, "rightsAdmin"    # Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;
    .param p3, "rightsBanned"    # Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 510
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$8$1;->this$1:Lorg/telegram/ui/ChannelEditActivity$8;

    iget-object v3, v3, Lorg/telegram/ui/ChannelEditActivity$8;->val$channelParticipantFinal:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iput-object p2, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    .line 511
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$8$1;->this$1:Lorg/telegram/ui/ChannelEditActivity$8;

    iget-object v3, v3, Lorg/telegram/ui/ChannelEditActivity$8;->val$channelParticipantFinal:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iput-object p3, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    .line 512
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$8$1;->this$1:Lorg/telegram/ui/ChannelEditActivity$8;

    iget-object v3, v3, Lorg/telegram/ui/ChannelEditActivity$8;->val$actions:Ljava/util/ArrayList;

    iget v4, p0, Lorg/telegram/ui/ChannelEditActivity$8$1;->val$i:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_2

    .line 513
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$8$1;->this$1:Lorg/telegram/ui/ChannelEditActivity$8;

    iget-object v3, v3, Lorg/telegram/ui/ChannelEditActivity$8;->val$userFinal:Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    if-eqz v3, :cond_0

    .line 514
    if-ne p1, v7, :cond_1

    .line 515
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$8$1;->this$1:Lorg/telegram/ui/ChannelEditActivity$8;

    iget-object v3, v3, Lorg/telegram/ui/ChannelEditActivity$8;->val$userFinal:Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 519
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$8$1;->this$1:Lorg/telegram/ui/ChannelEditActivity$8;

    iget-object v3, v3, Lorg/telegram/ui/ChannelEditActivity$8;->val$userFinal:Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    iput v4, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->inviter_id:I

    .line 520
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$8$1;->this$1:Lorg/telegram/ui/ChannelEditActivity$8;

    iget-object v3, v3, Lorg/telegram/ui/ChannelEditActivity$8;->val$userFinal:Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity$8$1;->this$1:Lorg/telegram/ui/ChannelEditActivity$8;

    iget-object v4, v4, Lorg/telegram/ui/ChannelEditActivity$8;->val$userFinal:Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->user_id:I

    iput v4, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    .line 521
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$8$1;->this$1:Lorg/telegram/ui/ChannelEditActivity$8;

    iget-object v3, v3, Lorg/telegram/ui/ChannelEditActivity$8;->val$userFinal:Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity$8$1;->this$1:Lorg/telegram/ui/ChannelEditActivity$8;

    iget-object v4, v4, Lorg/telegram/ui/ChannelEditActivity$8;->val$userFinal:Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->date:I

    iput v4, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->date:I

    .line 554
    :cond_0
    :goto_1
    return-void

    .line 517
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$8$1;->this$1:Lorg/telegram/ui/ChannelEditActivity$8;

    iget-object v3, v3, Lorg/telegram/ui/ChannelEditActivity$8;->val$userFinal:Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_channelParticipant;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipant;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    goto :goto_0

    .line 523
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$8$1;->this$1:Lorg/telegram/ui/ChannelEditActivity$8;

    iget-object v3, v3, Lorg/telegram/ui/ChannelEditActivity$8;->val$actions:Ljava/util/ArrayList;

    iget v4, p0, Lorg/telegram/ui/ChannelEditActivity$8$1;->val$i:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v7, :cond_0

    .line 524
    if-nez p1, :cond_0

    .line 525
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$8$1;->this$1:Lorg/telegram/ui/ChannelEditActivity$8;

    iget-object v3, v3, Lorg/telegram/ui/ChannelEditActivity$8;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditActivity;->access$000(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$8$1;->this$1:Lorg/telegram/ui/ChannelEditActivity$8;

    iget-object v3, v3, Lorg/telegram/ui/ChannelEditActivity$8;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditActivity;->access$1000(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$8$1;->this$1:Lorg/telegram/ui/ChannelEditActivity$8;

    iget-object v3, v3, Lorg/telegram/ui/ChannelEditActivity$8;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditActivity;->access$1000(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v3, :cond_0

    .line 526
    const/4 v1, 0x0

    .line 527
    .local v1, "changed":Z
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$8$1;->this$1:Lorg/telegram/ui/ChannelEditActivity$8;

    iget-object v3, v3, Lorg/telegram/ui/ChannelEditActivity$8;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditActivity;->access$1000(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 528
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$8$1;->this$1:Lorg/telegram/ui/ChannelEditActivity$8;

    iget-object v3, v3, Lorg/telegram/ui/ChannelEditActivity$8;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditActivity;->access$1000(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 529
    .local v2, "p":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity$8$1;->this$1:Lorg/telegram/ui/ChannelEditActivity$8;

    iget v4, v4, Lorg/telegram/ui/ChannelEditActivity$8;->val$uid:I

    if-ne v3, v4, :cond_6

    .line 530
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$8$1;->this$1:Lorg/telegram/ui/ChannelEditActivity$8;

    iget-object v3, v3, Lorg/telegram/ui/ChannelEditActivity$8;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditActivity;->access$1000(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 531
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$8$1;->this$1:Lorg/telegram/ui/ChannelEditActivity$8;

    iget-object v3, v3, Lorg/telegram/ui/ChannelEditActivity$8;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditActivity;->access$1000(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    iget v4, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    .line 533
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$8$1;->this$1:Lorg/telegram/ui/ChannelEditActivity$8;

    iget-object v3, v3, Lorg/telegram/ui/ChannelEditActivity$8;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditActivity;->access$1000(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 534
    const/4 v1, 0x1

    .line 538
    .end local v2    # "p":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$8$1;->this$1:Lorg/telegram/ui/ChannelEditActivity$8;

    iget-object v3, v3, Lorg/telegram/ui/ChannelEditActivity$8;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditActivity;->access$1000(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$8$1;->this$1:Lorg/telegram/ui/ChannelEditActivity$8;

    iget-object v3, v3, Lorg/telegram/ui/ChannelEditActivity$8;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditActivity;->access$1000(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v3, :cond_5

    .line 539
    const/4 v0, 0x0

    :goto_3
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$8$1;->this$1:Lorg/telegram/ui/ChannelEditActivity$8;

    iget-object v3, v3, Lorg/telegram/ui/ChannelEditActivity$8;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditActivity;->access$1000(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 540
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$8$1;->this$1:Lorg/telegram/ui/ChannelEditActivity$8;

    iget-object v3, v3, Lorg/telegram/ui/ChannelEditActivity$8;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditActivity;->access$1000(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 541
    .local v2, "p":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity$8$1;->this$1:Lorg/telegram/ui/ChannelEditActivity$8;

    iget v4, v4, Lorg/telegram/ui/ChannelEditActivity$8;->val$uid:I

    if-ne v3, v4, :cond_7

    .line 542
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$8$1;->this$1:Lorg/telegram/ui/ChannelEditActivity$8;

    iget-object v3, v3, Lorg/telegram/ui/ChannelEditActivity$8;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditActivity;->access$1000(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 543
    const/4 v1, 0x1

    .line 548
    .end local v2    # "p":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_5
    if-eqz v1, :cond_0

    .line 549
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/telegram/ui/ChannelEditActivity$8$1;->this$1:Lorg/telegram/ui/ChannelEditActivity$8;

    iget-object v6, v6, Lorg/telegram/ui/ChannelEditActivity$8;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChannelEditActivity;->access$1000(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const/4 v6, 0x2

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const/4 v7, 0x0

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 527
    .local v2, "p":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 539
    .local v2, "p":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method
