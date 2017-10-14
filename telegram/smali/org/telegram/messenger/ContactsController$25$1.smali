.class Lorg/telegram/messenger/ContactsController$25$1;
.super Ljava/lang/Object;
.source "ContactsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ContactsController$25;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/ContactsController$25;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ContactsController$25;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/ContactsController$25;

    .prologue
    .line 2092
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$25$1;->this$1:Lorg/telegram/messenger/ContactsController$25;

    iput-object p2, p0, Lorg/telegram/messenger/ContactsController$25$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/messenger/ContactsController$25$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2095
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$25$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v1, :cond_0

    .line 2096
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$25$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;

    .line 2097
    .local v0, "rules":Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 2098
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$25$1;->this$1:Lorg/telegram/messenger/ContactsController$25;

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController$25;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;->rules:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lorg/telegram/messenger/ContactsController;->access$2402(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2099
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$25$1;->this$1:Lorg/telegram/messenger/ContactsController$25;

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController$25;->this$0:Lorg/telegram/messenger/ContactsController;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lorg/telegram/messenger/ContactsController;->access$2502(Lorg/telegram/messenger/ContactsController;I)I

    .line 2103
    .end local v0    # "rules":Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->privacyRulesUpdated:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2104
    return-void

    .line 2101
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$25$1;->this$1:Lorg/telegram/messenger/ContactsController$25;

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController$25;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v1, v3}, Lorg/telegram/messenger/ContactsController;->access$2502(Lorg/telegram/messenger/ContactsController;I)I

    goto :goto_0
.end method
