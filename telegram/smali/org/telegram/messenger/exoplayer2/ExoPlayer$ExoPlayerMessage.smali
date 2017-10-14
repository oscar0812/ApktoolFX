.class public final Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;
.super Ljava/lang/Object;
.source "ExoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/ExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExoPlayerMessage"
.end annotation


# instance fields
.field public final message:Ljava/lang/Object;

.field public final messageType:I

.field public final target:Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerComponent;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V
    .locals 0
    .param p1, "target"    # Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerComponent;
    .param p2, "messageType"    # I
    .param p3, "message"    # Ljava/lang/Object;

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;->target:Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerComponent;

    .line 228
    iput p2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;->messageType:I

    .line 229
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;->message:Ljava/lang/Object;

    .line 230
    return-void
.end method
