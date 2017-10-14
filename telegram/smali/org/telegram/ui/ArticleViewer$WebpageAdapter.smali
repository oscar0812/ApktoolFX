.class Lorg/telegram/ui/ArticleViewer$WebpageAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebpageAdapter"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V
    .locals 0
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 3414
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 3415
    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    .line 3416
    return-void
.end method

.method private getTypeForBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)I
    .locals 2
    .param p1, "block"    # Lorg/telegram/tgnet/TLRPC$PageBlock;

    .prologue
    const/4 v0, 0x0

    .line 3661
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    if-eqz v1, :cond_1

    .line 3704
    :cond_0
    :goto_0
    return v0

    .line 3663
    :cond_1
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;

    if-eqz v1, :cond_2

    .line 3664
    const/4 v0, 0x1

    goto :goto_0

    .line 3665
    :cond_2
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDivider;

    if-eqz v1, :cond_3

    .line 3666
    const/4 v0, 0x2

    goto :goto_0

    .line 3667
    :cond_3
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    if-eqz v1, :cond_4

    .line 3668
    const/4 v0, 0x3

    goto :goto_0

    .line 3669
    :cond_4
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubtitle;

    if-eqz v1, :cond_5

    .line 3670
    const/4 v0, 0x4

    goto :goto_0

    .line 3671
    :cond_5
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    if-eqz v1, :cond_6

    .line 3672
    const/4 v0, 0x5

    goto :goto_0

    .line 3673
    :cond_6
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;

    if-eqz v1, :cond_7

    .line 3674
    const/4 v0, 0x6

    goto :goto_0

    .line 3675
    :cond_7
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    if-eqz v1, :cond_8

    .line 3676
    const/4 v0, 0x7

    goto :goto_0

    .line 3677
    :cond_8
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    if-eqz v1, :cond_9

    .line 3678
    const/16 v0, 0x8

    goto :goto_0

    .line 3679
    :cond_9
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    if-eqz v1, :cond_a

    .line 3680
    const/16 v0, 0x9

    goto :goto_0

    .line 3681
    :cond_a
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

    if-eqz v1, :cond_b

    .line 3682
    const/16 v0, 0xa

    goto :goto_0

    .line 3683
    :cond_b
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;

    if-eqz v1, :cond_c

    .line 3684
    const/16 v0, 0xb

    goto :goto_0

    .line 3685
    :cond_c
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    if-eqz v1, :cond_d

    .line 3686
    const/16 v0, 0xc

    goto :goto_0

    .line 3687
    :cond_d
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockFooter;

    if-eqz v1, :cond_e

    .line 3688
    const/16 v0, 0xd

    goto :goto_0

    .line 3689
    :cond_e
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;

    if-eqz v1, :cond_f

    .line 3690
    const/16 v0, 0xe

    goto :goto_0

    .line 3691
    :cond_f
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;

    if-eqz v1, :cond_10

    .line 3692
    const/16 v0, 0xf

    goto :goto_0

    .line 3693
    :cond_10
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    if-eqz v1, :cond_11

    .line 3694
    const/16 v0, 0x10

    goto :goto_0

    .line 3695
    :cond_11
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    if-eqz v1, :cond_12

    .line 3696
    const/16 v0, 0x11

    goto :goto_0

    .line 3697
    :cond_12
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    if-eqz v1, :cond_13

    .line 3698
    const/16 v0, 0x12

    goto :goto_0

    .line 3699
    :cond_13
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;

    if-eqz v1, :cond_14

    .line 3700
    const/16 v0, 0x13

    goto :goto_0

    .line 3701
    :cond_14
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;

    if-eqz v1, :cond_0

    .line 3702
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$PageBlock;->cover:Lorg/telegram/tgnet/TLRPC$PageBlock;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->getTypeForBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)I

    move-result v0

    goto/16 :goto_0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 3717
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$4700(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$4700(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$4600(Lorg/telegram/ui/ArticleViewer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 3709
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$4600(Lorg/telegram/ui/ArticleViewer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 3710
    const/16 v0, 0x5a

    .line 3712
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$4600(Lorg/telegram/ui/ArticleViewer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$PageBlock;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->getTypeForBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)I

    move-result v0

    goto :goto_0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 3526
    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 9
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3531
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v5}, Lorg/telegram/ui/ArticleViewer;->access$4600(Lorg/telegram/ui/ArticleViewer;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p2, v5, :cond_8

    .line 3532
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v5}, Lorg/telegram/ui/ArticleViewer;->access$4600(Lorg/telegram/ui/ArticleViewer;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 3533
    .local v0, "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    move-object v3, v0

    .line 3534
    .local v3, "originalBlock":Lorg/telegram/tgnet/TLRPC$PageBlock;
    instance-of v5, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;

    if-eqz v5, :cond_0

    .line 3535
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->cover:Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 3537
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 3658
    .end local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    .end local v3    # "originalBlock":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :cond_1
    :goto_0
    return-void

    .line 3539
    .restart local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    .restart local v3    # "originalBlock":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :pswitch_0
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;

    .line 3540
    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    .end local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;)V

    goto :goto_0

    .line 3544
    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;
    .restart local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :pswitch_1
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;

    .line 3545
    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;

    .end local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;)V

    goto :goto_0

    .line 3549
    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;
    .restart local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :pswitch_2
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockDividerCell;

    .line 3550
    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockDividerCell;
    goto :goto_0

    .line 3553
    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockDividerCell;
    :pswitch_3
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    .line 3554
    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    .end local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;)V

    goto :goto_0

    .line 3558
    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;
    .restart local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :pswitch_4
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;

    .line 3559
    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubtitle;

    .end local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubtitle;)V

    goto :goto_0

    .line 3563
    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;
    .restart local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :pswitch_5
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    .line 3564
    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockVideoCell;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    .end local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    if-nez p2, :cond_2

    move v5, v6

    :goto_1
    iget-object v8, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v8}, Lorg/telegram/ui/ArticleViewer;->access$4600(Lorg/telegram/ui/ArticleViewer;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne p2, v8, :cond_3

    :goto_2
    invoke-virtual {v1, v0, v5, v6}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;ZZ)V

    .line 3565
    invoke-virtual {v1, v3}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->setParentBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    goto :goto_0

    :cond_2
    move v5, v7

    .line 3564
    goto :goto_1

    :cond_3
    move v6, v7

    goto :goto_2

    .line 3569
    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockVideoCell;
    .restart local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :pswitch_6
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;

    .line 3570
    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;

    .end local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;)V

    goto :goto_0

    .line 3574
    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;
    .restart local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :pswitch_7
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;

    .line 3575
    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    .end local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;)V

    goto :goto_0

    .line 3579
    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;
    .restart local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :pswitch_8
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    .line 3580
    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    .end local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;)V

    goto :goto_0

    .line 3584
    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;
    .restart local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :pswitch_9
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;

    .line 3585
    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    .end local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    if-nez p2, :cond_4

    move v5, v6

    :goto_3
    iget-object v8, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v8}, Lorg/telegram/ui/ArticleViewer;->access$4600(Lorg/telegram/ui/ArticleViewer;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne p2, v8, :cond_5

    :goto_4
    invoke-virtual {v1, v0, v5, v6}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;ZZ)V

    .line 3586
    invoke-virtual {v1, v3}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->setParentBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    goto/16 :goto_0

    :cond_4
    move v5, v7

    .line 3585
    goto :goto_3

    :cond_5
    move v6, v7

    goto :goto_4

    .line 3590
    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;
    .restart local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :pswitch_a
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;

    .line 3591
    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

    .end local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;)V

    goto/16 :goto_0

    .line 3595
    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;
    .restart local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :pswitch_b
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;

    .line 3596
    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockTitleCell;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;

    .end local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;)V

    goto/16 :goto_0

    .line 3600
    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockTitleCell;
    .restart local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :pswitch_c
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockListCell;

    .line 3601
    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockListCell;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    .end local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockListCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;)V

    goto/16 :goto_0

    .line 3605
    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockListCell;
    .restart local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :pswitch_d
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;

    .line 3606
    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockFooterCell;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockFooter;

    .end local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockFooter;)V

    goto/16 :goto_0

    .line 3610
    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockFooterCell;
    .restart local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :pswitch_e
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;

    .line 3611
    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;

    .end local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;)V

    goto/16 :goto_0

    .line 3615
    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;
    .restart local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :pswitch_f
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;

    .line 3616
    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;

    .end local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;)V

    goto/16 :goto_0

    .line 3620
    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;
    .restart local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :pswitch_10
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;

    .line 3621
    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    .end local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;)V

    goto/16 :goto_0

    .line 3625
    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;
    .restart local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :pswitch_11
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    .line 3626
    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockCollageCell;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    .end local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;)V

    goto/16 :goto_0

    .line 3630
    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockCollageCell;
    .restart local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :pswitch_12
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    .line 3631
    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockChannelCell;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    .end local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;)V

    goto/16 :goto_0

    .line 3635
    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockChannelCell;
    .restart local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :pswitch_13
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;

    .line 3636
    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockAudioCell;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;

    .end local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    if-nez p2, :cond_6

    move v5, v6

    :goto_5
    iget-object v8, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v8}, Lorg/telegram/ui/ArticleViewer;->access$4600(Lorg/telegram/ui/ArticleViewer;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne p2, v8, :cond_7

    :goto_6
    invoke-virtual {v1, v0, v5, v6}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;ZZ)V

    goto/16 :goto_0

    :cond_6
    move v5, v7

    goto :goto_5

    :cond_7
    move v6, v7

    goto :goto_6

    .line 3640
    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockAudioCell;
    .end local v3    # "originalBlock":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :cond_8
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    goto/16 :goto_0

    .line 3642
    :pswitch_14
    iget-object v5, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 3643
    .local v4, "textView":Landroid/widget/TextView;
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v5}, Lorg/telegram/ui/ArticleViewer;->access$8800(Lorg/telegram/ui/ArticleViewer;)I

    move-result v2

    .line 3644
    .local v2, "color":I
    if-nez v2, :cond_9

    .line 3645
    const v5, -0x877d73

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3646
    const v5, -0x121010

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 3647
    :cond_9
    if-ne v2, v6, :cond_a

    .line 3648
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v5}, Lorg/telegram/ui/ArticleViewer;->access$8900(Lorg/telegram/ui/ArticleViewer;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3649
    const v5, -0x1a2138

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 3650
    :cond_a
    const/4 v5, 0x2

    if-ne v2, v5, :cond_1

    .line 3651
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v5}, Lorg/telegram/ui/ArticleViewer;->access$8900(Lorg/telegram/ui/ArticleViewer;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3652
    const v5, -0xd9d9da

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 3537
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch

    .line 3640
    :pswitch_data_1
    .packed-switch 0x5a
        :pswitch_14
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 10
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v0, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3421
    packed-switch p2, :pswitch_data_0

    .line 3504
    new-instance v7, Lorg/telegram/ui/ArticleViewer$WebpageAdapter$1;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v7, p0, v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter$1;-><init>(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/content/Context;)V

    .line 3510
    .local v7, "frameLayout":Landroid/widget/FrameLayout;
    const/16 v1, 0x5a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 3511
    new-instance v8, Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v8, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 3512
    .local v8, "textView":Landroid/widget/TextView;
    const/high16 v1, 0x42080000    # 34.0f

    const/16 v2, 0x33

    const/high16 v4, 0x41200000    # 10.0f

    move v5, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3513
    const-string/jumbo v1, "PreviewFeedback"

    const v2, 0x7f0704d3

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3514
    const/4 v1, 0x1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v8, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3515
    const/16 v1, 0x11

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 3516
    move-object v9, v7

    .line 3520
    .end local v7    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v8    # "textView":Landroid/widget/TextView;
    .local v9, "view":Landroid/view/View;
    :goto_0
    new-instance v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3521
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v0

    .line 3423
    .end local v9    # "view":Landroid/view/View;
    :pswitch_0
    new-instance v9, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    .line 3424
    .restart local v9    # "view":Landroid/view/View;
    goto :goto_0

    .line 3427
    .end local v9    # "view":Landroid/view/View;
    :pswitch_1
    new-instance v9, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    .line 3428
    .restart local v9    # "view":Landroid/view/View;
    goto :goto_0

    .line 3431
    .end local v9    # "view":Landroid/view/View;
    :pswitch_2
    new-instance v9, Lorg/telegram/ui/ArticleViewer$BlockDividerCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockDividerCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    .line 3432
    .restart local v9    # "view":Landroid/view/View;
    goto :goto_0

    .line 3435
    .end local v9    # "view":Landroid/view/View;
    :pswitch_3
    new-instance v9, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    .line 3436
    .restart local v9    # "view":Landroid/view/View;
    goto :goto_0

    .line 3439
    .end local v9    # "view":Landroid/view/View;
    :pswitch_4
    new-instance v9, Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    .line 3440
    .restart local v9    # "view":Landroid/view/View;
    goto :goto_0

    .line 3443
    .end local v9    # "view":Landroid/view/View;
    :pswitch_5
    new-instance v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v1, v2, v4}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;I)V

    .line 3444
    .restart local v9    # "view":Landroid/view/View;
    goto :goto_0

    .line 3447
    .end local v9    # "view":Landroid/view/View;
    :pswitch_6
    new-instance v9, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    .line 3448
    .restart local v9    # "view":Landroid/view/View;
    goto :goto_0

    .line 3451
    .end local v9    # "view":Landroid/view/View;
    :pswitch_7
    new-instance v9, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    .line 3452
    .restart local v9    # "view":Landroid/view/View;
    goto :goto_0

    .line 3455
    .end local v9    # "view":Landroid/view/View;
    :pswitch_8
    new-instance v9, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    .line 3456
    .restart local v9    # "view":Landroid/view/View;
    goto :goto_0

    .line 3459
    .end local v9    # "view":Landroid/view/View;
    :pswitch_9
    new-instance v9, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v1, v2, v4}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;I)V

    .line 3460
    .restart local v9    # "view":Landroid/view/View;
    goto :goto_0

    .line 3463
    .end local v9    # "view":Landroid/view/View;
    :pswitch_a
    new-instance v9, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    .line 3464
    .restart local v9    # "view":Landroid/view/View;
    goto :goto_0

    .line 3467
    .end local v9    # "view":Landroid/view/View;
    :pswitch_b
    new-instance v9, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    .line 3468
    .restart local v9    # "view":Landroid/view/View;
    goto/16 :goto_0

    .line 3471
    .end local v9    # "view":Landroid/view/View;
    :pswitch_c
    new-instance v9, Lorg/telegram/ui/ArticleViewer$BlockListCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockListCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    .line 3472
    .restart local v9    # "view":Landroid/view/View;
    goto/16 :goto_0

    .line 3475
    .end local v9    # "view":Landroid/view/View;
    :pswitch_d
    new-instance v9, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    .line 3476
    .restart local v9    # "view":Landroid/view/View;
    goto/16 :goto_0

    .line 3479
    .end local v9    # "view":Landroid/view/View;
    :pswitch_e
    new-instance v9, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    .line 3480
    .restart local v9    # "view":Landroid/view/View;
    goto/16 :goto_0

    .line 3483
    .end local v9    # "view":Landroid/view/View;
    :pswitch_f
    new-instance v9, Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    .line 3484
    .restart local v9    # "view":Landroid/view/View;
    goto/16 :goto_0

    .line 3487
    .end local v9    # "view":Landroid/view/View;
    :pswitch_10
    new-instance v9, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    .line 3488
    .restart local v9    # "view":Landroid/view/View;
    goto/16 :goto_0

    .line 3491
    .end local v9    # "view":Landroid/view/View;
    :pswitch_11
    new-instance v9, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    .line 3492
    .restart local v9    # "view":Landroid/view/View;
    goto/16 :goto_0

    .line 3495
    .end local v9    # "view":Landroid/view/View;
    :pswitch_12
    new-instance v9, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v1, v2, v4}, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;I)V

    .line 3496
    .restart local v9    # "view":Landroid/view/View;
    goto/16 :goto_0

    .line 3499
    .end local v9    # "view":Landroid/view/View;
    :pswitch_13
    new-instance v9, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    .line 3500
    .restart local v9    # "view":Landroid/view/View;
    goto/16 :goto_0

    .line 3421
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method
