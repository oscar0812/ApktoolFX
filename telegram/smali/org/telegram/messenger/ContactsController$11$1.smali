.class Lorg/telegram/messenger/ContactsController$11$1;
.super Ljava/lang/Object;
.source "ContactsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ContactsController$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/ContactsController$11;

.field final synthetic val$isEmpty:Z

.field final synthetic val$usersDict:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ContactsController$11;Ljava/util/HashMap;Z)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/ContactsController$11;

    .prologue
    .line 1183
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$11$1;->this$1:Lorg/telegram/messenger/ContactsController$11;

    iput-object p2, p0, Lorg/telegram/messenger/ContactsController$11$1;->val$usersDict:Ljava/util/HashMap;

    iput-boolean p3, p0, Lorg/telegram/messenger/ContactsController$11$1;->val$isEmpty:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 25

    .prologue
    .line 1186
    const-string/jumbo v4, "done loading contacts"

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1187
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$11$1;->this$1:Lorg/telegram/messenger/ContactsController$11;

    iget v4, v4, Lorg/telegram/messenger/ContactsController$11;->val$from:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$11$1;->this$1:Lorg/telegram/messenger/ContactsController$11;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$11;->val$contactsArr:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v22, 0x3e8

    div-long v4, v4, v22

    sget v22, Lorg/telegram/messenger/UserConfig;->lastContactsSyncTime:I

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    sub-long v4, v4, v22

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v22, 0x15180

    cmp-long v4, v4, v22

    if-ltz v4, :cond_1

    .line 1188
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$11$1;->this$1:Lorg/telegram/messenger/ContactsController$11;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$11;->this$0:Lorg/telegram/messenger/ContactsController;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$11$1;->this$1:Lorg/telegram/messenger/ContactsController$11;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$11;->this$0:Lorg/telegram/messenger/ContactsController;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$11$1;->this$1:Lorg/telegram/messenger/ContactsController$11;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$11;->val$contactsArr:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lorg/telegram/messenger/ContactsController;->access$1200(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v4, v5, v0}, Lorg/telegram/messenger/ContactsController;->loadContacts(ZI)V

    .line 1189
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$11$1;->this$1:Lorg/telegram/messenger/ContactsController$11;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$11;->val$contactsArr:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1363
    :goto_0
    return-void

    .line 1193
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$11$1;->this$1:Lorg/telegram/messenger/ContactsController$11;

    iget v4, v4, Lorg/telegram/messenger/ContactsController$11;->val$from:I

    if-nez v4, :cond_2

    .line 1194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v22, 0x3e8

    div-long v4, v4, v22

    long-to-int v4, v4

    sput v4, Lorg/telegram/messenger/UserConfig;->lastContactsSyncTime:I

    .line 1195
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 1198
    :cond_2
    const/4 v11, 0x0

    .local v11, "a":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$11$1;->this$1:Lorg/telegram/messenger/ContactsController$11;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$11;->val$contactsArr:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v11, v4, :cond_4

    .line 1199
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$11$1;->this$1:Lorg/telegram/messenger/ContactsController$11;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$11;->val$contactsArr:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 1200
    .local v13, "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$11$1;->val$usersDict:Ljava/util/HashMap;

    iget v5, v13, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    iget v4, v13, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 1201
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$11$1;->this$1:Lorg/telegram/messenger/ContactsController$11;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$11;->this$0:Lorg/telegram/messenger/ContactsController;

    const/4 v5, 0x0

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v4, v5, v0}, Lorg/telegram/messenger/ContactsController;->loadContacts(ZI)V

    .line 1202
    const-string/jumbo v4, "contacts are broken, load from server"

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 1198
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1207
    .end local v13    # "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$11$1;->this$1:Lorg/telegram/messenger/ContactsController$11;

    iget v4, v4, Lorg/telegram/messenger/ContactsController$11;->val$from:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5

    .line 1208
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ContactsController$11$1;->this$1:Lorg/telegram/messenger/ContactsController$11;

    iget-object v5, v5, Lorg/telegram/messenger/ContactsController$11;->val$usersArr:Ljava/util/ArrayList;

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v4, v5, v0, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 1209
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$11$1;->this$1:Lorg/telegram/messenger/ContactsController$11;

    iget-object v0, v4, Lorg/telegram/messenger/ContactsController$11;->val$contactsArr:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$11$1;->this$1:Lorg/telegram/messenger/ContactsController$11;

    iget v4, v4, Lorg/telegram/messenger/ContactsController$11;->val$from:I

    const/16 v23, 0x2

    move/from16 v0, v23

    if-eq v4, v0, :cond_8

    const/4 v4, 0x1

    :goto_2
    move-object/from16 v0, v22

    invoke-virtual {v5, v0, v4}, Lorg/telegram/messenger/MessagesStorage;->putContacts(Ljava/util/ArrayList;Z)V

    .line 1212
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$11$1;->this$1:Lorg/telegram/messenger/ContactsController$11;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$11;->val$contactsArr:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/messenger/ContactsController$11$1$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/messenger/ContactsController$11$1$1;-><init>(Lorg/telegram/messenger/ContactsController$11$1;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1223
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 1224
    .local v6, "contactsDictionary":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1225
    .local v7, "sectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1226
    .local v8, "sectionsDictMutual":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1227
    .local v9, "sortedSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1228
    .local v10, "sortedSectionsArrayMutual":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .line 1229
    .local v14, "contactsByPhonesDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    const/16 v16, 0x0

    .line 1231
    .local v16, "contactsByPhonesShortDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$11$1;->this$1:Lorg/telegram/messenger/ContactsController$11;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$11;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v4}, Lorg/telegram/messenger/ContactsController;->access$800(Lorg/telegram/messenger/ContactsController;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1232
    new-instance v14, Ljava/util/HashMap;

    .end local v14    # "contactsByPhonesDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 1233
    .restart local v14    # "contactsByPhonesDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    new-instance v16, Ljava/util/HashMap;

    .end local v16    # "contactsByPhonesShortDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 1236
    .restart local v16    # "contactsByPhonesShortDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    :cond_6
    move-object v15, v14

    .line 1237
    .local v15, "contactsByPhonesDictFinal":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    move-object/from16 v17, v16

    .line 1239
    .local v17, "contactsByPhonesShortDictFinal":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    const/4 v11, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$11$1;->this$1:Lorg/telegram/messenger/ContactsController$11;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$11;->val$contactsArr:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v11, v4, :cond_10

    .line 1240
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$11$1;->this$1:Lorg/telegram/messenger/ContactsController$11;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$11;->val$contactsArr:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 1241
    .local v21, "value":Lorg/telegram/tgnet/TLRPC$TL_contact;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$11$1;->val$usersDict:Ljava/util/HashMap;

    move-object/from16 v0, v21

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/telegram/tgnet/TLRPC$User;

    .line 1242
    .local v20, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v20, :cond_9

    .line 1239
    :cond_7
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1209
    .end local v6    # "contactsDictionary":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    .end local v7    # "sectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    .end local v8    # "sectionsDictMutual":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    .end local v9    # "sortedSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "sortedSectionsArrayMutual":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "contactsByPhonesDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    .end local v15    # "contactsByPhonesDictFinal":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    .end local v16    # "contactsByPhonesShortDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    .end local v17    # "contactsByPhonesShortDictFinal":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    .end local v20    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v21    # "value":Lorg/telegram/tgnet/TLRPC$TL_contact;
    :cond_8
    const/4 v4, 0x0

    goto :goto_2

    .line 1245
    .restart local v6    # "contactsDictionary":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    .restart local v7    # "sectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    .restart local v8    # "sectionsDictMutual":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    .restart local v9    # "sortedSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "sortedSectionsArrayMutual":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v14    # "contactsByPhonesDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    .restart local v15    # "contactsByPhonesDictFinal":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    .restart local v16    # "contactsByPhonesShortDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    .restart local v17    # "contactsByPhonesShortDictFinal":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    .restart local v20    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .restart local v21    # "value":Lorg/telegram/tgnet/TLRPC$TL_contact;
    :cond_9
    move-object/from16 v0, v21

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    move-object/from16 v0, v21

    invoke-virtual {v6, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1246
    if-eqz v14, :cond_a

    move-object/from16 v0, v20

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 1247
    move-object/from16 v0, v20

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v14, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1248
    move-object/from16 v0, v20

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v22, v22, -0x7

    move/from16 v0, v22

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1251
    :cond_a
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v18

    .line 1252
    .local v18, "key":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_b

    .line 1253
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 1255
    :cond_b
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_f

    .line 1256
    const-string/jumbo v18, "#"

    .line 1260
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$11$1;->this$1:Lorg/telegram/messenger/ContactsController$11;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$11;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v4}, Lorg/telegram/messenger/ContactsController;->access$1300(Lorg/telegram/messenger/ContactsController;)Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 1261
    .local v19, "replace":Ljava/lang/String;
    if-eqz v19, :cond_c

    .line 1262
    move-object/from16 v18, v19

    .line 1264
    :cond_c
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 1265
    .local v12, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    if-nez v12, :cond_d

    .line 1266
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1267
    .restart local v12    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    move-object/from16 v0, v18

    invoke-virtual {v7, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1268
    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1270
    :cond_d
    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1271
    move-object/from16 v0, v20

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->mutual_contact:Z

    if-eqz v4, :cond_7

    .line 1272
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    check-cast v12, Ljava/util/ArrayList;

    .line 1273
    .restart local v12    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    if-nez v12, :cond_e

    .line 1274
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1275
    .restart local v12    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    move-object/from16 v0, v18

    invoke-virtual {v8, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1276
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1278
    :cond_e
    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1258
    .end local v12    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    .end local v19    # "replace":Ljava/lang/String;
    :cond_f
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v18

    goto :goto_5

    .line 1282
    .end local v18    # "key":Ljava/lang/String;
    .end local v20    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v21    # "value":Lorg/telegram/tgnet/TLRPC$TL_contact;
    :cond_10
    new-instance v4, Lorg/telegram/messenger/ContactsController$11$1$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/messenger/ContactsController$11$1$2;-><init>(Lorg/telegram/messenger/ContactsController$11$1;)V

    invoke-static {v9, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1296
    new-instance v4, Lorg/telegram/messenger/ContactsController$11$1$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/messenger/ContactsController$11$1$3;-><init>(Lorg/telegram/messenger/ContactsController$11$1;)V

    invoke-static {v10, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1310
    new-instance v4, Lorg/telegram/messenger/ContactsController$11$1$4;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/messenger/ContactsController$11$1$4;-><init>(Lorg/telegram/messenger/ContactsController$11$1;Landroid/util/SparseArray;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1337
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$11$1;->this$1:Lorg/telegram/messenger/ContactsController$11;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$11;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v4}, Lorg/telegram/messenger/ContactsController;->access$900(Lorg/telegram/messenger/ContactsController;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$11$1;->this$1:Lorg/telegram/messenger/ContactsController$11;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$11;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-boolean v4, v4, Lorg/telegram/messenger/ContactsController;->contactsLoaded:Z

    if-eqz v4, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$11$1;->this$1:Lorg/telegram/messenger/ContactsController$11;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$11;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v4}, Lorg/telegram/messenger/ContactsController;->access$800(Lorg/telegram/messenger/ContactsController;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1338
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$11$1;->this$1:Lorg/telegram/messenger/ContactsController$11;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$11;->this$0:Lorg/telegram/messenger/ContactsController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ContactsController$11$1;->this$1:Lorg/telegram/messenger/ContactsController$11;

    iget-object v5, v5, Lorg/telegram/messenger/ContactsController$11;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v5}, Lorg/telegram/messenger/ContactsController;->access$900(Lorg/telegram/messenger/ContactsController;)Ljava/util/ArrayList;

    move-result-object v5

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v4, v5, v0, v1, v2}, Lorg/telegram/messenger/ContactsController;->access$1000(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1339
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$11$1;->this$1:Lorg/telegram/messenger/ContactsController$11;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$11;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v4}, Lorg/telegram/messenger/ContactsController;->access$900(Lorg/telegram/messenger/ContactsController;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1342
    :cond_11
    if-eqz v15, :cond_12

    .line 1343
    new-instance v4, Lorg/telegram/messenger/ContactsController$11$1$5;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v15, v1}, Lorg/telegram/messenger/ContactsController$11$1$5;-><init>(Lorg/telegram/messenger/ContactsController$11$1;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1361
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$11$1;->this$1:Lorg/telegram/messenger/ContactsController$11;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$11;->this$0:Lorg/telegram/messenger/ContactsController;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lorg/telegram/messenger/ContactsController;->contactsLoaded:Z

    goto/16 :goto_0
.end method
