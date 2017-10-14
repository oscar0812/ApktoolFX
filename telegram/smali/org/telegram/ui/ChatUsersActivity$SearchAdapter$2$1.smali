.class Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$2$1;
.super Ljava/lang/Object;
.source "ChatUsersActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$2;

.field final synthetic val$contactsCopy:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$2;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$2;

    .prologue
    .line 383
    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$2$1;->this$2:Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$2;

    iput-object p2, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$2$1;->val$contactsCopy:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 386
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$2$1;->this$2:Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$2;

    iget-object v13, v13, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$2;->val$query:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 387
    .local v9, "search1":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_0

    .line 388
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$2$1;->this$2:Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$2;

    iget-object v13, v13, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$2;->this$1:Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v13, v14, v15}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->access$1200(Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 434
    :goto_0
    return-void

    .line 391
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v13

    invoke-virtual {v13, v9}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 392
    .local v10, "search2":Ljava/lang/String;
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_2

    .line 393
    :cond_1
    const/4 v10, 0x0

    .line 395
    :cond_2
    if-eqz v10, :cond_8

    const/4 v13, 0x1

    :goto_1
    add-int/lit8 v13, v13, 0x1

    new-array v8, v13, [Ljava/lang/String;

    .line 396
    .local v8, "search":[Ljava/lang/String;
    const/4 v13, 0x0

    aput-object v9, v8, v13

    .line 397
    if-eqz v10, :cond_3

    .line 398
    const/4 v13, 0x1

    aput-object v10, v8, v13

    .line 401
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 402
    .local v6, "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$ChatParticipant;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 404
    .local v7, "resultArrayNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .local v1, "a":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$2$1;->val$contactsCopy:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v1, v13, :cond_c

    .line 405
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$2$1;->val$contactsCopy:Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 406
    .local v4, "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v13

    iget v14, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v12

    .line 408
    .local v12, "user":Lorg/telegram/tgnet/TLRPC$User;
    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v14, v12, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v13, v14}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 409
    .local v3, "name":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v13

    invoke-virtual {v13, v3}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 410
    .local v11, "tName":Ljava/lang/String;
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 411
    const/4 v11, 0x0

    .line 414
    :cond_4
    const/4 v2, 0x0

    .line 415
    .local v2, "found":I
    array-length v14, v8

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v14, :cond_7

    aget-object v5, v8, v13

    .line 416
    .local v5, "q":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_5

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_5

    if-eqz v11, :cond_9

    invoke-virtual {v11, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_5

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 417
    :cond_5
    const/4 v2, 0x1

    .line 422
    :cond_6
    :goto_4
    if-eqz v2, :cond_b

    .line 423
    const/4 v13, 0x1

    if-ne v2, v13, :cond_a

    .line 424
    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v14, v12, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v13, v14, v5}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    :goto_5
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    .end local v5    # "q":Ljava/lang/String;
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 395
    .end local v1    # "a":I
    .end local v2    # "found":I
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    .end local v6    # "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$ChatParticipant;>;"
    .end local v7    # "resultArrayNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v8    # "search":[Ljava/lang/String;
    .end local v11    # "tName":Ljava/lang/String;
    .end local v12    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_8
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 418
    .restart local v1    # "a":I
    .restart local v2    # "found":I
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    .restart local v5    # "q":Ljava/lang/String;
    .restart local v6    # "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$ChatParticipant;>;"
    .restart local v7    # "resultArrayNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v8    # "search":[Ljava/lang/String;
    .restart local v11    # "tName":Ljava/lang/String;
    .restart local v12    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_9
    iget-object v15, v12, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v15, :cond_6

    iget-object v15, v12, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 419
    const/4 v2, 0x2

    goto :goto_4

    .line 426
    :cond_a
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "@"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v12, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "@"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 415
    :cond_b
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 433
    .end local v2    # "found":I
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    .end local v5    # "q":Ljava/lang/String;
    .end local v11    # "tName":Ljava/lang/String;
    .end local v12    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$2$1;->this$2:Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$2;

    iget-object v13, v13, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$2;->this$1:Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;

    invoke-static {v13, v6, v7}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->access$1200(Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method
