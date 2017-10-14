.class Lorg/telegram/ui/ChatActivity$26$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lorg/telegram/messenger/MessagesStorage$IntCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$26;->loadLastUnreadMention()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$26;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$26;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChatActivity$26;

    .prologue
    .line 2108
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$26$1;->this$1:Lorg/telegram/ui/ChatActivity$26;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(I)V
    .locals 6
    .param p1, "param"    # I

    .prologue
    const/4 v2, 0x0

    .line 2111
    if-nez p1, :cond_0

    .line 2112
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$26$1;->this$1:Lorg/telegram/ui/ChatActivity$26;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v2}, Lorg/telegram/ui/ChatActivity;->access$10202(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 2113
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$26$1;->this$1:Lorg/telegram/ui/ChatActivity$26;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity$26;->access$10300(Lorg/telegram/ui/ChatActivity$26;)V

    .line 2117
    :goto_0
    return-void

    .line 2115
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$26$1;->this$1:Lorg/telegram/ui/ChatActivity$26;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    move v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ChatActivity;->scrollToMessageId(IIZIZ)V

    goto :goto_0
.end method
