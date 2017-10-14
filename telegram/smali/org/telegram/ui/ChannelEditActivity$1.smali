.class Lorg/telegram/ui/ChannelEditActivity$1;
.super Ljava/lang/Object;
.source "ChannelEditActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelEditActivity;->onFragmentCreate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelEditActivity;

.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelEditActivity;Ljava/util/concurrent/Semaphore;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 105
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditActivity$1;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChannelEditActivity$1;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity$1;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChannelEditActivity$1;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelEditActivity;->access$100(Lorg/telegram/ui/ChannelEditActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getChat(I)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChannelEditActivity;->access$002(Lorg/telegram/ui/ChannelEditActivity;Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$Chat;

    .line 109
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity$1;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 110
    return-void
.end method
