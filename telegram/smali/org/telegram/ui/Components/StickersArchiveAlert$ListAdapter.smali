.class Lorg/telegram/ui/Components/StickersArchiveAlert$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "StickersArchiveAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/StickersArchiveAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/Components/StickersArchiveAlert;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/StickersArchiveAlert;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    iput-object p1, p0, Lorg/telegram/ui/Components/StickersArchiveAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/StickersArchiveAlert;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 103
    iput-object p2, p0, Lorg/telegram/ui/Components/StickersArchiveAlert$ListAdapter;->context:Landroid/content/Context;

    .line 104
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersArchiveAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/StickersArchiveAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersArchiveAlert;->access$200(Lorg/telegram/ui/Components/StickersArchiveAlert;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 125
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersArchiveAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/StickersArchiveAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/StickersArchiveAlert;->access$200(Lorg/telegram/ui/Components/StickersArchiveAlert;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersArchiveAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/StickersArchiveAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/StickersArchiveAlert;->access$200(Lorg/telegram/ui/Components/StickersArchiveAlert;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq p2, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->setStickersSet(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;Z)V

    .line 126
    return-void

    .line 125
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 118
    new-instance v0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersArchiveAlert$ListAdapter;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;-><init>(Landroid/content/Context;Z)V

    .line 119
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x42a40000    # 82.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1
.end method
