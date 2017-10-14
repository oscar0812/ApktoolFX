.class Lorg/telegram/ui/FeaturedStickersActivity$3$1;
.super Ljava/lang/Object;
.source "FeaturedStickersActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/StickersAlert$StickersAlertInstallDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/FeaturedStickersActivity$3;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/FeaturedStickersActivity$3;

.field final synthetic val$stickerSet:Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/telegram/ui/FeaturedStickersActivity$3;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$StickerSetCovered;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/FeaturedStickersActivity$3;

    .prologue
    .line 122
    iput-object p1, p0, Lorg/telegram/ui/FeaturedStickersActivity$3$1;->this$1:Lorg/telegram/ui/FeaturedStickersActivity$3;

    iput-object p2, p0, Lorg/telegram/ui/FeaturedStickersActivity$3$1;->val$view:Landroid/view/View;

    iput-object p3, p0, Lorg/telegram/ui/FeaturedStickersActivity$3$1;->val$stickerSet:Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStickerSetInstalled()V
    .locals 4

    .prologue
    .line 125
    iget-object v0, p0, Lorg/telegram/ui/FeaturedStickersActivity$3$1;->val$view:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    .line 126
    .local v0, "cell":Lorg/telegram/ui/Cells/FeaturedStickerSetCell;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->setDrawProgress(Z)V

    .line 127
    iget-object v1, p0, Lorg/telegram/ui/FeaturedStickersActivity$3$1;->this$1:Lorg/telegram/ui/FeaturedStickersActivity$3;

    iget-object v1, v1, Lorg/telegram/ui/FeaturedStickersActivity$3;->this$0:Lorg/telegram/ui/FeaturedStickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/FeaturedStickersActivity;->access$200(Lorg/telegram/ui/FeaturedStickersActivity;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/FeaturedStickersActivity$3$1;->val$stickerSet:Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/FeaturedStickersActivity$3$1;->val$stickerSet:Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    return-void
.end method

.method public onStickerSetUninstalled()V
    .locals 0

    .prologue
    .line 133
    return-void
.end method
