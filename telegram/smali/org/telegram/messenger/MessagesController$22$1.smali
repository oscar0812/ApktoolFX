.class Lorg/telegram/messenger/MessagesController$22$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$22;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$22;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$22;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesController$22;

    .prologue
    .line 1633
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$22$1;->this$1:Lorg/telegram/messenger/MessagesController$22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1636
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$22$1;->this$1:Lorg/telegram/messenger/MessagesController$22;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$22;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$22$1;->this$1:Lorg/telegram/messenger/MessagesController$22;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$22;->val$mids:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$22$1;->this$1:Lorg/telegram/messenger/MessagesController$22;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$22;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->access$3400(Lorg/telegram/messenger/MessagesController;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getNewDeleteTask(Ljava/util/ArrayList;I)V

    .line 1637
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$22$1;->this$1:Lorg/telegram/messenger/MessagesController$22;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$22;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/messenger/MessagesController;->access$3302(Lorg/telegram/messenger/MessagesController;I)I

    .line 1638
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$22$1;->this$1:Lorg/telegram/messenger/MessagesController$22;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$22;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/messenger/MessagesController;->access$3102(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1639
    return-void
.end method
