.class Lorg/telegram/ui/Components/StickerMasksView$4;
.super Ljava/lang/Object;
.source "StickerMasksView.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/StickerMasksView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/StickerMasksView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/StickerMasksView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/StickerMasksView;

    .prologue
    .line 97
    iput-object p1, p0, Lorg/telegram/ui/Components/StickerMasksView$4;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x1

    .line 100
    instance-of v2, p1, Lorg/telegram/ui/Cells/StickerEmojiCell;

    if-nez v2, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    invoke-static {}, Lorg/telegram/ui/StickerPreviewViewer;->getInstance()Lorg/telegram/ui/StickerPreviewViewer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/StickerPreviewViewer;->reset()V

    move-object v0, p1

    .line 104
    check-cast v0, Lorg/telegram/ui/Cells/StickerEmojiCell;

    .line 105
    .local v0, "cell":Lorg/telegram/ui/Cells/StickerEmojiCell;
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/StickerEmojiCell;->isDisabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 108
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    .line 109
    .local v1, "document":Lorg/telegram/tgnet/TLRPC$Document;
    iget-object v2, p0, Lorg/telegram/ui/Components/StickerMasksView$4;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-static {v2}, Lorg/telegram/ui/Components/StickerMasksView;->access$500(Lorg/telegram/ui/Components/StickerMasksView;)Lorg/telegram/ui/Components/StickerMasksView$Listener;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/telegram/ui/Components/StickerMasksView$Listener;->onStickerSelected(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    const/4 v3, 0x0

    invoke-static {v6, v1, v2, v3}, Lorg/telegram/messenger/query/StickersQuery;->addRecentSticker(ILorg/telegram/tgnet/TLRPC$Document;IZ)V

    .line 111
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v1, v6}, Lorg/telegram/messenger/MessagesController;->saveRecentSticker(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    goto :goto_0
.end method
