.class Lorg/telegram/ui/ChannelUsersActivity$3;
.super Ljava/lang/Object;
.source "ChannelUsersActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelUsersActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelUsersActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelUsersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 337
    iput-object p1, p0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 28
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 340
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelUsersActivity;->access$600(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v4

    move/from16 v0, p2

    if-ne v0, v4, :cond_3

    .line 341
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelUsersActivity;->access$700(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v4

    if-nez v4, :cond_1

    .line 342
    new-instance v18, Landroid/os/Bundle;

    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    .line 343
    .local v18, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "chat_id"

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChannelUsersActivity;->access$800(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v7

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 344
    const-string/jumbo v4, "type"

    const/4 v7, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 345
    const-string/jumbo v4, "selectType"

    const/4 v7, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 346
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    new-instance v7, Lorg/telegram/ui/ChannelUsersActivity;

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Lorg/telegram/ui/ChannelUsersActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v4, v7}, Lorg/telegram/ui/ChannelUsersActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 504
    .end local v18    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelUsersActivity;->access$700(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_2

    .line 348
    new-instance v18, Landroid/os/Bundle;

    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    .line 349
    .restart local v18    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "chat_id"

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChannelUsersActivity;->access$800(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v7

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 350
    const-string/jumbo v4, "type"

    const/4 v7, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 351
    const-string/jumbo v4, "selectType"

    const/4 v7, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 352
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    new-instance v7, Lorg/telegram/ui/ChannelUsersActivity;

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Lorg/telegram/ui/ChannelUsersActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v4, v7}, Lorg/telegram/ui/ChannelUsersActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 353
    .end local v18    # "bundle":Landroid/os/Bundle;
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelUsersActivity;->access$700(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v4

    const/4 v7, 0x2

    if-ne v4, v7, :cond_0

    .line 354
    new-instance v17, Landroid/os/Bundle;

    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    .line 355
    .local v17, "args":Landroid/os/Bundle;
    const-string/jumbo v4, "onlyUsers"

    const/4 v7, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 356
    const-string/jumbo v4, "destroyAfterSelect"

    const/4 v7, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 357
    const-string/jumbo v4, "returnAsResult"

    const/4 v7, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 358
    const-string/jumbo v4, "needForwardCount"

    const/4 v7, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 359
    const-string/jumbo v4, "selectAlertString"

    const-string/jumbo v7, "ChannelAddTo"

    const v9, 0x7f070106

    invoke-static {v7, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    new-instance v2, Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Lorg/telegram/ui/ContactsActivity;-><init>(Landroid/os/Bundle;)V

    .line 361
    .local v2, "fragment":Lorg/telegram/ui/ContactsActivity;
    new-instance v4, Lorg/telegram/ui/ChannelUsersActivity$3$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ChannelUsersActivity$3$1;-><init>(Lorg/telegram/ui/ChannelUsersActivity$3;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ContactsActivity;->setDelegate(Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;)V

    .line 367
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/ChannelUsersActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 369
    .end local v2    # "fragment":Lorg/telegram/ui/ContactsActivity;
    .end local v17    # "args":Landroid/os/Bundle;
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelUsersActivity;->access$900(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v4

    move/from16 v0, p2

    if-ne v0, v4, :cond_4

    .line 370
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    new-instance v7, Lorg/telegram/ui/GroupInviteActivity;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChannelUsersActivity;->access$800(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v9

    invoke-direct {v7, v9}, Lorg/telegram/ui/GroupInviteActivity;-><init>(I)V

    invoke-virtual {v4, v7}, Lorg/telegram/ui/ChannelUsersActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 371
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelUsersActivity;->access$1000(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v4

    move/from16 v0, p2

    if-eq v0, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelUsersActivity;->access$1100(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v4

    move/from16 v0, p2

    if-ne v0, v4, :cond_c

    .line 372
    :cond_5
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChannelUsersActivity;->access$800(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v20

    .line 373
    .local v20, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v20, :cond_0

    .line 376
    const/16 v19, 0x0

    .line 377
    .local v19, "changed":Z
    const/4 v4, 0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_a

    move-object/from16 v0, v20

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    if-nez v4, :cond_a

    .line 378
    const/4 v4, 0x1

    move-object/from16 v0, v20

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    .line 379
    const/16 v19, 0x1

    .line 384
    :cond_6
    :goto_1
    if-eqz v19, :cond_0

    .line 385
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChannelUsersActivity;->access$800(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v7

    move-object/from16 v0, v20

    iget-boolean v9, v0, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    invoke-virtual {v4, v7, v9}, Lorg/telegram/messenger/MessagesController;->toogleChannelInvites(IZ)V

    .line 386
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelUsersActivity;->access$500(Lorg/telegram/ui/ChannelUsersActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v22

    .line 387
    .local v22, "count":I
    const/16 v16, 0x0

    .local v16, "a":I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    .line 388
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelUsersActivity;->access$500(Lorg/telegram/ui/ChannelUsersActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 389
    .local v21, "child":Landroid/view/View;
    move-object/from16 v0, v21

    instance-of v4, v0, Lorg/telegram/ui/Cells/RadioCell;

    if-eqz v4, :cond_9

    .line 390
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 391
    .local v23, "num":I
    check-cast v21, Lorg/telegram/ui/Cells/RadioCell;

    .end local v21    # "child":Landroid/view/View;
    if-nez v23, :cond_7

    move-object/from16 v0, v20

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    if-nez v4, :cond_8

    :cond_7
    const/4 v4, 0x1

    move/from16 v0, v23

    if-ne v0, v4, :cond_b

    move-object/from16 v0, v20

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    if-nez v4, :cond_b

    :cond_8
    const/4 v4, 0x1

    :goto_3
    const/4 v7, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v7}, Lorg/telegram/ui/Cells/RadioCell;->setChecked(ZZ)V

    .line 387
    .end local v23    # "num":I
    :cond_9
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 380
    .end local v16    # "a":I
    .end local v22    # "count":I
    :cond_a
    const/4 v4, 0x2

    move/from16 v0, p2

    if-ne v0, v4, :cond_6

    move-object/from16 v0, v20

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    if-eqz v4, :cond_6

    .line 381
    const/4 v4, 0x0

    move-object/from16 v0, v20

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    .line 382
    const/16 v19, 0x1

    goto :goto_1

    .line 391
    .restart local v16    # "a":I
    .restart local v22    # "count":I
    .restart local v23    # "num":I
    :cond_b
    const/4 v4, 0x0

    goto :goto_3

    .line 396
    .end local v16    # "a":I
    .end local v19    # "changed":Z
    .end local v20    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v22    # "count":I
    .end local v23    # "num":I
    :cond_c
    const/4 v6, 0x0

    .line 397
    .local v6, "banned_rights":Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;
    const/4 v5, 0x0

    .line 399
    .local v5, "admin_rights":Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;
    const/4 v3, 0x0

    .line 400
    .local v3, "user_id":I
    const/16 v26, 0x0

    .line 401
    .local v26, "promoted_by":I
    const/4 v8, 0x0

    .line 402
    .local v8, "canEditAdmin":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelUsersActivity;->access$500(Lorg/telegram/ui/ChannelUsersActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChannelUsersActivity;->access$400(Lorg/telegram/ui/ChannelUsersActivity;)Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;

    move-result-object v7

    if-ne v4, v7, :cond_12

    .line 403
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelUsersActivity;->access$400(Lorg/telegram/ui/ChannelUsersActivity;)Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->getItem(I)Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    move-result-object v25

    .line 404
    .local v25, "participant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    if-eqz v25, :cond_f

    .line 405
    move-object/from16 v0, v25

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    .line 406
    move-object/from16 v0, v25

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    .line 407
    move-object/from16 v0, v25

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    .line 408
    move-object/from16 v0, v25

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    if-nez v4, :cond_d

    move-object/from16 v0, v25

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-eqz v4, :cond_e

    :cond_d
    move-object/from16 v0, v25

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->can_edit:Z

    if-eqz v4, :cond_11

    :cond_e
    const/4 v8, 0x1

    .line 409
    :goto_4
    move-object/from16 v0, v25

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-eqz v4, :cond_f

    .line 410
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    .end local v5    # "admin_rights":Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;
    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;-><init>()V

    .line 411
    .restart local v5    # "admin_rights":Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;
    const/4 v4, 0x1

    iput-boolean v4, v5, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->add_admins:Z

    iput-boolean v4, v5, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->pin_messages:Z

    iput-boolean v4, v5, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->invite_link:Z

    iput-boolean v4, v5, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->invite_users:Z

    iput-boolean v4, v5, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->ban_users:Z

    iput-boolean v4, v5, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->delete_messages:Z

    iput-boolean v4, v5, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->edit_messages:Z

    iput-boolean v4, v5, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->post_messages:Z

    iput-boolean v4, v5, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->change_info:Z

    .line 436
    :cond_f
    :goto_5
    if-eqz v3, :cond_0

    .line 437
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelUsersActivity;->access$1300(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v4

    if-eqz v4, :cond_1b

    .line 438
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelUsersActivity;->access$1400(Lorg/telegram/ui/ChannelUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelUsersActivity;->access$1300(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_1a

    .line 439
    :cond_10
    new-instance v2, Lorg/telegram/ui/ChannelRightsEditActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelUsersActivity;->access$800(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChannelUsersActivity;->access$1300(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_19

    const/4 v7, 0x0

    :goto_6
    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/ChannelRightsEditActivity;-><init>(IILorg/telegram/tgnet/TLRPC$TL_channelAdminRights;Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;IZ)V

    .line 440
    .local v2, "fragment":Lorg/telegram/ui/ChannelRightsEditActivity;
    new-instance v4, Lorg/telegram/ui/ChannelUsersActivity$3$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/ChannelUsersActivity$3$2;-><init>(Lorg/telegram/ui/ChannelUsersActivity$3;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ChannelRightsEditActivity;->setDelegate(Lorg/telegram/ui/ChannelRightsEditActivity$ChannelRightsEditActivityDelegate;)V

    .line 455
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/ChannelUsersActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 408
    .end local v2    # "fragment":Lorg/telegram/ui/ChannelRightsEditActivity;
    :cond_11
    const/4 v8, 0x0

    goto :goto_4

    .line 417
    .end local v25    # "participant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelUsersActivity;->access$200(Lorg/telegram/ui/ChannelUsersActivity;)Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ChannelUsersActivity$SearchAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v24

    .line 418
    .local v24, "object":Lorg/telegram/tgnet/TLObject;
    move-object/from16 v0, v24

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v4, :cond_15

    move-object/from16 v27, v24

    .line 419
    check-cast v27, Lorg/telegram/tgnet/TLRPC$User;

    .line 420
    .local v27, "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    const/4 v7, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v4, v0, v7}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 421
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelUsersActivity;->access$1200(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, v27

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 427
    .end local v27    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .restart local v25    # "participant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    :goto_7
    if-eqz v25, :cond_18

    .line 428
    move-object/from16 v0, v25

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    .line 429
    move-object/from16 v0, v25

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    if-nez v4, :cond_13

    move-object/from16 v0, v25

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-eqz v4, :cond_14

    :cond_13
    move-object/from16 v0, v25

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->can_edit:Z

    if-eqz v4, :cond_17

    :cond_14
    const/4 v8, 0x1

    .line 430
    :goto_8
    move-object/from16 v0, v25

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    .line 431
    move-object/from16 v0, v25

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    goto/16 :goto_5

    .line 422
    .end local v25    # "participant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    :cond_15
    move-object/from16 v0, v24

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-eqz v4, :cond_16

    move-object/from16 v25, v24

    .line 423
    check-cast v25, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .restart local v25    # "participant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    goto :goto_7

    .line 425
    .end local v25    # "participant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    :cond_16
    const/16 v25, 0x0

    .restart local v25    # "participant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    goto :goto_7

    .line 429
    :cond_17
    const/4 v8, 0x0

    goto :goto_8

    .line 433
    :cond_18
    const/4 v8, 0x1

    goto/16 :goto_5

    .line 439
    .end local v24    # "object":Lorg/telegram/tgnet/TLObject;
    :cond_19
    const/4 v7, 0x1

    goto/16 :goto_6

    .line 457
    :cond_1a
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v27

    .line 458
    .restart local v27    # "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChannelUsersActivity;->access$800(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v7

    const/4 v9, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v4, v7, v0, v9}, Lorg/telegram/messenger/MessagesController;->deleteUserFromChat(ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 459
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChannelUsersActivity;->finishFragment()V

    goto/16 :goto_0

    .line 462
    .end local v27    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1b
    const/4 v15, 0x0

    .line 463
    .local v15, "canEdit":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelUsersActivity;->access$700(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_21

    .line 464
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelUsersActivity;->access$1400(Lorg/telegram/ui/ChannelUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v4, :cond_1c

    if-eqz v8, :cond_20

    :cond_1c
    const/4 v15, 0x1

    .line 468
    :cond_1d
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelUsersActivity;->access$700(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v4

    const/4 v7, 0x1

    if-eq v4, v7, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelUsersActivity;->access$1400(Lorg/telegram/ui/ChannelUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v4, :cond_1f

    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelUsersActivity;->access$700(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v4

    const/4 v7, 0x2

    if-ne v4, v7, :cond_22

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelUsersActivity;->access$1300(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v4

    if-nez v4, :cond_22

    .line 469
    :cond_1f
    new-instance v17, Landroid/os/Bundle;

    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    .line 470
    .restart local v17    # "args":Landroid/os/Bundle;
    const-string/jumbo v4, "user_id"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 471
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    new-instance v7, Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v4, v7}, Lorg/telegram/ui/ChannelUsersActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 464
    .end local v17    # "args":Landroid/os/Bundle;
    :cond_20
    const/4 v15, 0x0

    goto :goto_9

    .line 465
    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelUsersActivity;->access$700(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v4

    if-nez v4, :cond_1d

    .line 466
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelUsersActivity;->access$1400(Lorg/telegram/ui/ChannelUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->canBlockUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v15

    goto :goto_9

    .line 473
    :cond_22
    if-nez v6, :cond_23

    .line 474
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    .end local v6    # "banned_rights":Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;
    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;-><init>()V

    .line 475
    .restart local v6    # "banned_rights":Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;
    const/4 v4, 0x1

    iput-boolean v4, v6, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->view_messages:Z

    .line 476
    const/4 v4, 0x1

    iput-boolean v4, v6, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_stickers:Z

    .line 477
    const/4 v4, 0x1

    iput-boolean v4, v6, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_media:Z

    .line 478
    const/4 v4, 0x1

    iput-boolean v4, v6, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->embed_links:Z

    .line 479
    const/4 v4, 0x1

    iput-boolean v4, v6, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_messages:Z

    .line 480
    const/4 v4, 0x1

    iput-boolean v4, v6, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_games:Z

    .line 481
    const/4 v4, 0x1

    iput-boolean v4, v6, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_inline:Z

    .line 482
    const/4 v4, 0x1

    iput-boolean v4, v6, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_gifs:Z

    .line 484
    :cond_23
    new-instance v2, Lorg/telegram/ui/ChannelRightsEditActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelUsersActivity;->access$800(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelUsersActivity;->access$700(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_24

    const/4 v14, 0x0

    :goto_a
    move-object v9, v2

    move v10, v3

    move-object v12, v5

    move-object v13, v6

    invoke-direct/range {v9 .. v15}, Lorg/telegram/ui/ChannelRightsEditActivity;-><init>(IILorg/telegram/tgnet/TLRPC$TL_channelAdminRights;Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;IZ)V

    .line 485
    .restart local v2    # "fragment":Lorg/telegram/ui/ChannelRightsEditActivity;
    new-instance v4, Lorg/telegram/ui/ChannelUsersActivity$3$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/ChannelUsersActivity$3$3;-><init>(Lorg/telegram/ui/ChannelUsersActivity$3;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ChannelRightsEditActivity;->setDelegate(Lorg/telegram/ui/ChannelRightsEditActivity$ChannelRightsEditActivityDelegate;)V

    .line 499
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/ChannelUsersActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 484
    .end local v2    # "fragment":Lorg/telegram/ui/ChannelRightsEditActivity;
    :cond_24
    const/4 v14, 0x1

    goto :goto_a
.end method
