.class Lorg/telegram/ui/DialogsActivity$6;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 498
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 27
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 501
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 650
    :cond_0
    :goto_0
    return-void

    .line 504
    :cond_1
    const-wide/16 v14, 0x0

    .line 505
    .local v14, "dialog_id":J
    const/16 v21, 0x0

    .line 506
    .local v21, "message_id":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v8

    .line 507
    .local v8, "adapter":Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$1100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v2

    if-ne v8, v2, :cond_c

    .line 508
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$1100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v23

    .line 509
    .local v23, "object":Lorg/telegram/tgnet/TLObject;
    move-object/from16 v0, v23

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    if-eqz v2, :cond_3

    .line 510
    check-cast v23, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .end local v23    # "object":Lorg/telegram/tgnet/TLObject;
    move-object/from16 v0, v23

    iget-wide v14, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 588
    :cond_2
    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-eqz v2, :cond_0

    .line 592
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$500(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 593
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$1100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/DialogsAdapter;->hasSelectedDialogs()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 594
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$1100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v14, v15, v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->addOrRemoveSelectedDialog(JLandroid/view/View;)V

    .line 595
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$1900(Lorg/telegram/ui/DialogsActivity;)V

    goto :goto_0

    .line 511
    .restart local v23    # "object":Lorg/telegram/tgnet/TLObject;
    :cond_3
    move-object/from16 v0, v23

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_recentMeUrlChat;

    if-eqz v2, :cond_4

    .line 512
    check-cast v23, Lorg/telegram/tgnet/TLRPC$TL_recentMeUrlChat;

    .end local v23    # "object":Lorg/telegram/tgnet/TLObject;
    move-object/from16 v0, v23

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_recentMeUrlChat;->chat_id:I

    neg-int v2, v2

    int-to-long v14, v2

    goto :goto_1

    .line 513
    .restart local v23    # "object":Lorg/telegram/tgnet/TLObject;
    :cond_4
    move-object/from16 v0, v23

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_recentMeUrlUser;

    if-eqz v2, :cond_5

    .line 514
    check-cast v23, Lorg/telegram/tgnet/TLRPC$TL_recentMeUrlUser;

    .end local v23    # "object":Lorg/telegram/tgnet/TLObject;
    move-object/from16 v0, v23

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_recentMeUrlUser;->user_id:I

    int-to-long v14, v2

    goto :goto_1

    .line 515
    .restart local v23    # "object":Lorg/telegram/tgnet/TLObject;
    :cond_5
    move-object/from16 v0, v23

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_recentMeUrlChatInvite;

    if-eqz v2, :cond_a

    move-object/from16 v11, v23

    .line 516
    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_recentMeUrlChatInvite;

    .line 517
    .local v11, "chatInvite":Lorg/telegram/tgnet/TLRPC$TL_recentMeUrlChatInvite;
    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$TL_recentMeUrlChatInvite;->chat_invite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    move-object/from16 v18, v0

    .line 518
    .local v18, "invite":Lorg/telegram/tgnet/TLRPC$ChatInvite;
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v2, :cond_6

    move-object/from16 v0, v18

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->channel:Z

    if-eqz v2, :cond_7

    move-object/from16 v0, v18

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->megagroup:Z

    if-nez v2, :cond_7

    :cond_6
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_9

    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v2, :cond_9

    .line 519
    :cond_7
    iget-object v13, v11, Lorg/telegram/tgnet/TLRPC$TL_recentMeUrlChatInvite;->url:Ljava/lang/String;

    .line 520
    .local v13, "hash":Ljava/lang/String;
    const/16 v2, 0x2f

    invoke-virtual {v13, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    .line 521
    .local v17, "index":I
    if-lez v17, :cond_8

    .line 522
    add-int/lit8 v2, v17, 0x1

    invoke-virtual {v13, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 524
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v3, Lorg/telegram/ui/Components/JoinGroupAlert;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v0, v18

    invoke-direct {v3, v4, v0, v13, v6}, Lorg/telegram/ui/Components/JoinGroupAlert;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$ChatInvite;Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/DialogsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 527
    .end local v13    # "hash":Ljava/lang/String;
    .end local v17    # "index":I
    :cond_9
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_0

    .line 528
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    neg-int v2, v2

    int-to-long v14, v2

    goto/16 :goto_1

    .line 533
    .end local v11    # "chatInvite":Lorg/telegram/tgnet/TLRPC$TL_recentMeUrlChatInvite;
    .end local v18    # "invite":Lorg/telegram/tgnet/TLRPC$ChatInvite;
    :cond_a
    move-object/from16 v0, v23

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_recentMeUrlStickerSet;

    if-eqz v2, :cond_b

    .line 534
    check-cast v23, Lorg/telegram/tgnet/TLRPC$TL_recentMeUrlStickerSet;

    .end local v23    # "object":Lorg/telegram/tgnet/TLObject;
    move-object/from16 v0, v23

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_recentMeUrlStickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    move-object/from16 v24, v0

    .line 535
    .local v24, "stickerSet":Lorg/telegram/tgnet/TLRPC$StickerSet;
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;-><init>()V

    .line 536
    .local v5, "set":Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;
    move-object/from16 v0, v24

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iput-wide v2, v5, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;->id:J

    .line 537
    move-object/from16 v0, v24

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->access_hash:J

    iput-wide v2, v5, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;->access_hash:J

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v26, v0

    new-instance v2, Lorg/telegram/ui/Components/StickersAlert;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/StickersAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lorg/telegram/ui/DialogsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 540
    .end local v5    # "set":Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;
    .end local v24    # "stickerSet":Lorg/telegram/tgnet/TLRPC$StickerSet;
    .restart local v23    # "object":Lorg/telegram/tgnet/TLObject;
    :cond_b
    move-object/from16 v0, v23

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_recentMeUrlUnknown;

    if-eqz v2, :cond_0

    goto/16 :goto_0

    .line 545
    .end local v23    # "object":Lorg/telegram/tgnet/TLObject;
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v2

    if-ne v8, v2, :cond_2

    .line 546
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v22

    .line 547
    .local v22, "obj":Ljava/lang/Object;
    move-object/from16 v0, v22

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_e

    move-object/from16 v2, v22

    .line 548
    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    int-to-long v14, v2

    .line 549
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isGlobalSearch(I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 550
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .local v25, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    move-object/from16 v2, v22

    .line 551
    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 553
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v2, v0, v3, v4, v6}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 555
    .end local v25    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$500(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 556
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v2

    check-cast v22, Lorg/telegram/tgnet/TLRPC$User;

    .end local v22    # "obj":Ljava/lang/Object;
    move-object/from16 v0, v22

    invoke-virtual {v2, v14, v15, v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->putRecentSearch(JLorg/telegram/tgnet/TLObject;)V

    goto/16 :goto_1

    .line 558
    .restart local v22    # "obj":Ljava/lang/Object;
    :cond_e
    move-object/from16 v0, v22

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_11

    .line 559
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isGlobalSearch(I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 560
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .local v12, "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    move-object/from16 v2, v22

    .line 561
    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v12, v3}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 563
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v12, v4, v6}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .end local v12    # "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    :cond_f
    move-object/from16 v2, v22

    .line 565
    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    if-lez v2, :cond_10

    move-object/from16 v2, v22

    .line 566
    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    neg-int v2, v2

    int-to-long v14, v2

    .line 570
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$500(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 571
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v2

    check-cast v22, Lorg/telegram/tgnet/TLRPC$Chat;

    .end local v22    # "obj":Ljava/lang/Object;
    move-object/from16 v0, v22

    invoke-virtual {v2, v14, v15, v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->putRecentSearch(JLorg/telegram/tgnet/TLObject;)V

    goto/16 :goto_1

    .restart local v22    # "obj":Ljava/lang/Object;
    :cond_10
    move-object/from16 v2, v22

    .line 568
    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->makeBroadcastId(I)J

    move-result-wide v14

    goto :goto_2

    .line 573
    :cond_11
    move-object/from16 v0, v22

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v2, :cond_12

    move-object/from16 v2, v22

    .line 574
    check-cast v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long v14, v2, v4

    .line 575
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$500(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 576
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v2

    check-cast v22, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .end local v22    # "obj":Ljava/lang/Object;
    move-object/from16 v0, v22

    invoke-virtual {v2, v14, v15, v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->putRecentSearch(JLorg/telegram/tgnet/TLObject;)V

    goto/16 :goto_1

    .line 578
    .restart local v22    # "obj":Ljava/lang/Object;
    :cond_12
    move-object/from16 v0, v22

    instance-of v2, v0, Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_13

    move-object/from16 v20, v22

    .line 579
    check-cast v20, Lorg/telegram/messenger/MessageObject;

    .line 580
    .local v20, "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v14

    .line 581
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v21

    .line 582
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getLastSearchString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->addHashtagsFromMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 583
    .end local v20    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_13
    move-object/from16 v0, v22

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 584
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$1800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    check-cast v22, Ljava/lang/String;

    .end local v22    # "obj":Ljava/lang/Object;
    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->openSearchField(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 597
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v14, v15, v3, v4}, Lorg/telegram/ui/DialogsActivity;->access$2000(Lorg/telegram/ui/DialogsActivity;JZZ)V

    goto/16 :goto_0

    .line 600
    :cond_15
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 601
    .local v9, "args":Landroid/os/Bundle;
    long-to-int v0, v14

    move/from16 v19, v0

    .line 602
    .local v19, "lower_part":I
    const/16 v2, 0x20

    shr-long v2, v14, v2

    long-to-int v0, v2

    move/from16 v16, v0

    .line 603
    .local v16, "high_id":I
    if-eqz v19, :cond_1d

    .line 604
    const/4 v2, 0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_1a

    .line 605
    const-string/jumbo v2, "chat_id"

    move/from16 v0, v19

    invoke-virtual {v9, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 623
    :cond_16
    :goto_3
    if-eqz v21, :cond_1e

    .line 624
    const-string/jumbo v2, "message_id"

    move/from16 v0, v21

    invoke-virtual {v9, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 630
    :cond_17
    :goto_4
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 631
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2300(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    cmp-long v2, v2, v14

    if-nez v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v2

    if-ne v8, v2, :cond_0

    .line 634
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$1100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 635
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$1100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3, v14, v15}, Lorg/telegram/ui/DialogsActivity;->access$2302(Lorg/telegram/ui/DialogsActivity;J)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lorg/telegram/ui/Adapters/DialogsAdapter;->setOpenedDialogId(J)V

    .line 636
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/16 v3, 0x200

    invoke-static {v2, v3}, Lorg/telegram/ui/DialogsActivity;->access$2400(Lorg/telegram/ui/DialogsActivity;I)V

    .line 639
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$200(Lorg/telegram/ui/DialogsActivity;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 640
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v9, v2}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 641
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 642
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v3, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v3, v9}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 607
    :cond_1a
    if-lez v19, :cond_1b

    .line 608
    const-string/jumbo v2, "user_id"

    move/from16 v0, v19

    invoke-virtual {v9, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 609
    :cond_1b
    if-gez v19, :cond_16

    .line 610
    if-eqz v21, :cond_1c

    .line 611
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move/from16 v0, v19

    neg-int v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v10

    .line 612
    .local v10, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v10, :cond_1c

    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    if-eqz v2, :cond_1c

    .line 613
    const-string/jumbo v2, "migrated_to"

    move/from16 v0, v19

    invoke-virtual {v9, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 614
    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$InputChannel;->channel_id:I

    neg-int v0, v2

    move/from16 v19, v0

    .line 617
    .end local v10    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_1c
    const-string/jumbo v2, "chat_id"

    move/from16 v0, v19

    neg-int v3, v0

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 621
    :cond_1d
    const-string/jumbo v2, "enc_id"

    move/from16 v0, v16

    invoke-virtual {v9, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 626
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 627
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    goto/16 :goto_4

    .line 645
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v9, v2}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 646
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v3, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v3, v9}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0
.end method
