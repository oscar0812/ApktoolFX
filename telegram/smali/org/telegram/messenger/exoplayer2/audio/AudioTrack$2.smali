.class Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$2;
.super Ljava/lang/Thread;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->releaseKeepSessionIdAudioTrack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

.field final synthetic val$toRelease:Landroid/media/AudioTrack;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;Landroid/media/AudioTrack;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    .prologue
    .line 1207
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$2;->this$0:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$2;->val$toRelease:Landroid/media/AudioTrack;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1210
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$2;->val$toRelease:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 1211
    return-void
.end method
