.class Lorg/telegram/messenger/MessagesController$27$2;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$27;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController$27;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$27;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController$27;

    .prologue
    .line 1781
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$27$2;->this$0:Lorg/telegram/messenger/MessagesController$27;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$27$2;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1784
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$27$2;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$27$2;->this$0:Lorg/telegram/messenger/MessagesController$27;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$27;->val$parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$27$2;->this$0:Lorg/telegram/messenger/MessagesController$27;

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController$27;->val$req:Lorg/telegram/tgnet/TLRPC$TL_channels_editBanned;

    new-array v5, v0, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$27$2;->this$0:Lorg/telegram/messenger/MessagesController$27;

    iget-boolean v6, v6, Lorg/telegram/messenger/MessagesController$27;->val$isMegagroup:Z

    if-nez v6, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v2, v3, v4, v5}, Lorg/telegram/ui/Components/AlertsCreator;->processError(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    .line 1785
    return-void

    :cond_0
    move v0, v1

    .line 1784
    goto :goto_0
.end method
