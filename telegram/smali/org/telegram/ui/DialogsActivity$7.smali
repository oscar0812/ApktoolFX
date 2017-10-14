.class Lorg/telegram/ui/DialogsActivity$7;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;


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
    .line 652
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)Z
    .locals 22
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v18

    if-nez v18, :cond_0

    .line 656
    const/16 v18, 0x0

    .line 844
    :goto_0
    return v18

    .line 658
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/DialogsActivity;->access$100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v4

    .line 659
    .local v4, "adapter":Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v18

    move-object/from16 v0, v18

    if-ne v4, v0, :cond_3

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v13

    .line 661
    .local v13, "item":Ljava/lang/Object;
    instance-of v0, v13, Ljava/lang/String;

    move/from16 v18, v0

    if-nez v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isRecentSearchDisplayed()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 662
    :cond_1
    new-instance v5, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 663
    .local v5, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v18, "AppName"

    const v19, 0x7f07007a

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 664
    const-string/jumbo v18, "ClearSearch"

    const v19, 0x7f070178

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 665
    const-string/jumbo v18, "ClearButton"

    const v19, 0x7f070172

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Lorg/telegram/ui/DialogsActivity$7$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/DialogsActivity$7$1;-><init>(Lorg/telegram/ui/DialogsActivity$7;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 675
    const-string/jumbo v18, "Cancel"

    const v19, 0x7f0700f4

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v18, v0

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lorg/telegram/ui/DialogsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 677
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 679
    .end local v5    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_2
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 682
    .end local v13    # "item":Ljava/lang/Object;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/DialogsActivity;->access$2500(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object v8

    .line 683
    .local v8, "dialogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    if-ltz p2, :cond_4

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, p2

    move/from16 v1, v18

    if-lt v0, v1, :cond_5

    .line 684
    :cond_4
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 686
    :cond_5
    move/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 687
    .local v7, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/DialogsActivity;->access$500(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/DialogsActivity;->access$2600(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v18

    if-nez v18, :cond_6

    .line 689
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 691
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/DialogsActivity;->access$1100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v18

    iget-wide v0, v7, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Adapters/DialogsAdapter;->addOrRemoveSelectedDialog(JLandroid/view/View;)V

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/DialogsActivity;->access$1900(Lorg/telegram/ui/DialogsActivity;)V

    .line 844
    :goto_1
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 694
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v18, v0

    iget-wide v0, v7, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/DialogsActivity;->access$2702(Lorg/telegram/ui/DialogsActivity;J)J

    .line 695
    iget-boolean v0, v7, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    move/from16 v16, v0

    .line 697
    .local v16, "pinned":Z
    new-instance v5, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 698
    .local v5, "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/DialogsActivity;->access$2700(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v15, v0

    .line 699
    .local v15, "lower_id":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/DialogsActivity;->access$2700(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v18

    const/16 v20, 0x20

    shr-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v9, v0

    .line 701
    .local v9, "high_id":I
    invoke-static {v7}, Lorg/telegram/messenger/DialogObject;->isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z

    move-result v18

    if-eqz v18, :cond_14

    .line 702
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v18

    neg-int v0, v15

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    .line 704
    .local v6, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v10, v0, [I

    const/16 v19, 0x0

    iget-boolean v0, v7, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    move/from16 v18, v0

    if-eqz v18, :cond_a

    const v18, 0x7f02004d

    :goto_2
    aput v18, v10, v19

    const/16 v18, 0x1

    const v19, 0x7f020049

    aput v19, v10, v18

    const/16 v18, 0x2

    const v19, 0x7f02004b

    aput v19, v10, v18

    .line 709
    .local v10, "icons":[I
    if-eqz v6, :cond_e

    iget-boolean v0, v6, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v18, v0

    if-eqz v18, :cond_e

    .line 710
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v14, v0, [Ljava/lang/CharSequence;

    const/16 v19, 0x0

    iget-boolean v0, v7, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    move/from16 v18, v0

    if-nez v18, :cond_8

    .line 711
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v18

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->canPinDialog(Z)Z

    move-result v18

    if-eqz v18, :cond_c

    :cond_8
    iget-boolean v0, v7, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    move/from16 v18, v0

    if-eqz v18, :cond_b

    const-string/jumbo v18, "UnpinFromTop"

    const v20, 0x7f0705f0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    :goto_3
    aput-object v18, v14, v19

    const/16 v18, 0x1

    const-string/jumbo v19, "ClearHistory"

    const v20, 0x7f070173

    .line 712
    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v14, v18

    const/16 v19, 0x2

    if-eqz v6, :cond_9

    iget-boolean v0, v6, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    move/from16 v18, v0

    if-nez v18, :cond_d

    :cond_9
    const-string/jumbo v18, "LeaveMegaMenu"

    const v20, 0x7f070347

    .line 713
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    :goto_4
    aput-object v18, v14, v19

    .line 720
    .local v14, "items":[Ljava/lang/CharSequence;
    :goto_5
    new-instance v18, Lorg/telegram/ui/DialogsActivity$7$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v6}, Lorg/telegram/ui/DialogsActivity$7$2;-><init>(Lorg/telegram/ui/DialogsActivity$7;ZLorg/telegram/tgnet/TLRPC$Chat;)V

    move-object/from16 v0, v18

    invoke-virtual {v5, v14, v10, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v18, v0

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lorg/telegram/ui/DialogsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 704
    .end local v10    # "icons":[I
    .end local v14    # "items":[Ljava/lang/CharSequence;
    :cond_a
    const v18, 0x7f02004c

    goto/16 :goto_2

    .line 711
    .restart local v10    # "icons":[I
    :cond_b
    const-string/jumbo v18, "PinToTop"

    const v20, 0x7f0704c2

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    goto :goto_3

    :cond_c
    const/16 v18, 0x0

    goto :goto_3

    .line 713
    :cond_d
    const-string/jumbo v18, "DeleteMegaMenu"

    const v20, 0x7f0701dd

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    goto :goto_4

    .line 715
    :cond_e
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v14, v0, [Ljava/lang/CharSequence;

    const/16 v19, 0x0

    iget-boolean v0, v7, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    move/from16 v18, v0

    if-nez v18, :cond_f

    .line 716
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v18

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->canPinDialog(Z)Z

    move-result v18

    if-eqz v18, :cond_12

    :cond_f
    iget-boolean v0, v7, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    move/from16 v18, v0

    if-eqz v18, :cond_11

    const-string/jumbo v18, "UnpinFromTop"

    const v20, 0x7f0705f0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    :goto_6
    aput-object v18, v14, v19

    const/16 v18, 0x1

    const-string/jumbo v19, "ClearHistoryCache"

    const v20, 0x7f070174

    .line 717
    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v14, v18

    const/16 v19, 0x2

    if-eqz v6, :cond_10

    iget-boolean v0, v6, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    move/from16 v18, v0

    if-nez v18, :cond_13

    :cond_10
    const-string/jumbo v18, "LeaveChannelMenu"

    const v20, 0x7f070346

    .line 718
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    :goto_7
    aput-object v18, v14, v19

    .restart local v14    # "items":[Ljava/lang/CharSequence;
    goto/16 :goto_5

    .line 716
    .end local v14    # "items":[Ljava/lang/CharSequence;
    :cond_11
    const-string/jumbo v18, "PinToTop"

    const v20, 0x7f0704c2

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    goto :goto_6

    :cond_12
    const/16 v18, 0x0

    goto :goto_6

    .line 718
    :cond_13
    const-string/jumbo v18, "ChannelDeleteMenu"

    const v20, 0x7f07011a

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    goto :goto_7

    .line 777
    .end local v6    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v10    # "icons":[I
    :cond_14
    if-gez v15, :cond_17

    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v9, v0, :cond_17

    const/4 v12, 0x1

    .line 778
    .local v12, "isChat":Z
    :goto_8
    const/16 v17, 0x0

    .line 779
    .local v17, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v12, :cond_15

    if-lez v15, :cond_15

    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v9, v0, :cond_15

    .line 780
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v18

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v17

    .line 782
    :cond_15
    if-eqz v17, :cond_18

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    move/from16 v18, v0

    if-eqz v18, :cond_18

    const/4 v11, 0x1

    .line 784
    .local v11, "isBot":Z
    :goto_9
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    iget-boolean v0, v7, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    move/from16 v18, v0

    if-nez v18, :cond_16

    .line 785
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v21

    if-nez v15, :cond_19

    const/16 v18, 0x1

    :goto_a
    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->canPinDialog(Z)Z

    move-result v18

    if-eqz v18, :cond_1b

    :cond_16
    iget-boolean v0, v7, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1a

    const-string/jumbo v18, "UnpinFromTop"

    const v21, 0x7f0705f0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    :goto_b
    aput-object v18, v19, v20

    const/16 v18, 0x1

    const-string/jumbo v20, "ClearHistory"

    const v21, 0x7f070173

    .line 786
    invoke-static/range {v20 .. v21}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v19, v18

    const/16 v20, 0x2

    if-eqz v12, :cond_1c

    const-string/jumbo v18, "DeleteChat"

    const v21, 0x7f0701d4

    .line 787
    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    :goto_c
    aput-object v18, v19, v20

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    iget-boolean v0, v7, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1e

    const v18, 0x7f02004d

    :goto_d
    aput v18, v20, v21

    const/16 v18, 0x1

    const v21, 0x7f020049

    aput v21, v20, v18

    const/16 v21, 0x2

    if-eqz v12, :cond_1f

    const v18, 0x7f02004b

    :goto_e
    aput v18, v20, v21

    new-instance v18, Lorg/telegram/ui/DialogsActivity$7$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v12, v11}, Lorg/telegram/ui/DialogsActivity$7$3;-><init>(Lorg/telegram/ui/DialogsActivity$7;ZZZ)V

    .line 784
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v5, v0, v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 841
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$7;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v18, v0

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lorg/telegram/ui/DialogsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 777
    .end local v11    # "isBot":Z
    .end local v12    # "isChat":Z
    .end local v17    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_17
    const/4 v12, 0x0

    goto/16 :goto_8

    .line 782
    .restart local v12    # "isChat":Z
    .restart local v17    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_18
    const/4 v11, 0x0

    goto/16 :goto_9

    .line 785
    .restart local v11    # "isBot":Z
    :cond_19
    const/16 v18, 0x0

    goto/16 :goto_a

    :cond_1a
    const-string/jumbo v18, "PinToTop"

    const v21, 0x7f0704c2

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_b

    :cond_1b
    const/16 v18, 0x0

    goto/16 :goto_b

    .line 787
    :cond_1c
    if-eqz v11, :cond_1d

    const-string/jumbo v18, "DeleteAndStop"

    const v21, 0x7f0701d2

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    goto :goto_c

    :cond_1d
    const-string/jumbo v18, "Delete"

    const v21, 0x7f0701cc

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_c

    :cond_1e
    const v18, 0x7f02004c

    goto :goto_d

    :cond_1f
    const v18, 0x7f02004a

    goto :goto_e
.end method
