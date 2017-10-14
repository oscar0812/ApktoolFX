.class Lorg/telegram/messenger/MessagesController$5;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->cleanup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 642
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$5;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 645
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$5;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$300(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 646
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$5;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$400(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 647
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$5;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$500(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 648
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$5;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$600(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 649
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$5;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->access$702(Lorg/telegram/messenger/MessagesController;J)J

    .line 650
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$5;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->access$802(Lorg/telegram/messenger/MessagesController;J)J

    .line 651
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$5;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->access$902(Lorg/telegram/messenger/MessagesController;J)J

    .line 652
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$5;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$1000(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 653
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$5;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/messenger/MessagesController;->gettingDifference:Z

    .line 654
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$5;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v0, v4}, Lorg/telegram/messenger/MessagesController;->access$1102(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;)Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;

    .line 655
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$5;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v0, v4}, Lorg/telegram/messenger/MessagesController;->access$1202(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$messages_Dialogs;)Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    .line 656
    return-void
.end method
