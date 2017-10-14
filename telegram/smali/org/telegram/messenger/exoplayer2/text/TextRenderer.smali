.class public final Lorg/telegram/messenger/exoplayer2/text/TextRenderer;
.super Lorg/telegram/messenger/exoplayer2/BaseRenderer;
.source "TextRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/text/TextRenderer$ReplacementState;,
        Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;
    }
.end annotation


# static fields
.field private static final MSG_UPDATE_OUTPUT:I = 0x0

.field private static final REPLACEMENT_STATE_NONE:I = 0x0

.field private static final REPLACEMENT_STATE_SIGNAL_END_OF_STREAM:I = 0x1

.field private static final REPLACEMENT_STATE_WAIT_END_OF_STREAM:I = 0x2


# instance fields
.field private decoder:Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;

.field private final decoderFactory:Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderFactory;

.field private decoderReplacementState:I

.field private final formatHolder:Lorg/telegram/messenger/exoplayer2/FormatHolder;

.field private inputStreamEnded:Z

.field private nextInputBuffer:Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

.field private nextSubtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

.field private nextSubtitleEventIndex:I

.field private final output:Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;

.field private final outputHandler:Landroid/os/Handler;

.field private outputStreamEnded:Z

.field private streamFormat:Lorg/telegram/messenger/exoplayer2/Format;

.field private subtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;Landroid/os/Looper;)V
    .locals 1
    .param p1, "output"    # Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;
    .param p2, "outputLooper"    # Landroid/os/Looper;

    .prologue
    .line 105
    sget-object v0, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderFactory;->DEFAULT:Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderFactory;

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;-><init>(Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;Landroid/os/Looper;Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderFactory;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;Landroid/os/Looper;Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderFactory;)V
    .locals 1
    .param p1, "output"    # Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;
    .param p2, "outputLooper"    # Landroid/os/Looper;
    .param p3, "decoderFactory"    # Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderFactory;

    .prologue
    .line 118
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/BaseRenderer;-><init>(I)V

    .line 119
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->output:Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;

    .line 120
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->outputHandler:Landroid/os/Handler;

    .line 121
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->decoderFactory:Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderFactory;

    .line 122
    new-instance v0, Lorg/telegram/messenger/exoplayer2/FormatHolder;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/FormatHolder;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->formatHolder:Lorg/telegram/messenger/exoplayer2/FormatHolder;

    .line 123
    return-void

    .line 120
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    goto :goto_0
.end method

.method private clearOutput()V
    .locals 1

    .prologue
    .line 312
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->updateOutput(Ljava/util/List;)V

    .line 313
    return-void
.end method

.method private getNextEventTime()J
    .locals 2

    .prologue
    .line 298
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextSubtitleEventIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextSubtitleEventIndex:I

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->subtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    .line 299
    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;->getEventTimeCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    .line 298
    :goto_0
    return-wide v0

    .line 299
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->subtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextSubtitleEventIndex:I

    .line 300
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;->getEventTime(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method private invokeUpdateOutputInternal(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 328
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/text/Cue;>;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->output:Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;->onCues(Ljava/util/List;)V

    .line 329
    return-void
.end method

.method private releaseBuffers()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 273
    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextInputBuffer:Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    .line 274
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextSubtitleEventIndex:I

    .line 275
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->subtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->subtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;->release()V

    .line 277
    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->subtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    .line 279
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextSubtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextSubtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;->release()V

    .line 281
    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextSubtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    .line 283
    :cond_1
    return-void
.end method

.method private releaseDecoder()V
    .locals 1

    .prologue
    .line 286
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->releaseBuffers()V

    .line 287
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;->release()V

    .line 288
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;

    .line 289
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->decoderReplacementState:I

    .line 290
    return-void
.end method

.method private replaceDecoder()V
    .locals 2

    .prologue
    .line 293
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->releaseDecoder()V

    .line 294
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->decoderFactory:Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderFactory;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->streamFormat:Lorg/telegram/messenger/exoplayer2/Format;

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderFactory;->createDecoder(Lorg/telegram/messenger/exoplayer2/Format;)Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;

    .line 295
    return-void
.end method

.method private updateOutput(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/text/Cue;>;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->outputHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->outputHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 309
    :goto_0
    return-void

    .line 307
    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->invokeUpdateOutputInternal(Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 318
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 323
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 320
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->invokeUpdateOutputInternal(Ljava/util/List;)V

    .line 321
    const/4 v0, 0x1

    return v0

    .line 318
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public isEnded()Z
    .locals 1

    .prologue
    .line 262
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->outputStreamEnded:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x1

    return v0
.end method

.method protected onDisabled()V
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->streamFormat:Lorg/telegram/messenger/exoplayer2/Format;

    .line 255
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->clearOutput()V

    .line 256
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->releaseDecoder()V

    .line 257
    invoke-super {p0}, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->onDisabled()V

    .line 258
    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 1
    .param p1, "positionUs"    # J
    .param p3, "joining"    # Z

    .prologue
    const/4 v0, 0x0

    .line 144
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->clearOutput()V

    .line 145
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->inputStreamEnded:Z

    .line 146
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->outputStreamEnded:Z

    .line 147
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->decoderReplacementState:I

    if-eqz v0, :cond_0

    .line 148
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->replaceDecoder()V

    .line 153
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->releaseBuffers()V

    .line 151
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;->flush()V

    goto :goto_0
.end method

.method protected onStreamChanged([Lorg/telegram/messenger/exoplayer2/Format;)V
    .locals 2
    .param p1, "formats"    # [Lorg/telegram/messenger/exoplayer2/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 134
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->streamFormat:Lorg/telegram/messenger/exoplayer2/Format;

    .line 135
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;

    if-eqz v0, :cond_0

    .line 136
    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->decoderReplacementState:I

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->decoderFactory:Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderFactory;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->streamFormat:Lorg/telegram/messenger/exoplayer2/Format;

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderFactory;->createDecoder(Lorg/telegram/messenger/exoplayer2/Format;)Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;

    goto :goto_0
.end method

.method public render(JJ)V
    .locals 11
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 157
    iget-boolean v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->outputStreamEnded:Z

    if-eqz v5, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextSubtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    if-nez v5, :cond_2

    .line 162
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;

    invoke-interface {v5, p1, p2}, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;->setPositionUs(J)V

    .line 164
    :try_start_0
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;

    invoke-interface {v5}, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;->dequeueOutputBuffer()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    iput-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextSubtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;
    :try_end_0
    .catch Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->getState()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 174
    const/4 v4, 0x0

    .line 175
    .local v4, "textRendererNeedsUpdate":Z
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->subtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    if-eqz v5, :cond_3

    .line 178
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->getNextEventTime()J

    move-result-wide v2

    .line 179
    .local v2, "subtitleNextEventTimeUs":J
    :goto_1
    cmp-long v5, v2, p1

    if-gtz v5, :cond_3

    .line 180
    iget v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextSubtitleEventIndex:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextSubtitleEventIndex:I

    .line 181
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->getNextEventTime()J

    move-result-wide v2

    .line 182
    const/4 v4, 0x1

    goto :goto_1

    .line 165
    .end local v2    # "subtitleNextEventTimeUs":J
    .end local v4    # "textRendererNeedsUpdate":Z
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->getIndex()I

    move-result v5

    invoke-static {v0, v5}, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    move-result-object v5

    throw v5

    .line 186
    .end local v0    # "e":Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;
    .restart local v4    # "textRendererNeedsUpdate":Z
    :cond_3
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextSubtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    if-eqz v5, :cond_4

    .line 187
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextSubtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;->isEndOfStream()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 188
    if-nez v4, :cond_4

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->getNextEventTime()J

    move-result-wide v6

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v5, v6, v8

    if-nez v5, :cond_4

    .line 189
    iget v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->decoderReplacementState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_8

    .line 190
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->replaceDecoder()V

    .line 208
    :cond_4
    :goto_2
    if-eqz v4, :cond_5

    .line 210
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->subtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    invoke-virtual {v5, p1, p2}, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;->getCues(J)Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->updateOutput(Ljava/util/List;)V

    .line 213
    :cond_5
    iget v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->decoderReplacementState:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    .line 218
    :cond_6
    :goto_3
    :try_start_1
    iget-boolean v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->inputStreamEnded:Z

    if-nez v5, :cond_0

    .line 219
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextInputBuffer:Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    if-nez v5, :cond_7

    .line 220
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;

    invoke-interface {v5}, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;->dequeueInputBuffer()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    iput-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextInputBuffer:Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    .line 221
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextInputBuffer:Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    if-eqz v5, :cond_0

    .line 225
    :cond_7
    iget v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->decoderReplacementState:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b

    .line 226
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextInputBuffer:Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;->setFlags(I)V

    .line 227
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextInputBuffer:Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    invoke-interface {v5, v6}, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;->queueInputBuffer(Ljava/lang/Object;)V

    .line 228
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextInputBuffer:Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    .line 229
    const/4 v5, 0x2

    iput v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->decoderReplacementState:I
    :try_end_1
    .catch Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 247
    :catch_1
    move-exception v0

    .line 248
    .restart local v0    # "e":Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->getIndex()I

    move-result v5

    invoke-static {v0, v5}, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    move-result-object v5

    throw v5

    .line 192
    .end local v0    # "e":Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;
    :cond_8
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->releaseBuffers()V

    .line 193
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->outputStreamEnded:Z

    goto :goto_2

    .line 196
    :cond_9
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextSubtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    iget-wide v6, v5, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;->timeUs:J

    cmp-long v5, v6, p1

    if-gtz v5, :cond_4

    .line 198
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->subtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    if-eqz v5, :cond_a

    .line 199
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->subtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;->release()V

    .line 201
    :cond_a
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextSubtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    iput-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->subtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    .line 202
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextSubtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    .line 203
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->subtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    invoke-virtual {v5, p1, p2}, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;->getNextEventTimeIndex(J)I

    move-result v5

    iput v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextSubtitleEventIndex:I

    .line 204
    const/4 v4, 0x1

    goto :goto_2

    .line 233
    :cond_b
    :try_start_2
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->formatHolder:Lorg/telegram/messenger/exoplayer2/FormatHolder;

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextInputBuffer:Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v6, v7}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->readSource(Lorg/telegram/messenger/exoplayer2/FormatHolder;Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result v1

    .line 234
    .local v1, "result":I
    const/4 v5, -0x4

    if-ne v1, v5, :cond_d

    .line 235
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextInputBuffer:Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;->isEndOfStream()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 236
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->inputStreamEnded:Z

    .line 241
    :goto_4
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextInputBuffer:Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    invoke-interface {v5, v6}, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;->queueInputBuffer(Ljava/lang/Object;)V

    .line 242
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextInputBuffer:Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    goto/16 :goto_3

    .line 238
    :cond_c
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextInputBuffer:Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->formatHolder:Lorg/telegram/messenger/exoplayer2/FormatHolder;

    iget-object v6, v6, Lorg/telegram/messenger/exoplayer2/FormatHolder;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iget-wide v6, v6, Lorg/telegram/messenger/exoplayer2/Format;->subsampleOffsetUs:J

    iput-wide v6, v5, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;->subsampleOffsetUs:J

    .line 239
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextInputBuffer:Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;->flip()V
    :try_end_2
    .catch Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 243
    :cond_d
    const/4 v5, -0x3

    if-ne v1, v5, :cond_6

    goto/16 :goto_0
.end method

.method public supportsFormat(Lorg/telegram/messenger/exoplayer2/Format;)I
    .locals 1
    .param p1, "format"    # Lorg/telegram/messenger/exoplayer2/Format;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->decoderFactory:Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderFactory;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderFactory;->supportsFormat(Lorg/telegram/messenger/exoplayer2/Format;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 128
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
