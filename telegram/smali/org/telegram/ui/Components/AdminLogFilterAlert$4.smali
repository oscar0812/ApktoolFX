.class Lorg/telegram/ui/Components/AdminLogFilterAlert$4;
.super Ljava/lang/Object;
.source "AdminLogFilterAlert.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AdminLogFilterAlert;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;Ljava/util/HashMap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/AdminLogFilterAlert;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/AdminLogFilterAlert;

    .prologue
    .line 216
    iput-object p1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 27
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 219
    move-object/from16 v0, p1

    instance-of v12, v0, Lorg/telegram/ui/Cells/CheckBoxCell;

    if-eqz v12, :cond_1c

    move-object/from16 v3, p1

    .line 220
    check-cast v3, Lorg/telegram/ui/Cells/CheckBoxCell;

    .line 221
    .local v3, "cell":Lorg/telegram/ui/Cells/CheckBoxCell;
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result v8

    .line 222
    .local v8, "isChecked":Z
    if-nez v8, :cond_1

    const/4 v12, 0x1

    :goto_0
    const/4 v13, 0x1

    invoke-virtual {v3, v12, v13}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    .line 223
    if-nez p2, :cond_4

    .line 224
    if-eqz v8, :cond_2

    .line 225
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;-><init>()V

    invoke-static {v12, v13}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1002(Lorg/telegram/ui/Components/AdminLogFilterAlert;Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    .line 226
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v13}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v14}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v15}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    move-object/from16 v16, v0

    .line 227
    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    move-object/from16 v20, v0

    .line 228
    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    move-object/from16 v24, v0

    .line 229
    invoke-static/range {v24 .. v24}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v25

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->delete:Z

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->edit:Z

    move/from16 v0, v26

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->pinned:Z

    move/from16 v0, v26

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->settings:Z

    move/from16 v0, v26

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->info:Z

    move/from16 v0, v26

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->demote:Z

    move/from16 v0, v26

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->promote:Z

    move/from16 v0, v26

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->unkick:Z

    move/from16 v0, v26

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->kick:Z

    move/from16 v0, v26

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->unban:Z

    move/from16 v0, v26

    iput-boolean v0, v15, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->ban:Z

    move/from16 v0, v26

    iput-boolean v0, v14, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->invite:Z

    move/from16 v0, v26

    iput-boolean v0, v13, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->leave:Z

    move/from16 v0, v26

    iput-boolean v0, v12, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->join:Z

    .line 233
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$500(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v6

    .line 234
    .local v6, "count":I
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_2
    if-ge v2, v6, :cond_a

    .line 235
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$500(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v12

    invoke-virtual {v12, v2}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 236
    .local v5, "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$500(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v12

    invoke-virtual {v12, v5}, Lorg/telegram/ui/Components/RecyclerListView;->findContainingViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v7

    .line 237
    .local v7, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v9

    .line 238
    .local v9, "pos":I
    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v12

    if-nez v12, :cond_0

    if-lez v9, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1100(Lorg/telegram/ui/Components/AdminLogFilterAlert;)I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v9, v12, :cond_0

    .line 239
    check-cast v5, Lorg/telegram/ui/Cells/CheckBoxCell;

    .end local v5    # "child":Landroid/view/View;
    if-nez v8, :cond_3

    const/4 v12, 0x1

    :goto_3
    const/4 v13, 0x1

    invoke-virtual {v5, v12, v13}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    .line 234
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 222
    .end local v2    # "a":I
    .end local v6    # "count":I
    .end local v7    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .end local v9    # "pos":I
    :cond_1
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 231
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1002(Lorg/telegram/ui/Components/AdminLogFilterAlert;Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    goto :goto_1

    .line 239
    .restart local v2    # "a":I
    .restart local v6    # "count":I
    .restart local v7    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .restart local v9    # "pos":I
    :cond_3
    const/4 v12, 0x0

    goto :goto_3

    .line 242
    .end local v2    # "a":I
    .end local v6    # "count":I
    .end local v7    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .end local v9    # "pos":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1100(Lorg/telegram/ui/Components/AdminLogFilterAlert;)I

    move-result v12

    move/from16 v0, p2

    if-ne v0, v12, :cond_8

    .line 243
    if-eqz v8, :cond_6

    .line 244
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    invoke-static {v12, v13}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1202(Lorg/telegram/ui/Components/AdminLogFilterAlert;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 248
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$500(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v6

    .line 249
    .restart local v6    # "count":I
    const/4 v2, 0x0

    .restart local v2    # "a":I
    :goto_5
    if-ge v2, v6, :cond_a

    .line 250
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$500(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v12

    invoke-virtual {v12, v2}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 251
    .restart local v5    # "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$500(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v12

    invoke-virtual {v12, v5}, Lorg/telegram/ui/Components/RecyclerListView;->findContainingViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v7

    .line 252
    .restart local v7    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v9

    .line 253
    .restart local v9    # "pos":I
    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_5

    move-object v11, v5

    .line 254
    check-cast v11, Lorg/telegram/ui/Cells/CheckBoxUserCell;

    .line 255
    .local v11, "userCell":Lorg/telegram/ui/Cells/CheckBoxUserCell;
    if-nez v8, :cond_7

    const/4 v12, 0x1

    :goto_6
    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lorg/telegram/ui/Cells/CheckBoxUserCell;->setChecked(ZZ)V

    .line 249
    .end local v11    # "userCell":Lorg/telegram/ui/Cells/CheckBoxUserCell;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 246
    .end local v2    # "a":I
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .end local v9    # "pos":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1202(Lorg/telegram/ui/Components/AdminLogFilterAlert;Ljava/util/HashMap;)Ljava/util/HashMap;

    goto :goto_4

    .line 255
    .restart local v2    # "a":I
    .restart local v5    # "child":Landroid/view/View;
    .restart local v6    # "count":I
    .restart local v7    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .restart local v9    # "pos":I
    .restart local v11    # "userCell":Lorg/telegram/ui/Cells/CheckBoxUserCell;
    :cond_7
    const/4 v12, 0x0

    goto :goto_6

    .line 259
    .end local v2    # "a":I
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .end local v9    # "pos":I
    .end local v11    # "userCell":Lorg/telegram/ui/Cells/CheckBoxUserCell;
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v12

    if-nez v12, :cond_9

    .line 260
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;-><init>()V

    invoke-static {v12, v13}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1002(Lorg/telegram/ui/Components/AdminLogFilterAlert;Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    .line 261
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v13}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v14}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v15}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    move-object/from16 v16, v0

    .line 262
    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    move-object/from16 v20, v0

    .line 263
    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    move-object/from16 v24, v0

    .line 264
    invoke-static/range {v24 .. v24}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v25

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->delete:Z

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->edit:Z

    move/from16 v0, v26

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->pinned:Z

    move/from16 v0, v26

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->settings:Z

    move/from16 v0, v26

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->info:Z

    move/from16 v0, v26

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->demote:Z

    move/from16 v0, v26

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->promote:Z

    move/from16 v0, v26

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->unkick:Z

    move/from16 v0, v26

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->kick:Z

    move/from16 v0, v26

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->unban:Z

    move/from16 v0, v26

    iput-boolean v0, v15, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->ban:Z

    move/from16 v0, v26

    iput-boolean v0, v14, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->invite:Z

    move/from16 v0, v26

    iput-boolean v0, v13, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->leave:Z

    move/from16 v0, v26

    iput-boolean v0, v12, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->join:Z

    .line 265
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$500(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lorg/telegram/ui/Components/RecyclerListView;->findViewHolderForAdapterPosition(I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v7

    .line 266
    .restart local v7    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v7, :cond_9

    .line 267
    iget-object v12, v7, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v12, Lorg/telegram/ui/Cells/CheckBoxCell;

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    .line 270
    .end local v7    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1300(Lorg/telegram/ui/Components/AdminLogFilterAlert;)I

    move-result v12

    move/from16 v0, p2

    if-ne v0, v12, :cond_d

    .line 271
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v12

    iget-boolean v12, v12, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->kick:Z

    if-nez v12, :cond_c

    const/4 v12, 0x1

    :goto_7
    move-object/from16 v0, v16

    iput-boolean v12, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->unban:Z

    iput-boolean v12, v15, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->unkick:Z

    iput-boolean v12, v14, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->ban:Z

    iput-boolean v12, v13, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->kick:Z

    .line 288
    :cond_a
    :goto_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v12

    if-eqz v12, :cond_1b

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v12

    iget-boolean v12, v12, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->join:Z

    if-nez v12, :cond_1b

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v12

    iget-boolean v12, v12, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->leave:Z

    if-nez v12, :cond_1b

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    .line 289
    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v12

    iget-boolean v12, v12, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->leave:Z

    if-nez v12, :cond_1b

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v12

    iget-boolean v12, v12, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->invite:Z

    if-nez v12, :cond_1b

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v12

    iget-boolean v12, v12, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->ban:Z

    if-nez v12, :cond_1b

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    .line 290
    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v12

    iget-boolean v12, v12, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->unban:Z

    if-nez v12, :cond_1b

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v12

    iget-boolean v12, v12, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->kick:Z

    if-nez v12, :cond_1b

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v12

    iget-boolean v12, v12, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->unkick:Z

    if-nez v12, :cond_1b

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    .line 291
    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v12

    iget-boolean v12, v12, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->promote:Z

    if-nez v12, :cond_1b

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v12

    iget-boolean v12, v12, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->demote:Z

    if-nez v12, :cond_1b

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v12

    iget-boolean v12, v12, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->info:Z

    if-nez v12, :cond_1b

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    .line 292
    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v12

    iget-boolean v12, v12, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->settings:Z

    if-nez v12, :cond_1b

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v12

    iget-boolean v12, v12, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->pinned:Z

    if-nez v12, :cond_1b

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v12

    iget-boolean v12, v12, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->edit:Z

    if-nez v12, :cond_1b

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    .line 293
    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v12

    iget-boolean v12, v12, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->delete:Z

    if-nez v12, :cond_1b

    .line 294
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$2100(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setEnabled(Z)V

    .line 295
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$2100(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    move-result-object v12

    const/high16 v13, 0x3f000000    # 0.5f

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setAlpha(F)V

    .line 322
    .end local v3    # "cell":Lorg/telegram/ui/Cells/CheckBoxCell;
    .end local v8    # "isChecked":Z
    :cond_b
    :goto_9
    return-void

    .line 271
    .restart local v3    # "cell":Lorg/telegram/ui/Cells/CheckBoxCell;
    .restart local v8    # "isChecked":Z
    :cond_c
    const/4 v12, 0x0

    goto/16 :goto_7

    .line 272
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1400(Lorg/telegram/ui/Components/AdminLogFilterAlert;)I

    move-result v12

    move/from16 v0, p2

    if-ne v0, v12, :cond_f

    .line 273
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v12

    iget-boolean v12, v12, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->demote:Z

    if-nez v12, :cond_e

    const/4 v12, 0x1

    :goto_a
    iput-boolean v12, v14, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->demote:Z

    iput-boolean v12, v13, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->promote:Z

    goto/16 :goto_8

    :cond_e
    const/4 v12, 0x0

    goto :goto_a

    .line 274
    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1500(Lorg/telegram/ui/Components/AdminLogFilterAlert;)I

    move-result v12

    move/from16 v0, p2

    if-ne v0, v12, :cond_11

    .line 275
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v12

    iget-boolean v12, v12, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->join:Z

    if-nez v12, :cond_10

    const/4 v12, 0x1

    :goto_b
    iput-boolean v12, v14, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->join:Z

    iput-boolean v12, v13, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->invite:Z

    goto/16 :goto_8

    :cond_10
    const/4 v12, 0x0

    goto :goto_b

    .line 276
    :cond_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1600(Lorg/telegram/ui/Components/AdminLogFilterAlert;)I

    move-result v12

    move/from16 v0, p2

    if-ne v0, v12, :cond_13

    .line 277
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v12

    iget-boolean v12, v12, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->info:Z

    if-nez v12, :cond_12

    const/4 v12, 0x1

    :goto_c
    iput-boolean v12, v14, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->settings:Z

    iput-boolean v12, v13, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->info:Z

    goto/16 :goto_8

    :cond_12
    const/4 v12, 0x0

    goto :goto_c

    .line 278
    :cond_13
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1700(Lorg/telegram/ui/Components/AdminLogFilterAlert;)I

    move-result v12

    move/from16 v0, p2

    if-ne v0, v12, :cond_15

    .line 279
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v12

    iget-boolean v12, v12, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->delete:Z

    if-nez v12, :cond_14

    const/4 v12, 0x1

    :goto_d
    iput-boolean v12, v13, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->delete:Z

    goto/16 :goto_8

    :cond_14
    const/4 v12, 0x0

    goto :goto_d

    .line 280
    :cond_15
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1800(Lorg/telegram/ui/Components/AdminLogFilterAlert;)I

    move-result v12

    move/from16 v0, p2

    if-ne v0, v12, :cond_17

    .line 281
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v12

    iget-boolean v12, v12, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->edit:Z

    if-nez v12, :cond_16

    const/4 v12, 0x1

    :goto_e
    iput-boolean v12, v13, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->edit:Z

    goto/16 :goto_8

    :cond_16
    const/4 v12, 0x0

    goto :goto_e

    .line 282
    :cond_17
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1900(Lorg/telegram/ui/Components/AdminLogFilterAlert;)I

    move-result v12

    move/from16 v0, p2

    if-ne v0, v12, :cond_19

    .line 283
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v12

    iget-boolean v12, v12, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->pinned:Z

    if-nez v12, :cond_18

    const/4 v12, 0x1

    :goto_f
    iput-boolean v12, v13, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->pinned:Z

    goto/16 :goto_8

    :cond_18
    const/4 v12, 0x0

    goto :goto_f

    .line 284
    :cond_19
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$2000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)I

    move-result v12

    move/from16 v0, p2

    if-ne v0, v12, :cond_a

    .line 285
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1000(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    move-result-object v12

    iget-boolean v12, v12, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->leave:Z

    if-nez v12, :cond_1a

    const/4 v12, 0x1

    :goto_10
    iput-boolean v12, v13, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->leave:Z

    goto/16 :goto_8

    :cond_1a
    const/4 v12, 0x0

    goto :goto_10

    .line 297
    :cond_1b
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$2100(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setEnabled(Z)V

    .line 298
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$2100(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    move-result-object v12

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setAlpha(F)V

    goto/16 :goto_9

    .line 300
    .end local v3    # "cell":Lorg/telegram/ui/Cells/CheckBoxCell;
    .end local v8    # "isChecked":Z
    :cond_1c
    move-object/from16 v0, p1

    instance-of v12, v0, Lorg/telegram/ui/Cells/CheckBoxUserCell;

    if-eqz v12, :cond_b

    move-object/from16 v4, p1

    .line 301
    check-cast v4, Lorg/telegram/ui/Cells/CheckBoxUserCell;

    .line 302
    .local v4, "checkBoxUserCell":Lorg/telegram/ui/Cells/CheckBoxUserCell;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1200(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Ljava/util/HashMap;

    move-result-object v12

    if-nez v12, :cond_1e

    .line 303
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    invoke-static {v12, v13}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1202(Lorg/telegram/ui/Components/AdminLogFilterAlert;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 304
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$500(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v13}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1100(Lorg/telegram/ui/Components/AdminLogFilterAlert;)I

    move-result v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/Components/RecyclerListView;->findViewHolderForAdapterPosition(I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v7

    .line 305
    .restart local v7    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v7, :cond_1d

    .line 306
    iget-object v12, v7, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v12, Lorg/telegram/ui/Cells/CheckBoxCell;

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    .line 308
    :cond_1d
    const/4 v2, 0x0

    .restart local v2    # "a":I
    :goto_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$300(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v2, v12, :cond_1e

    .line 309
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$300(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget v12, v12, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v13, v12}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v10

    .line 310
    .local v10, "user":Lorg/telegram/tgnet/TLRPC$User;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1200(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Ljava/util/HashMap;

    move-result-object v12

    iget v13, v10, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 313
    .end local v2    # "a":I
    .end local v7    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .end local v10    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1e
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/CheckBoxUserCell;->isChecked()Z

    move-result v8

    .line 314
    .restart local v8    # "isChecked":Z
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/CheckBoxUserCell;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v10

    .line 315
    .restart local v10    # "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v8, :cond_1f

    .line 316
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1200(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Ljava/util/HashMap;

    move-result-object v12

    iget v13, v10, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    :goto_12
    if-nez v8, :cond_20

    const/4 v12, 0x1

    :goto_13
    const/4 v13, 0x1

    invoke-virtual {v4, v12, v13}, Lorg/telegram/ui/Cells/CheckBoxUserCell;->setChecked(ZZ)V

    goto/16 :goto_9

    .line 318
    :cond_1f
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert$4;->this$0:Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->access$1200(Lorg/telegram/ui/Components/AdminLogFilterAlert;)Ljava/util/HashMap;

    move-result-object v12

    iget v13, v10, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 320
    :cond_20
    const/4 v12, 0x0

    goto :goto_13
.end method
