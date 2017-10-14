.class Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter$1;
.super Ljava/lang/Object;
.source "ArchivedStickersActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter;

    .prologue
    .line 292
    iput-object p1, p0, Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 295
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;

    .line 296
    .local v0, "cell":Lorg/telegram/ui/Cells/ArchivedStickerSetCell;
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 297
    .local v1, "num":I
    iget-object v3, p0, Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter;

    iget-object v3, v3, Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ArchivedStickersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ArchivedStickersActivity;->access$200(Lorg/telegram/ui/ArchivedStickersActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 302
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter;

    iget-object v3, v3, Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ArchivedStickersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ArchivedStickersActivity;->access$200(Lorg/telegram/ui/ArchivedStickersActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .line 301
    .local v2, "stickerSet":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    iget-object v3, p0, Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter;

    iget-object v3, v3, Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ArchivedStickersActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ArchivedStickersActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-nez p2, :cond_1

    const/4 v3, 0x1

    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter;

    iget-object v6, v6, Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ArchivedStickersActivity;

    const/4 v7, 0x0

    invoke-static {v4, v5, v3, v6, v7}, Lorg/telegram/messenger/query/StickersQuery;->removeStickersSet(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$StickerSet;ILorg/telegram/ui/ActionBar/BaseFragment;Z)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    goto :goto_1
.end method
