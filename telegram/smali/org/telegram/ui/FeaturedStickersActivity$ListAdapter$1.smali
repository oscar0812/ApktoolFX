.class Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter$1;
.super Ljava/lang/Object;
.source "FeaturedStickersActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;

    .prologue
    .line 239
    iput-object p1, p0, Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 242
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    .line 243
    .local v1, "parent":Lorg/telegram/ui/Cells/FeaturedStickerSetCell;
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->getStickerSet()Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    move-result-object v0

    .line 244
    .local v0, "pack":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    iget-object v2, p0, Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;

    iget-object v2, v2, Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/FeaturedStickersActivity;

    invoke-static {v2}, Lorg/telegram/ui/FeaturedStickersActivity;->access$200(Lorg/telegram/ui/FeaturedStickersActivity;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;

    iget-object v2, v2, Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/FeaturedStickersActivity;

    invoke-static {v2}, Lorg/telegram/ui/FeaturedStickersActivity;->access$200(Lorg/telegram/ui/FeaturedStickersActivity;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v2, p0, Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;

    iget-object v2, v2, Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/FeaturedStickersActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/FeaturedStickersActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    const/4 v4, 0x2

    iget-object v5, p0, Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;

    iget-object v5, v5, Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/FeaturedStickersActivity;

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lorg/telegram/messenger/query/StickersQuery;->removeStickersSet(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$StickerSet;ILorg/telegram/ui/ActionBar/BaseFragment;Z)V

    .line 249
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->setDrawProgress(Z)V

    goto :goto_0
.end method
