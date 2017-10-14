.class Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl$1;
.super Landroid/os/Handler;
.source "ExoPlayerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;-><init>([Lorg/telegram/messenger/exoplayer2/Renderer;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;Lorg/telegram/messenger/exoplayer2/LoadControl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;

    .prologue
    .line 95
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl$1;->this$0:Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl$1;->this$0:Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->handleEvent(Landroid/os/Message;)V

    .line 99
    return-void
.end method
