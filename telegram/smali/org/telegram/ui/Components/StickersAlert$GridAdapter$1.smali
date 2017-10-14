.class Lorg/telegram/ui/Components/StickersAlert$GridAdapter$1;
.super Lorg/telegram/ui/Cells/StickerEmojiCell;
.source "StickersAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/StickersAlert$GridAdapter;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/Components/StickersAlert$GridAdapter;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 862
    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Cells/StickerEmojiCell;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 864
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter$1;->this$1:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$1400(Lorg/telegram/ui/Components/StickersAlert;)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/high16 v1, 0x42a40000    # 82.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Lorg/telegram/ui/Cells/StickerEmojiCell;->onMeasure(II)V

    .line 865
    return-void
.end method
