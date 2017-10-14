.class Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1$1$1;
.super Ljava/lang/Object;
.source "InviteContactsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1$1;)V
    .locals 0
    .param p1, "this$3"    # Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1$1;

    .prologue
    .line 825
    iput-object p1, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1$1$1;->this$3:Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 828
    iget-object v11, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1$1$1;->this$3:Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1$1;

    iget-object v11, v11, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1$1;->this$2:Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1;

    iget-object v11, v11, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1;->val$query:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 829
    .local v8, "search1":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_0

    .line 830
    iget-object v11, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1$1$1;->this$3:Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1$1;

    iget-object v11, v11, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1$1;->this$2:Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1;

    iget-object v11, v11, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1;->this$1:Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v11, v12, v13}, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->access$2600(Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 869
    :goto_0
    return-void

    .line 833
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v11

    invoke-virtual {v11, v8}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 834
    .local v9, "search2":Ljava/lang/String;
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_2

    .line 835
    :cond_1
    const/4 v9, 0x0

    .line 837
    :cond_2
    if-eqz v9, :cond_8

    const/4 v11, 0x1

    :goto_1
    add-int/lit8 v11, v11, 0x1

    new-array v7, v11, [Ljava/lang/String;

    .line 838
    .local v7, "search":[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object v8, v7, v11

    .line 839
    if-eqz v9, :cond_3

    .line 840
    const/4 v11, 0x1

    aput-object v9, v7, v11

    .line 843
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 844
    .local v5, "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/ContactsController$Contact;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 846
    .local v6, "resultArrayNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    iget-object v11, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1$1$1;->this$3:Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1$1;

    iget-object v11, v11, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1$1;->this$2:Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1;

    iget-object v11, v11, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1;->this$1:Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;

    iget-object v11, v11, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v11}, Lorg/telegram/ui/InviteContactsActivity;->access$2400(Lorg/telegram/ui/InviteContactsActivity;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v0, v11, :cond_a

    .line 847
    iget-object v11, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1$1$1;->this$3:Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1$1;

    iget-object v11, v11, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1$1;->this$2:Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1;

    iget-object v11, v11, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1;->this$1:Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;

    iget-object v11, v11, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v11}, Lorg/telegram/ui/InviteContactsActivity;->access$2400(Lorg/telegram/ui/InviteContactsActivity;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/ContactsController$Contact;

    .line 849
    .local v1, "contact":Lorg/telegram/messenger/ContactsController$Contact;
    iget-object v11, v1, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    iget-object v12, v1, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-static {v11, v12}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 850
    .local v3, "name":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v11

    invoke-virtual {v11, v3}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 851
    .local v10, "tName":Ljava/lang/String;
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 852
    const/4 v10, 0x0

    .line 855
    :cond_4
    const/4 v2, 0x0

    .line 856
    .local v2, "found":I
    array-length v12, v7

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v12, :cond_7

    aget-object v4, v7, v11

    .line 857
    .local v4, "q":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    if-eqz v10, :cond_6

    invoke-virtual {v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 858
    :cond_5
    const/4 v2, 0x1

    .line 861
    :cond_6
    if-eqz v2, :cond_9

    .line 862
    iget-object v11, v1, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    iget-object v12, v1, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-static {v11, v12, v4}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 863
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 846
    .end local v4    # "q":Ljava/lang/String;
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 837
    .end local v0    # "a":I
    .end local v1    # "contact":Lorg/telegram/messenger/ContactsController$Contact;
    .end local v2    # "found":I
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/ContactsController$Contact;>;"
    .end local v6    # "resultArrayNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v7    # "search":[Ljava/lang/String;
    .end local v10    # "tName":Ljava/lang/String;
    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 856
    .restart local v0    # "a":I
    .restart local v1    # "contact":Lorg/telegram/messenger/ContactsController$Contact;
    .restart local v2    # "found":I
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "q":Ljava/lang/String;
    .restart local v5    # "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/ContactsController$Contact;>;"
    .restart local v6    # "resultArrayNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v7    # "search":[Ljava/lang/String;
    .restart local v10    # "tName":Ljava/lang/String;
    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 868
    .end local v1    # "contact":Lorg/telegram/messenger/ContactsController$Contact;
    .end local v2    # "found":I
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "q":Ljava/lang/String;
    .end local v10    # "tName":Ljava/lang/String;
    :cond_a
    iget-object v11, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1$1$1;->this$3:Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1$1;

    iget-object v11, v11, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1$1;->this$2:Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1;

    iget-object v11, v11, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1;->this$1:Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;

    invoke-static {v11, v5, v6}, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->access$2600(Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method
