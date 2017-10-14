.class Lorg/telegram/ui/GroupStickersActivity$6;
.super Ljava/lang/Object;
.source "GroupStickersActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupStickersActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/GroupStickersActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupStickersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/GroupStickersActivity;

    .prologue
    .line 317
    iput-object p1, p0, Lorg/telegram/ui/GroupStickersActivity$6;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 320
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$6;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/GroupStickersActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$6;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$1100(Lorg/telegram/ui/GroupStickersActivity;)I

    move-result v0

    if-ne p2, v0, :cond_2

    .line 324
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$6;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$400(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 327
    iget-object v10, p0, Lorg/telegram/ui/GroupStickersActivity$6;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    new-instance v0, Lorg/telegram/ui/Components/StickersAlert;

    iget-object v1, p0, Lorg/telegram/ui/GroupStickersActivity$6;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/GroupStickersActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/GroupStickersActivity$6;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    iget-object v4, p0, Lorg/telegram/ui/GroupStickersActivity$6;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupStickersActivity;->access$400(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v4

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/StickersAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;)V

    invoke-virtual {v10, v0}, Lorg/telegram/ui/GroupStickersActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 328
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$6;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$1200(Lorg/telegram/ui/GroupStickersActivity;)I

    move-result v0

    if-lt p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$6;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$1300(Lorg/telegram/ui/GroupStickersActivity;)I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 329
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$6;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$1100(Lorg/telegram/ui/GroupStickersActivity;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_4

    move v7, v1

    .line 330
    .local v7, "needScroll":Z
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$6;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$1400(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v8

    .line 331
    .local v8, "row":I
    const v9, 0x7fffffff

    .line 332
    .local v9, "top":I
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$6;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$1500(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/RecyclerListView;->findViewHolderForAdapterPosition(I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 333
    .local v6, "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    if-eqz v6, :cond_3

    .line 334
    iget-object v0, v6, Lorg/telegram/ui/Components/RecyclerListView$Holder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    .line 336
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/GroupStickersActivity$6;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v2}, Lorg/telegram/messenger/query/StickersQuery;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/GroupStickersActivity$6;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupStickersActivity;->access$1200(Lorg/telegram/ui/GroupStickersActivity;)I

    move-result v4

    sub-int v4, p2, v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-static {v3, v0}, Lorg/telegram/ui/GroupStickersActivity;->access$402(Lorg/telegram/ui/GroupStickersActivity;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 337
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$6;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/GroupStickersActivity;->access$602(Lorg/telegram/ui/GroupStickersActivity;Z)Z

    .line 338
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$6;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$700(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/GroupStickersActivity$6;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupStickersActivity;->access$400(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setText(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$6;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$700(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/GroupStickersActivity$6;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupStickersActivity;->access$700(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    .line 340
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$6;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0, v2}, Lorg/telegram/ui/GroupStickersActivity;->access$602(Lorg/telegram/ui/GroupStickersActivity;Z)Z

    .line 341
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$6;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$700(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 342
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$6;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$1000(Lorg/telegram/ui/GroupStickersActivity;)V

    .line 343
    if-eqz v7, :cond_0

    const v0, 0x7fffffff

    if-eq v9, v0, :cond_0

    .line 344
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$6;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$1400(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v0

    add-int/lit8 v1, v8, 0x1

    invoke-virtual {v0, v1, v9}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto/16 :goto_0

    .end local v6    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .end local v7    # "needScroll":Z
    .end local v8    # "row":I
    .end local v9    # "top":I
    :cond_4
    move v7, v2

    .line 329
    goto/16 :goto_1
.end method
