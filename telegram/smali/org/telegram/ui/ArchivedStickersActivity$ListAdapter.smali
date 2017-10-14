.class Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ArchivedStickersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArchivedStickersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/ArchivedStickersActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArchivedStickersActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 260
    iput-object p1, p0, Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ArchivedStickersActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 261
    iput-object p2, p0, Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 262
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ArchivedStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ArchivedStickersActivity;->access$1100(Lorg/telegram/ui/ArchivedStickersActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    const/4 v0, 0x0

    .line 320
    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ArchivedStickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ArchivedStickersActivity;->access$000(Lorg/telegram/ui/ArchivedStickersActivity;)I

    move-result v1

    if-lt p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ArchivedStickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ArchivedStickersActivity;->access$100(Lorg/telegram/ui/ArchivedStickersActivity;)I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 327
    :cond_0
    :goto_0
    return v0

    .line 322
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ArchivedStickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ArchivedStickersActivity;->access$600(Lorg/telegram/ui/ArchivedStickersActivity;)I

    move-result v1

    if-ne p1, v1, :cond_2

    .line 323
    const/4 v0, 0x1

    goto :goto_0

    .line 324
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ArchivedStickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ArchivedStickersActivity;->access$1200(Lorg/telegram/ui/ArchivedStickersActivity;)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 325
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 282
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 271
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter;->getItemViewType(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 272
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;

    .line 273
    .local v0, "cell":Lorg/telegram/ui/Cells/ArchivedStickerSetCell;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->setTag(Ljava/lang/Object;)V

    .line 274
    iget-object v2, p0, Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ArchivedStickersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ArchivedStickersActivity;->access$200(Lorg/telegram/ui/ArchivedStickersActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .line 275
    .local v1, "stickerSet":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    iget-object v2, p0, Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ArchivedStickersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ArchivedStickersActivity;->access$200(Lorg/telegram/ui/ArchivedStickersActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq p2, v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->setStickersSet(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;Z)V

    .line 276
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v2, v3}, Lorg/telegram/messenger/query/StickersQuery;->isStickerPackInstalled(J)Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->setChecked(Z)V

    .line 278
    .end local v0    # "cell":Lorg/telegram/ui/Cells/ArchivedStickerSetCell;
    .end local v1    # "stickerSet":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    :cond_0
    return-void

    .line 275
    .restart local v0    # "cell":Lorg/telegram/ui/Cells/ArchivedStickerSetCell;
    .restart local v1    # "stickerSet":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const v3, 0x7f020085

    .line 287
    const/4 v0, 0x0

    .line 288
    .local v0, "view":Landroid/view/View;
    packed-switch p2, :pswitch_data_0

    .line 314
    :goto_0
    new-instance v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 290
    :pswitch_0
    new-instance v0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;-><init>(Landroid/content/Context;Z)V

    .line 291
    .restart local v0    # "view":Landroid/view/View;
    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    move-object v1, v0

    .line 292
    check-cast v1, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;

    new-instance v2, Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter$1;-><init>(Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->setOnCheckClick(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 306
    :pswitch_1
    new-instance v0, Lorg/telegram/ui/Cells/LoadingCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/LoadingCell;-><init>(Landroid/content/Context;)V

    .line 307
    .restart local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "windowBackgroundGrayShadow"

    invoke-static {v1, v3, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 310
    :pswitch_2
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 311
    .restart local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "windowBackgroundGrayShadow"

    invoke-static {v1, v3, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 288
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
