.class Lorg/telegram/messenger/ContactsController$21$1;
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
    .line 1940
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$21$1;->this$1:Lorg/telegram/messenger/ContactsController$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1943
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$21$1;->this$1:Lorg/telegram/messenger/ContactsController$21;

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController$21;->val$users:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 1944
    .local v0, "user":Lorg/telegram/tgnet/TLRPC$User;
    iget-object v2, p0, Lorg/telegram/messenger/ContactsController$21$1;->this$1:Lorg/telegram/messenger/ContactsController$21;

    iget-object v2, v2, Lorg/telegram/messenger/ContactsController$21;->this$0:Lorg/telegram/messenger/ContactsController;

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/ContactsController;->access$1800(Lorg/telegram/messenger/ContactsController;I)V

    goto :goto_0

    .line 1946
    .end local v0    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_0
    return-void
.end method
