.class Lorg/telegram/messenger/ContactsController$8$4$1;
.super Ljava/lang/Object;
.source "ContactsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ContactsController$8$4;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/messenger/ContactsController$8$4;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ContactsController$8$4;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/messenger/ContactsController$8$4;

    .prologue
    .line 987
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$8$4$1;->this$2:Lorg/telegram/messenger/ContactsController$8$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 990
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$8$4$1;->this$2:Lorg/telegram/messenger/ContactsController$8$4;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$8$4;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$8$4$1;->this$2:Lorg/telegram/messenger/ContactsController$8$4;

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController$8$4;->val$contactsBookShort:Ljava/util/HashMap;

    iput-object v1, v0, Lorg/telegram/messenger/ContactsController;->contactsBookSPhones:Ljava/util/HashMap;

    .line 991
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$8$4$1;->this$2:Lorg/telegram/messenger/ContactsController$8$4;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$8$4;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$8$4$1;->this$2:Lorg/telegram/messenger/ContactsController$8$4;

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController$8$4;->val$contactsMap:Ljava/util/HashMap;

    iput-object v1, v0, Lorg/telegram/messenger/ContactsController;->contactsBook:Ljava/util/HashMap;

    .line 992
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$8$4$1;->this$2:Lorg/telegram/messenger/ContactsController$8$4;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$8$4;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v0, v3}, Lorg/telegram/messenger/ContactsController;->access$702(Lorg/telegram/messenger/ContactsController;Z)Z

    .line 993
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$8$4$1;->this$2:Lorg/telegram/messenger/ContactsController$8$4;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$8$4;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v0, v4}, Lorg/telegram/messenger/ContactsController;->access$802(Lorg/telegram/messenger/ContactsController;Z)Z

    .line 994
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$8$4$1;->this$2:Lorg/telegram/messenger/ContactsController$8$4;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$8$4;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-boolean v0, v0, Lorg/telegram/messenger/ContactsController$8;->val$first:Z

    if-eqz v0, :cond_0

    .line 995
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$8$4$1;->this$2:Lorg/telegram/messenger/ContactsController$8$4;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$8$4;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    iput-boolean v4, v0, Lorg/telegram/messenger/ContactsController;->contactsLoaded:Z

    .line 997
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$8$4$1;->this$2:Lorg/telegram/messenger/ContactsController$8$4;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$8$4;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->access$900(Lorg/telegram/messenger/ContactsController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$8$4$1;->this$2:Lorg/telegram/messenger/ContactsController$8$4;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$8$4;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-boolean v0, v0, Lorg/telegram/messenger/ContactsController;->contactsLoaded:Z

    if-eqz v0, :cond_1

    .line 998
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$8$4$1;->this$2:Lorg/telegram/messenger/ContactsController$8$4;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$8$4;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$8$4$1;->this$2:Lorg/telegram/messenger/ContactsController$8$4;

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController$8$4;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->access$900(Lorg/telegram/messenger/ContactsController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1, v2, v2, v2}, Lorg/telegram/messenger/ContactsController;->access$1000(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 999
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$8$4$1;->this$2:Lorg/telegram/messenger/ContactsController$8$4;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$8$4;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->access$900(Lorg/telegram/messenger/ContactsController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1001
    :cond_1
    new-instance v0, Lorg/telegram/messenger/ContactsController$8$4$1$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ContactsController$8$4$1$1;-><init>(Lorg/telegram/messenger/ContactsController$8$4$1;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1007
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$8$4$1;->this$2:Lorg/telegram/messenger/ContactsController$8$4;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$8$4;->val$hasErrors:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_2

    .line 1008
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ContactsController$8$4$1$2;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/ContactsController$8$4$1$2;-><init>(Lorg/telegram/messenger/ContactsController$8$4$1;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)V

    .line 1015
    :cond_2
    return-void
.end method
