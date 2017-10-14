.class public final Lorg/telegram/messenger/exoplayer2/source/hls/HlsManifest;
.super Ljava/lang/Object;
.source "HlsManifest.java"


# instance fields
.field public final masterPlaylist:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

.field public final mediaPlaylist:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V
    .locals 0
    .param p1, "masterPlaylist"    # Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;
    .param p2, "mediaPlaylist"    # Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsManifest;->masterPlaylist:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    .line 41
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsManifest;->mediaPlaylist:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .line 42
    return-void
.end method
