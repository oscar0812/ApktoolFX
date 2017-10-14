.class Lorg/telegram/ui/DataUsageActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "DataUsageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/DataUsageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/DataUsageActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/DataUsageActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 247
    iput-object p1, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 248
    iput-object p2, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 249
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataUsageActivity;->access$300(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 381
    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataUsageActivity;->access$400(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 382
    const/4 v0, 0x3

    .line 388
    :goto_0
    return v0

    .line 383
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataUsageActivity;->access$400(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataUsageActivity;->access$3900(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataUsageActivity;->access$4000(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataUsageActivity;->access$4100(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataUsageActivity;->access$4200(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataUsageActivity;->access$4300(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataUsageActivity;->access$4400(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataUsageActivity;->access$4500(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 384
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 385
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataUsageActivity;->access$3200(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataUsageActivity;->access$3300(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataUsageActivity;->access$3400(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataUsageActivity;->access$3500(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataUsageActivity;->access$3600(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataUsageActivity;->access$3700(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataUsageActivity;->access$3800(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 386
    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    .line 388
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 353
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataUsageActivity;->access$000(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 18
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 258
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 260
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$400(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_1

    .line 261
    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v12, 0x7f020085

    const-string/jumbo v13, "windowBackgroundGrayShadow"

    invoke-static {v11, v12, v13}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 263
    :cond_1
    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v12, 0x7f020084

    const-string/jumbo v13, "windowBackgroundGrayShadow"

    invoke-static {v11, v12, v13}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 268
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v6, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 269
    .local v6, "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$000(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_2

    .line 270
    const-string/jumbo v10, "windowBackgroundWhiteRedText2"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 271
    const-string/jumbo v10, "ResetStatistics"

    const v11, 0x7f070517

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    .line 272
    const-string/jumbo v10, "windowBackgroundWhiteRedText2"

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    goto :goto_0

    .line 275
    :cond_2
    const-string/jumbo v10, "windowBackgroundWhiteBlackText"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 276
    const-string/jumbo v10, "windowBackgroundWhiteBlackText"

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 277
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$500(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_3

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$600(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_3

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$700(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_3

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$800(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_4

    .line 278
    :cond_3
    const/4 v9, 0x0

    .line 292
    .local v9, "type":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$500(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_f

    .line 293
    const-string/jumbo v10, "OutgoingCalls"

    const v11, 0x7f070453

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "%d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v15}, Lorg/telegram/ui/DataUsageActivity;->access$100(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v15

    invoke-virtual {v14, v15, v9}, Lorg/telegram/messenger/StatsController;->getSentItemsCount(II)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 279
    .end local v9    # "type":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$900(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_5

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$1000(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_5

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$1100(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_5

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$1200(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_6

    .line 280
    :cond_5
    const/4 v9, 0x1

    .restart local v9    # "type":I
    goto :goto_1

    .line 281
    .end local v9    # "type":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$1300(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_7

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$1400(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_7

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$1500(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_7

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$1600(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_8

    .line 282
    :cond_7
    const/4 v9, 0x4

    .restart local v9    # "type":I
    goto/16 :goto_1

    .line 283
    .end local v9    # "type":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$1700(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$1800(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$1900(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$2000(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_a

    .line 284
    :cond_9
    const/4 v9, 0x3

    .restart local v9    # "type":I
    goto/16 :goto_1

    .line 285
    .end local v9    # "type":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$2100(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_b

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$2200(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_b

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$2300(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_b

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$2400(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_c

    .line 286
    :cond_b
    const/4 v9, 0x2

    .restart local v9    # "type":I
    goto/16 :goto_1

    .line 287
    .end local v9    # "type":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$2500(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_d

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$2600(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_d

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$2700(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_d

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$2800(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_e

    .line 288
    :cond_d
    const/4 v9, 0x5

    .restart local v9    # "type":I
    goto/16 :goto_1

    .line 290
    .end local v9    # "type":I
    :cond_e
    const/4 v9, 0x6

    .restart local v9    # "type":I
    goto/16 :goto_1

    .line 294
    :cond_f
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$600(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_10

    .line 295
    const-string/jumbo v10, "IncomingCalls"

    const v11, 0x7f070303

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "%d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v15}, Lorg/telegram/ui/DataUsageActivity;->access$100(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v15

    invoke-virtual {v14, v15, v9}, Lorg/telegram/messenger/StatsController;->getRecivedItemsCount(II)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 296
    :cond_10
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$2900(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_12

    .line 297
    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v11}, Lorg/telegram/ui/DataUsageActivity;->access$100(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v11

    invoke-virtual {v10, v11}, Lorg/telegram/messenger/StatsController;->getCallsTotalTime(I)I

    move-result v8

    .line 298
    .local v8, "total":I
    div-int/lit16 v4, v8, 0xe10

    .line 299
    .local v4, "hours":I
    mul-int/lit16 v10, v4, 0xe10

    sub-int/2addr v8, v10

    .line 300
    div-int/lit8 v5, v8, 0x3c

    .line 301
    .local v5, "minutes":I
    mul-int/lit8 v10, v5, 0x3c

    sub-int/2addr v8, v10

    .line 303
    if-eqz v4, :cond_11

    .line 304
    const-string/jumbo v10, "%d:%02d:%02d"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 308
    .local v7, "time":Ljava/lang/String;
    :goto_2
    const-string/jumbo v10, "CallsTotalTime"

    const v11, 0x7f0700f3

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v7, v11}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 306
    .end local v7    # "time":Ljava/lang/String;
    :cond_11
    const-string/jumbo v10, "%d:%02d"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "time":Ljava/lang/String;
    goto :goto_2

    .line 309
    .end local v4    # "hours":I
    .end local v5    # "minutes":I
    .end local v7    # "time":Ljava/lang/String;
    .end local v8    # "total":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$900(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_13

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$1300(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_13

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$2100(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_13

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$1700(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_13

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$2500(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_14

    .line 310
    :cond_13
    const-string/jumbo v10, "CountSent"

    const v11, 0x7f0701a2

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "%d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v15}, Lorg/telegram/ui/DataUsageActivity;->access$100(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v15

    invoke-virtual {v14, v15, v9}, Lorg/telegram/messenger/StatsController;->getSentItemsCount(II)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 311
    :cond_14
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$1000(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_15

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$1400(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_15

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$2200(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_15

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$1800(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_15

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$2600(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_16

    .line 312
    :cond_15
    const-string/jumbo v10, "CountReceived"

    const v11, 0x7f0701a1

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "%d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v15}, Lorg/telegram/ui/DataUsageActivity;->access$100(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v15

    invoke-virtual {v14, v15, v9}, Lorg/telegram/messenger/StatsController;->getRecivedItemsCount(II)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 313
    :cond_16
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$1100(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_17

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$1500(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_17

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$2300(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_17

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$1900(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_17

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$2700(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_17

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$700(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_17

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$3000(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_18

    .line 314
    :cond_17
    const-string/jumbo v10, "BytesSent"

    const v11, 0x7f0700da

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v12}, Lorg/telegram/ui/DataUsageActivity;->access$100(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v12

    invoke-virtual {v11, v12, v9}, Lorg/telegram/messenger/StatsController;->getSentBytesCount(II)J

    move-result-wide v12

    invoke-static {v12, v13}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 315
    :cond_18
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$1200(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_19

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$1600(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_19

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$2400(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_19

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$2000(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_19

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$2800(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_19

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$800(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_19

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$3100(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_0

    .line 316
    :cond_19
    const-string/jumbo v10, "BytesReceived"

    const v11, 0x7f0700d9

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v12}, Lorg/telegram/ui/DataUsageActivity;->access$100(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v12

    invoke-virtual {v10, v12, v9}, Lorg/telegram/messenger/StatsController;->getReceivedBytesCount(II)J

    move-result-wide v12

    invoke-static {v12, v13}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$3100(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_1a

    const/4 v10, 0x1

    :goto_3
    invoke-virtual {v6, v11, v12, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_1a
    const/4 v10, 0x0

    goto :goto_3

    .line 322
    .end local v6    # "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    .end local v9    # "type":I
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/HeaderCell;

    .line 323
    .local v3, "headerCell":Lorg/telegram/ui/Cells/HeaderCell;
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$3200(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_1b

    .line 324
    const-string/jumbo v10, "TotalDataUsage"

    const v11, 0x7f0705e1

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 325
    :cond_1b
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$3300(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_1c

    .line 326
    const-string/jumbo v10, "CallsDataUsage"

    const v11, 0x7f0700f2

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 327
    :cond_1c
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$3400(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_1d

    .line 328
    const-string/jumbo v10, "FilesDataUsage"

    const v11, 0x7f07027f

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 329
    :cond_1d
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$3500(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_1e

    .line 330
    const-string/jumbo v10, "LocalAudioCache"

    const v11, 0x7f07035b

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 331
    :cond_1e
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$3600(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_1f

    .line 332
    const-string/jumbo v10, "LocalVideoCache"

    const v11, 0x7f070364

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 333
    :cond_1f
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$3700(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_20

    .line 334
    const-string/jumbo v10, "LocalPhotoCache"

    const v11, 0x7f070363

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 335
    :cond_20
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-static {v10}, Lorg/telegram/ui/DataUsageActivity;->access$3800(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_0

    .line 336
    const-string/jumbo v10, "MessagesDataUsage"

    const v11, 0x7f070394

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 341
    .end local v3    # "headerCell":Lorg/telegram/ui/Cells/HeaderCell;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 342
    .local v2, "cell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v11, 0x7f020085

    const-string/jumbo v12, "windowBackgroundGrayShadow"

    invoke-static {v10, v11, v12}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v2, v10}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 343
    const-string/jumbo v10, "NetworkUsageSince"

    const v11, 0x7f0703b5

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v14

    iget-object v14, v14, Lorg/telegram/messenger/LocaleController;->formatterStats:Lorg/telegram/messenger/time/FastDateFormat;

    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataUsageActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/DataUsageActivity;->access$100(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lorg/telegram/messenger/StatsController;->getResetStatsDate(I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 258
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 358
    const/4 v0, 0x0

    .line 359
    .local v0, "view":Landroid/view/View;
    packed-switch p2, :pswitch_data_0

    .line 375
    :goto_0
    new-instance v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 361
    :pswitch_0
    new-instance v0, Lorg/telegram/ui/Cells/ShadowSectionCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 362
    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0

    .line 364
    :pswitch_1
    new-instance v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 365
    .restart local v0    # "view":Landroid/view/View;
    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 368
    :pswitch_2
    new-instance v0, Lorg/telegram/ui/Cells/HeaderCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 369
    .restart local v0    # "view":Landroid/view/View;
    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 372
    :pswitch_3
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0

    .line 359
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
