.class Lorg/telegram/messenger/ContactsController$11;
.super Ljava/lang/Object;
.source "ContactsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ContactsController;->processLoadedContacts(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/ContactsController;

.field final synthetic val$contactsArr:Ljava/util/ArrayList;

.field final synthetic val$from:I

.field final synthetic val$usersArr:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;ILjava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/ContactsController;

    .prologue
    .line 1153
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$11;->this$0:Lorg/telegram/messenger/ContactsController;

    iput-object p2, p0, Lorg/telegram/messenger/ContactsController$11;->val$usersArr:Ljava/util/ArrayList;

    iput p3, p0, Lorg/telegram/messenger/ContactsController$11;->val$from:I

    iput-object p4, p0, Lorg/telegram/messenger/ContactsController$11;->val$contactsArr:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    .line 1156
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/messenger/ContactsController$11;->val$usersArr:Ljava/util/ArrayList;

    iget v8, p0, Lorg/telegram/messenger/ContactsController$11;->val$from:I

    if-ne v8, v5, :cond_1

    :goto_0
    invoke-virtual {v6, v7, v5}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 1158
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1160
    .local v4, "usersDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    iget-object v5, p0, Lorg/telegram/messenger/ContactsController$11;->val$contactsArr:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    .line 1162
    .local v2, "isEmpty":Z
    iget-object v5, p0, Lorg/telegram/messenger/ContactsController$11;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v5, v5, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1163
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v5, p0, Lorg/telegram/messenger/ContactsController$11;->val$contactsArr:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 1164
    iget-object v5, p0, Lorg/telegram/messenger/ContactsController$11;->val$contactsArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 1165
    .local v1, "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    iget-object v5, p0, Lorg/telegram/messenger/ContactsController$11;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v5, v5, Lorg/telegram/messenger/ContactsController;->contactsDict:Landroid/util/SparseArray;

    iget v6, v1, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1166
    iget-object v5, p0, Lorg/telegram/messenger/ContactsController$11;->val$contactsArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1167
    add-int/lit8 v0, v0, -0x1

    .line 1163
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1156
    .end local v0    # "a":I
    .end local v1    # "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    .end local v2    # "isEmpty":Z
    .end local v4    # "usersDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1170
    .restart local v0    # "a":I
    .restart local v2    # "isEmpty":Z
    .restart local v4    # "usersDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    :cond_2
    iget-object v5, p0, Lorg/telegram/messenger/ContactsController$11;->val$contactsArr:Ljava/util/ArrayList;

    iget-object v6, p0, Lorg/telegram/messenger/ContactsController$11;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v6, v6, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1173
    .end local v0    # "a":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_2
    iget-object v5, p0, Lorg/telegram/messenger/ContactsController$11;->val$contactsArr:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_5

    .line 1174
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v5, p0, Lorg/telegram/messenger/ContactsController$11;->val$contactsArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_contact;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 1175
    .local v3, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v3, :cond_4

    .line 1176
    iget v5, v3, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1173
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1183
    .end local v3    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_5
    sget-object v5, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v6, Lorg/telegram/messenger/ContactsController$11$1;

    invoke-direct {v6, p0, v4, v2}, Lorg/telegram/messenger/ContactsController$11$1;-><init>(Lorg/telegram/messenger/ContactsController$11;Ljava/util/HashMap;Z)V

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1365
    return-void
.end method
