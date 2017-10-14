.class public final Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
.super Ljava/lang/Object;
.source "HlsMasterPlaylist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HlsUrl"
.end annotation


# instance fields
.field public final format:Lorg/telegram/messenger/exoplayer2/Format;

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/Format;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "format"    # Lorg/telegram/messenger/exoplayer2/Format;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->url:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lorg/telegram/messenger/exoplayer2/Format;

    .line 45
    return-void
.end method

.method public static createMediaPlaylistHlsUrl(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .locals 8
    .param p0, "baseUri"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 37
    const-string/jumbo v0, "0"

    const-string/jumbo v1, "application/x-mpegURL"

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v3, v2

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/Format;->createContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v7

    .line 39
    .local v7, "format":Lorg/telegram/messenger/exoplayer2/Format;
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    invoke-direct {v0, p0, v7}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;-><init>(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/Format;)V

    return-object v0
.end method
