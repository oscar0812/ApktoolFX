.class Lorg/telegram/messenger/MessagesController$109$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$109;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$109;

.field final synthetic val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$109;Lorg/telegram/tgnet/TLRPC$updates_Difference;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesController$109;

    .prologue
    .line 5992
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$109$1;->this$1:Lorg/telegram/messenger/MessagesController$109;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$109$1;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 5995
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$109$1;->this$1:Lorg/telegram/messenger/MessagesController$109;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$109;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v1, 0x1

    sget v2, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$109$1;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$updates_Difference;->pts:I

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$109$1;->this$1:Lorg/telegram/messenger/MessagesController$109;

    iget v4, v4, Lorg/telegram/messenger/MessagesController$109;->val$date:I

    iget-object v5, p0, Lorg/telegram/messenger/MessagesController$109$1;->this$1:Lorg/telegram/messenger/MessagesController$109;

    iget v5, v5, Lorg/telegram/messenger/MessagesController$109;->val$qts:I

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/MessagesController;->access$4800(Lorg/telegram/messenger/MessagesController;ZIIII)V

    .line 5996
    return-void
.end method
