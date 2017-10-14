.class Lorg/telegram/messenger/SendMessagesHelper$5$2;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper$5;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/SendMessagesHelper$5;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SendMessagesHelper$5;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/SendMessagesHelper$5;

    .prologue
    .line 1124
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$5$2;->this$1:Lorg/telegram/messenger/SendMessagesHelper$5;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$5$2;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1127
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$5$2;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$5$2;->this$1:Lorg/telegram/messenger/SendMessagesHelper$5;

    iget-object v1, v1, Lorg/telegram/messenger/SendMessagesHelper$5;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper$5$2;->this$1:Lorg/telegram/messenger/SendMessagesHelper$5;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$5;->val$req:Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/Components/AlertsCreator;->processError(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    .line 1128
    return-void
.end method
