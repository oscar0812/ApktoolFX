.class Lorg/telegram/ui/ChannelCreateActivity$11$1;
.super Ljava/lang/Object;
.source "ChannelCreateActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelCreateActivity$11;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChannelCreateActivity$11;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelCreateActivity$11;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChannelCreateActivity$11;

    .prologue
    .line 585
    iput-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity$11$1;->this$1:Lorg/telegram/ui/ChannelCreateActivity$11;

    iput-object p2, p0, Lorg/telegram/ui/ChannelCreateActivity$11$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/ChannelCreateActivity$11$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 588
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$11$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v0, :cond_0

    .line 589
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$11$1;->this$1:Lorg/telegram/ui/ChannelCreateActivity$11;

    iget-object v1, v0, Lorg/telegram/ui/ChannelCreateActivity$11;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$11$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    invoke-static {v1, v0}, Lorg/telegram/ui/ChannelCreateActivity;->access$2002(Lorg/telegram/ui/ChannelCreateActivity;Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    .line 591
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$11$1;->this$1:Lorg/telegram/ui/ChannelCreateActivity$11;

    iget-object v0, v0, Lorg/telegram/ui/ChannelCreateActivity$11;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    invoke-static {v0, v3}, Lorg/telegram/ui/ChannelCreateActivity;->access$2102(Lorg/telegram/ui/ChannelCreateActivity;Z)Z

    .line 592
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$11$1;->this$1:Lorg/telegram/ui/ChannelCreateActivity$11;

    iget-object v0, v0, Lorg/telegram/ui/ChannelCreateActivity$11;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelCreateActivity;->access$2200(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/Cells/TextBlockCell;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$11$1;->this$1:Lorg/telegram/ui/ChannelCreateActivity$11;

    iget-object v0, v0, Lorg/telegram/ui/ChannelCreateActivity$11;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelCreateActivity;->access$2000(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$11$1;->this$1:Lorg/telegram/ui/ChannelCreateActivity$11;

    iget-object v0, v0, Lorg/telegram/ui/ChannelCreateActivity$11;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelCreateActivity;->access$2000(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;->link:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0, v3}, Lorg/telegram/ui/Cells/TextBlockCell;->setText(Ljava/lang/String;Z)V

    .line 593
    return-void

    .line 592
    :cond_1
    const-string/jumbo v0, "Loading"

    const v2, 0x7f07035a

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
