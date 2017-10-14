.class Lorg/telegram/ui/Components/StickersAlert$18$1$1;
.super Ljava/lang/Object;
.source "StickersAlert.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/StickersAlert$18$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/Components/StickersAlert$18$1;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/StickersAlert$18$1;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/Components/StickersAlert$18$1;

    .prologue
    .line 627
    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$18$1$1;->this$2:Lorg/telegram/ui/Components/StickersAlert$18$1;

    iput-object p2, p0, Lorg/telegram/ui/Components/StickersAlert$18$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/Components/StickersAlert$18$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 631
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$18$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v2, :cond_2

    .line 632
    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$18$1$1;->this$2:Lorg/telegram/ui/Components/StickersAlert$18$1;

    iget-object v2, v2, Lorg/telegram/ui/Components/StickersAlert$18$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$18;

    iget-object v2, v2, Lorg/telegram/ui/Components/StickersAlert$18;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/StickersAlert;->access$900(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->masks:Z

    if-eqz v2, :cond_1

    .line 633
    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$18$1$1;->this$2:Lorg/telegram/ui/Components/StickersAlert$18$1;

    iget-object v2, v2, Lorg/telegram/ui/Components/StickersAlert$18$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$18;

    iget-object v2, v2, Lorg/telegram/ui/Components/StickersAlert$18;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/StickersAlert;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v5, "AddMasksInstalled"

    const v6, 0x7f070051

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v2, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 637
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$18$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSetInstallResultArchive;

    if-eqz v2, :cond_0

    .line 638
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v5, Lorg/telegram/messenger/NotificationCenter;->needReloadArchivedStickers:I

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 639
    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$18$1$1;->this$2:Lorg/telegram/ui/Components/StickersAlert$18$1;

    iget-object v2, v2, Lorg/telegram/ui/Components/StickersAlert$18$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$18;

    iget-object v2, v2, Lorg/telegram/ui/Components/StickersAlert$18;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/StickersAlert;->access$800(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$18$1$1;->this$2:Lorg/telegram/ui/Components/StickersAlert$18$1;

    iget-object v2, v2, Lorg/telegram/ui/Components/StickersAlert$18$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$18;

    iget-object v2, v2, Lorg/telegram/ui/Components/StickersAlert$18;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/StickersAlert;->access$800(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 640
    new-instance v0, Lorg/telegram/ui/Components/StickersArchiveAlert;

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$18$1$1;->this$2:Lorg/telegram/ui/Components/StickersAlert$18$1;

    iget-object v2, v2, Lorg/telegram/ui/Components/StickersAlert$18$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$18;

    iget-object v2, v2, Lorg/telegram/ui/Components/StickersAlert$18;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/StickersAlert;->access$800(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$18$1$1;->this$2:Lorg/telegram/ui/Components/StickersAlert$18$1;

    iget-object v2, v2, Lorg/telegram/ui/Components/StickersAlert$18$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$18;

    iget-object v2, v2, Lorg/telegram/ui/Components/StickersAlert$18;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/StickersAlert;->access$800(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v6

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$18$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSetInstallResultArchive;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSetInstallResultArchive;->sets:Ljava/util/ArrayList;

    invoke-direct {v0, v5, v6, v2}, Lorg/telegram/ui/Components/StickersArchiveAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/ArrayList;)V

    .line 641
    .local v0, "alert":Lorg/telegram/ui/Components/StickersArchiveAlert;
    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$18$1$1;->this$2:Lorg/telegram/ui/Components/StickersAlert$18$1;

    iget-object v2, v2, Lorg/telegram/ui/Components/StickersAlert$18$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$18;

    iget-object v2, v2, Lorg/telegram/ui/Components/StickersAlert$18;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/StickersAlert;->access$800(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickersArchiveAlert;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    .end local v0    # "alert":Lorg/telegram/ui/Components/StickersArchiveAlert;
    :cond_0
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$18$1$1;->this$2:Lorg/telegram/ui/Components/StickersAlert$18$1;

    iget-object v2, v2, Lorg/telegram/ui/Components/StickersAlert$18$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$18;

    iget-object v2, v2, Lorg/telegram/ui/Components/StickersAlert$18;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/StickersAlert;->access$900(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->masks:Z

    if-eqz v2, :cond_3

    move v2, v3

    :goto_2
    invoke-static {v2, v4, v3}, Lorg/telegram/messenger/query/StickersQuery;->loadStickers(IZZ)V

    .line 651
    return-void

    .line 635
    :cond_1
    :try_start_1
    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$18$1$1;->this$2:Lorg/telegram/ui/Components/StickersAlert$18$1;

    iget-object v2, v2, Lorg/telegram/ui/Components/StickersAlert$18$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$18;

    iget-object v2, v2, Lorg/telegram/ui/Components/StickersAlert$18;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/StickersAlert;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v5, "AddStickersInstalled"

    const v6, 0x7f070057

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v2, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 647
    :catch_0
    move-exception v1

    .line 648
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 645
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_2
    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$18$1$1;->this$2:Lorg/telegram/ui/Components/StickersAlert$18$1;

    iget-object v2, v2, Lorg/telegram/ui/Components/StickersAlert$18$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$18;

    iget-object v2, v2, Lorg/telegram/ui/Components/StickersAlert$18;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/StickersAlert;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v5, "ErrorOccurred"

    const v6, 0x7f07022a

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v2, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :cond_3
    move v2, v4

    .line 650
    goto :goto_2
.end method
