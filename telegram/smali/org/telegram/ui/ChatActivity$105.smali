.class Lorg/telegram/ui/ChatActivity$105;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->processSelectedOption(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$checks:[Z

.field final synthetic val$mid:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;I[Z)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    .line 9789
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$105;->this$0:Lorg/telegram/ui/ChatActivity;

    iput p2, p0, Lorg/telegram/ui/ChatActivity$105;->val$mid:I

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$105;->val$checks:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 9792
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$105;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v2, p0, Lorg/telegram/ui/ChatActivity$105;->val$mid:I

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$105;->val$checks:[Z

    const/4 v4, 0x0

    aget-boolean v3, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->pinChannelMessage(Lorg/telegram/tgnet/TLRPC$Chat;IZ)V

    .line 9793
    return-void
.end method
