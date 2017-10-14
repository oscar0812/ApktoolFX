.class Lorg/telegram/messenger/ContactsController$11$1$5$1;
.super Ljava/lang/Object;
.source "ContactsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ContactsController$11$1$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lorg/telegram/messenger/ContactsController$11$1$5;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ContactsController$11$1$5;)V
    .locals 0
    .param p1, "this$3"    # Lorg/telegram/messenger/ContactsController$11$1$5;

    .prologue
    .line 1346
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$11$1$5$1;->this$3:Lorg/telegram/messenger/ContactsController$11$1$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1349
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$11$1$5$1;->this$3:Lorg/telegram/messenger/ContactsController$11$1$5;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$11$1$5;->this$2:Lorg/telegram/messenger/ContactsController$11$1;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$11$1;->this$1:Lorg/telegram/messenger/ContactsController$11;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$11;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$11$1$5$1;->this$3:Lorg/telegram/messenger/ContactsController$11$1$5;

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController$11$1$5;->val$contactsByPhonesDictFinal:Ljava/util/HashMap;

    iput-object v1, v0, Lorg/telegram/messenger/ContactsController;->contactsByPhone:Ljava/util/HashMap;

    .line 1350
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$11$1$5$1;->this$3:Lorg/telegram/messenger/ContactsController$11$1$5;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$11$1$5;->this$2:Lorg/telegram/messenger/ContactsController$11$1;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$11$1;->this$1:Lorg/telegram/messenger/ContactsController$11;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$11;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$11$1$5$1;->this$3:Lorg/telegram/messenger/ContactsController$11$1$5;

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController$11$1$5;->val$contactsByPhonesShortDictFinal:Ljava/util/HashMap;

    iput-object v1, v0, Lorg/telegram/messenger/ContactsController;->contactsByShortPhone:Ljava/util/HashMap;

    .line 1351
    return-void
.end method
