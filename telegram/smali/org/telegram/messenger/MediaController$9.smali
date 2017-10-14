.class Lorg/telegram/messenger/MediaController$9;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController;->checkDecoderQueue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MediaController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MediaController;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 1688
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1691
    iget-object v4, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v4}, Lorg/telegram/messenger/MediaController;->access$3600(Lorg/telegram/messenger/MediaController;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1692
    iget-object v4, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v4}, Lorg/telegram/messenger/MediaController;->access$3700(Lorg/telegram/messenger/MediaController;)V

    .line 1735
    :cond_0
    :goto_0
    return-void

    .line 1695
    :cond_1
    const/4 v3, 0x0

    .line 1697
    .local v3, "was":Z
    :goto_1
    const/4 v2, 0x0

    .line 1698
    .local v2, "buffer":Lorg/telegram/messenger/MediaController$AudioBuffer;
    iget-object v4, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v4}, Lorg/telegram/messenger/MediaController;->access$3800(Lorg/telegram/messenger/MediaController;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1699
    :try_start_0
    iget-object v4, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v4}, Lorg/telegram/messenger/MediaController;->access$3900(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1700
    iget-object v4, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v4}, Lorg/telegram/messenger/MediaController;->access$3900(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lorg/telegram/messenger/MediaController$AudioBuffer;

    move-object v2, v0

    .line 1701
    iget-object v4, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v4}, Lorg/telegram/messenger/MediaController;->access$3900(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1703
    :cond_2
    iget-object v4, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v4}, Lorg/telegram/messenger/MediaController;->access$4000(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1704
    const/4 v3, 0x1

    .line 1706
    :cond_3
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1707
    if-eqz v2, :cond_6

    .line 1708
    iget-object v4, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    iget-object v5, v2, Lorg/telegram/messenger/MediaController$AudioBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v6}, Lorg/telegram/messenger/MediaController;->access$4100(Lorg/telegram/messenger/MediaController;)I

    move-result v6

    sget-object v7, Lorg/telegram/messenger/MediaController;->readArgs:[I

    invoke-static {v4, v5, v6, v7}, Lorg/telegram/messenger/MediaController;->access$4200(Lorg/telegram/messenger/MediaController;Ljava/nio/ByteBuffer;I[I)V

    .line 1709
    sget-object v4, Lorg/telegram/messenger/MediaController;->readArgs:[I

    aget v4, v4, v8

    iput v4, v2, Lorg/telegram/messenger/MediaController$AudioBuffer;->size:I

    .line 1710
    sget-object v4, Lorg/telegram/messenger/MediaController;->readArgs:[I

    aget v4, v4, v9

    int-to-long v4, v4

    iput-wide v4, v2, Lorg/telegram/messenger/MediaController$AudioBuffer;->pcmOffset:J

    .line 1711
    sget-object v4, Lorg/telegram/messenger/MediaController;->readArgs:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    iput v4, v2, Lorg/telegram/messenger/MediaController$AudioBuffer;->finished:I

    .line 1712
    iget v4, v2, Lorg/telegram/messenger/MediaController$AudioBuffer;->finished:I

    if-ne v4, v9, :cond_4

    .line 1713
    iget-object v4, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v4, v9}, Lorg/telegram/messenger/MediaController;->access$3602(Lorg/telegram/messenger/MediaController;Z)Z

    .line 1715
    :cond_4
    iget v4, v2, Lorg/telegram/messenger/MediaController$AudioBuffer;->size:I

    if-eqz v4, :cond_5

    .line 1716
    iget-object v4, v2, Lorg/telegram/messenger/MediaController$AudioBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1717
    iget-object v4, v2, Lorg/telegram/messenger/MediaController$AudioBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget-object v5, v2, Lorg/telegram/messenger/MediaController$AudioBuffer;->bufferBytes:[B

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1718
    iget-object v4, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v4}, Lorg/telegram/messenger/MediaController;->access$3800(Lorg/telegram/messenger/MediaController;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1719
    :try_start_1
    iget-object v4, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v4}, Lorg/telegram/messenger/MediaController;->access$4000(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1720
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1727
    const/4 v3, 0x1

    .line 1731
    goto/16 :goto_1

    .line 1706
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 1720
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 1722
    :cond_5
    iget-object v4, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v4}, Lorg/telegram/messenger/MediaController;->access$3800(Lorg/telegram/messenger/MediaController;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1723
    :try_start_4
    iget-object v4, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v4}, Lorg/telegram/messenger/MediaController;->access$3900(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1724
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1732
    :cond_6
    if-eqz v3, :cond_0

    .line 1733
    iget-object v4, p0, Lorg/telegram/messenger/MediaController$9;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v4}, Lorg/telegram/messenger/MediaController;->access$3700(Lorg/telegram/messenger/MediaController;)V

    goto/16 :goto_0

    .line 1725
    :catchall_2
    move-exception v4

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v4
.end method
