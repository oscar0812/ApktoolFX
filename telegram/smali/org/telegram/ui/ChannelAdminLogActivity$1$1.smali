.class Lorg/telegram/ui/ChannelAdminLogActivity$1$1;
.super Ljava/lang/Object;
.source "ChannelAdminLogActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelAdminLogActivity$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChannelAdminLogActivity$1;

.field final synthetic val$res:Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelAdminLogActivity$1;Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChannelAdminLogActivity$1;

    .prologue
    .line 277
    iput-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$1;

    iput-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 280
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults;->users:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 281
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults;->chats:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 282
    const/4 v9, 0x0

    .line 283
    .local v9, "added":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$1;

    iget-object v4, v4, Lorg/telegram/ui/ChannelAdminLogActivity$1;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChannelAdminLogActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 284
    .local v15, "oldRowsCount":I
    const/4 v8, 0x0

    .local v8, "a":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults;->events:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v8, v4, :cond_2

    .line 285
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults;->events:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;

    .line 286
    .local v3, "event":Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$1;

    iget-object v4, v4, Lorg/telegram/ui/ChannelAdminLogActivity$1;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$000(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/HashMap;

    move-result-object v4

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 284
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 289
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$1;

    iget-object v4, v4, Lorg/telegram/ui/ChannelAdminLogActivity$1;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$1;

    iget-object v5, v5, Lorg/telegram/ui/ChannelAdminLogActivity$1;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$100(Lorg/telegram/ui/ChannelAdminLogActivity;)J

    move-result-wide v6

    iget-wide v0, v3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->id:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$102(Lorg/telegram/ui/ChannelAdminLogActivity;J)J

    .line 290
    const/4 v9, 0x1

    .line 291
    new-instance v2, Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$1;

    iget-object v4, v4, Lorg/telegram/ui/ChannelAdminLogActivity$1;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChannelAdminLogActivity;->messages:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$1;

    iget-object v5, v5, Lorg/telegram/ui/ChannelAdminLogActivity$1;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$200(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/HashMap;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$1;

    iget-object v6, v6, Lorg/telegram/ui/ChannelAdminLogActivity$1;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    iget-object v6, v6, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$1;

    iget-object v7, v7, Lorg/telegram/ui/ChannelAdminLogActivity$1;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$300(Lorg/telegram/ui/ChannelAdminLogActivity;)[I

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;Ljava/util/ArrayList;Ljava/util/HashMap;Lorg/telegram/tgnet/TLRPC$Chat;[I)V

    .line 292
    .local v2, "messageObject":Lorg/telegram/messenger/MessageObject;
    iget v4, v2, Lorg/telegram/messenger/MessageObject;->contentType:I

    if-ltz v4, :cond_0

    .line 295
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$1;

    iget-object v4, v4, Lorg/telegram/ui/ChannelAdminLogActivity$1;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$000(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/HashMap;

    move-result-object v4

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 297
    .end local v2    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v3    # "event":Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$1;

    iget-object v4, v4, Lorg/telegram/ui/ChannelAdminLogActivity$1;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChannelAdminLogActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int v14, v4, v15

    .line 298
    .local v14, "newRowsCount":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$1;

    iget-object v4, v4, Lorg/telegram/ui/ChannelAdminLogActivity$1;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$402(Lorg/telegram/ui/ChannelAdminLogActivity;Z)Z

    .line 299
    if-nez v9, :cond_3

    .line 300
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$1;

    iget-object v4, v4, Lorg/telegram/ui/ChannelAdminLogActivity$1;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$502(Lorg/telegram/ui/ChannelAdminLogActivity;Z)Z

    .line 302
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$1;

    iget-object v4, v4, Lorg/telegram/ui/ChannelAdminLogActivity$1;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$600(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroid/widget/FrameLayout;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 303
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$1;

    iget-object v4, v4, Lorg/telegram/ui/ChannelAdminLogActivity$1;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$800(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$1;

    iget-object v5, v5, Lorg/telegram/ui/ChannelAdminLogActivity$1;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$700(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 304
    if-eqz v14, :cond_c

    .line 305
    const/4 v10, 0x0

    .line 306
    .local v10, "end":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$1;

    iget-object v4, v4, Lorg/telegram/ui/ChannelAdminLogActivity$1;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$500(Lorg/telegram/ui/ChannelAdminLogActivity;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 307
    const/4 v10, 0x1

    .line 308
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$1;

    iget-object v4, v4, Lorg/telegram/ui/ChannelAdminLogActivity$1;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$900(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->notifyItemRangeChanged(II)V

    .line 310
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$1;

    iget-object v4, v4, Lorg/telegram/ui/ChannelAdminLogActivity$1;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$1000(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v11

    .line 311
    .local v11, "firstVisPos":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$1;

    iget-object v4, v4, Lorg/telegram/ui/ChannelAdminLogActivity$1;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$1000(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v4

    invoke-virtual {v4, v11}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v12

    .line 312
    .local v12, "firstVisView":Landroid/view/View;
    if-nez v12, :cond_7

    const/4 v4, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$1;

    iget-object v5, v5, Lorg/telegram/ui/ChannelAdminLogActivity$1;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$800(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RecyclerListView;->getPaddingTop()I

    move-result v5

    sub-int v16, v4, v5

    .line 313
    .local v16, "top":I
    if-eqz v10, :cond_8

    const/4 v4, 0x1

    :goto_3
    sub-int v4, v14, v4

    if-lez v4, :cond_5

    .line 314
    if-eqz v10, :cond_9

    const/4 v4, 0x0

    :goto_4
    add-int/lit8 v13, v4, 0x1

    .line 315
    .local v13, "insertStart":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$1;

    iget-object v4, v4, Lorg/telegram/ui/ChannelAdminLogActivity$1;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$900(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    move-result-object v4

    invoke-virtual {v4, v13}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->notifyItemChanged(I)V

    .line 316
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$1;

    iget-object v4, v4, Lorg/telegram/ui/ChannelAdminLogActivity$1;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$900(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    move-result-object v5

    if-eqz v10, :cond_a

    const/4 v4, 0x1

    :goto_5
    sub-int v4, v14, v4

    invoke-virtual {v5, v13, v4}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->notifyItemRangeInserted(II)V

    .line 318
    .end local v13    # "insertStart":I
    :cond_5
    const/4 v4, -0x1

    if-eq v11, v4, :cond_6

    .line 319
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$1;

    iget-object v4, v4, Lorg/telegram/ui/ChannelAdminLogActivity$1;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$1000(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v5

    add-int v6, v11, v14

    if-eqz v10, :cond_b

    const/4 v4, 0x1

    :goto_6
    sub-int v4, v6, v4

    move/from16 v0, v16

    invoke-virtual {v5, v4, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 324
    .end local v10    # "end":Z
    .end local v11    # "firstVisPos":I
    .end local v12    # "firstVisView":Landroid/view/View;
    .end local v16    # "top":I
    :cond_6
    :goto_7
    return-void

    .line 312
    .restart local v10    # "end":Z
    .restart local v11    # "firstVisPos":I
    .restart local v12    # "firstVisView":Landroid/view/View;
    :cond_7
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v4

    goto :goto_2

    .line 313
    .restart local v16    # "top":I
    :cond_8
    const/4 v4, 0x0

    goto :goto_3

    .line 314
    :cond_9
    const/4 v4, 0x1

    goto :goto_4

    .line 316
    .restart local v13    # "insertStart":I
    :cond_a
    const/4 v4, 0x0

    goto :goto_5

    .line 319
    .end local v13    # "insertStart":I
    :cond_b
    const/4 v4, 0x0

    goto :goto_6

    .line 321
    .end local v10    # "end":Z
    .end local v11    # "firstVisPos":I
    .end local v12    # "firstVisView":Landroid/view/View;
    .end local v16    # "top":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$1;

    iget-object v4, v4, Lorg/telegram/ui/ChannelAdminLogActivity$1;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$500(Lorg/telegram/ui/ChannelAdminLogActivity;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 322
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity$1$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$1;

    iget-object v4, v4, Lorg/telegram/ui/ChannelAdminLogActivity$1;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$900(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->notifyItemRemoved(I)V

    goto :goto_7
.end method
