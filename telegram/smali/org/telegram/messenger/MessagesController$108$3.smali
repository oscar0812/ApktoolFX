.class Lorg/telegram/messenger/MessagesController$108$3;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$108;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$108;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$108;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesController$108;

    .prologue
    .line 5921
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$108$3;->this$1:Lorg/telegram/messenger/MessagesController$108;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$108$3;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 5924
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$108$3;->this$1:Lorg/telegram/messenger/MessagesController$108;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$108;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$108$3;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$108$3;->this$1:Lorg/telegram/messenger/MessagesController$108;

    iget v2, v2, Lorg/telegram/messenger/MessagesController$108;->val$channelId:I

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->access$2300(Lorg/telegram/messenger/MessagesController;Ljava/lang/String;I)V

    .line 5925
    return-void
.end method
