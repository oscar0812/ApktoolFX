.class Lorg/telegram/ui/FeaturedStickersActivity$3;
.super Ljava/lang/Object;
.source "FeaturedStickersActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/FeaturedStickersActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/FeaturedStickersActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/FeaturedStickersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/FeaturedStickersActivity;

    .prologue
    .line 107
    iput-object p1, p0, Lorg/telegram/ui/FeaturedStickersActivity$3;->this$0:Lorg/telegram/ui/FeaturedStickersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 110
    iget-object v1, p0, Lorg/telegram/ui/FeaturedStickersActivity$3;->this$0:Lorg/telegram/ui/FeaturedStickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/FeaturedStickersActivity;->access$000(Lorg/telegram/ui/FeaturedStickersActivity;)I

    move-result v1

    if-lt p2, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/FeaturedStickersActivity$3;->this$0:Lorg/telegram/ui/FeaturedStickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/FeaturedStickersActivity;->access$100(Lorg/telegram/ui/FeaturedStickersActivity;)I

    move-result v1

    if-ge p2, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/FeaturedStickersActivity$3;->this$0:Lorg/telegram/ui/FeaturedStickersActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/FeaturedStickersActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 111
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->getFeaturedStickerSets()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .line 113
    .local v6, "stickerSet":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    iget-object v1, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v8, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-eqz v1, :cond_1

    .line 114
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;-><init>()V

    .line 115
    .local v3, "inputStickerSet":Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    iget-object v1, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v8, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iput-wide v8, v3, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    .line 120
    :goto_0
    iget-object v1, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v8, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->access_hash:J

    iput-wide v8, v3, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->access_hash:J

    .line 121
    new-instance v0, Lorg/telegram/ui/Components/StickersAlert;

    iget-object v1, p0, Lorg/telegram/ui/FeaturedStickersActivity$3;->this$0:Lorg/telegram/ui/FeaturedStickersActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/FeaturedStickersActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/FeaturedStickersActivity$3;->this$0:Lorg/telegram/ui/FeaturedStickersActivity;

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/StickersAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;)V

    .line 122
    .local v0, "stickersAlert":Lorg/telegram/ui/Components/StickersAlert;
    new-instance v1, Lorg/telegram/ui/FeaturedStickersActivity$3$1;

    invoke-direct {v1, p0, p1, v6}, Lorg/telegram/ui/FeaturedStickersActivity$3$1;-><init>(Lorg/telegram/ui/FeaturedStickersActivity$3;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$StickerSetCovered;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/StickersAlert;->setInstallDelegate(Lorg/telegram/ui/Components/StickersAlert$StickersAlertInstallDelegate;)V

    .line 135
    iget-object v1, p0, Lorg/telegram/ui/FeaturedStickersActivity$3;->this$0:Lorg/telegram/ui/FeaturedStickersActivity;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/FeaturedStickersActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 137
    .end local v0    # "stickersAlert":Lorg/telegram/ui/Components/StickersAlert;
    .end local v3    # "inputStickerSet":Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    .end local v6    # "stickerSet":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    :cond_0
    return-void

    .line 117
    .restart local v6    # "stickerSet":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    :cond_1
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;-><init>()V

    .line 118
    .restart local v3    # "inputStickerSet":Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    iget-object v1, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->short_name:Ljava/lang/String;

    goto :goto_0
.end method
