.class public abstract Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylist;
.super Ljava/lang/Object;
.source "HlsPlaylist.java"


# instance fields
.field public final baseUri:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "baseUri"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylist;->baseUri:Ljava/lang/String;

    .line 27
    return-void
.end method
