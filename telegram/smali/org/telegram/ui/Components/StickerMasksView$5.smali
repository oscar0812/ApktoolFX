.class Lorg/telegram/ui/Components/StickerMasksView$5;
.super Ljava/lang/Object;
.source "StickerMasksView.java"

# interfaces
.implements Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;


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
    .line 132
    iput-object p1, p0, Lorg/telegram/ui/Components/StickerMasksView$5;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 6
    .param p1, "page"    # I

    .prologue
    const/4 v5, 0x0

    .line 135
    if-nez p1, :cond_2

    .line 136
    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksView$5;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-static {v1}, Lorg/telegram/ui/Components/StickerMasksView;->access$600(Lorg/telegram/ui/Components/StickerMasksView;)I

    move-result v1

    if-nez v1, :cond_1

    .line 137
    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksView$5;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/StickerMasksView;->access$602(Lorg/telegram/ui/Components/StickerMasksView;I)I

    .line 141
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksView$5;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-static {v1}, Lorg/telegram/ui/Components/StickerMasksView;->access$500(Lorg/telegram/ui/Components/StickerMasksView;)Lorg/telegram/ui/Components/StickerMasksView$Listener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksView$5;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-static {v1}, Lorg/telegram/ui/Components/StickerMasksView;->access$500(Lorg/telegram/ui/Components/StickerMasksView;)Lorg/telegram/ui/Components/StickerMasksView$Listener;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/Components/StickerMasksView$Listener;->onTypeChanged()V

    .line 144
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksView$5;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-static {v1}, Lorg/telegram/ui/Components/StickerMasksView;->access$700(Lorg/telegram/ui/Components/StickerMasksView;)[Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/StickerMasksView$5;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-static {v2}, Lorg/telegram/ui/Components/StickerMasksView;->access$600(Lorg/telegram/ui/Components/StickerMasksView;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/StickerMasksView$5;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-static {v3}, Lorg/telegram/ui/Components/StickerMasksView;->access$600(Lorg/telegram/ui/Components/StickerMasksView;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/query/StickersQuery;->getRecentStickers(I)Ljava/util/ArrayList;

    move-result-object v3

    aput-object v3, v1, v2

    .line 145
    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksView$5;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-static {v1}, Lorg/telegram/ui/Components/StickerMasksView;->access$800(Lorg/telegram/ui/Components/StickerMasksView;)Lorg/telegram/messenger/support/widget/GridLayoutManager;

    move-result-object v1

    invoke-virtual {v1, v5, v5}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->scrollToPositionWithOffset(II)V

    .line 146
    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksView$5;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-static {v1}, Lorg/telegram/ui/Components/StickerMasksView;->access$900(Lorg/telegram/ui/Components/StickerMasksView;)V

    .line 147
    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksView$5;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-static {v1}, Lorg/telegram/ui/Components/StickerMasksView;->access$1000(Lorg/telegram/ui/Components/StickerMasksView;)V

    .line 148
    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksView$5;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-static {v1}, Lorg/telegram/ui/Components/StickerMasksView;->access$1100(Lorg/telegram/ui/Components/StickerMasksView;)V

    .line 149
    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksView$5;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-static {v1}, Lorg/telegram/ui/Components/StickerMasksView;->access$1200(Lorg/telegram/ui/Components/StickerMasksView;)V

    .line 162
    :goto_1
    return-void

    .line 139
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksView$5;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-static {v1, v5}, Lorg/telegram/ui/Components/StickerMasksView;->access$602(Lorg/telegram/ui/Components/StickerMasksView;I)I

    goto :goto_0

    .line 152
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksView$5;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-static {v1}, Lorg/telegram/ui/Components/StickerMasksView;->access$1300(Lorg/telegram/ui/Components/StickerMasksView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ne p1, v1, :cond_3

    .line 153
    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksView$5;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-static {v1}, Lorg/telegram/ui/Components/StickerMasksView;->access$800(Lorg/telegram/ui/Components/StickerMasksView;)Lorg/telegram/messenger/support/widget/GridLayoutManager;

    move-result-object v1

    invoke-virtual {v1, v5, v5}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1

    .line 156
    :cond_3
    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lorg/telegram/ui/Components/StickerMasksView$5;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-static {v2}, Lorg/telegram/ui/Components/StickerMasksView;->access$1400(Lorg/telegram/ui/Components/StickerMasksView;)I

    move-result v2

    sub-int v0, v1, v2

    .line 157
    .local v0, "index":I
    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksView$5;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-static {v1}, Lorg/telegram/ui/Components/StickerMasksView;->access$1500(Lorg/telegram/ui/Components/StickerMasksView;)[Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/StickerMasksView$5;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-static {v2}, Lorg/telegram/ui/Components/StickerMasksView;->access$600(Lorg/telegram/ui/Components/StickerMasksView;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_4

    .line 158
    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksView$5;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-static {v1}, Lorg/telegram/ui/Components/StickerMasksView;->access$1500(Lorg/telegram/ui/Components/StickerMasksView;)[Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/StickerMasksView$5;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-static {v2}, Lorg/telegram/ui/Components/StickerMasksView;->access$600(Lorg/telegram/ui/Components/StickerMasksView;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 160
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksView$5;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-static {v1}, Lorg/telegram/ui/Components/StickerMasksView;->access$800(Lorg/telegram/ui/Components/StickerMasksView;)Lorg/telegram/messenger/support/widget/GridLayoutManager;

    move-result-object v2

    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksView$5;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-static {v1}, Lorg/telegram/ui/Components/StickerMasksView;->access$100(Lorg/telegram/ui/Components/StickerMasksView;)Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;

    move-result-object v3

    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksView$5;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-static {v1}, Lorg/telegram/ui/Components/StickerMasksView;->access$1500(Lorg/telegram/ui/Components/StickerMasksView;)[Ljava/util/ArrayList;

    move-result-object v1

    iget-object v4, p0, Lorg/telegram/ui/Components/StickerMasksView$5;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-static {v4}, Lorg/telegram/ui/Components/StickerMasksView;->access$600(Lorg/telegram/ui/Components/StickerMasksView;)I

    move-result v4

    aget-object v1, v1, v4

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->getPositionForPack(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)I

    move-result v1

    invoke-virtual {v2, v1, v5}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->scrollToPositionWithOffset(II)V

    .line 161
    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksView$5;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-static {v1}, Lorg/telegram/ui/Components/StickerMasksView;->access$1600(Lorg/telegram/ui/Components/StickerMasksView;)V

    goto :goto_1
.end method
