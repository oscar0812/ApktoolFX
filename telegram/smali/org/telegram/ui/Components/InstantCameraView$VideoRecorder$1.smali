.class Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;
.super Ljava/lang/Object;
.source "InstantCameraView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    .prologue
    .line 1358
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/16 v12, 0xa

    const/4 v11, 0x1

    .line 1364
    const/4 v4, 0x0

    .line 1365
    .local v4, "done":Z
    :goto_0
    if-nez v4, :cond_0

    .line 1366
    iget-object v7, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v7}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$3800(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v7}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$3900(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Landroid/media/AudioRecord;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v7

    if-eq v7, v11, :cond_1

    .line 1368
    :try_start_0
    iget-object v7, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v7}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$3900(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Landroid/media/AudioRecord;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1372
    :goto_1
    iget-object v7, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v7}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$4000(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)I

    move-result v7

    if-nez v7, :cond_1

    .line 1415
    :cond_0
    :try_start_1
    iget-object v7, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v7}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$3900(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Landroid/media/AudioRecord;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/AudioRecord;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1419
    :goto_2
    iget-object v7, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v7}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$4300(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v8}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$4300(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v9}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$4000(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)I

    move-result v9

    invoke-virtual {v8, v11, v9, v13}, Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1420
    return-void

    .line 1369
    :catch_0
    move-exception v5

    .line 1370
    .local v5, "e":Ljava/lang/Exception;
    const/4 v4, 0x1

    goto :goto_1

    .line 1377
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v7, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v7}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$4100(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/ArrayBlockingQueue;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1378
    new-instance v1, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;

    iget-object v7, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v7, v7, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const/4 v8, 0x0

    invoke-direct {v1, v7, v8}, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;-><init>(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/ui/Components/InstantCameraView$1;)V

    .line 1382
    .local v1, "buffer":Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;
    :goto_3
    iput v13, v1, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->lastWroteBuffer:I

    .line 1383
    iput v12, v1, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->results:I

    .line 1384
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_4
    if-ge v0, v12, :cond_2

    .line 1385
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 1386
    .local v2, "audioPresentationTimeNs":J
    iget-object v7, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v7}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$3900(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Landroid/media/AudioRecord;

    move-result-object v7

    iget-object v8, v1, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->buffer:[B

    mul-int/lit16 v9, v0, 0x800

    const/16 v10, 0x800

    invoke-virtual {v7, v8, v9, v10}, Landroid/media/AudioRecord;->read([BII)I

    move-result v6

    .line 1387
    .local v6, "readResult":I
    if-gtz v6, :cond_6

    .line 1388
    iput v0, v1, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->results:I

    .line 1389
    iget-object v7, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v7}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$3800(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1390
    iput-boolean v11, v1, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->last:Z

    .line 1397
    .end local v2    # "audioPresentationTimeNs":J
    .end local v6    # "readResult":I
    :cond_2
    iget v7, v1, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->results:I

    if-gez v7, :cond_3

    iget-boolean v7, v1, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->last:Z

    if-eqz v7, :cond_7

    .line 1398
    :cond_3
    iget-object v7, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v7}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$3800(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Z

    move-result v7

    if-nez v7, :cond_4

    iget v7, v1, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->results:I

    if-ge v7, v12, :cond_4

    .line 1399
    const/4 v4, 0x1

    .line 1401
    :cond_4
    iget-object v7, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v7}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$4300(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v8}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$4300(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {v8, v9, v1}, Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1380
    .end local v0    # "a":I
    .end local v1    # "buffer":Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;
    :cond_5
    iget-object v7, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v7}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$4100(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;

    .restart local v1    # "buffer":Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;
    goto :goto_3

    .line 1394
    .restart local v0    # "a":I
    .restart local v2    # "audioPresentationTimeNs":J
    .restart local v6    # "readResult":I
    :cond_6
    iget-object v7, v1, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    aput-wide v2, v7, v0

    .line 1395
    iget-object v7, v1, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->read:[I

    aput v6, v7, v0

    .line 1384
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1403
    .end local v2    # "audioPresentationTimeNs":J
    .end local v6    # "readResult":I
    :cond_7
    iget-object v7, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v7}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$3800(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 1404
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1407
    :cond_8
    :try_start_2
    iget-object v7, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v7}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$4100(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1408
    :catch_1
    move-exception v7

    goto/16 :goto_0

    .line 1416
    .end local v0    # "a":I
    .end local v1    # "buffer":Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;
    :catch_2
    move-exception v5

    .line 1417
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_2
.end method
