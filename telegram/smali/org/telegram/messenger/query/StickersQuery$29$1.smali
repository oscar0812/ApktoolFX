.class Lorg/telegram/messenger/query/StickersQuery$29$1;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery$29;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/query/StickersQuery$29;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/query/StickersQuery$29;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/query/StickersQuery$29;

    .prologue
    .line 1404
    iput-object p1, p0, Lorg/telegram/messenger/query/StickersQuery$29$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$29;

    iput-object p2, p0, Lorg/telegram/messenger/query/StickersQuery$29$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1408
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/query/StickersQuery$29$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v1, :cond_1

    .line 1409
    iget-object v1, p0, Lorg/telegram/messenger/query/StickersQuery$29$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$29;

    iget-object v1, v1, Lorg/telegram/messenger/query/StickersQuery$29;->val$stickerSet:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->masks:Z

    if-eqz v1, :cond_0

    .line 1410
    iget-object v1, p0, Lorg/telegram/messenger/query/StickersQuery$29$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$29;

    iget-object v1, v1, Lorg/telegram/messenger/query/StickersQuery$29;->val$context:Landroid/content/Context;

    const-string/jumbo v2, "MasksRemoved"

    const v3, 0x7f070376

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1420
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/query/StickersQuery$29$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$29;

    iget v1, v1, Lorg/telegram/messenger/query/StickersQuery$29;->val$type:I

    const/4 v2, 0x1

    invoke-static {v1, v4, v2}, Lorg/telegram/messenger/query/StickersQuery;->loadStickers(IZZ)V

    .line 1421
    return-void

    .line 1412
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/telegram/messenger/query/StickersQuery$29$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$29;

    iget-object v1, v1, Lorg/telegram/messenger/query/StickersQuery$29;->val$context:Landroid/content/Context;

    const-string/jumbo v2, "StickersRemoved"

    const v3, 0x7f0705b3

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1417
    :catch_0
    move-exception v0

    .line 1418
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1415
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_2
    iget-object v1, p0, Lorg/telegram/messenger/query/StickersQuery$29$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$29;

    iget-object v1, v1, Lorg/telegram/messenger/query/StickersQuery$29;->val$context:Landroid/content/Context;

    const-string/jumbo v2, "ErrorOccurred"

    const v3, 0x7f07022a

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method
