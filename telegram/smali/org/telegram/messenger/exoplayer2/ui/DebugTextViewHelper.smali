.class public final Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;
.super Ljava/lang/Object;
.source "DebugTextViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;


# static fields
.field private static final REFRESH_INTERVAL_MS:I = 0x3e8


# instance fields
.field private final player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

.field private started:Z

.field private final textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "player"    # Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;
    .param p2, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    .line 48
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->textView:Landroid/widget/TextView;

    .line 49
    return-void
.end method

.method private getAudioString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 167
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->getAudioFormat()Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v0

    .line 168
    .local v0, "format":Lorg/telegram/messenger/exoplayer2/Format;
    if-nez v0, :cond_0

    .line 169
    const-string/jumbo v1, ""

    .line 171
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "(id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " hz:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/Format;->sampleRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ch:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/Format;->channelCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    .line 173
    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->getAudioDecoderCounters()Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->getDecoderCountersBufferCountString(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getDecoderCountersBufferCountString(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)Ljava/lang/String;
    .locals 2
    .param p0, "counters"    # Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    .prologue
    .line 177
    if-nez p0, :cond_0

    .line 178
    const-string/jumbo v0, ""

    .line 181
    :goto_0
    return-object v0

    .line 180
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " rb:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " sb:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " db:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->droppedOutputBufferCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mcdb:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->maxConsecutiveDroppedOutputBufferCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPlayerStateString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "playWhenReady:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " playbackState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    :goto_0
    return-object v0

    .line 134
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "buffering"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    goto :goto_0

    .line 137
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ended"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    goto :goto_0

    .line 140
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "idle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    goto :goto_0

    .line 143
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ready"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private getPlayerWindowIndexString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " window:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->getCurrentWindowIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getVideoString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 157
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->getVideoFormat()Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v0

    .line 158
    .local v0, "format":Lorg/telegram/messenger/exoplayer2/Format;
    if-nez v0, :cond_0

    .line 159
    const-string/jumbo v1, ""

    .line 161
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "(id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " r:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    .line 162
    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->getVideoDecoderCounters()Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->getDecoderCountersBufferCountString(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private updateAndPost()V
    .locals 4

    .prologue
    .line 124
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->textView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->getPlayerStateString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->getPlayerWindowIndexString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->getVideoString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 125
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->getAudioString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 127
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->textView:Landroid/widget/TextView;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 128
    return-void
.end method


# virtual methods
.method public onLoadingChanged(Z)V
    .locals 0
    .param p1, "isLoading"    # Z

    .prologue
    .line 82
    return-void
.end method

.method public onPlaybackParametersChanged(Lorg/telegram/messenger/exoplayer2/PlaybackParameters;)V
    .locals 0
    .param p1, "playbackParameters"    # Lorg/telegram/messenger/exoplayer2/PlaybackParameters;

    .prologue
    .line 97
    return-void
.end method

.method public onPlayerError(Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;)V
    .locals 0
    .param p1, "error"    # Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    .prologue
    .line 107
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 0
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I

    .prologue
    .line 86
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->updateAndPost()V

    .line 87
    return-void
.end method

.method public onPositionDiscontinuity()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->updateAndPost()V

    .line 92
    return-void
.end method

.method public onTimelineChanged(Lorg/telegram/messenger/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 0
    .param p1, "timeline"    # Lorg/telegram/messenger/exoplayer2/Timeline;
    .param p2, "manifest"    # Ljava/lang/Object;

    .prologue
    .line 102
    return-void
.end method

.method public onTracksChanged(Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 0
    .param p1, "tracks"    # Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    .param p2, "selections"    # Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    .prologue
    .line 112
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->updateAndPost()V

    .line 119
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->started:Z

    if-eqz v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->started:Z

    .line 60
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->addListener(Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;)V

    .line 61
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->updateAndPost()V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->started:Z

    if-nez v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->started:Z

    .line 73
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->removeListener(Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;)V

    .line 74
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
