.class Lorg/telegram/ui/ChatActivity$21$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$21;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$21;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$21;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChatActivity$21;

    .prologue
    .line 1942
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$21$1;->this$1:Lorg/telegram/ui/ChatActivity$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    const/4 v2, 0x0

    .line 1945
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$21$1;->this$1:Lorg/telegram/ui/ChatActivity$21;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v0, v1, v2, v2}, Lorg/telegram/messenger/MessagesController;->pinChannelMessage(Lorg/telegram/tgnet/TLRPC$Chat;IZ)V

    .line 1946
    return-void
.end method
