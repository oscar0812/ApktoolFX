.class Lorg/telegram/ui/MediaActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "MediaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/MediaActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/MediaActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/MediaActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 260
    iput-object p1, p0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 28
    .param p1, "id"    # I

    .prologue
    .line 263
    const/4 v2, -0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_6

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v2}, Lorg/telegram/ui/MediaActivity;->access$500(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 265
    const/4 v9, 0x1

    .local v9, "a":I
    :goto_0
    if-ltz v9, :cond_0

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v2}, Lorg/telegram/ui/MediaActivity;->access$600(Lorg/telegram/ui/MediaActivity;)[Ljava/util/HashMap;

    move-result-object v2

    aget-object v2, v2, v9

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 265
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 268
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/telegram/ui/MediaActivity;->access$702(Lorg/telegram/ui/MediaActivity;I)I

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v2}, Lorg/telegram/ui/MediaActivity;->access$800(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    .line 270
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v2}, Lorg/telegram/ui/MediaActivity;->access$900(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v16

    .line 271
    .local v16, "count":I
    const/4 v9, 0x0

    :goto_1
    move/from16 v0, v16

    if-ge v9, v0, :cond_5

    .line 272
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v2}, Lorg/telegram/ui/MediaActivity;->access$900(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2, v9}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 273
    .local v15, "child":Landroid/view/View;
    instance-of v2, v15, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v2, :cond_2

    .line 274
    check-cast v15, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .end local v15    # "child":Landroid/view/View;
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v15, v2, v3}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    .line 271
    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 275
    .restart local v15    # "child":Landroid/view/View;
    :cond_2
    instance-of v2, v15, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    if-eqz v2, :cond_3

    .line 276
    const/4 v11, 0x0

    .local v11, "b":I
    :goto_3
    const/4 v2, 0x6

    if-ge v11, v2, :cond_1

    move-object v2, v15

    .line 277
    check-cast v2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v11, v3, v4}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->setChecked(IZZ)V

    .line 276
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 279
    .end local v11    # "b":I
    :cond_3
    instance-of v2, v15, Lorg/telegram/ui/Cells/SharedLinkCell;

    if-eqz v2, :cond_1

    .line 280
    check-cast v15, Lorg/telegram/ui/Cells/SharedLinkCell;

    .end local v15    # "child":Landroid/view/View;
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v15, v2, v3}, Lorg/telegram/ui/Cells/SharedLinkCell;->setChecked(ZZ)V

    goto :goto_2

    .line 284
    .end local v9    # "a":I
    .end local v16    # "count":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity;->finishFragment()V

    .line 482
    :cond_5
    :goto_4
    return-void

    .line 286
    :cond_6
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_7

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v2}, Lorg/telegram/ui/MediaActivity;->access$1000(Lorg/telegram/ui/MediaActivity;)I

    move-result v2

    if-eqz v2, :cond_5

    .line 290
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/telegram/ui/MediaActivity;->access$1002(Lorg/telegram/ui/MediaActivity;I)I

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v2}, Lorg/telegram/ui/MediaActivity;->access$1100(Lorg/telegram/ui/MediaActivity;)V

    goto :goto_4

    .line 292
    :cond_7
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_8

    .line 293
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v2}, Lorg/telegram/ui/MediaActivity;->access$1000(Lorg/telegram/ui/MediaActivity;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/telegram/ui/MediaActivity;->access$1002(Lorg/telegram/ui/MediaActivity;I)I

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v2}, Lorg/telegram/ui/MediaActivity;->access$1100(Lorg/telegram/ui/MediaActivity;)V

    goto :goto_4

    .line 298
    :cond_8
    const/4 v2, 0x5

    move/from16 v0, p1

    if-ne v0, v2, :cond_9

    .line 299
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v2}, Lorg/telegram/ui/MediaActivity;->access$1000(Lorg/telegram/ui/MediaActivity;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    .line 302
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lorg/telegram/ui/MediaActivity;->access$1002(Lorg/telegram/ui/MediaActivity;I)I

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v2}, Lorg/telegram/ui/MediaActivity;->access$1100(Lorg/telegram/ui/MediaActivity;)V

    goto :goto_4

    .line 304
    :cond_9
    const/4 v2, 0x6

    move/from16 v0, p1

    if-ne v0, v2, :cond_a

    .line 305
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v2}, Lorg/telegram/ui/MediaActivity;->access$1000(Lorg/telegram/ui/MediaActivity;)I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_5

    .line 308
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lorg/telegram/ui/MediaActivity;->access$1002(Lorg/telegram/ui/MediaActivity;I)I

    .line 309
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v2}, Lorg/telegram/ui/MediaActivity;->access$1100(Lorg/telegram/ui/MediaActivity;)V

    goto :goto_4

    .line 310
    :cond_a
    const/4 v2, 0x4

    move/from16 v0, p1

    if-ne v0, v2, :cond_18

    .line 311
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 314
    new-instance v12, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v12, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 315
    .local v12, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v2, "AreYouSureDeleteMessages"

    const v3, 0x7f070090

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "items"

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v7}, Lorg/telegram/ui/MediaActivity;->access$600(Lorg/telegram/ui/MediaActivity;)[Ljava/util/HashMap;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v8}, Lorg/telegram/ui/MediaActivity;->access$600(Lorg/telegram/ui/MediaActivity;)[Ljava/util/HashMap;

    move-result-object v8

    const/16 v27, 0x1

    aget-object v8, v8, v27

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 316
    const-string/jumbo v2, "AppName"

    const v3, 0x7f07007a

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 318
    const/4 v2, 0x1

    new-array v0, v2, [Z

    move-object/from16 v20, v0

    .line 319
    .local v20, "deleteForAll":[Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v2}, Lorg/telegram/ui/MediaActivity;->access$000(Lorg/telegram/ui/MediaActivity;)J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 v25, v0

    .line 320
    .local v25, "lower_id":I
    if-eqz v25, :cond_13

    .line 323
    if-lez v25, :cond_f

    .line 324
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v19

    .line 325
    .local v19, "currentUser":Lorg/telegram/tgnet/TLRPC$User;
    const/16 v17, 0x0

    .line 330
    .local v17, "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    :goto_5
    if-nez v19, :cond_b

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 331
    :cond_b
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v18

    .line 332
    .local v18, "currentDate":I
    if-eqz v19, :cond_c

    move-object/from16 v0, v19

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v3

    if-ne v2, v3, :cond_d

    :cond_c
    if-eqz v17, :cond_13

    .line 333
    :cond_d
    const/16 v24, 0x0

    .line 334
    .local v24, "hasOutgoing":Z
    const/4 v9, 0x1

    .restart local v9    # "a":I
    :goto_6
    if-ltz v9, :cond_12

    .line 335
    const/4 v14, 0x0

    .line 336
    .local v14, "channelId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v2}, Lorg/telegram/ui/MediaActivity;->access$600(Lorg/telegram/ui/MediaActivity;)[Ljava/util/HashMap;

    move-result-object v2

    aget-object v2, v2, v9

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Map$Entry;

    .line 337
    .local v21, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/MessageObject;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/telegram/messenger/MessageObject;

    .line 338
    .local v26, "msg":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, v26

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    if-nez v3, :cond_e

    .line 341
    invoke-virtual/range {v26 .. v26}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 342
    move-object/from16 v0, v26

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    sub-int v3, v18, v3

    const v4, 0x2a300

    if-gt v3, v4, :cond_e

    .line 343
    const/16 v24, 0x1

    goto :goto_7

    .line 327
    .end local v9    # "a":I
    .end local v14    # "channelId":I
    .end local v17    # "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v18    # "currentDate":I
    .end local v19    # "currentUser":Lorg/telegram/tgnet/TLRPC$User;
    .end local v21    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/MessageObject;>;"
    .end local v24    # "hasOutgoing":Z
    .end local v26    # "msg":Lorg/telegram/messenger/MessageObject;
    :cond_f
    const/16 v19, 0x0

    .line 328
    .restart local v19    # "currentUser":Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move/from16 v0, v25

    neg-int v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v17

    .restart local v17    # "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    goto :goto_5

    .line 346
    .restart local v9    # "a":I
    .restart local v14    # "channelId":I
    .restart local v18    # "currentDate":I
    .restart local v21    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/MessageObject;>;"
    .restart local v24    # "hasOutgoing":Z
    .restart local v26    # "msg":Lorg/telegram/messenger/MessageObject;
    :cond_10
    const/16 v24, 0x0

    .line 350
    .end local v21    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/MessageObject;>;"
    .end local v26    # "msg":Lorg/telegram/messenger/MessageObject;
    :cond_11
    if-eqz v24, :cond_14

    .line 355
    .end local v14    # "channelId":I
    :cond_12
    if-eqz v24, :cond_13

    .line 356
    new-instance v23, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 357
    .local v23, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v13, Lorg/telegram/ui/Cells/CheckBoxCell;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v13, v2, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;Z)V

    .line 358
    .local v13, "cell":Lorg/telegram/ui/Cells/CheckBoxCell;
    const/4 v2, 0x0

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v13, v2}, Lorg/telegram/ui/Cells/CheckBoxCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 359
    if-eqz v17, :cond_15

    .line 360
    const-string/jumbo v2, "DeleteForAll"

    const v3, 0x7f0701d7

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v13, v2, v3, v4, v5}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 364
    :goto_8
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_16

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    :goto_9
    const/4 v4, 0x0

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_17

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    :goto_a
    const/4 v5, 0x0

    invoke-virtual {v13, v2, v4, v3, v5}, Lorg/telegram/ui/Cells/CheckBoxCell;->setPadding(IIII)V

    .line 365
    const/4 v2, -0x1

    const/high16 v3, 0x42400000    # 48.0f

    const/16 v4, 0x33

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v13, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 366
    new-instance v2, Lorg/telegram/ui/MediaActivity$1$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/MediaActivity$1$1;-><init>(Lorg/telegram/ui/MediaActivity$1;[Z)V

    invoke-virtual {v13, v2}, Lorg/telegram/ui/Cells/CheckBoxCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 380
    .end local v9    # "a":I
    .end local v13    # "cell":Lorg/telegram/ui/Cells/CheckBoxCell;
    .end local v17    # "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v18    # "currentDate":I
    .end local v19    # "currentUser":Lorg/telegram/tgnet/TLRPC$User;
    .end local v23    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v24    # "hasOutgoing":Z
    :cond_13
    const-string/jumbo v2, "OK"

    const v3, 0x7f070440

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/MediaActivity$1$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/MediaActivity$1$2;-><init>(Lorg/telegram/ui/MediaActivity$1;[Z)V

    invoke-virtual {v12, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 414
    const-string/jumbo v2, "Cancel"

    const v3, 0x7f0700f4

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 415
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/MediaActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_4

    .line 334
    .restart local v9    # "a":I
    .restart local v14    # "channelId":I
    .restart local v17    # "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v18    # "currentDate":I
    .restart local v19    # "currentUser":Lorg/telegram/tgnet/TLRPC$User;
    .restart local v24    # "hasOutgoing":Z
    :cond_14
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_6

    .line 362
    .end local v14    # "channelId":I
    .restart local v13    # "cell":Lorg/telegram/ui/Cells/CheckBoxCell;
    .restart local v23    # "frameLayout":Landroid/widget/FrameLayout;
    :cond_15
    const-string/jumbo v2, "DeleteForUser"

    const v3, 0x7f0701d8

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v13, v2, v3, v4, v5}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_8

    .line 364
    :cond_16
    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    goto/16 :goto_9

    :cond_17
    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    goto/16 :goto_a

    .line 416
    .end local v9    # "a":I
    .end local v12    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v13    # "cell":Lorg/telegram/ui/Cells/CheckBoxCell;
    .end local v17    # "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v18    # "currentDate":I
    .end local v19    # "currentUser":Lorg/telegram/tgnet/TLRPC$User;
    .end local v20    # "deleteForAll":[Z
    .end local v23    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v24    # "hasOutgoing":Z
    .end local v25    # "lower_id":I
    :cond_18
    const/4 v2, 0x3

    move/from16 v0, p1

    if-ne v0, v2, :cond_5

    .line 417
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 418
    .local v10, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "onlySelect"

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 419
    const-string/jumbo v2, "isForward"

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 420
    new-instance v22, Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v0, v22

    invoke-direct {v0, v10}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 421
    .local v22, "fragment":Lorg/telegram/ui/DialogsActivity;
    new-instance v2, Lorg/telegram/ui/MediaActivity$1$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/MediaActivity$1$3;-><init>(Lorg/telegram/ui/MediaActivity$1;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    .line 480
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lorg/telegram/ui/MediaActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_4
.end method
