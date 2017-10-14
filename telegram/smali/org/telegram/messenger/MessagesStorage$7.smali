.class Lorg/telegram/messenger/MessagesStorage$7;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->loadPendingTasks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 716
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$7;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 36

    .prologue
    .line 720
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesStorage$7;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v3, "SELECT id, data FROM pending_tasks WHERE 1"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v9}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v31

    .line 721
    .local v31, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_0
    :goto_0
    invoke-virtual/range {v31 .. v31}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 722
    const/4 v2, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v6

    .line 723
    .local v6, "taskId":J
    const/4 v2, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v32

    .line 724
    .local v32, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v32, :cond_0

    .line 725
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v35

    .line 726
    .local v35, "type":I
    packed-switch v35, :pswitch_data_0

    .line 830
    :cond_1
    :goto_1
    invoke-virtual/range {v32 .. v32}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 834
    .end local v6    # "taskId":J
    .end local v31    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v32    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v35    # "type":I
    :catch_0
    move-exception v33

    .line 835
    .local v33, "e":Ljava/lang/Exception;
    invoke-static/range {v33 .. v33}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 837
    .end local v33    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 728
    .restart local v6    # "taskId":J
    .restart local v31    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v32    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v35    # "type":I
    :pswitch_0
    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-static {v0, v2, v3}, Lorg/telegram/tgnet/TLRPC$Chat;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v29

    .line 729
    .local v29, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v29, :cond_1

    .line 730
    sget-object v2, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/MessagesStorage$7$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v3, v0, v1, v6, v7}, Lorg/telegram/messenger/MessagesStorage$7$1;-><init>(Lorg/telegram/messenger/MessagesStorage$7;Lorg/telegram/tgnet/TLRPC$Chat;J)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 740
    .end local v29    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :pswitch_1
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v4

    .line 741
    .local v4, "channelId":I
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v5

    .line 742
    .local v5, "newDialogType":I
    sget-object v9, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/MessagesStorage$7$2;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/MessagesStorage$7$2;-><init>(Lorg/telegram/messenger/MessagesStorage$7;IIJ)V

    invoke-virtual {v9, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 753
    .end local v4    # "channelId":I
    .end local v5    # "newDialogType":I
    :pswitch_2
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_dialog;-><init>()V

    .line 754
    .local v10, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt64(Z)J

    move-result-wide v2

    iput-wide v2, v10, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 755
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v2

    iput v2, v10, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    .line 756
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v2

    iput v2, v10, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_inbox_max_id:I

    .line 757
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v2

    iput v2, v10, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_outbox_max_id:I

    .line 758
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v2

    iput v2, v10, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    .line 759
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v2

    iput v2, v10, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    .line 760
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v2

    iput v2, v10, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pts:I

    .line 761
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v2

    iput v2, v10, Lorg/telegram/tgnet/TLRPC$TL_dialog;->flags:I

    .line 762
    const/4 v2, 0x5

    move/from16 v0, v35

    if-lt v0, v2, :cond_2

    .line 763
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readBool(Z)Z

    move-result v2

    iput-boolean v2, v10, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    .line 764
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v2

    iput v2, v10, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    .line 766
    :cond_2
    const/16 v2, 0x8

    move/from16 v0, v35

    if-lt v0, v2, :cond_3

    .line 767
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v2

    iput v2, v10, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_mentions_count:I

    .line 769
    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-static {v0, v2, v3}, Lorg/telegram/tgnet/TLRPC$InputPeer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v11

    .line 770
    .local v11, "peer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    new-instance v8, Lorg/telegram/messenger/MessagesStorage$7$3;

    move-object/from16 v9, p0

    move-wide v12, v6

    invoke-direct/range {v8 .. v13}, Lorg/telegram/messenger/MessagesStorage$7$3;-><init>(Lorg/telegram/messenger/MessagesStorage$7;Lorg/telegram/tgnet/TLRPC$TL_dialog;Lorg/telegram/tgnet/TLRPC$InputPeer;J)V

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 779
    .end local v10    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v11    # "peer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    :pswitch_3
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt64(Z)J

    move-result-wide v16

    .line 780
    .local v16, "random_id":J
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-static {v0, v2, v3}, Lorg/telegram/tgnet/TLRPC$InputPeer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v11

    .line 781
    .restart local v11    # "peer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-static {v0, v2, v3}, Lorg/telegram/tgnet/TLRPC$InputMedia;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputMedia;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGame;

    .line 782
    .local v15, "game":Lorg/telegram/tgnet/TLRPC$TL_inputMediaGame;
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v13

    move-object v14, v11

    move-wide/from16 v18, v6

    invoke-virtual/range {v13 .. v19}, Lorg/telegram/messenger/SendMessagesHelper;->sendGame(Lorg/telegram/tgnet/TLRPC$InputPeer;Lorg/telegram/tgnet/TLRPC$TL_inputMediaGame;JJ)V

    goto/16 :goto_1

    .line 786
    .end local v11    # "peer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    .end local v15    # "game":Lorg/telegram/tgnet/TLRPC$TL_inputMediaGame;
    .end local v16    # "random_id":J
    :pswitch_4
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt64(Z)J

    move-result-wide v20

    .line 787
    .local v20, "did":J
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readBool(Z)Z

    move-result v22

    .line 788
    .local v22, "pin":Z
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-static {v0, v2, v3}, Lorg/telegram/tgnet/TLRPC$InputPeer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v11

    .line 789
    .restart local v11    # "peer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    new-instance v18, Lorg/telegram/messenger/MessagesStorage$7$4;

    move-object/from16 v19, p0

    move-object/from16 v23, v11

    move-wide/from16 v24, v6

    invoke-direct/range {v18 .. v25}, Lorg/telegram/messenger/MessagesStorage$7$4;-><init>(Lorg/telegram/messenger/MessagesStorage$7;JZLorg/telegram/tgnet/TLRPC$InputPeer;J)V

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 798
    .end local v11    # "peer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    .end local v20    # "did":J
    .end local v22    # "pin":Z
    :pswitch_5
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v4

    .line 799
    .restart local v4    # "channelId":I
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v5

    .line 800
    .restart local v5    # "newDialogType":I
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-static {v0, v2, v3}, Lorg/telegram/tgnet/TLRPC$InputChannel;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v8

    .line 801
    .local v8, "inputChannel":Lorg/telegram/tgnet/TLRPC$InputChannel;
    sget-object v9, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/MessagesStorage$7$5;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/messenger/MessagesStorage$7$5;-><init>(Lorg/telegram/messenger/MessagesStorage$7;IIJLorg/telegram/tgnet/TLRPC$InputChannel;)V

    invoke-virtual {v9, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 810
    .end local v4    # "channelId":I
    .end local v5    # "newDialogType":I
    .end local v8    # "inputChannel":Lorg/telegram/tgnet/TLRPC$InputChannel;
    :pswitch_6
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v4

    .line 811
    .restart local v4    # "channelId":I
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v30

    .line 812
    .local v30, "constructor":I
    const/4 v2, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v30

    invoke-static {v0, v1, v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;

    move-result-object v34

    .line 813
    .local v34, "request":Lorg/telegram/tgnet/TLObject;
    if-nez v34, :cond_4

    .line 814
    const/4 v2, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v30

    invoke-static {v0, v1, v2}, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;

    move-result-object v34

    .line 816
    :cond_4
    if-nez v34, :cond_5

    .line 817
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesStorage$7;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v2, v6, v7}, Lorg/telegram/messenger/MessagesStorage;->removePendingTask(J)V

    goto/16 :goto_1

    .line 819
    :cond_5
    move-object/from16 v28, v34

    .line 820
    .local v28, "finalRequest":Lorg/telegram/tgnet/TLObject;
    new-instance v23, Lorg/telegram/messenger/MessagesStorage$7$6;

    move-object/from16 v24, p0

    move/from16 v25, v4

    move-wide/from16 v26, v6

    invoke-direct/range {v23 .. v28}, Lorg/telegram/messenger/MessagesStorage$7$6;-><init>(Lorg/telegram/messenger/MessagesStorage$7;IJLorg/telegram/tgnet/TLObject;)V

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 833
    .end local v4    # "channelId":I
    .end local v6    # "taskId":J
    .end local v28    # "finalRequest":Lorg/telegram/tgnet/TLObject;
    .end local v30    # "constructor":I
    .end local v32    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v34    # "request":Lorg/telegram/tgnet/TLObject;
    .end local v35    # "type":I
    :cond_6
    invoke-virtual/range {v31 .. v31}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 726
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method
