.class Lorg/telegram/ui/ChannelRightsEditActivity$3;
.super Ljava/lang/Object;
.source "ChannelRightsEditActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelRightsEditActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelRightsEditActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelRightsEditActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChannelRightsEditActivity;

    .prologue
    .line 275
    iput-object p1, p0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 22
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 278
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$700(Lorg/telegram/ui/ChannelRightsEditActivity;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 481
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    if-nez p2, :cond_2

    .line 282
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 283
    .local v10, "args":Landroid/os/Bundle;
    const-string/jumbo v5, "user_id"

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$400(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v10, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 284
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    new-instance v6, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {v6, v10}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ChannelRightsEditActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 285
    .end local v10    # "args":Landroid/os/Bundle;
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$800(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v5

    move/from16 v0, p2

    if-ne v0, v5, :cond_6

    .line 286
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$000(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v5

    if-nez v5, :cond_5

    .line 287
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$300(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$400(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    new-instance v18, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    invoke-direct/range {v18 .. v18}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$100(Lorg/telegram/ui/ChannelRightsEditActivity;)Z

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lorg/telegram/ui/ChannelRightsEditActivity;->getFragmentForAlert(I)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v20

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v5, v6, v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->setUserAdminRole(ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;ZLorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 301
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$500(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/ui/ChannelRightsEditActivity$ChannelRightsEditActivityDelegate;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 302
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$500(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/ui/ChannelRightsEditActivity$ChannelRightsEditActivityDelegate;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$200(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v5, v6, v0, v1}, Lorg/telegram/ui/ChannelRightsEditActivity$ChannelRightsEditActivityDelegate;->didSetRights(ILorg/telegram/tgnet/TLRPC$TL_channelAdminRights;Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;)V

    .line 304
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->finishFragment()V

    goto/16 :goto_0

    .line 288
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$000(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 289
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;-><init>()V

    invoke-static {v5, v6}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$602(Lorg/telegram/ui/ChannelRightsEditActivity;Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    .line 290
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v5

    const/4 v6, 0x1

    iput-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->view_messages:Z

    .line 291
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v5

    const/4 v6, 0x1

    iput-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_media:Z

    .line 292
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v5

    const/4 v6, 0x1

    iput-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_messages:Z

    .line 293
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v5

    const/4 v6, 0x1

    iput-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_stickers:Z

    .line 294
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v5

    const/4 v6, 0x1

    iput-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_gifs:Z

    .line 295
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v5

    const/4 v6, 0x1

    iput-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_games:Z

    .line 296
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v5

    const/4 v6, 0x1

    iput-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_inline:Z

    .line 297
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v5

    const/4 v6, 0x1

    iput-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->embed_links:Z

    .line 298
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v5

    const/4 v6, 0x0

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->until_date:I

    .line 299
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$300(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$400(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$100(Lorg/telegram/ui/ChannelRightsEditActivity;)Z

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lorg/telegram/ui/ChannelRightsEditActivity;->getFragmentForAlert(I)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v20

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v5, v6, v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->setUserBannedRole(ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;ZLorg/telegram/ui/ActionBar/BaseFragment;)V

    goto/16 :goto_1

    .line 305
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$900(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v5

    move/from16 v0, p2

    if-ne v0, v5, :cond_8

    .line 306
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 309
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 310
    .local v11, "calendar":Ljava/util/Calendar;
    const/4 v5, 0x1

    invoke-virtual {v11, v5}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 311
    .local v7, "year":I
    const/4 v5, 0x2

    invoke-virtual {v11, v5}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 312
    .local v8, "monthOfYear":I
    const/4 v5, 0x5

    invoke-virtual {v11, v5}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 314
    .local v9, "dayOfMonth":I
    :try_start_0
    new-instance v4, Landroid/app/DatePickerDialog;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/ChannelRightsEditActivity$3$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lorg/telegram/ui/ChannelRightsEditActivity$3$1;-><init>(Lorg/telegram/ui/ChannelRightsEditActivity$3;)V

    invoke-direct/range {v4 .. v9}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 343
    .local v4, "dialog":Landroid/app/DatePickerDialog;
    invoke-virtual {v4}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v14

    .line 345
    .local v14, "datePicker":Landroid/widget/DatePicker;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    .line 346
    .local v13, "date":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v13, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 347
    const/16 v5, 0xb

    const/16 v6, 0xb

    invoke-virtual {v13, v6}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v6

    invoke-virtual {v13, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 348
    const/16 v5, 0xc

    const/16 v6, 0xc

    invoke-virtual {v13, v6}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v6

    invoke-virtual {v13, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 349
    const/16 v5, 0xd

    const/16 v6, 0xd

    invoke-virtual {v13, v6}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v6

    invoke-virtual {v13, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 350
    const/16 v5, 0xe

    const/16 v6, 0xe

    invoke-virtual {v13, v6}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v6

    invoke-virtual {v13, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 351
    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v14, v0, v1}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 353
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const-wide v20, 0x757b12c00L

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    invoke-virtual {v13, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 354
    const/16 v5, 0xb

    const/16 v6, 0xb

    invoke-virtual {v13, v6}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v6

    invoke-virtual {v13, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 355
    const/16 v5, 0xc

    const/16 v6, 0xc

    invoke-virtual {v13, v6}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v6

    invoke-virtual {v13, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 356
    const/16 v5, 0xd

    const/16 v6, 0xd

    invoke-virtual {v13, v6}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v6

    invoke-virtual {v13, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 357
    const/16 v5, 0xe

    const/16 v6, 0xe

    invoke-virtual {v13, v6}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v6

    invoke-virtual {v13, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 358
    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v14, v0, v1}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 360
    const/4 v5, -0x1

    const-string/jumbo v6, "Set"

    const v18, 0x7f070579

    move/from16 v0, v18

    invoke-static {v6, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v4}, Landroid/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 361
    const/4 v5, -0x3

    const-string/jumbo v6, "UserRestrictionsUntilForever"

    const v18, 0x7f070619

    move/from16 v0, v18

    invoke-static {v6, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    new-instance v18, Lorg/telegram/ui/ChannelRightsEditActivity$3$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ChannelRightsEditActivity$3$2;-><init>(Lorg/telegram/ui/ChannelRightsEditActivity$3;)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v5, v6, v0}, Landroid/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 368
    const/4 v5, -0x2

    const-string/jumbo v6, "Cancel"

    const v18, 0x7f0700f4

    move/from16 v0, v18

    invoke-static {v6, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    new-instance v18, Lorg/telegram/ui/ChannelRightsEditActivity$3$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ChannelRightsEditActivity$3$3;-><init>(Lorg/telegram/ui/ChannelRightsEditActivity$3;)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v5, v6, v0}, Landroid/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 374
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_7

    .line 375
    new-instance v5, Lorg/telegram/ui/ChannelRightsEditActivity$3$4;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v14}, Lorg/telegram/ui/ChannelRightsEditActivity$3$4;-><init>(Lorg/telegram/ui/ChannelRightsEditActivity$3;Landroid/widget/DatePicker;)V

    invoke-virtual {v4, v5}, Landroid/app/DatePickerDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 388
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-virtual {v5, v4}, Lorg/telegram/ui/ChannelRightsEditActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 389
    .end local v4    # "dialog":Landroid/app/DatePickerDialog;
    .end local v13    # "date":Ljava/util/Calendar;
    .end local v14    # "datePicker":Landroid/widget/DatePicker;
    :catch_0
    move-exception v16

    .line 390
    .local v16, "e":Ljava/lang/Exception;
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 392
    .end local v7    # "year":I
    .end local v8    # "monthOfYear":I
    .end local v9    # "dayOfMonth":I
    .end local v11    # "calendar":Ljava/util/Calendar;
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_8
    move-object/from16 v0, p1

    instance-of v5, v0, Lorg/telegram/ui/Cells/TextCheckCell2;

    if-eqz v5, :cond_0

    move-object/from16 v12, p1

    .line 393
    check-cast v12, Lorg/telegram/ui/Cells/TextCheckCell2;

    .line 394
    .local v12, "checkCell":Lorg/telegram/ui/Cells/TextCheckCell2;
    invoke-virtual {v12}, Lorg/telegram/ui/Cells/TextCheckCell2;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 397
    invoke-virtual {v12}, Lorg/telegram/ui/Cells/TextCheckCell2;->isChecked()Z

    move-result v5

    if-nez v5, :cond_9

    const/4 v5, 0x1

    :goto_2
    invoke-virtual {v12, v5}, Lorg/telegram/ui/Cells/TextCheckCell2;->setChecked(Z)V

    .line 398
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$1100(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v5

    move/from16 v0, p2

    if-ne v0, v5, :cond_b

    .line 399
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$200(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$200(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->change_info:Z

    if-nez v5, :cond_a

    const/4 v5, 0x1

    :goto_3
    iput-boolean v5, v6, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->change_info:Z

    goto/16 :goto_0

    .line 397
    :cond_9
    const/4 v5, 0x0

    goto :goto_2

    .line 399
    :cond_a
    const/4 v5, 0x0

    goto :goto_3

    .line 400
    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$1200(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v5

    move/from16 v0, p2

    if-ne v0, v5, :cond_d

    .line 401
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$200(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$200(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->post_messages:Z

    if-nez v5, :cond_c

    const/4 v5, 0x1

    :goto_4
    iput-boolean v5, v6, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->post_messages:Z

    goto/16 :goto_0

    :cond_c
    const/4 v5, 0x0

    goto :goto_4

    .line 402
    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$1300(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v5

    move/from16 v0, p2

    if-ne v0, v5, :cond_f

    .line 403
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$200(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$200(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->edit_messages:Z

    if-nez v5, :cond_e

    const/4 v5, 0x1

    :goto_5
    iput-boolean v5, v6, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->edit_messages:Z

    goto/16 :goto_0

    :cond_e
    const/4 v5, 0x0

    goto :goto_5

    .line 404
    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$1400(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v5

    move/from16 v0, p2

    if-ne v0, v5, :cond_11

    .line 405
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$200(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$200(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->delete_messages:Z

    if-nez v5, :cond_10

    const/4 v5, 0x1

    :goto_6
    iput-boolean v5, v6, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->delete_messages:Z

    goto/16 :goto_0

    :cond_10
    const/4 v5, 0x0

    goto :goto_6

    .line 406
    :cond_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$1500(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v5

    move/from16 v0, p2

    if-ne v0, v5, :cond_13

    .line 407
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$200(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$200(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->add_admins:Z

    if-nez v5, :cond_12

    const/4 v5, 0x1

    :goto_7
    iput-boolean v5, v6, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->add_admins:Z

    goto/16 :goto_0

    :cond_12
    const/4 v5, 0x0

    goto :goto_7

    .line 408
    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$1600(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v5

    move/from16 v0, p2

    if-ne v0, v5, :cond_15

    .line 409
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$200(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$200(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->ban_users:Z

    if-nez v5, :cond_14

    const/4 v5, 0x1

    :goto_8
    iput-boolean v5, v6, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->ban_users:Z

    goto/16 :goto_0

    :cond_14
    const/4 v5, 0x0

    goto :goto_8

    .line 410
    :cond_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$1700(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v5

    move/from16 v0, p2

    if-ne v0, v5, :cond_17

    .line 411
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$200(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$200(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$200(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->invite_users:Z

    if-nez v5, :cond_16

    const/4 v5, 0x1

    :goto_9
    move-object/from16 v0, v18

    iput-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->invite_link:Z

    iput-boolean v5, v6, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->invite_users:Z

    goto/16 :goto_0

    :cond_16
    const/4 v5, 0x0

    goto :goto_9

    .line 412
    :cond_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$1800(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v5

    move/from16 v0, p2

    if-ne v0, v5, :cond_19

    .line 413
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$200(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$200(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->pin_messages:Z

    if-nez v5, :cond_18

    const/4 v5, 0x1

    :goto_a
    iput-boolean v5, v6, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->pin_messages:Z

    goto/16 :goto_0

    :cond_18
    const/4 v5, 0x0

    goto :goto_a

    .line 414
    :cond_19
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 415
    invoke-virtual {v12}, Lorg/telegram/ui/Cells/TextCheckCell2;->isChecked()Z

    move-result v5

    if-nez v5, :cond_21

    const/4 v15, 0x1

    .line 416
    .local v15, "disabled":Z
    :goto_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$1900(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v5

    move/from16 v0, p2

    if-ne v0, v5, :cond_23

    .line 417
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->view_messages:Z

    if-nez v5, :cond_22

    const/4 v5, 0x1

    :goto_c
    iput-boolean v5, v6, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->view_messages:Z

    .line 427
    :cond_1a
    :goto_d
    if-eqz v15, :cond_2b

    .line 428
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->view_messages:Z

    if-eqz v5, :cond_1b

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_messages:Z

    if-nez v5, :cond_1b

    .line 429
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v5

    const/4 v6, 0x1

    iput-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_messages:Z

    .line 430
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$2400(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$2000(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/RecyclerListView;->findViewHolderForAdapterPosition(I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v17

    .line 431
    .local v17, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v17, :cond_1b

    .line 432
    move-object/from16 v0, v17

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v5, Lorg/telegram/ui/Cells/TextCheckCell2;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Cells/TextCheckCell2;->setChecked(Z)V

    .line 435
    .end local v17    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->view_messages:Z

    if-nez v5, :cond_1c

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_messages:Z

    if-eqz v5, :cond_1d

    :cond_1c
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_media:Z

    if-nez v5, :cond_1d

    .line 436
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v5

    const/4 v6, 0x1

    iput-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_media:Z

    .line 437
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$2400(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$2100(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/RecyclerListView;->findViewHolderForAdapterPosition(I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v17

    .line 438
    .restart local v17    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v17, :cond_1d

    .line 439
    move-object/from16 v0, v17

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v5, Lorg/telegram/ui/Cells/TextCheckCell2;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Cells/TextCheckCell2;->setChecked(Z)V

    .line 442
    .end local v17    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->view_messages:Z

    if-nez v5, :cond_1e

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_messages:Z

    if-nez v5, :cond_1e

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_media:Z

    if-eqz v5, :cond_1f

    :cond_1e
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_stickers:Z

    if-nez v5, :cond_1f

    .line 443
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v19

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_inline:Z

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_gifs:Z

    move/from16 v0, v20

    iput-boolean v0, v6, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_games:Z

    move/from16 v0, v20

    iput-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_stickers:Z

    .line 444
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$2400(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$2200(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/RecyclerListView;->findViewHolderForAdapterPosition(I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v17

    .line 445
    .restart local v17    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v17, :cond_1f

    .line 446
    move-object/from16 v0, v17

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v5, Lorg/telegram/ui/Cells/TextCheckCell2;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Cells/TextCheckCell2;->setChecked(Z)V

    .line 449
    .end local v17    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->view_messages:Z

    if-nez v5, :cond_20

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_messages:Z

    if-nez v5, :cond_20

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_media:Z

    if-eqz v5, :cond_0

    :cond_20
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->embed_links:Z

    if-nez v5, :cond_0

    .line 450
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v5

    const/4 v6, 0x1

    iput-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->embed_links:Z

    .line 451
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$2400(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$2300(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/RecyclerListView;->findViewHolderForAdapterPosition(I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v17

    .line 452
    .restart local v17    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v17, :cond_0

    .line 453
    move-object/from16 v0, v17

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v5, Lorg/telegram/ui/Cells/TextCheckCell2;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Cells/TextCheckCell2;->setChecked(Z)V

    goto/16 :goto_0

    .line 415
    .end local v15    # "disabled":Z
    .end local v17    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_21
    const/4 v15, 0x0

    goto/16 :goto_b

    .line 417
    .restart local v15    # "disabled":Z
    :cond_22
    const/4 v5, 0x0

    goto/16 :goto_c

    .line 418
    :cond_23
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$2000(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v5

    move/from16 v0, p2

    if-ne v0, v5, :cond_25

    .line 419
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_messages:Z

    if-nez v5, :cond_24

    const/4 v5, 0x1

    :goto_e
    iput-boolean v5, v6, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_messages:Z

    goto/16 :goto_d

    :cond_24
    const/4 v5, 0x0

    goto :goto_e

    .line 420
    :cond_25
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$2100(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v5

    move/from16 v0, p2

    if-ne v0, v5, :cond_27

    .line 421
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_media:Z

    if-nez v5, :cond_26

    const/4 v5, 0x1

    :goto_f
    iput-boolean v5, v6, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_media:Z

    goto/16 :goto_d

    :cond_26
    const/4 v5, 0x0

    goto :goto_f

    .line 422
    :cond_27
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$2200(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v5

    move/from16 v0, p2

    if-ne v0, v5, :cond_29

    .line 423
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_stickers:Z

    if-nez v5, :cond_28

    const/4 v5, 0x1

    :goto_10
    move-object/from16 v0, v20

    iput-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_inline:Z

    move-object/from16 v0, v19

    iput-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_gifs:Z

    move-object/from16 v0, v18

    iput-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_games:Z

    iput-boolean v5, v6, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_stickers:Z

    goto/16 :goto_d

    :cond_28
    const/4 v5, 0x0

    goto :goto_10

    .line 424
    :cond_29
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$2300(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v5

    move/from16 v0, p2

    if-ne v0, v5, :cond_1a

    .line 425
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->embed_links:Z

    if-nez v5, :cond_2a

    const/4 v5, 0x1

    :goto_11
    iput-boolean v5, v6, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->embed_links:Z

    goto/16 :goto_d

    :cond_2a
    const/4 v5, 0x0

    goto :goto_11

    .line 457
    :cond_2b
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_messages:Z

    if-eqz v5, :cond_2c

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->embed_links:Z

    if-eqz v5, :cond_2c

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_inline:Z

    if-eqz v5, :cond_2c

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_media:Z

    if-nez v5, :cond_2d

    :cond_2c
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->view_messages:Z

    if-eqz v5, :cond_2d

    .line 458
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v5

    const/4 v6, 0x0

    iput-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->view_messages:Z

    .line 459
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$2400(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$1900(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/RecyclerListView;->findViewHolderForAdapterPosition(I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v17

    .line 460
    .restart local v17    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v17, :cond_2d

    .line 461
    move-object/from16 v0, v17

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v5, Lorg/telegram/ui/Cells/TextCheckCell2;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Cells/TextCheckCell2;->setChecked(Z)V

    .line 464
    .end local v17    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_2d
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->embed_links:Z

    if-eqz v5, :cond_2e

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_inline:Z

    if-eqz v5, :cond_2e

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_media:Z

    if-nez v5, :cond_2f

    :cond_2e
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_messages:Z

    if-eqz v5, :cond_2f

    .line 465
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v5

    const/4 v6, 0x0

    iput-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_messages:Z

    .line 466
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$2400(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$2000(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/RecyclerListView;->findViewHolderForAdapterPosition(I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v17

    .line 467
    .restart local v17    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v17, :cond_2f

    .line 468
    move-object/from16 v0, v17

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v5, Lorg/telegram/ui/Cells/TextCheckCell2;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Cells/TextCheckCell2;->setChecked(Z)V

    .line 471
    .end local v17    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_2f
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_inline:Z

    if-eqz v5, :cond_30

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->embed_links:Z

    if-nez v5, :cond_0

    :cond_30
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_media:Z

    if-eqz v5, :cond_0

    .line 472
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v5

    const/4 v6, 0x0

    iput-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_media:Z

    .line 473
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$2400(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/ChannelRightsEditActivity$3;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$2100(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/RecyclerListView;->findViewHolderForAdapterPosition(I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v17

    .line 474
    .restart local v17    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v17, :cond_0

    .line 475
    move-object/from16 v0, v17

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v5, Lorg/telegram/ui/Cells/TextCheckCell2;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Cells/TextCheckCell2;->setChecked(Z)V

    goto/16 :goto_0
.end method
