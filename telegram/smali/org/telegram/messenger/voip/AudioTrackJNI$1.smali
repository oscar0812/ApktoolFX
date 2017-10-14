.class Lorg/telegram/messenger/voip/AudioTrackJNI$1;
.super Ljava/lang/Object;
.source "AudioTrackJNI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/voip/AudioTrackJNI;->startThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/voip/AudioTrackJNI;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/voip/AudioTrackJNI;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/voip/AudioTrackJNI;

    .prologue
    .line 90
    iput-object p1, p0, Lorg/telegram/messenger/voip/AudioTrackJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioTrackJNI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/16 v7, 0x780

    const/16 v6, 0x6e4

    .line 94
    :try_start_0
    iget-object v5, p0, Lorg/telegram/messenger/voip/AudioTrackJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioTrackJNI;

    invoke-static {v5}, Lorg/telegram/messenger/voip/AudioTrackJNI;->access$000(Lorg/telegram/messenger/voip/AudioTrackJNI;)Landroid/media/AudioTrack;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioTrack;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    iget-object v5, p0, Lorg/telegram/messenger/voip/AudioTrackJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioTrackJNI;

    invoke-static {v5}, Lorg/telegram/messenger/voip/AudioTrackJNI;->access$100(Lorg/telegram/messenger/voip/AudioTrackJNI;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 100
    .local v2, "tmp48":Ljava/nio/ByteBuffer;
    :goto_0
    iget-object v5, p0, Lorg/telegram/messenger/voip/AudioTrackJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioTrackJNI;

    invoke-static {v5}, Lorg/telegram/messenger/voip/AudioTrackJNI;->access$100(Lorg/telegram/messenger/voip/AudioTrackJNI;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 101
    .local v1, "tmp44":Ljava/nio/ByteBuffer;
    :cond_0
    :goto_1
    iget-object v4, p0, Lorg/telegram/messenger/voip/AudioTrackJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioTrackJNI;

    invoke-static {v4}, Lorg/telegram/messenger/voip/AudioTrackJNI;->access$200(Lorg/telegram/messenger/voip/AudioTrackJNI;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 103
    :try_start_1
    iget-object v4, p0, Lorg/telegram/messenger/voip/AudioTrackJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioTrackJNI;

    invoke-static {v4}, Lorg/telegram/messenger/voip/AudioTrackJNI;->access$100(Lorg/telegram/messenger/voip/AudioTrackJNI;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 104
    iget-object v4, p0, Lorg/telegram/messenger/voip/AudioTrackJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioTrackJNI;

    iget-object v5, p0, Lorg/telegram/messenger/voip/AudioTrackJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioTrackJNI;

    invoke-static {v5}, Lorg/telegram/messenger/voip/AudioTrackJNI;->access$300(Lorg/telegram/messenger/voip/AudioTrackJNI;)[B

    move-result-object v5

    invoke-static {v4, v5}, Lorg/telegram/messenger/voip/AudioTrackJNI;->access$400(Lorg/telegram/messenger/voip/AudioTrackJNI;[B)V

    .line 105
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 106
    iget-object v4, p0, Lorg/telegram/messenger/voip/AudioTrackJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioTrackJNI;

    invoke-static {v4}, Lorg/telegram/messenger/voip/AudioTrackJNI;->access$300(Lorg/telegram/messenger/voip/AudioTrackJNI;)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 107
    invoke-static {v2, v1}, Lorg/telegram/messenger/voip/Resampler;->convert48to44(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    .line 108
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 109
    iget-object v4, p0, Lorg/telegram/messenger/voip/AudioTrackJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioTrackJNI;

    invoke-static {v4}, Lorg/telegram/messenger/voip/AudioTrackJNI;->access$300(Lorg/telegram/messenger/voip/AudioTrackJNI;)[B

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x6e4

    invoke-virtual {v1, v4, v5, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 110
    iget-object v4, p0, Lorg/telegram/messenger/voip/AudioTrackJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioTrackJNI;

    invoke-static {v4}, Lorg/telegram/messenger/voip/AudioTrackJNI;->access$000(Lorg/telegram/messenger/voip/AudioTrackJNI;)Landroid/media/AudioTrack;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/messenger/voip/AudioTrackJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioTrackJNI;

    invoke-static {v5}, Lorg/telegram/messenger/voip/AudioTrackJNI;->access$300(Lorg/telegram/messenger/voip/AudioTrackJNI;)[B

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x6e4

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/AudioTrack;->write([BII)I

    .line 115
    :goto_2
    iget-object v4, p0, Lorg/telegram/messenger/voip/AudioTrackJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioTrackJNI;

    invoke-static {v4}, Lorg/telegram/messenger/voip/AudioTrackJNI;->access$200(Lorg/telegram/messenger/voip/AudioTrackJNI;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 116
    iget-object v4, p0, Lorg/telegram/messenger/voip/AudioTrackJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioTrackJNI;

    invoke-static {v4}, Lorg/telegram/messenger/voip/AudioTrackJNI;->access$000(Lorg/telegram/messenger/voip/AudioTrackJNI;)Landroid/media/AudioTrack;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioTrack;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 123
    :cond_1
    const-string/jumbo v4, "tg-voip"

    const-string/jumbo v5, "audiotrack thread exits"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .end local v1    # "tmp44":Ljava/nio/ByteBuffer;
    .end local v2    # "tmp48":Ljava/nio/ByteBuffer;
    :goto_3
    return-void

    .line 95
    :catch_0
    move-exception v3

    .line 96
    .local v3, "x":Ljava/lang/Exception;
    const-string/jumbo v4, "error starting AudioTrack"

    invoke-static {v4, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v3    # "x":Ljava/lang/Exception;
    :cond_2
    move-object v2, v4

    .line 99
    goto :goto_0

    .restart local v2    # "tmp48":Ljava/nio/ByteBuffer;
    :cond_3
    move-object v1, v4

    .line 100
    goto :goto_1

    .line 112
    .restart local v1    # "tmp44":Ljava/nio/ByteBuffer;
    :cond_4
    :try_start_2
    iget-object v4, p0, Lorg/telegram/messenger/voip/AudioTrackJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioTrackJNI;

    iget-object v5, p0, Lorg/telegram/messenger/voip/AudioTrackJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioTrackJNI;

    invoke-static {v5}, Lorg/telegram/messenger/voip/AudioTrackJNI;->access$300(Lorg/telegram/messenger/voip/AudioTrackJNI;)[B

    move-result-object v5

    invoke-static {v4, v5}, Lorg/telegram/messenger/voip/AudioTrackJNI;->access$400(Lorg/telegram/messenger/voip/AudioTrackJNI;[B)V

    .line 113
    iget-object v4, p0, Lorg/telegram/messenger/voip/AudioTrackJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioTrackJNI;

    invoke-static {v4}, Lorg/telegram/messenger/voip/AudioTrackJNI;->access$000(Lorg/telegram/messenger/voip/AudioTrackJNI;)Landroid/media/AudioTrack;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/messenger/voip/AudioTrackJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioTrackJNI;

    invoke-static {v5}, Lorg/telegram/messenger/voip/AudioTrackJNI;->access$300(Lorg/telegram/messenger/voip/AudioTrackJNI;)[B

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x780

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/AudioTrack;->write([BII)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 119
    :catch_1
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method
