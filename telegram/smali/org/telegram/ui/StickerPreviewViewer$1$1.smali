.class Lorg/telegram/ui/StickerPreviewViewer$1$1;
.super Ljava/lang/Object;
.source "StickerPreviewViewer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/StickerPreviewViewer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/StickerPreviewViewer$1;

.field final synthetic val$actions:Ljava/util/ArrayList;

.field final synthetic val$inFavs:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/StickerPreviewViewer$1;Ljava/util/ArrayList;Z)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/StickerPreviewViewer$1;

    .prologue
    .line 123
    iput-object p1, p0, Lorg/telegram/ui/StickerPreviewViewer$1$1;->this$1:Lorg/telegram/ui/StickerPreviewViewer$1;

    iput-object p2, p0, Lorg/telegram/ui/StickerPreviewViewer$1$1;->val$actions:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lorg/telegram/ui/StickerPreviewViewer$1$1;->val$inFavs:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x2

    .line 126
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$1$1;->this$1:Lorg/telegram/ui/StickerPreviewViewer$1;

    iget-object v0, v0, Lorg/telegram/ui/StickerPreviewViewer$1;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/StickerPreviewViewer;->access$100(Lorg/telegram/ui/StickerPreviewViewer;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$1$1;->val$actions:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 130
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$1$1;->this$1:Lorg/telegram/ui/StickerPreviewViewer$1;

    iget-object v0, v0, Lorg/telegram/ui/StickerPreviewViewer$1;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/StickerPreviewViewer;->access$400(Lorg/telegram/ui/StickerPreviewViewer;)Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$1$1;->this$1:Lorg/telegram/ui/StickerPreviewViewer$1;

    iget-object v0, v0, Lorg/telegram/ui/StickerPreviewViewer$1;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/StickerPreviewViewer;->access$400(Lorg/telegram/ui/StickerPreviewViewer;)Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/StickerPreviewViewer$1$1;->this$1:Lorg/telegram/ui/StickerPreviewViewer$1;

    iget-object v1, v1, Lorg/telegram/ui/StickerPreviewViewer$1;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/StickerPreviewViewer;->access$300(Lorg/telegram/ui/StickerPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;->sentSticker(Lorg/telegram/tgnet/TLRPC$Document;)V

    goto :goto_0

    .line 133
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$1$1;->val$actions:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 134
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$1$1;->this$1:Lorg/telegram/ui/StickerPreviewViewer$1;

    iget-object v0, v0, Lorg/telegram/ui/StickerPreviewViewer$1;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/StickerPreviewViewer;->access$400(Lorg/telegram/ui/StickerPreviewViewer;)Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$1$1;->this$1:Lorg/telegram/ui/StickerPreviewViewer$1;

    iget-object v0, v0, Lorg/telegram/ui/StickerPreviewViewer$1;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/StickerPreviewViewer;->access$400(Lorg/telegram/ui/StickerPreviewViewer;)Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/StickerPreviewViewer$1$1;->this$1:Lorg/telegram/ui/StickerPreviewViewer$1;

    iget-object v1, v1, Lorg/telegram/ui/StickerPreviewViewer$1;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/StickerPreviewViewer;->access$200(Lorg/telegram/ui/StickerPreviewViewer;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;->openSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;)V

    goto :goto_0

    .line 137
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$1$1;->val$actions:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 138
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$1$1;->this$1:Lorg/telegram/ui/StickerPreviewViewer$1;

    iget-object v0, v0, Lorg/telegram/ui/StickerPreviewViewer$1;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/StickerPreviewViewer;->access$300(Lorg/telegram/ui/StickerPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    iget-boolean v2, p0, Lorg/telegram/ui/StickerPreviewViewer$1$1;->val$inFavs:Z

    invoke-static {v6, v0, v1, v2}, Lorg/telegram/messenger/query/StickersQuery;->addRecentSticker(ILorg/telegram/tgnet/TLRPC$Document;IZ)V

    goto :goto_0
.end method
