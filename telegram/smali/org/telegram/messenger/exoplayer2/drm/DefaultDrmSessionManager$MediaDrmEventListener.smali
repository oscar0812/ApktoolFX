.class Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmEventListener;
.super Ljava/lang/Object;
.source "DefaultDrmSessionManager.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaDrmEventListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm$OnEventListener",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;


# direct methods
.method private constructor <init>(Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;)V
    .locals 0

    .prologue
    .line 653
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmEventListener;, "Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager<TT;>.MediaDrmEventListener;"
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmEventListener;->this$0:Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;
    .param p2, "x1"    # Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$1;

    .prologue
    .line 653
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmEventListener;, "Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager<TT;>.MediaDrmEventListener;"
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmEventListener;-><init>(Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;)V

    return-void
.end method


# virtual methods
.method public onEvent(Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;[BII[B)V
    .locals 1
    .param p2, "sessionId"    # [B
    .param p3, "event"    # I
    .param p4, "extra"    # I
    .param p5, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm",
            "<+TT;>;[BII[B)V"
        }
    .end annotation

    .prologue
    .line 658
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmEventListener;, "Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager<TT;>.MediaDrmEventListener;"
    .local p1, "md":Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;, "Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm<+TT;>;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmEventListener;->this$0:Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->access$700(Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;)I

    move-result v0

    if-nez v0, :cond_0

    .line 659
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmEventListener;->this$0:Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager;->mediaDrmHandler:Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmHandler;

    invoke-virtual {v0, p3}, Lorg/telegram/messenger/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmHandler;->sendEmptyMessage(I)Z

    .line 661
    :cond_0
    return-void
.end method
