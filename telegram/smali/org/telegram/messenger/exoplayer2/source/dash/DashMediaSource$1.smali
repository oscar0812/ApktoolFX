.class Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$1;
.super Ljava/lang/Object;
.source "DashMediaSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;-><init>(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable$Parser;Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource$Factory;IJLandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;

    .prologue
    .line 235
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$1;->this$0:Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$1;->this$0:Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->access$100(Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;)V

    .line 239
    return-void
.end method
