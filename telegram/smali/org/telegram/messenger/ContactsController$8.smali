.class Lorg/telegram/messenger/ContactsController$8;
.super Ljava/lang/Object;
.source "ContactsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ContactsController;->performSyncPhoneBook(Ljava/util/HashMap;ZZZZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/ContactsController;

.field final synthetic val$canceled:Z

.field final synthetic val$checkCount:Z

.field final synthetic val$contactHashMap:Ljava/util/HashMap;

.field final synthetic val$first:Z

.field final synthetic val$force:Z

.field final synthetic val$request:Z

.field final synthetic val$schedule:Z


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;ZZZZZZ)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/ContactsController;

    .prologue
    .line 603
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    iput-object p2, p0, Lorg/telegram/messenger/ContactsController$8;->val$contactHashMap:Ljava/util/HashMap;

    iput-boolean p3, p0, Lorg/telegram/messenger/ContactsController$8;->val$schedule:Z

    iput-boolean p4, p0, Lorg/telegram/messenger/ContactsController$8;->val$request:Z

    iput-boolean p5, p0, Lorg/telegram/messenger/ContactsController$8;->val$first:Z

    iput-boolean p6, p0, Lorg/telegram/messenger/ContactsController$8;->val$force:Z

    iput-boolean p7, p0, Lorg/telegram/messenger/ContactsController$8;->val$checkCount:Z

    iput-boolean p8, p0, Lorg/telegram/messenger/ContactsController$8;->val$canceled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 44

    .prologue
    .line 607
    const/16 v29, 0x0

    .line 608
    .local v29, "newPhonebookContacts":I
    const/16 v32, 0x0

    .line 609
    .local v32, "serverContactsInPhonebook":I
    const/16 v18, 0x1

    .line 633
    .local v18, "disableDeletion":Z
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 634
    .local v16, "contactShortHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/messenger/ContactsController$Contact;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8;->val$contactHashMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Map$Entry;

    .line 635
    .local v21, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/messenger/ContactsController$Contact;

    .line 636
    .local v13, "c":Lorg/telegram/messenger/ContactsController$Contact;
    const/4 v12, 0x0

    .local v12, "a":I
    :goto_0
    iget-object v5, v13, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v12, v5, :cond_0

    .line 637
    iget-object v5, v13, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 641
    .end local v12    # "a":I
    .end local v13    # "c":Lorg/telegram/messenger/ContactsController$Contact;
    .end local v21    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    :cond_1
    const-string/jumbo v4, "start read contacts from phone"

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 642
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/ContactsController$8;->val$schedule:Z

    if-nez v4, :cond_2

    .line 643
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v4}, Lorg/telegram/messenger/ContactsController;->access$300(Lorg/telegram/messenger/ContactsController;)Z

    .line 645
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v4}, Lorg/telegram/messenger/ContactsController;->access$600(Lorg/telegram/messenger/ContactsController;)Ljava/util/HashMap;

    move-result-object v8

    .line 646
    .local v8, "contactsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 647
    .local v11, "contactsBookShort":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/messenger/ContactsController$Contact;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8;->val$contactHashMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v30

    .line 649
    .local v30, "oldCount":I
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 650
    .local v36, "toImport":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8;->val$contactHashMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_22

    .line 651
    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/util/Map$Entry;

    .line 652
    .local v31, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    invoke-interface/range {v31 .. v31}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    .line 653
    .local v24, "id":Ljava/lang/Integer;
    invoke-interface/range {v31 .. v31}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lorg/telegram/messenger/ContactsController$Contact;

    .line 654
    .local v38, "value":Lorg/telegram/messenger/ContactsController$Contact;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8;->val$contactHashMap:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/messenger/ContactsController$Contact;

    .line 655
    .local v22, "existing":Lorg/telegram/messenger/ContactsController$Contact;
    if-nez v22, :cond_4

    .line 656
    const/4 v12, 0x0

    .restart local v12    # "a":I
    :goto_2
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v12, v4, :cond_4

    .line 657
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/messenger/ContactsController$Contact;

    .line 658
    .restart local v13    # "c":Lorg/telegram/messenger/ContactsController$Contact;
    if-eqz v13, :cond_a

    .line 659
    move-object/from16 v22, v13

    .line 660
    move-object/from16 v0, v22

    iget v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    .line 665
    .end local v12    # "a":I
    .end local v13    # "c":Lorg/telegram/messenger/ContactsController$Contact;
    :cond_4
    if-eqz v22, :cond_5

    .line 666
    move-object/from16 v0, v22

    iget v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->imported:I

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->imported:I

    .line 669
    :cond_5
    if-eqz v22, :cond_b

    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    move-object/from16 v0, v22

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    move-object/from16 v0, v38

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    move-object/from16 v0, v22

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    move-object/from16 v0, v38

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    :cond_7
    const/16 v28, 0x1

    .line 670
    .local v28, "nameChanged":Z
    :goto_3
    if-eqz v22, :cond_8

    if-eqz v28, :cond_10

    .line 671
    :cond_8
    const/4 v12, 0x0

    .restart local v12    # "a":I
    :goto_4
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v12, v4, :cond_f

    .line 672
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    .line 673
    .local v33, "sphone":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v39

    add-int/lit8 v39, v39, -0x7

    move/from16 v0, v39

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v34

    .line 674
    .local v34, "sphone9":Ljava/lang/String;
    move-object/from16 v0, v33

    move-object/from16 v1, v38

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    if-eqz v22, :cond_c

    .line 676
    move-object/from16 v0, v22

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v26

    .line 677
    .local v26, "index":I
    const/4 v4, -0x1

    move/from16 v0, v26

    if-eq v0, v4, :cond_c

    .line 678
    move-object/from16 v0, v22

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 679
    .local v17, "deleted":Ljava/lang/Integer;
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v4, v12, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 680
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v39, 0x1

    move/from16 v0, v39

    if-ne v4, v0, :cond_c

    .line 671
    .end local v17    # "deleted":Ljava/lang/Integer;
    .end local v26    # "index":I
    :cond_9
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 656
    .end local v28    # "nameChanged":Z
    .end local v33    # "sphone":Ljava/lang/String;
    .end local v34    # "sphone9":Ljava/lang/String;
    .restart local v13    # "c":Lorg/telegram/messenger/ContactsController$Contact;
    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 669
    .end local v12    # "a":I
    .end local v13    # "c":Lorg/telegram/messenger/ContactsController$Contact;
    :cond_b
    const/16 v28, 0x0

    goto :goto_3

    .line 685
    .restart local v12    # "a":I
    .restart local v28    # "nameChanged":Z
    .restart local v33    # "sphone":Ljava/lang/String;
    .restart local v34    # "sphone9":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/ContactsController$8;->val$request:Z

    if-eqz v4, :cond_9

    .line 686
    if-nez v28, :cond_e

    .line 687
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController;->contactsByPhone:Ljava/util/HashMap;

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 688
    add-int/lit8 v32, v32, 0x1

    .line 689
    goto :goto_5

    .line 691
    :cond_d
    add-int/lit8 v29, v29, 0x1

    .line 694
    :cond_e
    new-instance v25, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;

    invoke-direct/range {v25 .. v25}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;-><init>()V

    .line 695
    .local v25, "imp":Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;
    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->id:I

    int-to-long v0, v4

    move-wide/from16 v40, v0

    move-wide/from16 v0, v40

    move-object/from16 v2, v25

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    .line 696
    move-object/from16 v0, v25

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    move-wide/from16 v40, v0

    int-to-long v0, v12

    move-wide/from16 v42, v0

    const/16 v4, 0x20

    shl-long v42, v42, v4

    or-long v40, v40, v42

    move-wide/from16 v0, v40

    move-object/from16 v2, v25

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    .line 697
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    move-object/from16 v0, v25

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->first_name:Ljava/lang/String;

    .line 698
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    move-object/from16 v0, v25

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->last_name:Ljava/lang/String;

    .line 699
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v25

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->phone:Ljava/lang/String;

    .line 700
    move-object/from16 v0, v36

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 703
    .end local v25    # "imp":Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;
    .end local v33    # "sphone":Ljava/lang/String;
    .end local v34    # "sphone9":Ljava/lang/String;
    :cond_f
    if-eqz v22, :cond_3

    .line 704
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8;->val$contactHashMap:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 707
    .end local v12    # "a":I
    :cond_10
    const/4 v12, 0x0

    .restart local v12    # "a":I
    :goto_6
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v12, v4, :cond_1c

    .line 708
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    .line 709
    .restart local v33    # "sphone":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v39

    add-int/lit8 v39, v39, -0x7

    move/from16 v0, v39

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v34

    .line 710
    .restart local v34    # "sphone9":Ljava/lang/String;
    move-object/from16 v0, v33

    move-object/from16 v1, v38

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    move-object/from16 v0, v22

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v26

    .line 712
    .restart local v26    # "index":I
    const/16 v19, 0x0

    .line 713
    .local v19, "emptyNameReimport":Z
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/ContactsController$8;->val$request:Z

    if-eqz v4, :cond_12

    .line 714
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController;->contactsByPhone:Ljava/util/HashMap;

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 715
    .local v15, "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    if-eqz v15, :cond_15

    .line 716
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v37

    .line 717
    .local v37, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v37, :cond_12

    .line 718
    add-int/lit8 v32, v32, 0x1

    .line 719
    move-object/from16 v0, v37

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    move-object/from16 v0, v37

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_11

    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 720
    :cond_11
    const/16 v26, -0x1

    .line 721
    const/16 v19, 0x1

    .line 728
    .end local v15    # "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    .end local v37    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_12
    :goto_7
    const/4 v4, -0x1

    move/from16 v0, v26

    if-ne v0, v4, :cond_1b

    .line 729
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/ContactsController$8;->val$request:Z

    if-eqz v4, :cond_14

    .line 730
    if-nez v19, :cond_19

    .line 731
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController;->contactsByPhone:Ljava/util/HashMap;

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 732
    .restart local v15    # "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    if-eqz v15, :cond_1a

    .line 733
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v37

    .line 734
    .restart local v37    # "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v37, :cond_18

    .line 735
    add-int/lit8 v32, v32, 0x1

    .line 736
    move-object/from16 v0, v37

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v4, :cond_16

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 737
    .local v23, "firstName":Ljava/lang/String;
    :goto_8
    move-object/from16 v0, v37

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v4, :cond_17

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    move-object/from16 v27, v0

    .line 738
    .local v27, "lastName":Ljava/lang/String;
    :goto_9
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    :cond_13
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_19

    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 707
    .end local v15    # "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    .end local v23    # "firstName":Ljava/lang/String;
    .end local v27    # "lastName":Ljava/lang/String;
    .end local v37    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_14
    :goto_a
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_6

    .line 724
    .restart local v15    # "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController;->contactsByShortPhone:Ljava/util/HashMap;

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 725
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_7

    .line 736
    .restart local v37    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_16
    const-string/jumbo v23, ""

    goto :goto_8

    .line 737
    .restart local v23    # "firstName":Ljava/lang/String;
    :cond_17
    const-string/jumbo v27, ""

    goto :goto_9

    .line 742
    .end local v23    # "firstName":Ljava/lang/String;
    :cond_18
    add-int/lit8 v29, v29, 0x1

    .line 749
    .end local v15    # "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    .end local v37    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_19
    :goto_b
    new-instance v25, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;

    invoke-direct/range {v25 .. v25}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;-><init>()V

    .line 750
    .restart local v25    # "imp":Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;
    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->id:I

    int-to-long v0, v4

    move-wide/from16 v40, v0

    move-wide/from16 v0, v40

    move-object/from16 v2, v25

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    .line 751
    move-object/from16 v0, v25

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    move-wide/from16 v40, v0

    int-to-long v0, v12

    move-wide/from16 v42, v0

    const/16 v4, 0x20

    shl-long v42, v42, v4

    or-long v40, v40, v42

    move-wide/from16 v0, v40

    move-object/from16 v2, v25

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    .line 752
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    move-object/from16 v0, v25

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->first_name:Ljava/lang/String;

    .line 753
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    move-object/from16 v0, v25

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->last_name:Ljava/lang/String;

    .line 754
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v25

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->phone:Ljava/lang/String;

    .line 755
    move-object/from16 v0, v36

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 744
    .end local v25    # "imp":Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;
    .restart local v15    # "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController;->contactsByShortPhone:Ljava/util/HashMap;

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 745
    add-int/lit8 v32, v32, 0x1

    goto :goto_b

    .line 758
    .end local v15    # "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    :cond_1b
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v4, v12, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 759
    move-object/from16 v0, v22

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 760
    move-object/from16 v0, v22

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 761
    move-object/from16 v0, v22

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 762
    move-object/from16 v0, v22

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->phoneTypes:Ljava/util/ArrayList;

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_a

    .line 765
    .end local v19    # "emptyNameReimport":Z
    .end local v26    # "index":I
    .end local v33    # "sphone":Ljava/lang/String;
    .end local v34    # "sphone9":Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, v22

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 766
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8;->val$contactHashMap:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 770
    .end local v12    # "a":I
    .end local v22    # "existing":Lorg/telegram/messenger/ContactsController$Contact;
    .end local v24    # "id":Ljava/lang/Integer;
    .end local v28    # "nameChanged":Z
    .end local v31    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    .end local v38    # "value":Lorg/telegram/messenger/ContactsController$Contact;
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/ContactsController$8;->val$first:Z

    if-nez v4, :cond_1f

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8;->val$contactHashMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v4

    move/from16 v0, v30

    if-ne v0, v4, :cond_1f

    .line 771
    const-string/jumbo v4, "contacts not changed!"

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1068
    :cond_1e
    :goto_c
    return-void

    .line 774
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/ContactsController$8;->val$request:Z

    if-eqz v4, :cond_21

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8;->val$contactHashMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_21

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_21

    .line 775
    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 776
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4, v8}, Lorg/telegram/messenger/MessagesStorage;->putCachedPhoneBook(Ljava/util/HashMap;)V

    .line 778
    :cond_20
    if-nez v18, :cond_21

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8;->val$contactHashMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_21

    .line 779
    new-instance v4, Lorg/telegram/messenger/ContactsController$8$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/messenger/ContactsController$8$1;-><init>(Lorg/telegram/messenger/ContactsController$8;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 870
    :cond_21
    const-string/jumbo v4, "done processing contacts"

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 872
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/ContactsController$8;->val$request:Z

    if-eqz v4, :cond_30

    .line 873
    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2f

    .line 882
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/ContactsController$8;->val$checkCount:Z

    if-eqz v4, :cond_2c

    .line 883
    const/16 v4, 0x1e

    move/from16 v0, v29

    if-lt v0, v4, :cond_2a

    .line 884
    const/4 v14, 0x1

    .line 893
    .local v14, "checkType":I
    :goto_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "new phone book contacts "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " serverContactsInPhonebook "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " totalContacts "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v5, v5, Lorg/telegram/messenger/ContactsController;->contactsByPhone:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 894
    if-eqz v14, :cond_2d

    .line 895
    new-instance v4, Lorg/telegram/messenger/ContactsController$8$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v14}, Lorg/telegram/messenger/ContactsController$8$2;-><init>(Lorg/telegram/messenger/ContactsController$8;I)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_c

    .line 836
    .end local v14    # "checkType":I
    :cond_22
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/ContactsController$8;->val$request:Z

    if-eqz v4, :cond_21

    .line 837
    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_23
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/util/Map$Entry;

    .line 838
    .restart local v31    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    invoke-interface/range {v31 .. v31}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lorg/telegram/messenger/ContactsController$Contact;

    .line 839
    .restart local v38    # "value":Lorg/telegram/messenger/ContactsController$Contact;
    invoke-interface/range {v31 .. v31}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 840
    .local v24, "id":I
    const/4 v12, 0x0

    .restart local v12    # "a":I
    :goto_e
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v12, v4, :cond_23

    .line 841
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/ContactsController$8;->val$force:Z

    if-nez v4, :cond_29

    .line 842
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    .line 843
    .restart local v33    # "sphone":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v39

    add-int/lit8 v39, v39, -0x7

    move/from16 v0, v39

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v34

    .line 844
    .restart local v34    # "sphone9":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController;->contactsByPhone:Ljava/util/HashMap;

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 845
    .restart local v15    # "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    if-eqz v15, :cond_28

    .line 846
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v37

    .line 847
    .restart local v37    # "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v37, :cond_29

    .line 848
    add-int/lit8 v32, v32, 0x1

    .line 849
    move-object/from16 v0, v37

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v4, :cond_26

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 850
    .restart local v23    # "firstName":Ljava/lang/String;
    :goto_f
    move-object/from16 v0, v37

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v4, :cond_27

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    move-object/from16 v27, v0

    .line 851
    .restart local v27    # "lastName":Ljava/lang/String;
    :goto_10
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    :cond_24
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_29

    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 840
    .end local v15    # "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    .end local v23    # "firstName":Ljava/lang/String;
    .end local v27    # "lastName":Ljava/lang/String;
    .end local v33    # "sphone":Ljava/lang/String;
    .end local v34    # "sphone9":Ljava/lang/String;
    .end local v37    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_25
    :goto_11
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_e

    .line 849
    .restart local v15    # "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    .restart local v33    # "sphone":Ljava/lang/String;
    .restart local v34    # "sphone9":Ljava/lang/String;
    .restart local v37    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_26
    const-string/jumbo v23, ""

    goto :goto_f

    .line 850
    .restart local v23    # "firstName":Ljava/lang/String;
    :cond_27
    const-string/jumbo v27, ""

    goto :goto_10

    .line 855
    .end local v23    # "firstName":Ljava/lang/String;
    .end local v37    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController;->contactsByShortPhone:Ljava/util/HashMap;

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 856
    add-int/lit8 v32, v32, 0x1

    .line 859
    .end local v15    # "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    .end local v33    # "sphone":Ljava/lang/String;
    .end local v34    # "sphone9":Ljava/lang/String;
    :cond_29
    new-instance v25, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;

    invoke-direct/range {v25 .. v25}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;-><init>()V

    .line 860
    .restart local v25    # "imp":Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;
    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v40, v0

    move-wide/from16 v0, v40

    move-object/from16 v2, v25

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    .line 861
    move-object/from16 v0, v25

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    move-wide/from16 v40, v0

    int-to-long v0, v12

    move-wide/from16 v42, v0

    const/16 v4, 0x20

    shl-long v42, v42, v4

    or-long v40, v40, v42

    move-wide/from16 v0, v40

    move-object/from16 v2, v25

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    .line 862
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    move-object/from16 v0, v25

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->first_name:Ljava/lang/String;

    .line 863
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    move-object/from16 v0, v25

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->last_name:Ljava/lang/String;

    .line 864
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v25

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->phone:Ljava/lang/String;

    .line 865
    move-object/from16 v0, v36

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 885
    .end local v12    # "a":I
    .end local v24    # "id":I
    .end local v25    # "imp":Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;
    .end local v31    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    .end local v38    # "value":Lorg/telegram/messenger/ContactsController$Contact;
    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/ContactsController$8;->val$first:Z

    if-eqz v4, :cond_2b

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8;->val$contactHashMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2b

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController;->contactsByPhone:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    sub-int v4, v4, v32

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v5, v5, Lorg/telegram/messenger/ContactsController;->contactsByPhone:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    div-int/lit8 v5, v5, 0x3

    mul-int/lit8 v5, v5, 0x2

    if-le v4, v5, :cond_2b

    .line 886
    const/4 v14, 0x2

    .restart local v14    # "checkType":I
    goto/16 :goto_d

    .line 888
    .end local v14    # "checkType":I
    :cond_2b
    const/4 v14, 0x0

    .restart local v14    # "checkType":I
    goto/16 :goto_d

    .line 891
    .end local v14    # "checkType":I
    :cond_2c
    const/4 v14, 0x0

    .restart local v14    # "checkType":I
    goto/16 :goto_d

    .line 902
    :cond_2d
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/ContactsController$8;->val$canceled:Z

    if-eqz v4, :cond_2e

    .line 903
    sget-object v4, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v5, Lorg/telegram/messenger/ContactsController$8$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v11, v8}, Lorg/telegram/messenger/ContactsController$8$3;-><init>(Lorg/telegram/messenger/ContactsController$8;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto/16 :goto_c

    .line 931
    :cond_2e
    const/4 v4, 0x1

    new-array v7, v4, [Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-boolean v5, v7, v4

    .line 932
    .local v7, "hasErrors":[Z
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v8}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 933
    .local v6, "contactsMapToSave":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/telegram/messenger/ContactsController;->access$002(Lorg/telegram/messenger/ContactsController;I)I

    .line 934
    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-double v4, v4

    const-wide v40, 0x407f400000000000L    # 500.0

    div-double v4, v4, v40

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v10, v4

    .line 935
    .local v10, "count":I
    const/4 v12, 0x0

    .restart local v12    # "a":I
    :goto_12
    if-ge v12, v10, :cond_1e

    .line 936
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;-><init>()V

    .line 937
    .local v9, "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;
    mul-int/lit16 v0, v12, 0x1f4

    move/from16 v35, v0

    .line 938
    .local v35, "start":I
    move/from16 v0, v35

    add-int/lit16 v4, v0, 0x1f4

    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 939
    .local v20, "end":I
    new-instance v4, Ljava/util/ArrayList;

    move-object/from16 v0, v36

    move/from16 v1, v35

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, v9, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;->contacts:Ljava/util/ArrayList;

    .line 940
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v39

    new-instance v4, Lorg/telegram/messenger/ContactsController$8$4;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/messenger/ContactsController$8$4;-><init>(Lorg/telegram/messenger/ContactsController$8;Ljava/util/HashMap;[ZLjava/util/HashMap;Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;ILjava/util/HashMap;)V

    const/4 v5, 0x6

    move-object/from16 v0, v39

    invoke-virtual {v0, v9, v4, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 935
    add-int/lit8 v12, v12, 0x1

    goto :goto_12

    .line 1022
    .end local v6    # "contactsMapToSave":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    .end local v7    # "hasErrors":[Z
    .end local v9    # "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;
    .end local v10    # "count":I
    .end local v12    # "a":I
    .end local v14    # "checkType":I
    .end local v20    # "end":I
    .end local v35    # "start":I
    :cond_2f
    sget-object v4, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v5, Lorg/telegram/messenger/ContactsController$8$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v11, v8}, Lorg/telegram/messenger/ContactsController$8$5;-><init>(Lorg/telegram/messenger/ContactsController$8;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto/16 :goto_c

    .line 1048
    :cond_30
    sget-object v4, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v5, Lorg/telegram/messenger/ContactsController$8$6;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v11, v8}, Lorg/telegram/messenger/ContactsController$8$6;-><init>(Lorg/telegram/messenger/ContactsController$8;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1064
    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1e

    .line 1065
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4, v8}, Lorg/telegram/messenger/MessagesStorage;->putCachedPhoneBook(Ljava/util/HashMap;)V

    goto/16 :goto_c
.end method
