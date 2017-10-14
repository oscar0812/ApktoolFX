.class Lorg/telegram/messenger/ContactsController$8$4;
.super Ljava/lang/Object;
.source "ContactsController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ContactsController$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/ContactsController$8;

.field final synthetic val$contactsBookShort:Ljava/util/HashMap;

.field final synthetic val$contactsMap:Ljava/util/HashMap;

.field final synthetic val$contactsMapToSave:Ljava/util/HashMap;

.field final synthetic val$count:I

.field final synthetic val$hasErrors:[Z

.field final synthetic val$req:Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ContactsController$8;Ljava/util/HashMap;[ZLjava/util/HashMap;Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;ILjava/util/HashMap;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/ContactsController$8;

    .prologue
    .line 940
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$8$4;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iput-object p2, p0, Lorg/telegram/messenger/ContactsController$8$4;->val$contactsMapToSave:Ljava/util/HashMap;

    iput-object p3, p0, Lorg/telegram/messenger/ContactsController$8$4;->val$hasErrors:[Z

    iput-object p4, p0, Lorg/telegram/messenger/ContactsController$8$4;->val$contactsMap:Ljava/util/HashMap;

    iput-object p5, p0, Lorg/telegram/messenger/ContactsController$8$4;->val$req:Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;

    iput p6, p0, Lorg/telegram/messenger/ContactsController$8$4;->val$count:I

    iput-object p7, p0, Lorg/telegram/messenger/ContactsController$8$4;->val$contactsBookShort:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 12
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 943
    iget-object v7, p0, Lorg/telegram/messenger/ContactsController$8$4;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v7, v7, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v7}, Lorg/telegram/messenger/ContactsController;->access$008(Lorg/telegram/messenger/ContactsController;)I

    .line 944
    if-nez p2, :cond_7

    .line 945
    const-string/jumbo v7, "contacts imported"

    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    move-object v6, p1

    .line 946
    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;

    .line 947
    .local v6, "res":Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->retry_contacts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 948
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->retry_contacts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_0

    .line 949
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->retry_contacts:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 950
    .local v4, "id":J
    iget-object v7, p0, Lorg/telegram/messenger/ContactsController$8$4;->val$contactsMapToSave:Ljava/util/HashMap;

    long-to-int v8, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 952
    .end local v4    # "id":J
    :cond_0
    iget-object v7, p0, Lorg/telegram/messenger/ContactsController$8$4;->val$hasErrors:[Z

    aput-boolean v10, v7, v11

    .line 954
    .end local v0    # "a":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_1
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->popular_invites:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_3

    .line 955
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->popular_invites:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_popularContact;

    .line 956
    .local v3, "popularContact":Lorg/telegram/tgnet/TLRPC$TL_popularContact;
    iget-object v7, p0, Lorg/telegram/messenger/ContactsController$8$4;->val$contactsMap:Ljava/util/HashMap;

    iget-wide v8, v3, Lorg/telegram/tgnet/TLRPC$TL_popularContact;->client_id:J

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/ContactsController$Contact;

    .line 957
    .local v2, "contact":Lorg/telegram/messenger/ContactsController$Contact;
    if-eqz v2, :cond_2

    .line 958
    iget v7, v3, Lorg/telegram/tgnet/TLRPC$TL_popularContact;->importers:I

    iput v7, v2, Lorg/telegram/messenger/ContactsController$Contact;->imported:I

    .line 954
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 967
    .end local v2    # "contact":Lorg/telegram/messenger/ContactsController$Contact;
    .end local v3    # "popularContact":Lorg/telegram/tgnet/TLRPC$TL_popularContact;
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v7

    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->users:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v10, v10}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 968
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 969
    .local v1, "cArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    const/4 v0, 0x0

    :goto_2
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->imported:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_4

    .line 970
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_contact;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_contact;-><init>()V

    .line 971
    .local v2, "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->imported:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_importedContact;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$TL_importedContact;->user_id:I

    iput v7, v2, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    .line 972
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 969
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 974
    .end local v2    # "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    :cond_4
    iget-object v7, p0, Lorg/telegram/messenger/ContactsController$8$4;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v7, v7, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->users:Ljava/util/ArrayList;

    const/4 v9, 0x2

    invoke-virtual {v7, v1, v8, v9}, Lorg/telegram/messenger/ContactsController;->processLoadedContacts(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 983
    .end local v1    # "cArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    .end local v6    # "res":Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;
    :goto_3
    iget-object v7, p0, Lorg/telegram/messenger/ContactsController$8$4;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v7, v7, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v7}, Lorg/telegram/messenger/ContactsController;->access$000(Lorg/telegram/messenger/ContactsController;)I

    move-result v7

    iget v8, p0, Lorg/telegram/messenger/ContactsController$8$4;->val$count:I

    if-ne v7, v8, :cond_6

    .line 984
    iget-object v7, p0, Lorg/telegram/messenger/ContactsController$8$4;->val$contactsMapToSave:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 985
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/messenger/ContactsController$8$4;->val$contactsMapToSave:Ljava/util/HashMap;

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesStorage;->putCachedPhoneBook(Ljava/util/HashMap;)V

    .line 987
    :cond_5
    sget-object v7, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v8, Lorg/telegram/messenger/ContactsController$8$4$1;

    invoke-direct {v8, p0}, Lorg/telegram/messenger/ContactsController$8$4$1;-><init>(Lorg/telegram/messenger/ContactsController$8$4;)V

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1018
    :cond_6
    return-void

    .line 976
    .end local v0    # "a":I
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_4
    iget-object v7, p0, Lorg/telegram/messenger/ContactsController$8$4;->val$req:Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_8

    .line 977
    iget-object v7, p0, Lorg/telegram/messenger/ContactsController$8$4;->val$req:Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;

    .line 978
    .local v2, "contact":Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;
    iget-object v7, p0, Lorg/telegram/messenger/ContactsController$8$4;->val$contactsMapToSave:Ljava/util/HashMap;

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 980
    .end local v2    # "contact":Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;
    :cond_8
    iget-object v7, p0, Lorg/telegram/messenger/ContactsController$8$4;->val$hasErrors:[Z

    aput-boolean v10, v7, v11

    .line 981
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "import contacts error "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_3
.end method
