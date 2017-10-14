.class Lorg/telegram/messenger/ContactsController$21$2;
.super Ljava/lang/Object;
.source "ContactsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ContactsController$21;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/ContactsController$21;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ContactsController$21;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/ContactsController$21;

    .prologue
    .line 1965
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$21$2;->this$1:Lorg/telegram/messenger/ContactsController$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1968
    const/4 v1, 0x0

    .line 1969
    .local v1, "remove":Z
    iget-object v3, p0, Lorg/telegram/messenger/ContactsController$21$2;->this$1:Lorg/telegram/messenger/ContactsController$21;

    iget-object v3, v3, Lorg/telegram/messenger/ContactsController$21;->val$users:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    .line 1970
    .local v2, "user":Lorg/telegram/tgnet/TLRPC$User;
    iget-object v4, p0, Lorg/telegram/messenger/ContactsController$21$2;->this$1:Lorg/telegram/messenger/ContactsController$21;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$21;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController;->contactsDict:Landroid/util/SparseArray;

    iget v5, v2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 1971
    .local v0, "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    if-eqz v0, :cond_0

    .line 1972
    const/4 v1, 0x1

    .line 1973
    iget-object v4, p0, Lorg/telegram/messenger/ContactsController$21$2;->this$1:Lorg/telegram/messenger/ContactsController$21;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$21;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1974
    iget-object v4, p0, Lorg/telegram/messenger/ContactsController$21$2;->this$1:Lorg/telegram/messenger/ContactsController$21;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$21;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController;->contactsDict:Landroid/util/SparseArray;

    iget v5, v2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    .line 1977
    .end local v0    # "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    .end local v2    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1
    if-eqz v1, :cond_2

    .line 1978
    iget-object v3, p0, Lorg/telegram/messenger/ContactsController$21$2;->this$1:Lorg/telegram/messenger/ContactsController$21;

    iget-object v3, v3, Lorg/telegram/messenger/ContactsController$21;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v3, v7}, Lorg/telegram/messenger/ContactsController;->access$1900(Lorg/telegram/messenger/ContactsController;Z)V

    .line 1980
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1981
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1982
    return-void
.end method
