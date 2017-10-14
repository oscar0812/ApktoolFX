.class Lorg/telegram/messenger/MessagesController$67$2;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$67;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$67;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$67;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesController$67;

    .prologue
    .line 4161
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$67$2;->this$1:Lorg/telegram/messenger/MessagesController$67;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4164
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$67$2;->this$1:Lorg/telegram/messenger/MessagesController$67;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$67;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$5500(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$67$2;->this$1:Lorg/telegram/messenger/MessagesController$67;

    iget v1, v1, Lorg/telegram/messenger/MessagesController$67;->val$lower_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4165
    return-void
.end method
