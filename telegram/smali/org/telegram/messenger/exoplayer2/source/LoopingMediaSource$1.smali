.class Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$1;
.super Ljava/lang/Object;
.source "LoopingMediaSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource;->prepareSource(Lorg/telegram/messenger/exoplayer2/ExoPlayer;ZLorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource;

.field final synthetic val$listener:Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource;Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource;

    .prologue
    .line 71
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$1;->this$0:Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$1;->val$listener:Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSourceInfoRefreshed(Lorg/telegram/messenger/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 3
    .param p1, "timeline"    # Lorg/telegram/messenger/exoplayer2/Timeline;
    .param p2, "manifest"    # Ljava/lang/Object;

    .prologue
    .line 74
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$1;->this$0:Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource;

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriodCount()I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource;->access$002(Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource;I)I

    .line 75
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$1;->val$listener:Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$LoopingTimeline;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$1;->this$0:Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource;

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource;->access$100(Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource;)I

    move-result v2

    invoke-direct {v1, p1, v2}, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$LoopingTimeline;-><init>(Lorg/telegram/messenger/exoplayer2/Timeline;I)V

    invoke-interface {v0, v1, p2}, Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;->onSourceInfoRefreshed(Lorg/telegram/messenger/exoplayer2/Timeline;Ljava/lang/Object;)V

    .line 76
    return-void
.end method
