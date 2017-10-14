.class Lorg/telegram/ui/GroupStickersActivity$10$1;
.super Ljava/lang/Object;
.source "GroupStickersActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupStickersActivity$10;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/GroupStickersActivity$10;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupStickersActivity$10;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/GroupStickersActivity$10;

    .prologue
    .line 515
    iput-object p1, p0, Lorg/telegram/ui/GroupStickersActivity$10$1;->this$1:Lorg/telegram/ui/GroupStickersActivity$10;

    iput-object p2, p0, Lorg/telegram/ui/GroupStickersActivity$10$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 518
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$10$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v0, :cond_2

    .line 519
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$10$1;->this$1:Lorg/telegram/ui/GroupStickersActivity$10;

    iget-object v0, v0, Lorg/telegram/ui/GroupStickersActivity$10;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$400(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v0

    if-nez v0, :cond_0

    .line 520
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$10$1;->this$1:Lorg/telegram/ui/GroupStickersActivity$10;

    iget-object v0, v0, Lorg/telegram/ui/GroupStickersActivity$10;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$1900(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    iput-object v6, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    .line 525
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$10$1;->this$1:Lorg/telegram/ui/GroupStickersActivity$10;

    iget-object v0, v0, Lorg/telegram/ui/GroupStickersActivity$10;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$1900(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-nez v0, :cond_1

    .line 526
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$10$1;->this$1:Lorg/telegram/ui/GroupStickersActivity$10;

    iget-object v0, v0, Lorg/telegram/ui/GroupStickersActivity$10;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$1900(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    or-int/lit16 v1, v1, 0x100

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    .line 530
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/GroupStickersActivity$10$1;->this$1:Lorg/telegram/ui/GroupStickersActivity$10;

    iget-object v1, v1, Lorg/telegram/ui/GroupStickersActivity$10;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupStickersActivity;->access$1900(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/MessagesStorage;->updateChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V

    .line 531
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/telegram/ui/GroupStickersActivity$10$1;->this$1:Lorg/telegram/ui/GroupStickersActivity$10;

    iget-object v3, v3, Lorg/telegram/ui/GroupStickersActivity$10;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupStickersActivity;->access$1900(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object v6, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 532
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$10$1;->this$1:Lorg/telegram/ui/GroupStickersActivity$10;

    iget-object v0, v0, Lorg/telegram/ui/GroupStickersActivity$10;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/GroupStickersActivity;->finishFragment()V

    .line 538
    :goto_2
    return-void

    .line 522
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$10$1;->this$1:Lorg/telegram/ui/GroupStickersActivity$10;

    iget-object v0, v0, Lorg/telegram/ui/GroupStickersActivity$10;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$1900(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/GroupStickersActivity$10$1;->this$1:Lorg/telegram/ui/GroupStickersActivity$10;

    iget-object v1, v1, Lorg/telegram/ui/GroupStickersActivity$10;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupStickersActivity;->access$400(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    .line 523
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$10$1;->this$1:Lorg/telegram/ui/GroupStickersActivity$10;

    iget-object v0, v0, Lorg/telegram/ui/GroupStickersActivity$10;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$400(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/query/StickersQuery;->putGroupStickerSet(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    goto :goto_0

    .line 528
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$10$1;->this$1:Lorg/telegram/ui/GroupStickersActivity$10;

    iget-object v0, v0, Lorg/telegram/ui/GroupStickersActivity$10;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$1900(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/GroupStickersActivity$10$1;->this$1:Lorg/telegram/ui/GroupStickersActivity$10;

    iget-object v1, v1, Lorg/telegram/ui/GroupStickersActivity$10;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupStickersActivity;->access$1900(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v1

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    and-int/lit16 v1, v1, -0x101

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    goto :goto_1

    .line 534
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$10$1;->this$1:Lorg/telegram/ui/GroupStickersActivity$10;

    iget-object v0, v0, Lorg/telegram/ui/GroupStickersActivity$10;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/GroupStickersActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ErrorOccurred"

    const v3, 0x7f07022a

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/GroupStickersActivity$10$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 535
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$10$1;->this$1:Lorg/telegram/ui/GroupStickersActivity$10;

    iget-object v0, v0, Lorg/telegram/ui/GroupStickersActivity$10;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0, v4}, Lorg/telegram/ui/GroupStickersActivity;->access$002(Lorg/telegram/ui/GroupStickersActivity;Z)Z

    .line 536
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$10$1;->this$1:Lorg/telegram/ui/GroupStickersActivity$10;

    iget-object v0, v0, Lorg/telegram/ui/GroupStickersActivity$10;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0, v4}, Lorg/telegram/ui/GroupStickersActivity;->access$200(Lorg/telegram/ui/GroupStickersActivity;Z)V

    goto :goto_2
.end method
