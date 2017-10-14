.class Lorg/telegram/messenger/ContactsController$11$1$5;
.super Ljava/lang/Object;
.source "ContactsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ContactsController$11$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/messenger/ContactsController$11$1;

.field final synthetic val$contactsByPhonesDictFinal:Ljava/util/HashMap;

.field final synthetic val$contactsByPhonesShortDictFinal:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ContactsController$11$1;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/messenger/ContactsController$11$1;

    .prologue
    .line 1343
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$11$1$5;->this$2:Lorg/telegram/messenger/ContactsController$11$1;

    iput-object p2, p0, Lorg/telegram/messenger/ContactsController$11$1$5;->val$contactsByPhonesDictFinal:Ljava/util/HashMap;

    iput-object p3, p0, Lorg/telegram/messenger/ContactsController$11$1$5;->val$contactsByPhonesShortDictFinal:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1346
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ContactsController$11$1$5$1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/ContactsController$11$1$5$1;-><init>(Lorg/telegram/messenger/ContactsController$11$1$5;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1353
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$11$1$5;->this$2:Lorg/telegram/messenger/ContactsController$11$1;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$11$1;->this$1:Lorg/telegram/messenger/ContactsController$11;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$11;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->access$700(Lorg/telegram/messenger/ContactsController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1358
    :goto_0
    return-void

    .line 1356
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$11$1$5;->this$2:Lorg/telegram/messenger/ContactsController$11$1;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$11$1;->this$1:Lorg/telegram/messenger/ContactsController$11;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$11;->this$0:Lorg/telegram/messenger/ContactsController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/messenger/ContactsController;->access$702(Lorg/telegram/messenger/ContactsController;Z)Z

    .line 1357
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesStorage;->getCachedPhoneBook(Z)V

    goto :goto_0
.end method
