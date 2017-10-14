.class Lorg/telegram/messenger/MediaController$10;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController;->checkPlayerQueue()V
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
    .line 1740
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$10;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 1743
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$10;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$4300(Lorg/telegram/messenger/MediaController;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1744
    :try_start_0
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$10;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$2600(Lorg/telegram/messenger/MediaController;)Landroid/media/AudioTrack;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$10;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$2600(Lorg/telegram/messenger/MediaController;)Landroid/media/AudioTrack;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    const/4 v11, 0x3

    if-eq v2, v11, :cond_2

    .line 1745
    :cond_0
    monitor-exit v3

    .line 1798
    :cond_1
    :goto_0
    return-void

    .line 1747
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1748
    const/4 v8, 0x0

    .line 1749
    .local v8, "buffer":Lorg/telegram/messenger/MediaController$AudioBuffer;
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$10;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$3800(Lorg/telegram/messenger/MediaController;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1750
    :try_start_1
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$10;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$4000(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1751
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$10;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$4000(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/telegram/messenger/MediaController$AudioBuffer;

    move-object v8, v0

    .line 1752
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$10;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$4000(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1754
    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1756
    if-eqz v8, :cond_5

    .line 1757
    const/4 v9, 0x0

    .line 1759
    .local v9, "count":I
    :try_start_2
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$10;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$2600(Lorg/telegram/messenger/MediaController;)Landroid/media/AudioTrack;

    move-result-object v2

    iget-object v3, v8, Lorg/telegram/messenger/MediaController$AudioBuffer;->bufferBytes:[B

    const/4 v11, 0x0

    iget v12, v8, Lorg/telegram/messenger/MediaController$AudioBuffer;->size:I

    invoke-virtual {v2, v3, v11, v12}, Landroid/media/AudioTrack;->write([BII)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v9

    .line 1763
    :goto_1
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$10;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$4408(Lorg/telegram/messenger/MediaController;)I

    .line 1765
    if-lez v9, :cond_4

    .line 1766
    iget-wide v4, v8, Lorg/telegram/messenger/MediaController$AudioBuffer;->pcmOffset:J

    .line 1767
    .local v4, "pcm":J
    iget v2, v8, Lorg/telegram/messenger/MediaController$AudioBuffer;->finished:I

    if-ne v2, v13, :cond_8

    move v6, v9

    .line 1768
    .local v6, "marker":I
    :goto_2
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$10;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$4400(Lorg/telegram/messenger/MediaController;)I

    move-result v7

    .line 1769
    .local v7, "finalBuffersWrited":I
    new-instance v2, Lorg/telegram/messenger/MediaController$10$1;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/MediaController$10$1;-><init>(Lorg/telegram/messenger/MediaController$10;JII)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1785
    .end local v4    # "pcm":J
    .end local v6    # "marker":I
    .end local v7    # "finalBuffersWrited":I
    :cond_4
    iget v2, v8, Lorg/telegram/messenger/MediaController$AudioBuffer;->finished:I

    if-eq v2, v13, :cond_5

    .line 1786
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$10;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$3700(Lorg/telegram/messenger/MediaController;)V

    .line 1789
    .end local v9    # "count":I
    :cond_5
    if-eqz v8, :cond_6

    if-eqz v8, :cond_7

    iget v2, v8, Lorg/telegram/messenger/MediaController$AudioBuffer;->finished:I

    if-eq v2, v13, :cond_7

    .line 1790
    :cond_6
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$10;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$4500(Lorg/telegram/messenger/MediaController;)V

    .line 1793
    :cond_7
    if-eqz v8, :cond_1

    .line 1794
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$10;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$3800(Lorg/telegram/messenger/MediaController;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1795
    :try_start_3
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$10;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$3900(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1796
    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 1747
    .end local v8    # "buffer":Lorg/telegram/messenger/MediaController$AudioBuffer;
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 1754
    .restart local v8    # "buffer":Lorg/telegram/messenger/MediaController$AudioBuffer;
    :catchall_2
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v2

    .line 1760
    .restart local v9    # "count":I
    :catch_0
    move-exception v10

    .line 1761
    .local v10, "e":Ljava/lang/Exception;
    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1767
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v4    # "pcm":J
    :cond_8
    const/4 v6, -0x1

    goto :goto_2
.end method
