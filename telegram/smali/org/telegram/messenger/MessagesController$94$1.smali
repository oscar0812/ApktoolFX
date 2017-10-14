.class Lorg/telegram/messenger/MessagesController$94$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$94;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$94;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$94;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesController$94;

    .prologue
    .line 5149
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$94$1;->this$1:Lorg/telegram/messenger/MessagesController$94;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 5152
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$94$1;->this$1:Lorg/telegram/messenger/MessagesController$94;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$94;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$94$1;->this$1:Lorg/telegram/messenger/MessagesController$94;

    iget v1, v1, Lorg/telegram/messenger/MessagesController$94;->val$chat_id:I

    neg-int v1, v1

    int-to-long v2, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lorg/telegram/messenger/MessagesController;->deleteDialog(JI)V

    .line 5153
    return-void
.end method
